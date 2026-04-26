.class public Ljavazoom/jl/decoder/BitstreamException;
.super Ljavazoom/jl/decoder/JavaLayerException;
.source "BitstreamException.java"


# instance fields
.field private errorcode:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 4
    .param p1, "errorcode"  # I
    .param p2, "t"  # Ljava/lang/Throwable;

    .line 42
    invoke-static {p1}, Ljavazoom/jl/decoder/BitstreamException;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljavazoom/jl/decoder/BitstreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    iput p1, p0, Ljavazoom/jl/decoder/BitstreamException;->errorcode:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"  # Ljava/lang/String;
    .param p2, "t"  # Ljava/lang/Throwable;

    .line 38
    invoke-direct {p0, p1, p2}, Ljavazoom/jl/decoder/JavaLayerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/16 v0, 0x100

    iput v0, p0, Ljavazoom/jl/decoder/BitstreamException;->errorcode:I

    .line 39
    return-void
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .registers 3
    .param p0, "errorcode"  # I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bitstream errorcode "

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

    .line 47
    iget v0, p0, Ljavazoom/jl/decoder/BitstreamException;->errorcode:I

    return v0
.end method
