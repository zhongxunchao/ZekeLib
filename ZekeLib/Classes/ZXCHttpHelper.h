//
//  ZXCHttpHelper.h
//  ZekeLib
//
//  Created by ιιθΆ on 10/26/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZXCHttpHelper : NSObject

- (void)getWithUrl:(NSString *)url withCompletion:(void (^)(id responseObject))completion failed:(void (^)(NSError *error))failed;
@end

NS_ASSUME_NONNULL_END
