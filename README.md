# DeviceIdentificator

[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/DeviceIdentificator.svg)](https://img.shields.io/cocoapods/v/DeviceIdentificator.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![Platform](https://img.shields.io/badge/platform-iOS-blue.svg?style=flat) 
![Platform](https://img.shields.io/badge/platform-tvOS-blue.svg?style=flat)
[![Build Status](https://travis-ci.org/sebastianvarela/DeviceIdentificator.svg?branch=master)](https://travis-ci.org/sebastianvarela/DeviceIdentificator) [![codecov](https://codecov.io/gh/sebastianvarela/DeviceIdentificator/branch/master/graph/badge.svg)](https://codecov.io/gh/sebastianvarela/DeviceIdentificator) [![codebeat badge](https://codebeat.co/badges/0230786d-680e-4d4b-bcb0-bacc6693571f)](https://codebeat.co/projects/github-com-sebastianvarela-deviceidentificator-master)


## Introduction
UIDevice extension to fetch current device info such commercial name (iPhone X instead of iPhone10,3).

## Platforms 
Support for iOS and tvOS

## Support
For Swift 4 please use v1
For Swift 5 please use v2+

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

## Usage
Swift:
```swift
let deviceModel = UIDevice.current.deviceModel
print("Current device: \(deviceModel.name)")

let isIpad = UIDevice.current.isIpad
let isSimulator = UIDevice.current.isSimulator
```

Objective-C:
```objectivec
NSString *deviceModelName = [UIDevice currentDevice].deviceModelName;
NSLog(@"Current device: %@", [UIDevice currentDevice].deviceModelName);
    
BOOL isIpad = [UIDevice currentDevice].isIpad;
BOOL isSimulator = [UIDevice currentDevice].isSimulator;
```
