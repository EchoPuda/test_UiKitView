//
//  FlutterIosTextLabelPlugin.m
//  Runner
//
//  Created by 郑嘉明 on 2020/10/23.
//

#import "FlutterIosTextLabelPlugin.h"
#import "FlutterIosTextLabelFactory.h"

@implementation FlutterIosTextLabelPlugin

+ (void)registerWithRegistrar:(nonnull NSObject<FlutterPluginRegistrar> *)registrar {
    
    //注册插件
    //注册 FlutterIosTextLabelFactory
    //com.flutter_to_native_test_textview 为flutter 调用此  textLabel 的标识
    [registrar registerViewFactory:[[FlutterIosTextLabelFactory alloc] initWithMessenger:registrar.messenger] withId:@"plugins/test_for_bug"];
}

@end
