//
//  CustomMethods.swift
//  ReactNativeSwiftModule
//
//  Created by CONG LE on 10/23/22.
//

import Foundation

@objc(CustomMethods)
class CustomMethods: NSObject {
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  @objc
  public func simpleMethod() {
    print("This is a simple method printed on XCode console log")
  }
 
  @objc
  public func simpleMethodReturns(
    _ callback: RCTResponseSenderBlock
  ) {
    callback(["CustomMethods.simpleMethodReturns() from Swift Module"])
  }
  
  @objc
  public func simpleMethodWithParams(
    _ param: String,
    callback: RCTResponseSenderBlock
  ) {
    callback(["CustomMethods.simpleMethodWithParams('\(param)') from Swift Module"])
  }
 
  @objc
  public func resolvePromise(
    _ resolve: RCTPromiseResolveBlock,
    rejecter reject: RCTPromiseRejectBlock
  ) -> Void {
    resolve("CustomMethods.resolvePromise() from Swift Module")
  }
  
  @objc
  public func rejectPromise(
    _ resolve: RCTPromiseResolveBlock,
    rejecter reject: RCTPromiseRejectBlock
  ) -> Void {
    reject("0", "CustomMethods.rejectPromise() from Swift Module", nil)
  }
}
