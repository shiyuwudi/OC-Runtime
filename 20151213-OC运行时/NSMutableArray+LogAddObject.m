//
//  NSMutableArray+LogAddObject.m
//  20151213-OC运行时
//
//  Created by apple2 on 15/12/13.
//  Copyright © 2015年 shiyuwudi. All rights reserved.
//

#import "NSMutableArray+LogAddObject.h"
#import <UIKit/UIKit.h>

@implementation NSMutableArray (LogAddObject)

//+ (void)load {
//    Method abc = class_getInstanceMethod(self, @selector(abc:));
//    Method a = class_getClassMethod(self, @selector(a));
//    
//    printf("%s\n",method_getTypeEncoding(abc));
//    printf("%s\n",method_getTypeEncoding(a));
//}
- (void)logAddObject {
}
-(NSString *)abc:(NSString *)str1{
    NSString *a = @"";
    return a;
}
+(void)a{
    NSLog(@"");
}
+(BOOL)resolveInstanceMethod:(SEL)sel{
    if (sel==@selector(shiyuwudi:)) {
        id block = ^(id self,NSString * name){
            NSLog(@"cannot recognize selector,%@!",name);
        };
        IMP imp = imp_implementationWithBlock(block);
        class_addMethod(self, sel, imp, "v@:@");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}
@end
