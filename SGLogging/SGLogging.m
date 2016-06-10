
// We need all the log functions visible so we set this to DEBUG
#ifdef SG_COMPILE_TIME_LOG_LEVEL
#undef SG_COMPILE_TIME_LOG_LEVEL
#define SG_COMPILE_TIME_LOG_LEVEL ASL_LEVEL_DEBUG
#endif

#define SG_COMPILE_TIME_LOG_LEVEL ASL_LEVEL_DEBUG

#import "SGLogging.h"
#import <asl.h>

static void AddStderrOnce()
{
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		asl_add_log_file(NULL, STDERR_FILENO);
	});
}

#define __SG_MAKE_LOG_FUNCTION(LEVEL, NAME) \
void NAME (NSString *format, ...) \
{ \
	AddStderrOnce(); \
	va_list args; \
	va_start(args, format); \
	NSString *message = [[NSString alloc] initWithFormat:format arguments:args]; \
	asl_log(NULL, NULL, (LEVEL), "%s", [message UTF8String]); \
	va_end(args); \
}

__SG_MAKE_LOG_FUNCTION(ASL_LEVEL_EMERG, SGLogEmergency)
__SG_MAKE_LOG_FUNCTION(ASL_LEVEL_ALERT, SGLogAlert)
__SG_MAKE_LOG_FUNCTION(ASL_LEVEL_CRIT, SGLogCritical)
__SG_MAKE_LOG_FUNCTION(ASL_LEVEL_ERR, SGLogError)
__SG_MAKE_LOG_FUNCTION(ASL_LEVEL_WARNING, SGLogWarning)
__SG_MAKE_LOG_FUNCTION(ASL_LEVEL_NOTICE, SGLogNotice)
__SG_MAKE_LOG_FUNCTION(ASL_LEVEL_INFO, SGLogInfo)
__SG_MAKE_LOG_FUNCTION(ASL_LEVEL_DEBUG, SGLogDebug)

#undef __SG_MAKE_LOG_FUNCTION
