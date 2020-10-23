//
//  FlutterIosTextLabelFactory.m
//  Runner
//
//  Created by 郑嘉明 on 2020/10/23.
//

#import "FlutterIosTextLabelFactory.h"
#import "FlutterIosTextLabel.h"

@implementation FlutterIosTextLabelFactory{
     NSObject<FlutterBinaryMessenger>*_messenger;
}
- (instancetype)initWithMessenger:(NSObject<FlutterBinaryMessenger> *)messager{
    self = [super init];
    if (self) {
        _messenger = messager;
    }
    return self;
}

-(NSObject<FlutterMessageCodec> *)createArgsCodec{
    return [FlutterStandardMessageCodec sharedInstance];
}

- (nonnull NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id _Nullable)args {
    FlutterIosTextLabel *textLagel = [[FlutterIosTextLabel alloc] initWithWithFrame:frame viewIdentifier:viewId arguments:args binaryMessenger:_messenger];
    return textLagel;
}

@end
