.class public Lcom/badlogic/gdx/utils/IdentityMap;
.super Lcom/badlogic/gdx/utils/ObjectMap;
.source "IdentityMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "initialCapacity"  # I

    .line 44
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 3
    .param p1, "initialCapacity"  # I
    .param p2, "loadFactor"  # F

    .line 51
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IdentityMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IdentityMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 57
    return-void
.end method


# virtual methods
.method public hashCode()I
    .registers 9

    .line 74
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 75
    .local v0, "h":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 76
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 77
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "n":I
    :goto_8
    if-ge v3, v4, :cond_1f

    .line 78
    aget-object v5, v1, v3

    .line 79
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_1c

    .line 80
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    .line 81
    aget-object v6, v2, v3

    .line 82
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_1c

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v0, v7

    .line 77
    .end local v5  # "key":Ljava/lang/Object;, "TK;"
    .end local v6  # "value":Ljava/lang/Object;, "TV;"
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 85
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_1f
    return v0
.end method

.method locateKey(Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_1a

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 66
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 67
    .local v1, "i":I
    :goto_8
    aget-object v2, v0, v1

    .line 68
    .local v2, "other":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_10

    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    return v3

    .line 69
    :cond_10
    if-ne v2, p1, :cond_13

    return v1

    .line 66
    .end local v2  # "other":Ljava/lang/Object;, "TK;"
    :cond_13
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v1, v2, v3

    goto :goto_8

    .line 64
    .end local v0  # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v1  # "i":I
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected place(Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "item":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->shift:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
