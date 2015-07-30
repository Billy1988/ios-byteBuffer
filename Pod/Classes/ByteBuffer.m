//
//  ByteBuffer.m
//  Pods
//
//  Created by Billy Lee on 30/7/15.
//
//

#import "ByteBuffer.h"

@interface ByteBuffer()

@property (nonatomic, strong) NSMutableData *data;
@property (nonatomic, assign) int capacity;
@property (nonatomic, assign) ByteOrder byteOrder;

@end

@implementation ByteBuffer

+ (instancetype)initWithOrder:(ByteOrder)order {
    ByteBuffer *buffer = [[ByteBuffer alloc] init];
    [buffer setOrder:order];
    return buffer;
}

- (id)init {
    self = [super init];
    self.data = [NSMutableData data];
    return self;
}

- (void)setOrder:(ByteOrder)order {
    self.byteOrder = order;
}

- (void)put:(Byte)b {
    [self.data appendBytes:&b length:sizeof(b)];
}

- (void)putByteBuffer:(ByteBuffer*)bb {
    [self.data appendData:bb.convertNSData];
}

- (void)putData:(NSData*)data {
    [self.data appendData:data];
}

- (void)putShort:(short)d {
    short temp = d;
    if (self.byteOrder == ByteOrderBigEndian) {
        temp = CFSwapInt16HostToBig(d);
    }
    [self.data appendBytes:&temp length:sizeof(d)];
}

- (void)putFloat:(float)f {
    float temp = f;
    if (self.byteOrder == ByteOrderBigEndian) {
        temp = CFSwapInt16HostToBig(f);
    }
    [self.data appendBytes:&temp length:sizeof(temp)];
}


- (void)putInt:(int)i {
    int temp = i;
    if (self.byteOrder == ByteOrderBigEndian) {
        temp = CFSwapInt16HostToBig(i);
    }
    [self.data appendBytes:&temp length:sizeof(i)];
}

- (Byte)get:(int)index {
    char* byte = (char*)self.data.bytes;
    return byte[index];
}

- (float)getFloat:(int)index {
    float temp = 0;
    ByteBuffer *buffer = [[ByteBuffer alloc] init];
    [buffer putData:[self.data subdataWithRange:NSMakeRange(index, sizeof(temp))]];
    
    [buffer.convertNSData getBytes:&temp length:sizeof(temp)];
    return temp;
}

- (int)getInt:(int)index {
    int temp;
    
    [self.data getBytes:&temp range:NSMakeRange(index, sizeof(temp))];
    
    return temp;
}

- (NSData*)convertNSData {
    return self.data;
}

@end