
#import "LegacyGlobals.h"


bool TGObjectCompare(id obj1, id obj2);
bool TGStringCompare(NSString *s1, NSString *s2);
void TGLegacyLog(NSString *format, ...);
int iosMajorVersion();
int iosMinorVersion();
    
NSString *TGEncodeText(NSString *string, int key);
    
void TGDispatchOnMainThread(dispatch_block_t block);
void TGDispatchAfter(double delay, dispatch_queue_t queue, dispatch_block_t block);
    
int deviceMemorySize();
int cpuCoreCount();
    
#define UIColorRGB(rgb) ([[UIColor alloc] initWithRed:(((rgb >> 16) & 0xff) / 255.0f) green:(((rgb >> 8) & 0xff) / 255.0f) blue:(((rgb) & 0xff) / 255.0f) alpha:1.0f])
#define UIColorRGBA(rgb,a) ([[UIColor alloc] initWithRed:(((rgb >> 16) & 0xff) / 255.0f) green:(((rgb >> 8) & 0xff) / 255.0f) blue:(((rgb) & 0xff) / 255.0f) alpha:a])
    
#define TGRestrictedToMainThread {if(![[NSThread currentThread] isMainThread]) TGLegacyLog(@"***** Warning: main thread-bound operation is running in background! *****");}

