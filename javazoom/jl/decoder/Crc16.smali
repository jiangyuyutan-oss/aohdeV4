.class public final Ljavazoom/jl/decoder/Crc16;
.super Ljava/lang/Object;
.source "Crc16.java"


# static fields
.field private static polynomial:S


# instance fields
.field private crc:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/16 v0, -0x7ffb

    sput-short v0, Ljavazoom/jl/decoder/Crc16;->polynomial:S

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput-short v0, p0, Ljavazoom/jl/decoder/Crc16;->crc:S

    .line 36
    return-void
.end method


# virtual methods
.method public add_bits(II)V
    .registers 8
    .param p1, "bitstring"  # I
    .param p2, "length"  # I

    .line 42
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 44
    .local v0, "bitmask":I
    :cond_5
    iget-short v2, p0, Ljavazoom/jl/decoder/Crc16;->crc:S

    const v3, 0x8000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    move v2, v3

    :goto_11
    and-int v4, p1, v0

    if-nez v4, :cond_16

    move v3, v1

    :cond_16
    xor-int/2addr v2, v3

    if-eqz v2, :cond_28

    .line 45
    iget-short v2, p0, Ljavazoom/jl/decoder/Crc16;->crc:S

    shl-int/2addr v2, v1

    int-to-short v2, v2

    iput-short v2, p0, Ljavazoom/jl/decoder/Crc16;->crc:S

    .line 46
    iget-short v2, p0, Ljavazoom/jl/decoder/Crc16;->crc:S

    sget-short v3, Ljavazoom/jl/decoder/Crc16;->polynomial:S

    xor-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Ljavazoom/jl/decoder/Crc16;->crc:S

    goto :goto_2e

    .line 48
    :cond_28
    iget-short v2, p0, Ljavazoom/jl/decoder/Crc16;->crc:S

    shl-int/2addr v2, v1

    int-to-short v2, v2

    iput-short v2, p0, Ljavazoom/jl/decoder/Crc16;->crc:S

    .line 49
    :goto_2e
    ushr-int/lit8 v2, v0, 0x1

    move v0, v2

    if-nez v2, :cond_5

    .line 50
    return-void
.end method

.method public checksum()S
    .registers 3

    .line 56
    iget-short v0, p0, Ljavazoom/jl/decoder/Crc16;->crc:S

    .line 57
    .local v0, "sum":S
    const/4 v1, -0x1

    iput-short v1, p0, Ljavazoom/jl/decoder/Crc16;->crc:S

    .line 58
    return v0
.end method
