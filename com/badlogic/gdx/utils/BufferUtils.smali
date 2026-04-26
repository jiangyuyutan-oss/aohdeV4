.class public final Lcom/badlogic/gdx/utils/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# static fields
.field static allocatedUnsafe:I

.field static unsafeBuffers:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static bytesToElements(Ljava/nio/Buffer;I)I
    .registers 5
    .param p0, "dst"  # Ljava/nio/Buffer;
    .param p1, "bytes"  # I

    .line 421
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 422
    return p1

    .line 423
    :cond_5
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_c

    .line 424
    ushr-int/lit8 v0, p1, 0x1

    return v0

    .line 425
    :cond_c
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_13

    .line 426
    ushr-int/lit8 v0, p1, 0x1

    return v0

    .line 427
    :cond_13
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1a

    .line 428
    ushr-int/lit8 v0, p1, 0x2

    return v0

    .line 429
    :cond_1a
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_21

    .line 430
    ushr-int/lit8 v0, p1, 0x3

    return v0

    .line 431
    :cond_21
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_28

    .line 432
    ushr-int/lit8 v0, p1, 0x2

    return v0

    .line 433
    :cond_28
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_2f

    .line 434
    ushr-int/lit8 v0, p1, 0x3

    return v0

    .line 436
    :cond_2f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t copy to a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native clear(Ljava/nio/ByteBuffer;I)V
.end method

.method public static copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V
    .registers 6
    .param p0, "src"  # Ljava/nio/Buffer;
    .param p1, "dst"  # Ljava/nio/Buffer;
    .param p2, "numElements"  # I

    .line 230
    invoke-static {p0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->elementsToBytes(Ljava/nio/Buffer;I)I

    move-result v0

    .line 231
    .local v0, "numBytes":I
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 232
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v2

    invoke-static {p0, v1, p1, v2, v0}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V

    .line 233
    return-void
.end method

.method public static copy([BILjava/nio/Buffer;I)V
    .registers 6
    .param p0, "src"  # [B
    .param p1, "srcOffset"  # I
    .param p2, "dst"  # Ljava/nio/Buffer;
    .param p3, "numElements"  # I

    .line 72
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 73
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([BILjava/nio/Buffer;II)V

    .line 74
    return-void
.end method

.method public static copy([CIILjava/nio/Buffer;)V
    .registers 6
    .param p0, "src"  # [C
    .param p1, "srcOffset"  # I
    .param p2, "numElements"  # I
    .param p3, "dst"  # Ljava/nio/Buffer;

    .line 99
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p2, 0x1

    invoke-static {p0, p1, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([CILjava/nio/Buffer;II)V

    .line 100
    return-void
.end method

.method public static copy([CILjava/nio/Buffer;I)V
    .registers 6
    .param p0, "src"  # [C
    .param p1, "srcOffset"  # I
    .param p2, "dst"  # Ljava/nio/Buffer;
    .param p3, "numElements"  # I

    .line 160
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x1

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 161
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p3, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([CILjava/nio/Buffer;II)V

    .line 162
    return-void
.end method

.method public static copy([DIILjava/nio/Buffer;)V
    .registers 6
    .param p0, "src"  # [D
    .param p1, "srcOffset"  # I
    .param p2, "numElements"  # I
    .param p3, "dst"  # Ljava/nio/Buffer;

    .line 147
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p2, 0x3

    invoke-static {p0, p1, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([DILjava/nio/Buffer;II)V

    .line 148
    return-void
.end method

.method public static copy([DILjava/nio/Buffer;I)V
    .registers 6
    .param p0, "src"  # [D
    .param p1, "srcOffset"  # I
    .param p2, "dst"  # Ljava/nio/Buffer;
    .param p3, "numElements"  # I

    .line 216
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x3

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 217
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p3, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([DILjava/nio/Buffer;II)V

    .line 218
    return-void
.end method

.method public static copy([FIILjava/nio/Buffer;)V
    .registers 6
    .param p0, "src"  # [F
    .param p1, "srcOffset"  # I
    .param p2, "numElements"  # I
    .param p3, "dst"  # Ljava/nio/Buffer;

    .line 135
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p2, 0x2

    invoke-static {p0, p1, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([FILjava/nio/Buffer;II)V

    .line 136
    return-void
.end method

.method public static copy([FILjava/nio/Buffer;I)V
    .registers 6
    .param p0, "src"  # [F
    .param p1, "srcOffset"  # I
    .param p2, "dst"  # Ljava/nio/Buffer;
    .param p3, "numElements"  # I

    .line 202
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x2

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 203
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p3, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([FILjava/nio/Buffer;II)V

    .line 204
    return-void
.end method

.method public static copy([FLjava/nio/Buffer;II)V
    .registers 5
    .param p0, "src"  # [F
    .param p1, "dst"  # Ljava/nio/Buffer;
    .param p2, "numFloats"  # I
    .param p3, "offset"  # I

    .line 54
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    .line 55
    shl-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_11

    .line 56
    :cond_a
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_11

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 58
    :cond_11
    :goto_11
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([FLjava/nio/Buffer;II)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 60
    return-void
.end method

.method public static copy([IIILjava/nio/Buffer;)V
    .registers 6
    .param p0, "src"  # [I
    .param p1, "srcOffset"  # I
    .param p2, "numElements"  # I
    .param p3, "dst"  # Ljava/nio/Buffer;

    .line 111
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p2, 0x2

    invoke-static {p0, p1, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([IILjava/nio/Buffer;II)V

    .line 112
    return-void
.end method

.method public static copy([IILjava/nio/Buffer;I)V
    .registers 6
    .param p0, "src"  # [I
    .param p1, "srcOffset"  # I
    .param p2, "dst"  # Ljava/nio/Buffer;
    .param p3, "numElements"  # I

    .line 174
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x2

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 175
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p3, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([IILjava/nio/Buffer;II)V

    .line 176
    return-void
.end method

.method public static copy([JIILjava/nio/Buffer;)V
    .registers 6
    .param p0, "src"  # [J
    .param p1, "srcOffset"  # I
    .param p2, "numElements"  # I
    .param p3, "dst"  # Ljava/nio/Buffer;

    .line 123
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p2, 0x3

    invoke-static {p0, p1, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([JILjava/nio/Buffer;II)V

    .line 124
    return-void
.end method

.method public static copy([JILjava/nio/Buffer;I)V
    .registers 6
    .param p0, "src"  # [J
    .param p1, "srcOffset"  # I
    .param p2, "dst"  # Ljava/nio/Buffer;
    .param p3, "numElements"  # I

    .line 188
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x3

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 189
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p3, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([JILjava/nio/Buffer;II)V

    .line 190
    return-void
.end method

.method public static copy([SILjava/nio/Buffer;I)V
    .registers 6
    .param p0, "src"  # [S
    .param p1, "srcOffset"  # I
    .param p2, "dst"  # Ljava/nio/Buffer;
    .param p3, "numElements"  # I

    .line 86
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x1

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 87
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p3, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([SILjava/nio/Buffer;II)V

    .line 88
    return-void
.end method

.method private static native copyJni(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([BILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([CILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([DILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([FILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([FLjava/nio/Buffer;II)V
.end method

.method private static native copyJni([IILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([JILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([SILjava/nio/Buffer;II)V
.end method

.method public static disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p0, "buffer"  # Ljava/nio/ByteBuffer;

    .line 501
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 502
    .local v0, "size":I
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 503
    :try_start_7
    sget-object v2, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 505
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_22

    .line 506
    sget v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    sub-int/2addr v1, v0

    sput v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 507
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->freeMemory(Ljava/nio/ByteBuffer;)V

    .line 508
    return-void

    .line 504
    :cond_1a
    :try_start_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "buffer not allocated with newUnsafeByteBuffer or already disposed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "size":I
    .end local p0  # "buffer":Ljava/nio/ByteBuffer;
    throw v2

    .line 505
    .restart local v0  # "size":I
    .restart local p0  # "buffer":Ljava/nio/ByteBuffer;
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw v2
.end method

.method private static elementsToBytes(Ljava/nio/Buffer;I)I
    .registers 5
    .param p0, "dst"  # Ljava/nio/Buffer;
    .param p1, "elements"  # I

    .line 440
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 441
    return p1

    .line 442
    :cond_5
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_c

    .line 443
    shl-int/lit8 v0, p1, 0x1

    return v0

    .line 444
    :cond_c
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_13

    .line 445
    shl-int/lit8 v0, p1, 0x1

    return v0

    .line 446
    :cond_13
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1a

    .line 447
    shl-int/lit8 v0, p1, 0x2

    return v0

    .line 448
    :cond_1a
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_21

    .line 449
    shl-int/lit8 v0, p1, 0x3

    return v0

    .line 450
    :cond_21
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_28

    .line 451
    shl-int/lit8 v0, p1, 0x2

    return v0

    .line 452
    :cond_28
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_2f

    .line 453
    shl-int/lit8 v0, p1, 0x3

    return v0

    .line 455
    :cond_2f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t copy to a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native find(Ljava/nio/Buffer;IILjava/nio/Buffer;II)J
.end method

.method private static native find(Ljava/nio/Buffer;IILjava/nio/Buffer;IIF)J
.end method

.method private static native find(Ljava/nio/Buffer;II[FII)J
.end method

.method private static native find(Ljava/nio/Buffer;II[FIIF)J
.end method

.method private static native find([FIILjava/nio/Buffer;II)J
.end method

.method private static native find([FIILjava/nio/Buffer;IIF)J
.end method

.method private static native find([FII[FII)J
.end method

.method private static native find([FII[FIIF)J
.end method

.method public static findFloats(Ljava/nio/Buffer;ILjava/nio/Buffer;I)J
    .registers 10
    .param p0, "vertex"  # Ljava/nio/Buffer;
    .param p1, "strideInBytes"  # I
    .param p2, "vertices"  # Ljava/nio/Buffer;
    .param p3, "numVertices"  # I

    .line 370
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->find(Ljava/nio/Buffer;IILjava/nio/Buffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats(Ljava/nio/Buffer;ILjava/nio/Buffer;IF)J
    .registers 12
    .param p0, "vertex"  # Ljava/nio/Buffer;
    .param p1, "strideInBytes"  # I
    .param p2, "vertices"  # Ljava/nio/Buffer;
    .param p3, "numVertices"  # I
    .param p4, "epsilon"  # F

    .line 386
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/utils/BufferUtils;->find(Ljava/nio/Buffer;IILjava/nio/Buffer;IIF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats(Ljava/nio/Buffer;I[FI)J
    .registers 10
    .param p0, "vertex"  # Ljava/nio/Buffer;
    .param p1, "strideInBytes"  # I
    .param p2, "vertices"  # [F
    .param p3, "numVertices"  # I

    .line 378
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->find(Ljava/nio/Buffer;II[FII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats(Ljava/nio/Buffer;I[FIF)J
    .registers 12
    .param p0, "vertex"  # Ljava/nio/Buffer;
    .param p1, "strideInBytes"  # I
    .param p2, "vertices"  # [F
    .param p3, "numVertices"  # I
    .param p4, "epsilon"  # F

    .line 394
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/utils/BufferUtils;->find(Ljava/nio/Buffer;II[FIIF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats([FILjava/nio/Buffer;I)J
    .registers 10
    .param p0, "vertex"  # [F
    .param p1, "strideInBytes"  # I
    .param p2, "vertices"  # Ljava/nio/Buffer;
    .param p3, "numVertices"  # I

    .line 374
    const/4 v1, 0x0

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->find([FIILjava/nio/Buffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats([FILjava/nio/Buffer;IF)J
    .registers 12
    .param p0, "vertex"  # [F
    .param p1, "strideInBytes"  # I
    .param p2, "vertices"  # Ljava/nio/Buffer;
    .param p3, "numVertices"  # I
    .param p4, "epsilon"  # F

    .line 390
    const/4 v1, 0x0

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/utils/BufferUtils;->find([FIILjava/nio/Buffer;IIF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats([FI[FI)J
    .registers 10
    .param p0, "vertex"  # [F
    .param p1, "strideInBytes"  # I
    .param p2, "vertices"  # [F
    .param p3, "numVertices"  # I

    .line 382
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->find([FII[FII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats([FI[FIF)J
    .registers 12
    .param p0, "vertex"  # [F
    .param p1, "strideInBytes"  # I
    .param p2, "vertices"  # [F
    .param p3, "numVertices"  # I
    .param p4, "epsilon"  # F

    .line 398
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/utils/BufferUtils;->find([FII[FIIF)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native freeMemory(Ljava/nio/ByteBuffer;)V
.end method

.method public static getAllocatedBytesUnsafe()I
    .registers 1

    .line 549
    sget v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    return v0
.end method

.method private static native getBufferAddress(Ljava/nio/Buffer;)J
.end method

.method public static getUnsafeBufferAddress(Ljava/nio/Buffer;)J
    .registers 5
    .param p0, "buffer"  # Ljava/nio/Buffer;

    .line 532
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->getBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z
    .registers 4
    .param p0, "buffer"  # Ljava/nio/ByteBuffer;

    .line 511
    sget-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    .line 512
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 513
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static newByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "numBytes"  # I

    .line 471
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 472
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 473
    return-object v0
.end method

.method public static newCharBuffer(I)Ljava/nio/CharBuffer;
    .registers 3
    .param p0, "numChars"  # I

    .line 483
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 484
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 485
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    return-object v1
.end method

.method private static native newDisposableByteBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static newDoubleBuffer(I)Ljava/nio/DoubleBuffer;
    .registers 3
    .param p0, "numDoubles"  # I

    .line 465
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 466
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 467
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "numFloats"  # I

    .line 459
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 460
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 461
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newIntBuffer(I)Ljava/nio/IntBuffer;
    .registers 3
    .param p0, "numInts"  # I

    .line 489
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 490
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 491
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newLongBuffer(I)Ljava/nio/LongBuffer;
    .registers 3
    .param p0, "numLongs"  # I

    .line 495
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 496
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 497
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newShortBuffer(I)Ljava/nio/ShortBuffer;
    .registers 3
    .param p0, "numShorts"  # I

    .line 477
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 478
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 479
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "numBytes"  # I

    .line 519
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->newDisposableByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 520
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 521
    sget v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    add-int/2addr v1, p0

    sput v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 522
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 523
    :try_start_13
    sget-object v2, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 524
    monitor-exit v1

    .line 525
    return-object v0

    .line 524
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public static newUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "buffer"  # Ljava/nio/ByteBuffer;

    .line 540
    sget v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 541
    sget-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    .line 542
    :try_start_c
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 543
    monitor-exit v0

    .line 544
    return-object p0

    .line 543
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1
.end method

.method private static positionInBytes(Ljava/nio/Buffer;)I
    .registers 4
    .param p0, "dst"  # Ljava/nio/Buffer;

    .line 402
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_9

    .line 403
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0

    .line 404
    :cond_9
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_14

    .line 405
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    return v0

    .line 406
    :cond_14
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_1f

    .line 407
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    return v0

    .line 408
    :cond_1f
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2a

    .line 409
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    return v0

    .line 410
    :cond_2a
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_35

    .line 411
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    return v0

    .line 412
    :cond_35
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_40

    .line 413
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    return v0

    .line 414
    :cond_40
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_4b

    .line 415
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    return v0

    .line 417
    :cond_4b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t copy to a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix3;)V
    .registers 11
    .param p0, "data"  # Ljava/nio/Buffer;
    .param p1, "dimensions"  # I
    .param p2, "strideInBytes"  # I
    .param p3, "count"  # I
    .param p4, "matrix"  # Lcom/badlogic/gdx/math/Matrix3;

    .line 313
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix3;I)V

    .line 314
    return-void
.end method

.method public static transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix3;I)V
    .registers 8
    .param p0, "data"  # Ljava/nio/Buffer;
    .param p1, "dimensions"  # I
    .param p2, "strideInBytes"  # I
    .param p3, "count"  # I
    .param p4, "matrix"  # Lcom/badlogic/gdx/math/Matrix3;
    .param p5, "offset"  # I

    .line 336
    packed-switch p1, :pswitch_data_20

    .line 344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 338
    :pswitch_9  #0x3
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p0, p2, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV3M3Jni(Ljava/nio/Buffer;II[FI)V

    .line 339
    goto :goto_1f

    .line 341
    :pswitch_14  #0x2
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p0, p2, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV2M3Jni(Ljava/nio/Buffer;II[FI)V

    .line 342
    nop

    .line 346
    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_14  #00000002
        :pswitch_9  #00000003
    .end packed-switch
.end method

.method public static transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix4;)V
    .registers 11
    .param p0, "data"  # Ljava/nio/Buffer;
    .param p1, "dimensions"  # I
    .param p2, "strideInBytes"  # I
    .param p3, "count"  # I
    .param p4, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 243
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix4;I)V

    .line 244
    return-void
.end method

.method public static transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix4;I)V
    .registers 8
    .param p0, "data"  # Ljava/nio/Buffer;
    .param p1, "dimensions"  # I
    .param p2, "strideInBytes"  # I
    .param p3, "count"  # I
    .param p4, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p5, "offset"  # I

    .line 266
    packed-switch p1, :pswitch_data_2c

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 268
    :pswitch_9  #0x4
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p0, p2, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV4M4Jni(Ljava/nio/Buffer;II[FI)V

    .line 269
    goto :goto_2a

    .line 271
    :pswitch_14  #0x3
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p0, p2, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV3M4Jni(Ljava/nio/Buffer;II[FI)V

    .line 272
    goto :goto_2a

    .line 274
    :pswitch_1f  #0x2
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p0, p2, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV2M4Jni(Ljava/nio/Buffer;II[FI)V

    .line 275
    nop

    .line 279
    :goto_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_1f  #00000002
        :pswitch_14  #00000003
        :pswitch_9  #00000004
    .end packed-switch
.end method

.method public static transform([FIIILcom/badlogic/gdx/math/Matrix3;)V
    .registers 11
    .param p0, "data"  # [F
    .param p1, "dimensions"  # I
    .param p2, "strideInBytes"  # I
    .param p3, "count"  # I
    .param p4, "matrix"  # Lcom/badlogic/gdx/math/Matrix3;

    .line 324
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->transform([FIIILcom/badlogic/gdx/math/Matrix3;I)V

    .line 325
    return-void
.end method

.method public static transform([FIIILcom/badlogic/gdx/math/Matrix3;I)V
    .registers 7
    .param p0, "data"  # [F
    .param p1, "dimensions"  # I
    .param p2, "strideInBytes"  # I
    .param p3, "count"  # I
    .param p4, "matrix"  # Lcom/badlogic/gdx/math/Matrix3;
    .param p5, "offset"  # I

    .line 357
    packed-switch p1, :pswitch_data_16

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 359
    :pswitch_9  #0x3
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p0, p2, p3, v0, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV3M3Jni([FII[FI)V

    .line 360
    goto :goto_15

    .line 362
    :pswitch_f  #0x2
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p0, p2, p3, v0, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV2M3Jni([FII[FI)V

    .line 363
    nop

    .line 367
    :goto_15
    return-void

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_f  #00000002
        :pswitch_9  #00000003
    .end packed-switch
.end method

.method public static transform([FIIILcom/badlogic/gdx/math/Matrix4;)V
    .registers 11
    .param p0, "data"  # [F
    .param p1, "dimensions"  # I
    .param p2, "strideInBytes"  # I
    .param p3, "count"  # I
    .param p4, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 254
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->transform([FIIILcom/badlogic/gdx/math/Matrix4;I)V

    .line 255
    return-void
.end method

.method public static transform([FIIILcom/badlogic/gdx/math/Matrix4;I)V
    .registers 7
    .param p0, "data"  # [F
    .param p1, "dimensions"  # I
    .param p2, "strideInBytes"  # I
    .param p3, "count"  # I
    .param p4, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p5, "offset"  # I

    .line 290
    packed-switch p1, :pswitch_data_1c

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 292
    :pswitch_9  #0x4
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0, p2, p3, v0, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV4M4Jni([FII[FI)V

    .line 293
    goto :goto_1b

    .line 295
    :pswitch_f  #0x3
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0, p2, p3, v0, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV3M4Jni([FII[FI)V

    .line 296
    goto :goto_1b

    .line 298
    :pswitch_15  #0x2
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0, p2, p3, v0, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV2M4Jni([FII[FI)V

    .line 299
    nop

    .line 303
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_15  #00000002
        :pswitch_f  #00000003
        :pswitch_9  #00000004
    .end packed-switch
.end method

.method private static native transformV2M3Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV2M3Jni([FII[FI)V
.end method

.method private static native transformV2M4Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV2M4Jni([FII[FI)V
.end method

.method private static native transformV3M3Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV3M3Jni([FII[FI)V
.end method

.method private static native transformV3M4Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV3M4Jni([FII[FI)V
.end method

.method private static native transformV4M4Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV4M4Jni([FII[FI)V
.end method
