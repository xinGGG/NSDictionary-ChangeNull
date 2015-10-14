//
//  NSDictionary+ChangeNull.h
//  BasePro
//
//  Created by Yaoquan Li on 15/7/27.
//  Copyright (c) 2015年 Ray. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (ChangeNull)

-(id)objectForKeyWithoutNull:(id)aKey;

@end
