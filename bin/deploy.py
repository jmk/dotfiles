import os

# By default, all files in the conf directory will be symlinked directly into
# the home directory with a period pre-pended to the name:
#
#   conf/file_name -> ~/.file_name
#
# To override this, add an entry to the dictionary below.
pathOverrides = {
    "DefaultKeyBinding.dict": "~/Library/KeyBindings/DefaultKeyBinding.dict",
}

# Some files should only be symlinked on certain platforms. To restrict files
# to a platform, add them to the dictionary below (e.g., "Linux", "Darwin").
platformRestrictions = {
    "DefaultKeyBinding.dict": ["Darwin"],
}

def findRootDir():
    # Assume this script lives in the bin dir, which is a direct child of the
    # root dotfiles directory.
    realpath = os.path.realpath(__file__)
    bindir = os.path.dirname(realpath)
    return os.path.dirname(bindir)

def red(msg):
    return "\033[31m%s\033[0m" % msg

def green(msg):
    return "\033[32m%s\033[0m" % msg

def yellow(msg):
    return "\033[33m%s\033[0m" % msg

def cyan(msg):
    return "\033[36m%s\033[0m" % msg

def printSummary(linkFiles, errorFiles):
    if (linkFiles):
        print ""
        print "Files to be symlinked:"
        print ""

        for _, f in linkFiles:
            print "  " + cyan(f)

    if (errorFiles):
        print ""
        print "Files that exist and will not be overwritten:"
        print ""

        for f in errorFiles:
            print "  " + red(f)

    if (linkFiles or errorFiles):
        print ""

def makeSymlinks(linkFiles):
    print "Creating symlinks ..."
    print ""

    # Note: src is the source file, dst is where the symlink will go.
    for src, dst in linkFiles:
        if (os.path.islink(dst)):
            # Symlink exists. Delete it so we can update it.
            os.unlink(dst)

        # Make parent directories, if necessary.
        parentDir = os.path.dirname(dst)
        if (not os.path.isdir(parentDir)):
            os.makedirs(parentDir)

        print "  %s -> %s" % (src, dst)
        os.symlink(src, dst)

def deploy(testOnly):
    import platform
    system = platform.system()

    homeDir = os.path.expanduser("~")
    rootDir = findRootDir()

    confDir = os.path.join(rootDir, "conf")
    confFiles = os.listdir(confDir)

    linkFiles   = []  # Files that need to be symlinked (src/dst tuples)
    errorFiles  = []  # Files that exist and will not be overwritten

    # Iterate over all files in the conf dir and figure out what needs to be
    # done.
    for filename in confFiles:
        # Skip invisible files (e.g., vim swap files).
        if (filename.startswith(".")):
            continue

        # Skip files if the platform restrictions exclude the current
        # platform.
        if (filename in platformRestrictions
            and system not in platformRestrictions[filename]):
            continue

        src = os.path.join(confDir, filename)

        # Determine the destination path (where the symlink will be created)
        # Use the overriding path if one exists.
        if (filename in pathOverrides):
            dst = os.path.expanduser(pathOverrides[filename])
        else:
            dst = os.path.join(homeDir, "." + filename)

        if (os.path.exists(dst)):
            if (os.path.islink(dst)):
                if (os.path.realpath(dst) == src):
                    # Symlink already points to dst. Skip this file.
                    pass
                else:
                    # Symlink exists, but points elsewhere. Re-link.
                    linkFiles.append((src, dst))
            else:
                # File exists, but is not a symlink. Don't overwrite.
                errorFiles.append(dst)
        else:
            # File does not exist. Create a symlink.
            linkFiles.append((src, dst))

    if (linkFiles or errorFiles):
        printSummary(linkFiles, errorFiles)

        if (not testOnly):
            try:
                raw_input("Press Enter to continue...")

                # Create symlinks. Finally.
                makeSymlinks(linkFiles)
            except KeyboardInterrupt:
                print red("Aborted.")
                exit(1)
    else:
        # No updates to make.
        print green("All dotfiles are up to date.")

    # Print an epilogue about additional actions that must be taken.
#    shellDir = os.path.join(rootDir, "shell")
#    shellFiles = os.listdir(shellDir)
#
#    if (shellFiles):
#        print ""
#        print "Note: Shell configuration files must be manually sourced:"
#        print ""
#
#        for f in shellFiles:
#            print "  " + os.path.join(shellDir, f)
#
#        print ""

if (__name__ == "__main__"):
    import argparse

    parser = argparse.ArgumentParser(
        description="Deploy configuration files to home directory")

    parser.add_argument(
        "-n", "--dry-run", help="perform a trial run only",
        action="store_true")

    #parser.add_argument('integers', metavar='N', type=int, nargs='+',
    #                                       help='an integer for the accumulator')
    #parser.add_argument('--sum', dest='accumulate', action='store_const',
    #                                       const=sum, default=max,
    #                                       help='sum the integers (default: find the max)')

    args = parser.parse_args()
    deploy(args.dry_run)
