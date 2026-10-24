// 42 - Objective-C - Legacy Apple Graphics Core
#import <Foundation/Foundation.h>

int main(void) {
    @autoreleasepool {
        NSLog(@"Objective-C: Legacy Apple Graphics Core rendering frame 1.");
        NSArray *layers = @[@"background", @"sprites", @"hud"];
        NSLog(@"Graphics layers composited: %@", [layers componentsJoinedByString:@" + "]);
    }
    return 0;
}
