.class public Lcom/jcraft/jogg/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field private static final BUFFER_INCREMENT:I = 0x100

.field private static final mask:[I


# instance fields
.field buffer:[B

.field endbit:I

.field endbyte:I

.field ptr:I

.field storage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/jcraft/jogg/Buffer;->mask:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
        0x1ffff
        0x3ffff
        0x7ffff
        0xfffff
        0x1fffff
        0x3fffff
        0x7fffff
        0xffffff
        0x1ffffff
        0x3ffffff
        0x7ffffff
        0xfffffff
        0x1fffffff
        0x3fffffff  # 1.9999999f
        0x7fffffff
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    .line 41
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 42
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    .line 43
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    return-void
.end method

.method public static ilog(I)I
    .registers 2
    .param p0, "v"  # I

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "ret":I
    :goto_1
    if-lez p0, :cond_8

    .line 284
    add-int/lit8 v0, v0, 0x1

    .line 285
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 287
    :cond_8
    return v0
.end method

.method public static report(Ljava/lang/String;)V
    .registers 2
    .param p0, "in"  # Ljava/lang/String;

    .line 291
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 293
    return-void
.end method


# virtual methods
.method public adv(I)V
    .registers 4
    .param p1, "bits"  # I

    .line 155
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr p1, v0

    .line 156
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 157
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    .line 158
    and-int/lit8 v0, p1, 0x7

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 159
    return-void
.end method

.method public adv1()V
    .registers 3

    .line 162
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 163
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_1a

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 165
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 166
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    .line 168
    :cond_1a
    return-void
.end method

.method public bits()I
    .registers 3

    .line 274
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr v0, v1

    return v0
.end method

.method public buffer()[B
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    return-object v0
.end method

.method public bytes()I
    .registers 3

    .line 270
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public look(I)I
    .registers 7
    .param p1, "bits"  # I

    .line 123
    sget-object v0, Lcom/jcraft/jogg/Buffer;->mask:[I

    aget v0, v0, p1

    .line 125
    .local v0, "m":I
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr p1, v1

    .line 127
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    const/16 v3, 0x8

    if-lt v1, v2, :cond_1d

    .line 128
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v2, p1, -0x1

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    if-lt v1, v2, :cond_1d

    .line 129
    const/4 v1, -0x1

    return v1

    .line 132
    :cond_1d
    iget-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    ushr-int/2addr v1, v2

    .line 133
    .local v1, "ret":I
    if-le p1, v3, :cond_79

    .line 134
    iget-object v2, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v3, v4

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 135
    const/16 v2, 0x10

    if-le p1, v2, :cond_79

    .line 136
    iget-object v3, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v2, v4

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    .line 137
    const/16 v2, 0x18

    if-le p1, v2, :cond_79

    .line 138
    iget-object v3, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v2, v4

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    .line 139
    const/16 v2, 0x20

    if-le p1, v2, :cond_79

    iget v3, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    if-eqz v3, :cond_79

    .line 140
    iget-object v3, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v4, v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v2, v4

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    .line 145
    :cond_79
    and-int v2, v0, v1

    return v2
.end method

.method public look1()I
    .registers 3

    .line 149
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    if-lt v0, v1, :cond_8

    .line 150
    const/4 v0, -0x1

    return v0

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read(I)I
    .registers 7
    .param p1, "bits"  # I

    .line 172
    sget-object v0, Lcom/jcraft/jogg/Buffer;->mask:[I

    aget v0, v0, p1

    .line 174
    .local v0, "m":I
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr p1, v1

    .line 176
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    const/16 v3, 0x8

    if-lt v1, v2, :cond_2f

    .line 177
    const/4 v1, -0x1

    .line 178
    .local v1, "ret":I
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v4, p1, -0x1

    div-int/2addr v4, v3

    add-int/2addr v2, v4

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    if-lt v2, v4, :cond_2f

    .line 179
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    div-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 180
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    div-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    .line 181
    and-int/lit8 v2, p1, 0x7

    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 182
    return v1

    .line 186
    .end local v1  # "ret":I
    :cond_2f
    iget-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    ushr-int/2addr v1, v2

    .line 187
    .restart local v1  # "ret":I
    if-le p1, v3, :cond_8b

    .line 188
    iget-object v2, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v3, v4

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 189
    const/16 v2, 0x10

    if-le p1, v2, :cond_8b

    .line 190
    iget-object v3, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v2, v4

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    .line 191
    const/16 v2, 0x18

    if-le p1, v2, :cond_8b

    .line 192
    iget-object v3, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v2, v4

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    .line 193
    const/16 v2, 0x20

    if-le p1, v2, :cond_8b

    iget v3, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    if-eqz v3, :cond_8b

    .line 194
    iget-object v3, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v4, v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v2, v4

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    .line 200
    :cond_8b
    and-int/2addr v1, v0

    .line 202
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    div-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 203
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    div-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    .line 204
    and-int/lit8 v2, p1, 0x7

    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 205
    return v1
.end method

.method public read([BI)V
    .registers 6
    .param p1, "s"  # [B
    .param p2, "bytes"  # I

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "i":I
    :goto_1
    add-int/lit8 v1, p2, -0x1

    .end local p2  # "bytes":I
    .local v1, "bytes":I
    if-eqz p2, :cond_13

    .line 63
    add-int/lit8 p2, v0, 0x1

    .end local v0  # "i":I
    .local p2, "i":I
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    move v0, p2

    move p2, v1

    goto :goto_1

    .line 65
    .end local p2  # "i":I
    .restart local v0  # "i":I
    :cond_13
    return-void
.end method

.method public read1()I
    .registers 5

    .line 247
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-lt v0, v1, :cond_22

    .line 248
    const/4 v0, -0x1

    .line 249
    .local v0, "ret":I
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 250
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    if-le v1, v3, :cond_21

    .line 251
    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 252
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 253
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    .line 255
    :cond_21
    return v0

    .line 258
    .end local v0  # "ret":I
    :cond_22
    iget-object v0, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    .line 260
    .restart local v0  # "ret":I
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 261
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    if-le v1, v3, :cond_45

    .line 262
    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 263
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 264
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    .line 266
    :cond_45
    return v0
.end method

.method public readB(I)I
    .registers 9
    .param p1, "bits"  # I

    .line 210
    rsub-int/lit8 v0, p1, 0x20

    .line 212
    .local v0, "m":I
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr p1, v1

    .line 214
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    const/16 v3, 0x8

    if-lt v1, v2, :cond_2c

    .line 216
    const/4 v1, -0x1

    .line 217
    .local v1, "ret":I
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    mul-int/2addr v2, v3

    add-int/2addr v2, p1

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    mul-int/2addr v4, v3

    if-le v2, v4, :cond_2c

    .line 218
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    div-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 219
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    div-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    .line 220
    and-int/lit8 v2, p1, 0x7

    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 221
    return v1

    .line 225
    .end local v1  # "ret":I
    :cond_2c
    iget-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    const/16 v4, 0x18

    add-int/2addr v2, v4

    shl-int/2addr v1, v2

    .line 226
    .restart local v1  # "ret":I
    if-le p1, v3, :cond_85

    .line 227
    iget-object v2, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v5, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    iget v5, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    const/16 v6, 0x10

    add-int/2addr v5, v6

    shl-int/2addr v2, v5

    or-int/2addr v1, v2

    .line 228
    if-le p1, v6, :cond_85

    .line 229
    iget-object v2, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v5, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v5, v5, 0x2

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    iget v5, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr v5, v3

    shl-int/2addr v2, v5

    or-int/2addr v1, v2

    .line 230
    if-le p1, v4, :cond_85

    .line 231
    iget-object v2, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    .line 232
    const/16 v2, 0x20

    if-le p1, v2, :cond_85

    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    if-eqz v2, :cond_85

    .line 233
    iget-object v2, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v4, v4, 0x4

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v3, v4

    shr-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 237
    :cond_85
    shr-int/lit8 v2, v0, 0x1

    ushr-int v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v3, v3, 0x1

    ushr-int v1, v2, v3

    .line 239
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    div-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 240
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    div-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    .line 241
    and-int/lit8 v2, p1, 0x7

    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 242
    return v1
.end method

.method public readinit([BI)V
    .registers 4
    .param p1, "buf"  # [B
    .param p2, "bytes"  # I

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/jcraft/jogg/Buffer;->readinit([BII)V

    .line 79
    return-void
.end method

.method public readinit([BII)V
    .registers 5
    .param p1, "buf"  # [B
    .param p2, "start"  # I
    .param p3, "bytes"  # I

    .line 82
    iput p2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 83
    iput-object p1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 85
    iput p3, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    .line 86
    return-void
.end method

.method reset()V
    .registers 3

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 69
    iget-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    aput-byte v0, v1, v0

    .line 70
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 71
    return-void
.end method

.method public write(II)V
    .registers 8
    .param p1, "value"  # I
    .param p2, "bits"  # I

    .line 89
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1e

    .line 90
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    add-int/lit16 v0, v0, 0x100

    new-array v0, v0, [B

    .line 91
    .local v0, "foo":[B
    iget-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v3, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iput-object v0, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    .line 93
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    add-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    .line 96
    .end local v0  # "foo":[B
    :cond_1e
    sget-object v0, Lcom/jcraft/jogg/Buffer;->mask:[I

    aget v0, v0, p2

    and-int/2addr p1, v0

    .line 97
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr p2, v0

    .line 98
    iget-object v0, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aget-byte v3, v0, v1

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    shl-int v4, p1, v4

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 100
    const/16 v0, 0x8

    if-lt p2, v0, :cond_8a

    .line 101
    iget-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v3, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v0, v4

    ushr-int v0, p1, v0

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 102
    const/16 v0, 0x10

    if-lt p2, v0, :cond_8a

    .line 103
    iget-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v3, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v0, v4

    ushr-int v0, p1, v0

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 104
    const/16 v0, 0x18

    if-lt p2, v0, :cond_8a

    .line 105
    iget-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v3, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v0, v4

    ushr-int v0, p1, v0

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 106
    const/16 v0, 0x20

    if-lt p2, v0, :cond_8a

    .line 107
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    if-lez v1, :cond_82

    .line 108
    iget-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    sub-int/2addr v0, v3

    ushr-int v0, p1, v0

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_8a

    .line 110
    :cond_82
    iget-object v0, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v1, v1, 0x4

    aput-byte v2, v0, v1

    .line 116
    :cond_8a
    :goto_8a
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    div-int/lit8 v1, p2, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    .line 117
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    div-int/lit8 v1, p2, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 118
    and-int/lit8 v0, p2, 0x7

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 119
    return-void
.end method

.method public write([B)V
    .registers 5
    .param p1, "s"  # [B

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 54
    aget-byte v1, p1, v0

    if-nez v1, :cond_9

    .line 55
    goto :goto_13

    .line 56
    :cond_9
    aget-byte v1, p1, v0

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    .end local v0  # "i":I
    :cond_13
    :goto_13
    return-void
.end method

.method public writeclear()V
    .registers 2

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    .line 75
    return-void
.end method

.method public writeinit()V
    .registers 4

    .line 46
    const/16 v0, 0x100

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 48
    iget-object v2, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    aput-byte v1, v2, v1

    .line 49
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    .line 50
    return-void
.end method
