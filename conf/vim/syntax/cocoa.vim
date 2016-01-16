" Vim syntax file
" Language:	Objective C and Apple's COCOA API
" Maintainer:	Gaspard Bucher <g.bucher@teti.ch>
" Last Change:	2003 August 28
 

"If you need objc++ : uncomment
"Read the C++ syntax to start with (since there is no objc++ syntax file)
"if version < 600
"    source <sfile>:p:h/cpp.vim
"else
"    runtime! syntax/cpp.vim
"endif
"unlet b:current_syntax 

" Read the Objective C syntax file 
if version < 600
  source <sfile>:p:h/objc.vim
else
  runtime! syntax/objc.vim
endif

" Cocoa API specific follows bellow
"
"
"
"
" This is for 'clever' indent (recognition of { })
set cindent

" Interface Builder macros
syn keyword cocoaDirective IBOutlet IBAction @"

" Cocoa reference API Classes
syn keyword cocoaFunction NSAppleEventDescriptor NSAppleEventManager NSAppleScript NSArchiver NSArray NSAssertionHandler NSAttributedString NSAutoreleasePool NSBundle NSCalendarDate NSCharacterSet NSClassDescription NSCloseCommand NSCoder NSConditionLock NSConnection NSCountCommand NSCountedSet NSCreateCommand NSData NSDate NSDateFormatter NSDecimalNumber NSDecimalNumberHandler NSDeleteCommand NSDeserializer NSDictionary NSDirectoryEnumerator NSDistantObject NSDistantObjectRequest NSDistributedLock NSDistributedNotificationCenter NSEnumerator NSException NSExistsCommand NSFileHandle NSFileManager NSFormatter NSGetCommand 
syn keyword cocoaFunction NSHost NSIndexSpecifier NSInvocation NSKeyedArchiver NSKeyedUnarchiver NSLock NSLogicalTest NSMachBootstrapServer NSMachPort NSMessagePort NSMessagePortNameServer NSMethodSignature NSMiddleSpecifier NSMoveCommand NSMutableArray NSMutableAttributedString NSMutableCharacterSet NSMutableData NSMutableDictionary NSMutableSet NSMutableString NSNameSpecifier NSNetService NSNetServiceBrowser NSNotification NSNotificationCenter NSNotificationQueue NSNull NSNumber NSNumberFormatter NSObject NSPipe NSPort NSPortCoder NSPortMessage NSPortNameServer NSPositionalSpecifier NSProcessInfo NSPropertyListSerialization 
syn keyword cocoaFunction NSPropertySpecifier NSProtocolChecker NSProxy NSQuitCommand NSRandomSpecifier NSRangeSpecifier NSRecursiveLock NSRelativeSpecifier NSRunLoop NSScanner NSScriptClassDescription NSScriptCoercionHandler NSScriptCommand NSScriptCommand NSScriptCommandDescription NSScriptExecutionContext NSScriptObjectSpecifier NSScriptSuiteRegistry NSScriptWhoseTest NSSerializer NSSet NSSetCommand NSSocketPort NSSocketPortNameServer NSSpecifierTest NSSpellServer NSString NSTask NSThread NSTimer NSTimeZone NSUnarchiver NSUndoManager NSUniqueIDSpecifier NSURL NSURLHandle NSUserDefaults NSValue NSWhoseSpecifier NSCloneCommand


" Cocoa reference API Functions
syn keyword cocoaFunction NSAccessibility NSAccessibilityPostNotification NSAccessibilityUnignoredAncestor NSAccessibilityUnignoredChildren NSAccessibilityUnignoredChildrenForOnlyChild NSAccessibilityUnignoredDescendant NSActionCell NSAffineTransform NSAffineTransformStruct NSAllHashTableObjects NSAllMapTableKeys NSAllMapTableValues NSAllocateMemoryPages NSAllocateObject NSAppleEvent NSApplication 
syn keyword cocoaFunction NSApplicationLoad NSApplicationMain NSApplicationTerminateReply NSArgumentDomain NSAssert NSAssert1 NSAvailableWindowDepths NSBackingStoreType NSBeep NSBeginAlertSheet NSBeginCriticalAlertSheet NSBeginInformationalAlertSheet NSBestDepth NSBezelStyle NSBezierPath NSBezierPathElement NSBitmapImageFileType NSBitmapImageRep NSBitsPerPixelFromDepth NSBitsPerSampleFromDepth NSBorderType NSBox NSBoxType NSBrowser NSBrowserCell NSButton NSButtonCell NSButtonType NSCachedImageRep NSCalculationError NSCaseInsensitiveSearch NSCAssert NSCAssert1 NSCell NSCellAttribute NSCellImagePosition NSCellState NSCellType NSChangeSpelling NSCharacterCollection 
syn keyword cocoaFunction NSClassFromString NSClipView NSClipView NSCoding NSColor NSColorList NSColorPanel NSColorPicker NSColorPickingCustom NSColorPickingDefault NSColorSpaceFromDepth NSColorWell NSComboBox NSComboBoxCell NSComboBoxCellDataSource NSComboBoxDataSource NSCompareHashTables NSCompareMapTables NSComparisonMethods NSComparisonResult NSCompositingOperation NSConnectionReplyMode NSContainsRect NSControl NSControlSize NSControlTint NSConvertGlyphsToPackedGlyphs NSConvertHostDoubleToSwapped NSConvertHostFloatToSwapped NSConvertSwappedDoubleToHost NSConvertSwappedFloatToHost NSCopyBits NSCopyHashTableWithZone NSCopying NSCopyMapTableWithZone NSCopyMemoryPages NSCopyObject NSCountHashTable NSCountMapTable NSCountWindows 
syn keyword cocoaFunction NSCountWindowsForContext NSCParameterAssert NSCreateFileContentsPboardType NSCreateFilenamePboardType NSCreateHashTable NSCreateHashTableWithZone NSCreateMapTable NSCreateMapTableWithZone NSCreateZone NSCursor NSCustomImageRep NSDeallocateMemoryPages NSDeallocateObject NSDecimal NSDecimalAdd NSDecimalCompact NSDecimalCompare NSDecimalCopy NSDecimalDivide NSDecimalMaxSize NSDecimalMultiply NSDecimalMultiplyByPowerOf10 NSDecimalNormalize NSDecimalNoScale NSDecimalNumberBehaviors NSDecimalPower NSDecimalRound NSDecimalString NSDecimalSubtract NSDecrementExtraRefCountWasZero NSDefaultMallocZone NSDefaultRunLoopMode NSDivideRect NSDocument NSDocumentChangeType NSDocumentController NSDottedFrameRect NSDragging NSDraggingDestination NSDraggingInfo 
syn keyword cocoaFunction NSDraggingSource NSDragOperation NSDrawBitmap NSDrawButton NSDrawColorTiledRects NSDrawDarkBezel NSDrawer NSDrawerState NSDrawGrayBezel NSDrawGroove NSDrawLightBezel NSDrawTiledRects NSDrawWhiteBezel NSDrawWindowBackground NSEndHashTableEnumeration NSEndMapTableEnumeration NSEnumerateHashTable NSEnumerateMapTable NSEPSImageRep NSEPSImageRep NSEqualPoints NSEqualRanges NSEqualRects NSEqualSizes NSEraseRect NSEvent NSEventMaskFromType NSEventType NSExtraRefCount NSFileTypeForHFSTypeCode NSFileWrapper NSFocusRingPlacement NSFont NSFontAction NSFontManager NSFontPanel NSFontTraitMask NSForm NSFormCell NSFrameRect 
syn keyword cocoaFunction NSFrameRectWithWidth NSFrameRectWithWidthUsingOperation NSFreeHashTable NSFreeMapTable NSFullUserName NSGetAlertPanel NSGetCriticalAlertPanel NSGetFileType NSGetFileTypes NSGetInformationalAlertPanel NSGetSizeAndAlignment NSGetUncaughtExceptionHandler NSGetWindowServerMemory NSGlobalDomain NSGlyph NSGlyphInfo NSGlyphInfoAtIndex NSGlyphInscription NSGlyphLayoutMode NSGlyphRelation NSGradientType NSGraphics NSGraphicsContext NSHashEnumerator NSHashGet NSHashInsert NSHashInsertIfAbsent NSHashInsertKnownAbsent NSHashRemove NSHashTable NSHashTableCallBacks NSHeight NSHelpManager NSHFSTypeCodeFromFileType NSHFSTypeOfFile NSHighlightRect NSHomeDirectory NSHomeDirectoryForUser NSHostByteOrder NSIgnoreMisspelledWords 
syn keyword cocoaFunction NSImage NSImageAlignment NSImageCacheMode NSImageCell NSImageFrameStyle NSImageInterpolation NSImageLoadStatus NSImageRep NSImageRepLoadStatus NSImageScaling NSImageView NSIncrementExtraRefCount NSInputManager NSInputServer NSInputServerMouseTracker NSInputServiceProvider NSInsertionPosition NSInsetRect NSIntegralRect NSInterfaceStyle NSInterfaceStyleDefault NSIntersectionRange NSIntersectionRect NSIntersectsRect NSIsEmptyRect NSJavaBundleCleanup NSJavaBundleSetup NSJavaClassesForBundle NSJavaClassesFromPath NSJavaNeedsToLoadClasses NSJavaNeedsVirtualMachine NSJavaObjectNamedInPath NSJavaProvidesClasses NSJavaSetup NSJavaSetupVirtualMachine NSKeyValueCoding NSLayoutDirection NSLayoutManager NSLayoutStatus NSLineBreakMode 
syn keyword cocoaFunction NSLineCapStyle NSLineJoinStyle NSLineMovementDirection NSLineSweepDirection NSLiteralSearch NSLocalizedString NSLocalizedStringFromTable NSLocalizedStringFromTableInBundle NSLocalizedStringWithDefaultValue NSLocalNotificationCenterType NSLocationInRange NSLocking NSLog NSLogPageSize NSLogv NSMailDelivery NSMakePoint NSMakeRange NSMakeRect NSMakeSize NSMapEnumerator NSMapGet NSMapInsert NSMapInsertIfAbsent NSMapInsertKnownAbsent NSMapMember NSMapRemove NSMapTable NSMapTableKeyCallBacks NSMapTableValueCallBacks NSMatrix NSMatrixMode NSMaxRange NSMaxX NSMaxY NSMenu NSMenuItem NSMenuItemCell NSMenuValidation NSMenuView 
syn keyword cocoaFunction NSMidX NSMidY NSMinX NSMinY NSModalSession NSMouseInRect NSMovie NSMovieView NSMultibyteGlyphPacking NSMutableCopying NSMutableParagraphStyle NSNetServices NSNetServicesError NSNextHashEnumeratorItem NSNextMapEnumeratorPair NSNibAwaking NSNibConnector NSNibControlConnector NSNibOutletConnector NSNotAnIntMapKey NSNotAPointerMapKey NSNotFound NSNotificationCoalescing NSNotificationSuspensionBehavior NSNumberOfColorComponents NSObjCTypeSerializationCallBack NSObjCValue NSOffsetRect NSOpenGLContext NSOpenGLContextAuxiliary NSOpenGLContextParameter NSOpenGLGetOption NSOpenGLGetVersion NSOpenGLGlobalOption NSOpenGLPixelFormat NSOpenGLPixelFormatAttribute NSOpenGLPixelFormatAuxiliary NSOpenGLSetOption NSOpenGLView NSOpenPanel 
syn keyword cocoaFunction NSOpenStepRootDirectory NSOpenStepUnicodeReservedBase NSOutlineView NSOutlineViewDataSource NSPageLayout NSPageSize NSPanel NSParagraphStyle NSParameterAssert NSPasteboard NSPDFImageRep NSPerformService NSPICTImageRep NSPictImageRep NSPlanarFromDepth NSPoint NSPointArray NSPointFromString NSPointInRect NSPointPointer NSPopUpArrowPosition NSPopUpButton NSPopUpButtonCell NSPostingStyle NSPrinter NSPrinterTableStatus NSPrintInfo NSPrintingOrientation NSPrintingPageOrder NSPrintingPaginationMode NSPrintOperation NSPrintPanel NSProgressIndicator NSProgressIndicatorStyle NSProgressIndicatorThickness NSPropertyListFormat NSPropertyListMutabilityOptions NSQTMovieLoopMode NSQuickDrawView NSRange 
syn keyword cocoaFunction NSRangeFromString NSRangePointer NSReadPixel NSRealMemoryAvailable NSRect NSRectArray NSRectClip NSRectClipList NSRectEdge NSRectFill NSRectFillList NSRectFillListUsingOperation NSRectFillListWithColors NSRectFillListWithColorsUsingOperation NSRectFillListWithGrays NSRectFillUsingOperation NSRectFromString NSRectPointer NSRecycleZone NSRegisterServicesProvider NSRegistrationDomain NSRelativePosition NSReleaseAlertPanel NSRequestUserAttentionType NSResetHashTable NSResetMapTable NSResponder NSReturnAddress NSRoundDownToMultipleOfPageSize NSRoundingMode NSRoundUpToMultipleOfPageSize NSRulerMarker NSRulerOrientation NSRulerView NSRunAlertPanel NSRunCriticalAlertPanel NSRunInformationalAlertPanel NSSaveOperationType NSSaveOptions NSSavePanel 
syn keyword cocoaFunction NSScreen NSScreenAuxiliaryOpaque NSScriptingComparisonMethods NSScriptKeyValueCoding NSScriptObjectSpecifiers NSScrollArrowPosition NSScroller NSScrollerArrow NSScrollerPart NSScrollView NSSearchPathDirectory NSSearchPathDomainMask NSSearchPathForDirectoriesInDomains NSSecureTextField NSSecureTextFieldCell NSSelectionAffinity NSSelectionDirection NSSelectionGranularity NSSelectorFromString NSServicesRequests NSSetFocusRingStyle NSSetShowsServicesMenuItem NSSetUncaughtExceptionHandler NSSetZoneName NSShouldRetainWithZone NSShowsServicesMenuItem NSSimpleHorizontalTypesetter NSSize NSSizeArray NSSizeFromString NSSizePointer NSSlider NSSliderCell NSSound NSSpellChecker NSSplitView NSStatusBar NSStatusItem NSStepper NSStepperCell 
syn keyword cocoaFunction release retain NSStringEncoding NSStringFromClass NSStringFromHashTable NSStringFromMapTable NSStringFromPoint NSStringFromRange NSStringFromRect NSStringFromSelector NSStringFromSize NSSwapBigDoubleToHost NSSwapBigFloatToHost NSSwapBigIntToHost NSSwapBigLongLongToHost NSSwapBigLongToHost NSSwapBigShortToHost NSSwapDouble NSSwapFloat NSSwapHostDoubleToBig NSSwapHostDoubleToLittle NSSwapHostFloatToBig NSSwapHostFloatToLittle NSSwapHostIntToBig NSSwapHostIntToLittle NSSwapHostLongLongToBig NSSwapHostLongLongToLittle NSSwapHostLongToBig NSSwapHostLongToLittle NSSwapHostShortToBig NSSwapHostShortToLittle NSSwapInt NSSwapLittleDoubleToHost NSSwapLittleFloatToHost NSSwapLittleIntToHost NSSwapLittleLongLongToHost NSSwapLittleLongToHost NSSwapLittleShortToHost NSSwapLong NSSwapLongLong 
syn keyword cocoaFunction NSSwappedDouble NSSwappedFloat NSSwapShort NSTableColumn NSTableDataSource NSTableHeaderCell NSTableHeaderView NSTableView NSTableViewDropOperation NSTabState NSTabView NSTabViewItem NSTabViewItemAuxiliaryOpaque NSTabViewType NSTemporaryDirectory NSTestComparisonOperation NSText NSTextAlignment NSTextAttachment NSTextAttachmentCell NSTextContainer NSTextField NSTextFieldBezelStyle NSTextFieldCell NSTextInput NSTextStorage NSTextStorageScripting NSTextTab NSTextTabType NSTextView NSTickMarkPosition NSTIFFCompression NSTimeInterval NSTitlePosition NSToolbar NSToolbarDisplayMode NSToolbarItem NSToolbarItemValidation NSToolbarSizeMode NSToolTipOwner 
syn keyword cocoaFunction NSToolTipTag NSTrackingRectTag NSTypesetter NSTypesetterBehavior NSTypesetterGlyphInfo NSUncaughtExceptionHandler NSUndoCloseGroupingRunLoopOrdering NSUnionRange NSUnionRect NSUnRegisterServicesProvider NSUpdateDynamicServices NSURLHandleClient NSURLHandleStatus NSUsableScrollerParts NSUserInterfaceValidations NSUserName NSValidatedUserInterfaceItem NSView NSWhoseSubelementIdentifier NSWidth NSWindingRule NSWindow NSWindowAuxiliaryOpaque NSWindowButton NSWindowController NSWindowController NSWindowDepth NSWindowList NSWindowListForContext NSWindowOrderingMode NSWindowScripting NSWorkspace NSWritingDirection NSZone NSZoneCalloc NSZoneFree NSZoneFromPointer NSZoneMalloc NSZoneName NSZoneRealloc alloc init autorelease

syn keyword cocoaFunction identifier valueForKey objectAtIndex numberOfRowsInTableView objectValueForTableColumn row setObjectValue forTableColumn takeValue forKey setStringValue isEqual NO YES

if version >= 508 || !exists("did_cocoa_syntax_inits")
  if version < 508
    let did_cocoa_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink cocoaDirective	Statement
  HiLink cocoaFunction	Function
  HiLink cocoaType	Type
  HiLink cocoaConstant	Constant

  delcommand HiLink
endif

let b:current_syntax = "cocoa"
