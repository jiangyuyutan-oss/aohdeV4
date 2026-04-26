.class Lcom/jcraft/jorbis/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static icount(I)I
    .registers 3
    .param p0, "v"  # I

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "ret":I
    :goto_1
    if-eqz p0, :cond_9

    .line 25
    and-int/lit8 v1, p0, 0x1

    add-int/2addr v0, v1

    .line 26
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 28
    :cond_9
    return v0
.end method

.method static ilog(I)I
    .registers 2
    .param p0, "v"  # I

    .line 5
    const/4 v0, 0x0

    .line 6
    .local v0, "ret":I
    :goto_1
    if-eqz p0, :cond_8

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 10
    :cond_8
    return v0
.end method

.method static ilog2(I)I
    .registers 3
    .param p0, "v"  # I

    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "ret":I
    :goto_1
    const/4 v1, 0x1

    if-le p0, v1, :cond_9

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 19
    :cond_9
    return v0
.end method
