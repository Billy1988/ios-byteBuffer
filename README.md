# ios-byteBuffer

[![CI Status](http://img.shields.io/travis/Billy Lee/ios-byteBuffer.svg?style=flat)](https://travis-ci.org/Billy Lee/ios-byteBuffer)
[![Version](https://img.shields.io/cocoapods/v/ios-byteBuffer.svg?style=flat)](http://cocoapods.org/pods/ios-byteBuffer)
[![License](https://img.shields.io/cocoapods/l/ios-byteBuffer.svg?style=flat)](http://cocoapods.org/pods/ios-byteBuffer)
[![Platform](https://img.shields.io/cocoapods/p/ios-byteBuffer.svg?style=flat)](http://cocoapods.org/pods/ios-byteBuffer)

## Usage

#allocation
```objective-c
ByteBuffer *buffer = [ByteBuffer initWithOrder:ByteOrderLittleEndian];
```
#input data
```objective-c
- (void)put:(Byte)b;

- (void)putByteBuffer:(ByteBuffer*)bb;

- (void)putData:(NSData*)data;

- (void)putShort:(short)d;

- (void)putFloat:(float)f;

- (void)putInt:(int)i;
```
#output
```objective-c
- (Byte)get:(int)index;

- (float)getFloat:(int)index;

- (int)getInt:(int)index;

- (NSData*)convertNSData;
```

## Requirements
iOS platform, objective-c
## Installation

ios-byteBuffer is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ios-byteBuffer"
```

## Author

Billy Lee, lchb1988@gmail.com

## License

ios-byteBuffer is available under the MIT license. See the LICENSE file for more info.
