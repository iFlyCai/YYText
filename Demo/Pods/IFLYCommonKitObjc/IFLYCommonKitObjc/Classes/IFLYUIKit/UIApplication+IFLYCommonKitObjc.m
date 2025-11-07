//
//  UIApplication+IFLYCommonKitObjc.m
//  IFLYCommonKitObjc
//
//  Created by iFlyCai on 2025/11/8.
//

#import "UIApplication+IFLYCommonKitObjc.h"

@implementation UIApplication (IFLYCommonKitObjc)

- (UIWindow *)objc_KeyWindow{
    if (@available(iOS 13.0, *)) {
        for (UIWindowScene *scene in [UIApplication sharedApplication].connectedScenes) {
            if (scene.activationState == UISceneActivationStateForegroundActive) {
                for (UIWindow *window in scene.windows) {
                    if (window.isKeyWindow) {
                         NSLog(@"keyWindow: %@", window);
                        return window;
                    }
                }
            }
        }
        return nil;
    } else {
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        return window;
    }
}
@end
