.class public Lcom/jcraft/jogg/Page;
.super Ljava/lang/Object;
.source "Page.java"


# static fields
.field private static crc_lookup:[I


# instance fields
.field public body:I

.field public body_base:[B

.field public body_len:I

.field public header:I

.field public header_base:[B

.field public header_len:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/jcraft/jogg/Page;->crc_lookup:[I

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget-object v1, Lcom/jcraft/jogg/Page;->crc_lookup:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 33
    sget-object v1, Lcom/jcraft/jogg/Page;->crc_lookup:[I

    invoke-static {v0}, Lcom/jcraft/jogg/Page;->crc_entry(I)I

    move-result v2

    aput v2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 35
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crc_entry(I)I
    .registers 5
    .param p0, "index"  # I

    .line 38
    shl-int/lit8 v0, p0, 0x18

    .line 39
    .local v0, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/16 v2, 0x8

    if-ge v1, v2, :cond_19

    .line 40
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_14

    .line 41
    shl-int/lit8 v2, v0, 0x1

    const v3, 0x4c11db7

    xor-int v0, v2, v3

    goto :goto_16

    .line 47
    :cond_14
    shl-int/lit8 v0, v0, 0x1

    .line 39
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 50
    .end local v1  # "i":I
    :cond_19
    and-int/lit8 v1, v0, -0x1

    return v1
.end method


# virtual methods
.method public bos()I
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v1, v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x2

    return v0
.end method

.method checksum()V
    .registers 8

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "crc_reg":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/jcraft/jogg/Page;->header_len:I

    if-ge v1, v2, :cond_1f

    .line 104
    shl-int/lit8 v2, v0, 0x8

    sget-object v3, Lcom/jcraft/jogg/Page;->crc_lookup:[I

    ushr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v6, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v4, v5

    aget v3, v3, v4

    xor-int v0, v2, v3

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 107
    .end local v1  # "i":I
    :cond_1f
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_20
    iget v2, p0, Lcom/jcraft/jogg/Page;->body_len:I

    if-ge v1, v2, :cond_3d

    .line 108
    shl-int/lit8 v2, v0, 0x8

    sget-object v3, Lcom/jcraft/jogg/Page;->crc_lookup:[I

    ushr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/jcraft/jogg/Page;->body_base:[B

    iget v6, p0, Lcom/jcraft/jogg/Page;->body:I

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v4, v5

    aget v3, v3, v4

    xor-int v0, v2, v3

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 111
    .end local v1  # "i":I
    :cond_3d
    iget-object v1, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v2, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v2, 0x16

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 112
    iget-object v1, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v2, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v2, 0x17

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 113
    iget-object v1, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v2, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 114
    iget-object v1, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v2, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v2, 0x19

    ushr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 115
    return-void
.end method

.method continued()I
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v1, v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public copy()Lcom/jcraft/jogg/Page;
    .registers 2

    .line 118
    new-instance v0, Lcom/jcraft/jogg/Page;

    invoke-direct {v0}, Lcom/jcraft/jogg/Page;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jcraft/jogg/Page;->copy(Lcom/jcraft/jogg/Page;)Lcom/jcraft/jogg/Page;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/jcraft/jogg/Page;)Lcom/jcraft/jogg/Page;
    .registers 7
    .param p1, "p"  # Lcom/jcraft/jogg/Page;

    .line 122
    iget v0, p0, Lcom/jcraft/jogg/Page;->header_len:I

    new-array v0, v0, [B

    .line 123
    .local v0, "tmp":[B
    iget-object v1, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v2, p0, Lcom/jcraft/jogg/Page;->header:I

    iget v3, p0, Lcom/jcraft/jogg/Page;->header_len:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget v1, p0, Lcom/jcraft/jogg/Page;->header_len:I

    iput v1, p1, Lcom/jcraft/jogg/Page;->header_len:I

    .line 125
    iput-object v0, p1, Lcom/jcraft/jogg/Page;->header_base:[B

    .line 126
    iput v4, p1, Lcom/jcraft/jogg/Page;->header:I

    .line 127
    iget v1, p0, Lcom/jcraft/jogg/Page;->body_len:I

    new-array v0, v1, [B

    .line 128
    iget-object v1, p0, Lcom/jcraft/jogg/Page;->body_base:[B

    iget v2, p0, Lcom/jcraft/jogg/Page;->body:I

    iget v3, p0, Lcom/jcraft/jogg/Page;->body_len:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v1, p0, Lcom/jcraft/jogg/Page;->body_len:I

    iput v1, p1, Lcom/jcraft/jogg/Page;->body_len:I

    .line 130
    iput-object v0, p1, Lcom/jcraft/jogg/Page;->body_base:[B

    .line 131
    iput v4, p1, Lcom/jcraft/jogg/Page;->body:I

    .line 132
    return-object p1
.end method

.method public eos()I
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v1, v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public granulepos()J
    .registers 8

    .line 77
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v1, v1, 0xd

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 78
    .local v0, "foo":J
    const/16 v2, 0x8

    shl-long v3, v0, v2

    iget-object v5, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v6, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v6, v6, 0xc

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v0, v3, v5

    .line 79
    shl-long v3, v0, v2

    iget-object v5, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v6, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v6, v6, 0xb

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v0, v3, v5

    .line 80
    shl-long v3, v0, v2

    iget-object v5, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v6, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v6, v6, 0xa

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v0, v3, v5

    .line 81
    shl-long v3, v0, v2

    iget-object v5, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v6, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v6, v6, 0x9

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v0, v3, v5

    .line 82
    shl-long v3, v0, v2

    iget-object v5, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v6, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/2addr v6, v2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v0, v3, v5

    .line 83
    shl-long v3, v0, v2

    iget-object v5, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v6, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v6, v6, 0x7

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v0, v3, v5

    .line 84
    shl-long v2, v0, v2

    iget-object v4, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v5, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v5, v5, 0x6

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long v0, v2, v4

    .line 85
    return-wide v0
.end method

.method pageno()I
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v1, v1, 0x12

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v2, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v2, 0x13

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v2, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v2, 0x14

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v2, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v2, 0x15

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public serialno()I
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v1, v1, 0xe

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v2, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v2, 0xf

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v2, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v2, 0x10

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v2, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v2, 0x11

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method version()I
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
