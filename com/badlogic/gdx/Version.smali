.class public Lcom/badlogic/gdx/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final MAJOR:I

.field public static final MINOR:I

.field public static final REVISION:I

.field public static final VERSION:Ljava/lang/String; = "1.10.0"


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 39
    :try_start_0
    const-string v0, "1.10.0"

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "v":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_f

    move v1, v3

    goto :goto_19

    :cond_f
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_19
    sput v1, Lcom/badlogic/gdx/Version;->MAJOR:I

    .line 41
    array-length v1, v0

    const/4 v4, 0x2

    if-ge v1, v4, :cond_21

    move v1, v3

    goto :goto_2b

    :cond_21
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2b
    sput v1, Lcom/badlogic/gdx/Version;->MINOR:I

    .line 42
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_32

    :goto_31
    goto :goto_3d

    :cond_32
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_31

    :goto_3d
    sput v3, Lcom/badlogic/gdx/Version;->REVISION:I
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_41

    .line 47
    .end local v0  # "v":[Ljava/lang/String;
    nop

    .line 48
    return-void

    .line 44
    :catchall_41
    move-exception v0

    .line 46
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Invalid version 1.10.0"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHigher(III)Z
    .registers 4
    .param p0, "major"  # I
    .param p1, "minor"  # I
    .param p2, "revision"  # I

    .line 51
    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/Version;->isHigherEqual(III)Z

    move-result v0

    return v0
.end method

.method public static isHigherEqual(III)Z
    .registers 6
    .param p0, "major"  # I
    .param p1, "minor"  # I
    .param p2, "revision"  # I

    .line 55
    sget v0, Lcom/badlogic/gdx/Version;->MAJOR:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p0, :cond_d

    .line 56
    sget v0, Lcom/badlogic/gdx/Version;->MAJOR:I

    if-le v0, p0, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 57
    :cond_d
    sget v0, Lcom/badlogic/gdx/Version;->MINOR:I

    if-eq v0, p1, :cond_18

    .line 58
    sget v0, Lcom/badlogic/gdx/Version;->MINOR:I

    if-le v0, p1, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1

    .line 59
    :cond_18
    sget v0, Lcom/badlogic/gdx/Version;->REVISION:I

    if-lt v0, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method public static isLower(III)Z
    .registers 4
    .param p0, "major"  # I
    .param p1, "minor"  # I
    .param p2, "revision"  # I

    .line 63
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/Version;->isLowerEqual(III)Z

    move-result v0

    return v0
.end method

.method public static isLowerEqual(III)Z
    .registers 6
    .param p0, "major"  # I
    .param p1, "minor"  # I
    .param p2, "revision"  # I

    .line 67
    sget v0, Lcom/badlogic/gdx/Version;->MAJOR:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p0, :cond_d

    .line 68
    sget v0, Lcom/badlogic/gdx/Version;->MAJOR:I

    if-ge v0, p0, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 69
    :cond_d
    sget v0, Lcom/badlogic/gdx/Version;->MINOR:I

    if-eq v0, p1, :cond_18

    .line 70
    sget v0, Lcom/badlogic/gdx/Version;->MINOR:I

    if-ge v0, p1, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1

    .line 71
    :cond_18
    sget v0, Lcom/badlogic/gdx/Version;->REVISION:I

    if-gt v0, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method
