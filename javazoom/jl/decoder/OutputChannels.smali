.class public Ljavazoom/jl/decoder/OutputChannels;
.super Ljava/lang/Object;
.source "OutputChannels.java"


# static fields
.field public static final BOTH:Ljavazoom/jl/decoder/OutputChannels;

.field public static final BOTH_CHANNELS:I = 0x0

.field public static final DOWNMIX:Ljavazoom/jl/decoder/OutputChannels;

.field public static final DOWNMIX_CHANNELS:I = 0x3

.field public static final LEFT:Ljavazoom/jl/decoder/OutputChannels;

.field public static final LEFT_CHANNEL:I = 0x1

.field public static final RIGHT:Ljavazoom/jl/decoder/OutputChannels;

.field public static final RIGHT_CHANNEL:I = 0x2


# instance fields
.field private outputChannels:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Ljavazoom/jl/decoder/OutputChannels;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljavazoom/jl/decoder/OutputChannels;-><init>(I)V

    sput-object v0, Ljavazoom/jl/decoder/OutputChannels;->LEFT:Ljavazoom/jl/decoder/OutputChannels;

    .line 47
    new-instance v0, Ljavazoom/jl/decoder/OutputChannels;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljavazoom/jl/decoder/OutputChannels;-><init>(I)V

    sput-object v0, Ljavazoom/jl/decoder/OutputChannels;->RIGHT:Ljavazoom/jl/decoder/OutputChannels;

    .line 48
    new-instance v0, Ljavazoom/jl/decoder/OutputChannels;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavazoom/jl/decoder/OutputChannels;-><init>(I)V

    sput-object v0, Ljavazoom/jl/decoder/OutputChannels;->BOTH:Ljavazoom/jl/decoder/OutputChannels;

    .line 49
    new-instance v0, Ljavazoom/jl/decoder/OutputChannels;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljavazoom/jl/decoder/OutputChannels;-><init>(I)V

    sput-object v0, Ljavazoom/jl/decoder/OutputChannels;->DOWNMIX:Ljavazoom/jl/decoder/OutputChannels;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 4
    .param p1, "channels"  # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Ljavazoom/jl/decoder/OutputChannels;->outputChannels:I

    .line 78
    if-ltz p1, :cond_b

    const/4 v0, 0x3

    if-gt p1, v0, :cond_b

    .line 79
    return-void

    .line 78
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "channels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromInt(I)Ljavazoom/jl/decoder/OutputChannels;
    .registers 4
    .param p0, "code"  # I

    .line 61
    packed-switch p0, :pswitch_data_28

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid channel code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_1c  #0x3
    sget-object v0, Ljavazoom/jl/decoder/OutputChannels;->DOWNMIX:Ljavazoom/jl/decoder/OutputChannels;

    return-object v0

    .line 65
    :pswitch_1f  #0x2
    sget-object v0, Ljavazoom/jl/decoder/OutputChannels;->RIGHT:Ljavazoom/jl/decoder/OutputChannels;

    return-object v0

    .line 63
    :pswitch_22  #0x1
    sget-object v0, Ljavazoom/jl/decoder/OutputChannels;->LEFT:Ljavazoom/jl/decoder/OutputChannels;

    return-object v0

    .line 67
    :pswitch_25  #0x0
    sget-object v0, Ljavazoom/jl/decoder/OutputChannels;->BOTH:Ljavazoom/jl/decoder/OutputChannels;

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_22  #00000001
        :pswitch_1f  #00000002
        :pswitch_1c  #00000003
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"  # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "equals":Z
    instance-of v1, p1, Ljavazoom/jl/decoder/OutputChannels;

    if-eqz v1, :cond_12

    .line 106
    move-object v1, p1

    check-cast v1, Ljavazoom/jl/decoder/OutputChannels;

    .line 107
    .local v1, "oc":Ljavazoom/jl/decoder/OutputChannels;
    iget v2, v1, Ljavazoom/jl/decoder/OutputChannels;->outputChannels:I

    iget v3, p0, Ljavazoom/jl/decoder/OutputChannels;->outputChannels:I

    if-ne v2, v3, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    move v0, v2

    .line 110
    .end local v1  # "oc":Ljavazoom/jl/decoder/OutputChannels;
    :cond_12
    return v0
.end method

.method public getChannelCount()I
    .registers 2

    .line 98
    iget v0, p0, Ljavazoom/jl/decoder/OutputChannels;->outputChannels:I

    if-nez v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    .line 99
    .local v0, "count":I
    :goto_7
    return v0
.end method

.method public getChannelsOutputCode()I
    .registers 2

    .line 88
    iget v0, p0, Ljavazoom/jl/decoder/OutputChannels;->outputChannels:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 114
    iget v0, p0, Ljavazoom/jl/decoder/OutputChannels;->outputChannels:I

    return v0
.end method
