//
//  CustomMethods.m
//  ReactNativeSwiftModule
//
//  Created by CONG LE on 10/23/22.
//

#import "React/RCTBridgeModule.h"

/**
 Expose Swift classes  and methods to React Native using the following pattern:
 
 @interface
 RCT_EXTERN_MODULE(ClassName, NSObject)
 RCT_EXTERN_METHOD(classMethod1)
 RCT_EXTERN_METHOD(classMethod2WithParams: (DataType) paramName)
 @end
 
 **/
@interface
RCT_EXTERN_MODULE(CustomMethods, NSObject)

RCT_EXTERN_METHOD(simpleMethod)

RCT_EXTERN_METHOD(simpleMethodReturns:
                  (RCTResponseSenderBlock) callback)

RCT_EXTERN_METHOD(simpleMethodWithParams:
                  (NSString *) param
                  callback: (RCTResponseSenderBlock) callback)

RCT_EXTERN_METHOD(resolvePromise:
                  (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject
                  )

RCT_EXTERN_METHOD(rejectPromise:
                  (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject
                  )
@end
