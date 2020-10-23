//
//  FlutterIosTextLabelRegistran.m
//  Runner
//
//  Created by 郑嘉明 on 2020/10/23.
//

#import "FlutterIosTextLabelRegistran.h"

@implementation FlutterIosTextLabelRegistran

+(void)registerWithRegistry:(NSObject<FlutterPluginRegistry> *)registry{
    //注册插件
    [FlutterIosTextLabelPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterIosTextLabelPlugin"]];
}

@end
