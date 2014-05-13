# SGLogging

Simple wrapper macros around the ASL (Apple System Log).

## Instalation
- Add SGLogging.h and SGLogging.m to the project.
- Import SGLogging.h to the <Project>-Prefix.pch file to make it avaliable in all classes.

## Usage
	SGLogEmergency(@"");	// The highest priority, usually reserved for catastrophic failures and reboot notices.
	SGLogAlert(@"");		// A serious failure in a key system.
	SGLogCritical(@"");		// A failure in a key system.
	SGLogError(@"");		// Something has failed.
	SGLogWarning(@"");		// Something is amiss and might fail if not corrected.
	SGLogNotice(@"");		// Things of moderate interest to the user or administrator.
	SGLogInfo(@"");			// The lowest priority that you would normally log, and purely informational in nature.
	SGLogDebug(@"");		// The lowest priority, and normally not logged except for messages from the kernel.