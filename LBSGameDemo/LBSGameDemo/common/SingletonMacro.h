//
//  SingletonMacro.h
//  LBSGameDemo
//
//  Created by Sidney on 12-9-24.
//  Copyright (c) 2012年 Sidney. All rights reserved.
//

#ifndef LBSGameDemo_SingletonMacro_h
#define LBSGameDemo_SingletonMacro_h

#define SYNTHESIZE_SINGLETON_FOR_CLASS_DECLARE(classname) \
+ (classname *)instance;

#define SYNTHESIZE_SINGLETON_FOR_CLASS(classname) \
+ (classname *)instance \
{ \
    static classname *_instance = nil; \
    @synchronized(self) \
    { \
        if (!_instance) { \
            _instance = [[classname alloc] init]; \
        } \
    } \
    return _instance; \
} \

#endif
