.class public Ljavazoom/jl/decoder/OutputBuffer;
.super Ljava/lang/Object;
.source "OutputBuffer.java"


# static fields
.field public static final BUFFERSIZE:I = 0x900

.field private static final MAXCHANNELS:I = 0x2


# instance fields
.field private buffer:[B

.field private channelPointer:[I

.field private channels:I

.field private isBigEndian:Z

.field private replayGainScale:Ljava/lang/Float;


# direct methods
.method public constructor <init>(IZ)V
    .registers 4
    .param p1, "channels"  # I
    .param p2, "isBigEndian"  # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Ljavazoom/jl/decoder/OutputBuffer;->channels:I

    .line 46
    iput-boolean p2, p0, Ljavazoom/jl/decoder/OutputBuffer;->isBigEndian:Z

    .line 47
    mul-int/lit16 v0, p1, 0x900

    new-array v0, v0, [B

    iput-object v0, p0, Ljavazoom/jl/decoder/OutputBuffer;->buffer:[B

    .line 48
    new-array v0, p1, [I

    iput-object v0, p0, Ljavazoom/jl/decoder/OutputBuffer;->channelPointer:[I

    .line 49
    invoke-virtual {p0}, Ljavazoom/jl/decoder/OutputBuffer;->reset()I

    .line 50
    return-void
.end method

.method private append(IS)V
    .registers 8
    .param p1, "channel"  # I
    .param p2, "value"  # S

    .line 58
    iget-boolean v0, p0, Ljavazoom/jl/decoder/OutputBuffer;->isBigEndian:Z

    if-eqz v0, :cond_d

    .line 59
    ushr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 60
    .local v0, "firstByte":B
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    .local v1, "secondByte":B
    goto :goto_15

    .line 62
    .end local v0  # "firstByte":B
    .end local v1  # "secondByte":B
    :cond_d
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    .line 63
    .restart local v0  # "firstByte":B
    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 65
    .restart local v1  # "secondByte":B
    :goto_15
    iget-object v2, p0, Ljavazoom/jl/decoder/OutputBuffer;->buffer:[B

    iget-object v3, p0, Ljavazoom/jl/decoder/OutputBuffer;->channelPointer:[I

    aget v3, v3, p1

    aput-byte v0, v2, v3

    .line 66
    iget-object v2, p0, Ljavazoom/jl/decoder/OutputBuffer;->buffer:[B

    iget-object v3, p0, Ljavazoom/jl/decoder/OutputBuffer;->channelPointer:[I

    aget v3, v3, p1

    add-int/lit8 v3, v3, 0x1

    aput-byte v1, v2, v3

    .line 67
    iget-object v2, p0, Ljavazoom/jl/decoder/OutputBuffer;->channelPointer:[I

    aget v3, v2, p1

    iget v4, p0, Ljavazoom/jl/decoder/OutputBuffer;->channels:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, p1

    .line 68
    return-void
.end method

.method private final clip(F)S
    .registers 3
    .param p1, "sample"  # F

    .line 113
    const v0, 0x46fffe00  # 32767.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    const/16 v0, 0x7fff

    goto :goto_15

    :cond_a
    const/high16 v0, -0x39000000  # -32768.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_13

    const/16 v0, -0x8000

    goto :goto_15

    :cond_13
    float-to-int v0, p1

    int-to-short v0, v0

    :goto_15
    return v0
.end method


# virtual methods
.method public appendSamples(I[F)V
    .registers 7
    .param p1, "channel"  # I
    .param p2, "f"  # [F

    .line 75
    iget-object v0, p0, Ljavazoom/jl/decoder/OutputBuffer;->replayGainScale:Ljava/lang/Float;

    const/16 v1, 0x20

    if-eqz v0, :cond_1e

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_1d

    .line 77
    add-int/lit8 v2, v0, 0x1

    .end local v0  # "i":I
    .local v2, "i":I
    aget v0, p2, v0

    iget-object v3, p0, Ljavazoom/jl/decoder/OutputBuffer;->replayGainScale:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v0, v3

    invoke-direct {p0, v0}, Ljavazoom/jl/decoder/OutputBuffer;->clip(F)S

    move-result v0

    .line 78
    .local v0, "s":S
    invoke-direct {p0, p1, v0}, Ljavazoom/jl/decoder/OutputBuffer;->append(IS)V

    move v0, v2

    goto :goto_7

    .end local v0  # "s":S
    .end local v2  # "i":I
    :cond_1d
    goto :goto_2e

    .line 81
    :cond_1e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    if-ge v0, v1, :cond_2e

    .line 82
    add-int/lit8 v2, v0, 0x1

    .end local v0  # "i":I
    .restart local v2  # "i":I
    aget v0, p2, v0

    invoke-direct {p0, v0}, Ljavazoom/jl/decoder/OutputBuffer;->clip(F)S

    move-result v0

    .line 83
    .local v0, "s":S
    invoke-direct {p0, p1, v0}, Ljavazoom/jl/decoder/OutputBuffer;->append(IS)V

    move v0, v2

    goto :goto_1f

    .line 86
    .end local v0  # "s":S
    .end local v2  # "i":I
    :cond_2e
    :goto_2e
    return-void
.end method

.method public getBuffer()[B
    .registers 2

    .line 89
    iget-object v0, p0, Ljavazoom/jl/decoder/OutputBuffer;->buffer:[B

    return-object v0
.end method

.method public isStereo()Z
    .registers 4

    .line 108
    iget-object v0, p0, Ljavazoom/jl/decoder/OutputBuffer;->channelPointer:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public reset()I
    .registers 6

    .line 94
    :try_start_0
    iget v0, p0, Ljavazoom/jl/decoder/OutputBuffer;->channels:I

    add-int/lit8 v0, v0, -0x1

    .line 95
    .local v0, "index":I
    iget-object v1, p0, Ljavazoom/jl/decoder/OutputBuffer;->channelPointer:[I

    aget v1, v1, v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_1a

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    .line 98
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget v3, p0, Ljavazoom/jl/decoder/OutputBuffer;->channels:I

    if-ge v2, v3, :cond_19

    .line 99
    iget-object v3, p0, Ljavazoom/jl/decoder/OutputBuffer;->channelPointer:[I

    mul-int/lit8 v4, v2, 0x2

    aput v4, v3, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .end local v2  # "i":I
    :cond_19
    return v1

    .end local v0  # "index":I
    :catchall_1a
    move-exception v0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    iget v2, p0, Ljavazoom/jl/decoder/OutputBuffer;->channels:I

    if-ge v1, v2, :cond_29

    .line 99
    iget-object v2, p0, Ljavazoom/jl/decoder/OutputBuffer;->channelPointer:[I

    mul-int/lit8 v3, v1, 0x2

    aput v3, v2, v1

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .end local v1  # "i":I
    :cond_29
    throw v0
.end method

.method public setReplayGainScale(Ljava/lang/Float;)V
    .registers 2
    .param p1, "replayGainScale"  # Ljava/lang/Float;

    .line 104
    iput-object p1, p0, Ljavazoom/jl/decoder/OutputBuffer;->replayGainScale:Ljava/lang/Float;

    .line 105
    return-void
.end method
