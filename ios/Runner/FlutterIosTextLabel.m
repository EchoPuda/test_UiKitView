//
//  FlutterIosTextLabel.m
//  Runner
//
//  Created by 郑嘉明 on 2020/10/23.
//

#import "FlutterIosTextLabel.h"

@implementation FlutterIosTextLabel{
    //FlutterIosTextLabel 创建后的标识
    int64_t _viewId;
    UILabel * _uiLabel;
    //消息回调
    FlutterMethodChannel* _channel;
}

- (instancetype)initWithWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id)args binaryMessenger:(NSObject<FlutterBinaryMessenger> *)messenger{
  if ([super init]) {
      if (frame.size.width==0) {
          frame=CGRectMake(frame.origin.x, frame.origin.y, [UIScreen mainScreen].bounds.size.width, 22);
      }
      _uiLabel =[[UILabel alloc] initWithFrame:frame];
      _uiLabel.textColor=[UIColor redColor];
      _uiLabel.text=@"ios 原生 uilabel ";
      _uiLabel.font=[UIFont systemFontOfSize:14];
      _uiLabel.textAlignment=NSTextAlignmentCenter;
      _uiLabel.backgroundColor=[UIColor grayColor];
      
      _viewId = viewId;
  
  }
  return self;
}

- (nonnull UIView *)view {
    return _uiLabel;
}

@end
