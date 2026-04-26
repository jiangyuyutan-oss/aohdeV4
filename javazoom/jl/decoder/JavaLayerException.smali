.class public Ljavazoom/jl/decoder/JavaLayerException;
.super Ljava/lang/Exception;
.source "JavaLayerException.java"


# instance fields
.field private exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"  # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"  # Ljava/lang/String;
    .param p2, "t"  # Ljava/lang/Throwable;

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Ljavazoom/jl/decoder/JavaLayerException;->exception:Ljava/lang/Throwable;

    .line 40
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .registers 2

    .line 43
    iget-object v0, p0, Ljavazoom/jl/decoder/JavaLayerException;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .registers 2

    .line 47
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljavazoom/jl/decoder/JavaLayerException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 48
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "ps"  # Ljava/io/PrintStream;

    .line 51
    iget-object v0, p0, Ljavazoom/jl/decoder/JavaLayerException;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_8

    .line 52
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_d

    .line 54
    :cond_8
    iget-object v0, p0, Ljavazoom/jl/decoder/JavaLayerException;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    :goto_d
    return-void
.end method
