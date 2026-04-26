.class public Lcom/badlogic/gdx/utils/Base64Coder$CharMap;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Base64Coder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharMap"
.end annotation


# instance fields
.field protected final decodingMap:[B

.field protected final encodingMap:[C


# direct methods
.method public constructor <init>(CC)V
    .registers 8
    .param p1, "char63"  # C
    .param p2, "char64"  # C

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x40

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    .line 37
    const/16 v1, 0x80

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "i":I
    const/16 v2, 0x41

    .local v2, "c":C
    :goto_12
    const/16 v3, 0x5a

    if-gt v2, v3, :cond_21

    .line 42
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v4, v1, 0x1

    .end local v1  # "i":I
    .local v4, "i":I
    aput-char v2, v3, v1

    .line 41
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_12

    .line 44
    .end local v2  # "c":C
    .end local v4  # "i":I
    .restart local v1  # "i":I
    :cond_21
    const/16 v2, 0x61

    .restart local v2  # "c":C
    :goto_23
    const/16 v3, 0x7a

    if-gt v2, v3, :cond_32

    .line 45
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v4, v1, 0x1

    .end local v1  # "i":I
    .restart local v4  # "i":I
    aput-char v2, v3, v1

    .line 44
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_23

    .line 47
    .end local v2  # "c":C
    .end local v4  # "i":I
    .restart local v1  # "i":I
    :cond_32
    const/16 v2, 0x30

    .restart local v2  # "c":C
    :goto_34
    const/16 v3, 0x39

    if-gt v2, v3, :cond_43

    .line 48
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v4, v1, 0x1

    .end local v1  # "i":I
    .restart local v4  # "i":I
    aput-char v2, v3, v1

    .line 47
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_34

    .line 50
    .end local v2  # "c":C
    .end local v4  # "i":I
    .restart local v1  # "i":I
    :cond_43
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v3, v1, 0x1

    .end local v1  # "i":I
    .local v3, "i":I
    aput-char p1, v2, v1

    .line 51
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v2, v3, 0x1

    .end local v3  # "i":I
    .local v2, "i":I
    aput-char p2, v1, v3

    .line 52
    const/4 v1, 0x0

    .end local v2  # "i":I
    .restart local v1  # "i":I
    :goto_50
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    array-length v2, v2

    if-ge v1, v2, :cond_5d

    .line 53
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 55
    :cond_5d
    const/4 v1, 0x0

    :goto_5e
    if-ge v1, v0, :cond_6c

    .line 56
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    aget-char v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 58
    :cond_6c
    return-void
.end method


# virtual methods
.method public getDecodingMap()[B
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    return-object v0
.end method

.method public getEncodingMap()[C
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    return-object v0
.end method
