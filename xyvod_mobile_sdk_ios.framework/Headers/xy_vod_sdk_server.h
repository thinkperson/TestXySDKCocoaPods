#import <Foundation/Foundation.h>

@interface xy_vod_sdk_server : NSObject

typedef NS_ENUM(NSInteger, XYMode) {
    VodMode = 1,
    DownloadMode = 2,
    HlsMode = 3,
    PreloadMode = 7
};

typedef NS_ENUM(NSInteger, XYKey) {
    KeyPlayPos = 0,
    KeyPlayStuck = 1,
    KeyPlayLoadBuffer = 2,
    KeyPlayCurrentBufferTime = 3,
    KeyPlayCurrentBufferBytes = 4,
    KeyPlayPrepared = 5
};

+ (int)init:(NSString*)did;
+ (void)close;
+ (NSString *)getVersion;
+ (int)setLogEnable:(int)enable;
+ (int)setLocalPath:(NSString *)path;
+ (void)networkChanged:(int)type;
+ (NSString *)playUrlRewrite:(NSString*)url mode:(XYMode)mode;
+ (NSString *)playUrlRewriteBack:(NSString*)url;
+ (NSString *)getInfo:(NSString*)url;
+ (int)setInt64Value:(NSString*)url key:(XYKey)key value:(int64_t)value;
+ (int)isSDKUrl:(NSString*)url;
+ (int)setCDNIP:(NSString*)domain : (NSString*)IP;


@end
