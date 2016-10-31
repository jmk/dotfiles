" Vim syntax file
" Language: Menv30 .menva file format
" Maintainer: Jason Kim
" Last Change: 2006 May 26
" This file is only compatible with vim 6.x.
 

if exists("b:current_syntax")
    finish
endif

" Read the C syntax file 
if version < 600
    source <sfile>:p:h/c.vim
else
    runtime! syntax/c.vim
endif

" Menva file header
syn match menvaVersion "#menva.*$"
syn match menvaVersion "#usda.*$"

" Primary keywords
syn keyword menvaKeyword def over
syn keyword menvaKeyword delete add reorder
syn keyword menvaKeyword config custom varying uniform

" Special names
syn match menvaSpecial "\$" display
syn keyword menvaSpecial active
syn keyword menvaSpecial addHints
syn keyword menvaSpecial anim
syn keyword menvaSpecial attributes
syn keyword menvaSpecial audioFile
syn keyword menvaSpecial avar
syn keyword menvaSpecial buildTo2xData
syn keyword menvaSpecial class
syn keyword menvaSpecial connect
syn keyword menvaSpecial corresponding
syn keyword menvaSpecial customData
syn keyword menvaSpecial default
syn keyword menvaSpecial dictionary
syn keyword menvaSpecial displayUnit
syn keyword menvaSpecial doc
syn keyword menvaSpecial endFrame
syn keyword menvaSpecial expression
syn keyword menvaSpecial framePrecision
syn keyword menvaSpecial framesPerSecond
syn keyword menvaSpecial hidden
syn keyword menvaSpecial displayGroup
syn keyword menvaSpecial displayColor
syn keyword menvaSpecial held
syn keyword menvaSpecial ignore
syn keyword menvaSpecial implementation
syn keyword menvaSpecial indexing
syn keyword menvaSpecial inherits
syn keyword menvaSpecial kind
syn keyword menvaSpecial left
syn keyword menvaSpecial loadPolicy
syn keyword menvaSpecial locked
syn keyword menvaSpecial loopParams
syn keyword menvaSpecial manipulatorModes
syn keyword menvaSpecial manipulatorStyles
syn keyword menvaSpecial mapper
syn keyword menvaSpecial mungSensitivity
syn keyword menvaSpecial nameChildren
syn keyword menvaSpecial noLoadHint
syn keyword menvaSpecial None
syn keyword menvaSpecial offset
syn keyword menvaSpecial payload
syn keyword menvaSpecial permission
syn keyword menvaSpecial prefix
syn keyword menvaSpecial prefixSubstitutions
syn keyword menvaSpecial properties
syn keyword menvaSpecial references
syn keyword menvaSpecial relocates
syn keyword menvaSpecial right
syn keyword menvaSpecial rootPrims
syn keyword menvaSpecial scale
syn keyword menvaSpecial setExtensions
syn keyword menvaSpecial spline
syn keyword menvaSpecial startFrame
syn keyword menvaSpecial subLayers
syn keyword menvaSpecial symmetricPeer
syn keyword menvaSpecial symmetryArguments
syn keyword menvaSpecial symmetryFunction
syn keyword menvaSpecial taskRestriction
syn keyword menvaSpecial task
syn keyword menvaSpecial variantSet
syn keyword menvaSpecial variantSets
syn keyword menvaSpecial variants
syn keyword menvaSpecial wizardData

" Knot types
syn keyword menvaKnotType held linear hermite bspline bezier bezflat catrom

" Keyframes
syn match menvaKeyframe "^.*\d\+\s*:" display nextgroup=menvaColon

" Paths
syn match menvaPath "<.*>" display
syn match menvaReference "@.*@" display

" Types
syn keyword menvaType __AnyType__
syn keyword menvaType dictionary string
syn keyword menvaType Vec3d Vec4d 
syn keyword menvaType Matrix3d Matrix4d Transform
syn keyword menvaType string rel

" Numbers
syn match menvaNumber contained "[-+]\=\d\+\(\.\d*\)\="

if version >= 508 || !exists("did_python_syn_inits")
    if version <= 508
        let did_python_syn_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif

    HiLink menvaVersion Comment
    HiLink menvaKeyword Statement
    HiLink menvaSpecial Special

    HiLink menvaColon Ignore
    HiLink menvaKeyframe Identifier

    HiLink menvaPath Identifier
    HiLink menvaReference Underlined
    HiLink menvaType Type
    HiLink menvaKnotType menvaType

    HiLink menvaNumber Constant

    " Ugly hack: disable nested curly brace error for ({ ... })
    HiLink cError NONE

    delcommand HiLink
endif


let b:current_syntax = "menva"
