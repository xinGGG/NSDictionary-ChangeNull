//
//  NSDictionary+ChangeNull.m
//  BasePro
//
//  Created by Yaoquan Li on 15/7/27.
//  Copyright (c) 2015年 Ray. All rights reserved.
//

#import "NSDictionary+ChangeNull.h"

@implementation NSDictionary (ChangeNull)

-(id)objectForKeyWithoutNull:(id)aKey
{
    
    id result = [self objectForKey:aKey];
    if (!result||[result isEqual:[NSNull null]]) {
        result = @"";
        return result;
    }
    if (!result||[result isKindOfClass:[NSNull class]]) {
        result = @"";
        return result;
    }
    if ([result isEqual:@"null"]) {
        result=@"";
        return result;
    }
    if ([result isEqual:@"(null)"]) {
        result=@"";
        return result;
    }
    if ([result isKindOfClass:[NSNumber class]]) {
        return [result stringValue];
    }
    
    if ([result isKindOfClass:[NSDictionary class]]||[result isKindOfClass:[NSArray class]]) {
        return result;
    }
    
    return result;
}

@end

