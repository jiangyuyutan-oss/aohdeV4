.class public Ljavazoom/jl/decoder/DecoderException;
.super Ljavazoom/jl/decoder/JavaLayerException;
.source "DecoderException.java"


# instance fields
.field private errorcode:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 4
    .param p1, "errorcode"  # I
    .param p2, "t"  # Ljava/lang/Throwable;

    .line 30
    invoke-static {p1}, Ljavazoom/jl/decoder/DecoderException;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljavazoom/jl/decoder/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iput p1, p0, Ljavazoom/jl/decoder/DecoderException;->errorcode:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"  # Ljava/lang/String;
    .param p2, "t"  # Ljava/lang/Throwable;

    .line 26
    invoke-direct {p0, p1, p2}, Ljavazoom/jl/decoder/JavaLayerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    const/16 v0, 0x200

    iput v0, p0, Ljavazoom/jl/decoder/DecoderException;->errorcode:I

    .line 27
    return-void
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .registers 3
    .param p0, "errorcode"  # I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder errorcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 35
    iget v0, p0, Ljavazoom/jl/decoder/DecoderException;->errorcode:I

    return v0
.end method
