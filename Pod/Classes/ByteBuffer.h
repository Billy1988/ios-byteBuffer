//
//  ByteBuffer.h
//  Pods
//
//  Created by Billy Lee on 30/7/15.
//
//

#import <Foundation/Foundation.h>

typedef enum {
    ByteOrderBigEndian,
    ByteOrderLittleEndian,
} ByteOrder;

@interface ByteBuffer : NSObject

+ (instancetype)initWithOrder:(ByteOrder)order;

- (void)setOrder:(ByteOrder)order;

- (void)put:(Byte)b;

- (void)putByteBuffer:(ByteBuffer*)bb;

- (void)putData:(NSData*)data;

- (void)putShort:(short)d;

- (void)putFloat:(float)f;

- (void)putInt:(int)i;

- (Byte)get:(int)index;

- (float)getFloat:(int)index;

- (int)getInt:(int)index;

- (NSData*)convertNSData;

@end
