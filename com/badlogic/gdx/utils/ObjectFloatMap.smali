.class public Lcom/badlogic/gdx/utils/ObjectFloatMap;
.super Ljava/lang/Object;
.source "ObjectFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;,
        Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;,
        Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;,
        Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;,
        Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field transient entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

.field transient entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field transient keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

.field transient keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

.field loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field threshold:I

.field valueTable:[F

.field transient values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

.field transient values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 71
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;-><init>(IF)V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"  # I

    .line 77
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const v0, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;-><init>(IF)V

    .line 78
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"  # I
    .param p2, "loadFactor"  # F

    .line 83
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_31

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_31

    .line 86
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    .line 88
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 89
    .local v0, "tableSize":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    .line 90
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    .line 91
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->shift:I

    .line 93
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 94
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 95
    return-void

    .line 85
    .end local v0  # "tableSize":I
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFactor must be > 0 and < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<+TK;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;-><init>(IF)V

    .line 100
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 103
    return-void
.end method

.method private putResize(Ljava/lang/Object;F)V
    .registers 7
    .param p2, "value"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 177
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 178
    .local v1, "i":I
    :goto_6
    aget-object v2, v0, v1

    if-nez v2, :cond_11

    .line 179
    aput-object p1, v0, v1

    .line 180
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v2, v1

    .line 181
    return-void

    .line 177
    :cond_11
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    and-int v1, v2, v3

    goto :goto_6
.end method

.method private toString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p1, "separator"  # Ljava/lang/String;
    .param p2, "braces"  # Z

    .line 381
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-nez v0, :cond_c

    if-eqz p2, :cond_9

    const-string v0, "{}"

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0

    .line 382
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 383
    .local v0, "buffer":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1a

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    :cond_1a
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 385
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 386
    .local v2, "valueTable":[F
    array-length v3, v1

    .line 387
    .local v3, "i":I
    :goto_1f
    add-int/lit8 v4, v3, -0x1

    .end local v3  # "i":I
    .local v4, "i":I
    const/16 v5, 0x3d

    if-lez v3, :cond_37

    .line 388
    aget-object v3, v1, v4

    .line 389
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_2b

    move v3, v4

    goto :goto_1f

    .line 390
    :cond_2b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 393
    nop

    .line 395
    .end local v3  # "key":Ljava/lang/Object;, "TK;"
    :cond_37
    :goto_37
    add-int/lit8 v3, v4, -0x1

    .end local v4  # "i":I
    .local v3, "i":I
    if-lez v4, :cond_51

    .line 396
    aget-object v4, v1, v3

    .line 397
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_40

    goto :goto_4f

    .line 398
    :cond_40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    aget v6, v2, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 402
    .end local v4  # "key":Ljava/lang/Object;, "TK;"
    nop

    .line 395
    :goto_4f
    move v4, v3

    goto :goto_37

    .line 403
    :cond_51
    if-eqz p2, :cond_58

    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 263
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-nez v0, :cond_5

    return-void

    .line 264
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public clear(I)V
    .registers 4
    .param p1, "maximumCapacity"  # I

    .line 253
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 254
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v1, v0, :cond_f

    .line 255
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->clear()V

    .line 256
    return-void

    .line 258
    :cond_f
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 259
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    .line 260
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 289
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public containsValue(F)Z
    .registers 7
    .param p1, "value"  # F

    .line 271
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 272
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 273
    .local v1, "valueTable":[F
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_17

    .line 274
    aget-object v4, v0, v2

    if-eqz v4, :cond_14

    aget v4, v1, v2

    cmpl-float v4, v4, p1

    if-nez v4, :cond_14

    return v3

    .line 273
    :cond_14
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 275
    .end local v2  # "i":I
    :cond_17
    const/4 v2, 0x0

    return v2
.end method

.method public containsValue(FF)Z
    .registers 8
    .param p1, "value"  # F
    .param p2, "epsilon"  # F

    .line 281
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 282
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 283
    .local v1, "valueTable":[F
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_1c

    .line 284
    aget-object v4, v0, v2

    if-eqz v4, :cond_19

    aget v4, v1, v2

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_19

    return v3

    .line 283
    :cond_19
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 285
    .end local v2  # "i":I
    :cond_1c
    const/4 v2, 0x0

    return v2
.end method

.method public ensureCapacity(I)V
    .registers 4
    .param p1, "additionalCapacity"  # I

    .line 319
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 320
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v1, v0, :cond_11

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    .line 321
    :cond_11
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 416
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    return-object v0

    .line 417
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    if-nez v0, :cond_1c

    .line 418
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    .line 419
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    .line 421
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 422
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->reset()V

    .line 423
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    .line 425
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    return-object v0

    .line 427
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->reset()V

    .line 428
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    .line 429
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    .line 430
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"  # Ljava/lang/Object;

    .line 355
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 356
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 357
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    .line 358
    .local v1, "other":Lcom/badlogic/gdx/utils/ObjectFloatMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-eq v3, v4, :cond_14

    return v2

    .line 359
    :cond_14
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 360
    .local v3, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 361
    .local v4, "valueTable":[F
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_1a
    if-ge v5, v6, :cond_3a

    .line 362
    aget-object v7, v3, v5

    .line 363
    .local v7, "key":Ljava/lang/Object;, "TK;"
    if-eqz v7, :cond_37

    .line 364
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->get(Ljava/lang/Object;F)F

    move-result v9

    .line 365
    .local v9, "otherValue":F
    cmpl-float v8, v9, v8

    if-nez v8, :cond_30

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    return v2

    .line 366
    :cond_30
    aget v8, v4, v5

    cmpl-float v8, v9, v8

    if-eqz v8, :cond_37

    return v2

    .line 361
    .end local v7  # "key":Ljava/lang/Object;, "TK;"
    .end local v9  # "otherValue":F
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 369
    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_3a
    return v0
.end method

.method public findKey(F)Ljava/lang/Object;
    .registers 7
    .param p1, "value"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TK;"
        }
    .end annotation

    .line 295
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 296
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 297
    .local v1, "valueTable":[F
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_17

    .line 298
    aget-object v3, v0, v2

    .line 299
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_14

    aget v4, v1, v2

    cmpl-float v4, v4, p1

    if-nez v4, :cond_14

    return-object v3

    .line 297
    .end local v3  # "key":Ljava/lang/Object;, "TK;"
    :cond_14
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 301
    .end local v2  # "i":I
    :cond_17
    const/4 v2, 0x0

    return-object v2
.end method

.method public findKey(FF)Ljava/lang/Object;
    .registers 8
    .param p1, "value"  # F
    .param p2, "epsilon"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TK;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 308
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 309
    .local v1, "valueTable":[F
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_1c

    .line 310
    aget-object v3, v0, v2

    .line 311
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_19

    aget v4, v1, v2

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_19

    return-object v3

    .line 309
    .end local v3  # "key":Ljava/lang/Object;, "TK;"
    :cond_19
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 313
    .end local v2  # "i":I
    :cond_1c
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Ljava/lang/Object;F)F
    .registers 5
    .param p2, "defaultValue"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 190
    .local v0, "i":I
    if-gez v0, :cond_8

    move v1, p2

    goto :goto_c

    :cond_8
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget v1, v1, v0

    :goto_c
    return v1
.end method

.method public getAndIncrement(Ljava/lang/Object;FF)F
    .registers 8
    .param p2, "defaultValue"  # F
    .param p3, "increment"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;FF)F"
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 197
    .local v0, "i":I
    if-ltz v0, :cond_12

    .line 198
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget v1, v1, v0

    .line 199
    .local v1, "oldValue":F
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget v3, v2, v0

    add-float/2addr v3, p3

    aput v3, v2, v0

    .line 200
    return v1

    .line 202
    .end local v1  # "oldValue":F
    :cond_12
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 203
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 204
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    add-float v2, p2, p3

    aput v2, v1, v0

    .line 205
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v1, v2, :cond_31

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    .line 206
    :cond_31
    return p2
.end method

.method public hashCode()I
    .registers 9

    .line 344
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 345
    .local v0, "h":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 346
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 347
    .local v2, "valueTable":[F
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "n":I
    :goto_8
    if-ge v3, v4, :cond_1d

    .line 348
    aget-object v5, v1, v3

    .line 349
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    aget v7, v2, v3

    invoke-static {v7}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 347
    .end local v5  # "key":Ljava/lang/Object;, "TK;"
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 351
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_1d
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 239
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 408
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 41
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    return-object v0

    .line 461
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    if-nez v0, :cond_1c

    .line 462
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    .line 463
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    .line 465
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->reset()V

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    .line 468
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    return-object v0

    .line 471
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->reset()V

    .line 472
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    .line 473
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    .line 474
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    return-object v0
.end method

.method locateKey(Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_1e

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 128
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 129
    .local v1, "i":I
    :goto_8
    aget-object v2, v0, v1

    .line 130
    .local v2, "other":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_10

    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    return v3

    .line 131
    :cond_10
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    return v1

    .line 128
    .end local v2  # "other":Ljava/lang/Object;, "TK;"
    :cond_17
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    and-int v1, v2, v3

    goto :goto_8

    .line 126
    .end local v0  # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v1  # "i":I
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 234
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected place(Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->shift:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public put(Ljava/lang/Object;FF)F
    .registers 7
    .param p2, "value"  # F
    .param p3, "defaultValue"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;FF)F"
        }
    .end annotation

    .line 150
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 151
    .local v0, "i":I
    if-ltz v0, :cond_f

    .line 152
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget v1, v1, v0

    .line 153
    .local v1, "oldValue":F
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v2, v0

    .line 154
    return v1

    .line 156
    .end local v1  # "oldValue":F
    :cond_f
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 157
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 158
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v1, v0

    .line 159
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v1, v2, :cond_2c

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    .line 160
    :cond_2c
    return p3
.end method

.method public put(Ljava/lang/Object;F)V
    .registers 6
    .param p2, "value"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 137
    .local v0, "i":I
    if-ltz v0, :cond_b

    .line 138
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v1, v0

    .line 139
    return-void

    .line 141
    :cond_b
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 143
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v1, v0

    .line 144
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v1, v2, :cond_28

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    .line 145
    :cond_28
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<+TK;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->ensureCapacity(I)V

    .line 165
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 166
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 168
    .local v1, "valueTable":[F
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "n":I
    :goto_b
    if-ge v2, v3, :cond_19

    .line 169
    aget-object v4, v0, v2

    .line 170
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_16

    aget v5, v1, v2

    invoke-virtual {p0, v4, v5}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->put(Ljava/lang/Object;F)V

    .line 168
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 172
    .end local v2  # "i":I
    .end local v3  # "n":I
    .end local v4  # "key":Ljava/lang/Object;, "TK;"
    :cond_19
    return-void
.end method

.method public remove(Ljava/lang/Object;F)F
    .registers 12
    .param p2, "defaultValue"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .line 212
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 213
    .local v0, "i":I
    if-gez v0, :cond_7

    return p2

    .line 214
    :cond_7
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 215
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 216
    .local v2, "valueTable":[F
    aget v3, v2, v0

    .line 217
    .local v3, "oldValue":F
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    .local v4, "mask":I
    add-int/lit8 v5, v0, 0x1

    and-int/2addr v5, v4

    .line 218
    .local v5, "next":I
    :goto_12
    aget-object v6, v1, v5

    move-object p1, v6

    if-eqz v6, :cond_2f

    .line 219
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->place(Ljava/lang/Object;)I

    move-result v6

    .line 220
    .local v6, "placement":I
    sub-int v7, v5, v6

    and-int/2addr v7, v4

    sub-int v8, v0, v6

    and-int/2addr v8, v4

    if-le v7, v8, :cond_2a

    .line 221
    aput-object p1, v1, v0

    .line 222
    aget v7, v2, v5

    aput v7, v2, v0

    .line 223
    move v0, v5

    .line 225
    :cond_2a
    add-int/lit8 v7, v5, 0x1

    and-int v5, v7, v4

    .line 226
    .end local v6  # "placement":I
    goto :goto_12

    .line 227
    :cond_2f
    const/4 v6, 0x0

    aput-object v6, v1, v0

    .line 228
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 229
    return v3
.end method

.method final resize(I)V
    .registers 8
    .param p1, "newSize"  # I

    .line 324
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    .line 325
    .local v0, "oldCapacity":I
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    .line 326
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    .line 327
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->shift:I

    .line 329
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 330
    .local v1, "oldKeyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 332
    .local v2, "oldValueTable":[F
    new-array v3, p1, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 333
    new-array v3, p1, [F

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 335
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-lez v3, :cond_38

    .line 336
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v0, :cond_38

    .line 337
    aget-object v4, v1, v3

    .line 338
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_35

    aget v5, v2, v3

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->putResize(Ljava/lang/Object;F)V

    .line 336
    .end local v4  # "key":Ljava/lang/Object;, "TK;"
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 341
    .end local v3  # "i":I
    :cond_38
    return-void
.end method

.method public shrink(I)V
    .registers 5
    .param p1, "maximumCapacity"  # I

    .line 246
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    if-ltz p1, :cond_11

    .line 247
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 248
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    if-le v1, v0, :cond_10

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    .line 249
    :cond_10
    return-void

    .line 246
    .end local v0  # "tableSize":I
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 377
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const-string v0, ", "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "separator"  # Ljava/lang/String;

    .line 373
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;
    .registers 4

    .line 438
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    return-object v0

    .line 439
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    if-nez v0, :cond_1c

    .line 440
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    .line 441
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    .line 443
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->reset()V

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    .line 446
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    .line 447
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    return-object v0

    .line 449
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->reset()V

    .line 450
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    .line 452
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    return-object v0
.end method
