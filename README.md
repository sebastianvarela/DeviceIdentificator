# DeviceIdentificator

[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/DeviceIdentificator.svg)](https://img.shields.io/cocoapods/v/DeviceIdentificator.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](https://img.shields.io/cocoapods/p/DeviceIdentificator.svg?style=flat)](http://cocoadocs.org/docsets/DeviceIdentificator)

## Introduction
UIDevice extension to fetch current device info such commercial name (iPhone X instead of iPhone10,3).

## Installation
This framework is compatible with Carthage or Cocoapods, use one of both.
### Carthage
Add this into your `Cartfile`:
```ogdl
github "sebastianvarela/DeviceIdentificator" 
```
### Cocoapods
Add this into your `Podfile`:
```ogdl
pod 'DeviceIdentificator' 
```

## Usage:
Swift:
```Swift
let deviceModel = UIDevice.current.deviceModel
print("Current device: \(deviceModel.name)")

let isIpad = UIDevice.current.isIpad
```

Objective-C:
```Objective-C
NSString *deviceModelName = [UIDevice currentDevice].deviceModelName
NSLog("Current device: %@", deviceModelName)
```
