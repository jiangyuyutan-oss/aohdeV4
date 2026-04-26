.class public Lcom/badlogic/gdx/utils/ObjectIntMap;
.super Ljava/lang/Object;
.source "ObjectIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;,
        Lcom/badlogic/gdx/utils/ObjectIntMap$Values;,
        Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;,
        Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field transient entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

.field transient entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field transient keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

.field transient keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

.field loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field threshold:I

.field valueTable:[I

.field transient values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

.field transient values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 71
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>(IF)V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"  # I

    .line 77
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    const v0, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>(IF)V

    .line 78
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"  # I
    .param p2, "loadFactor"  # F

    .line 83
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_31

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_31

    .line 86
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    .line 88
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 89
    .local v0, "tableSize":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    .line 90
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    .line 91
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->shift:I

    .line 93
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 94
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

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

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<+TK;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>(IF)V

    .line 100
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 103
    return-void
.end method

.method private putResize(Ljava/lang/Object;I)V
    .registers 7
    .param p2, "value"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 176
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 177
    .local v1, "i":I
    :goto_6
    aget-object v2, v0, v1

    if-nez v2, :cond_11

    .line 178
    aput-object p1, v0, v1

    .line 179
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v2, v1

    .line 180
    return-void

    .line 176
    :cond_11
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int v1, v2, v3

    goto :goto_6
.end method

.method private toString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p1, "separator"  # Ljava/lang/String;
    .param p2, "braces"  # Z

    .line 356
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-nez v0, :cond_c

    if-eqz p2, :cond_9

    const-string v0, "{}"

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0

    .line 357
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 358
    .local v0, "buffer":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1a

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    :cond_1a
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 360
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 361
    .local v2, "valueTable":[I
    array-length v3, v1

    .line 362
    .local v3, "i":I
    :goto_1f
    add-int/lit8 v4, v3, -0x1

    .end local v3  # "i":I
    .local v4, "i":I
    const/16 v5, 0x3d

    if-lez v3, :cond_37

    .line 363
    aget-object v3, v1, v4

    .line 364
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_2b

    move v3, v4

    goto :goto_1f

    .line 365
    :cond_2b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    nop

    .line 370
    .end local v3  # "key":Ljava/lang/Object;, "TK;"
    :cond_37
    :goto_37
    add-int/lit8 v3, v4, -0x1

    .end local v4  # "i":I
    .local v3, "i":I
    if-lez v4, :cond_51

    .line 371
    aget-object v4, v1, v3

    .line 372
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_40

    goto :goto_4f

    .line 373
    :cond_40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    aget v6, v2, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .end local v4  # "key":Ljava/lang/Object;, "TK;"
    nop

    .line 370
    :goto_4f
    move v4, v3

    goto :goto_37

    .line 378
    :cond_51
    if-eqz p2, :cond_58

    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 260
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-nez v0, :cond_5

    return-void

    .line 261
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public clear(I)V
    .registers 4
    .param p1, "maximumCapacity"  # I

    .line 250
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 251
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v1, v0, :cond_f

    .line 252
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->clear()V

    .line 253
    return-void

    .line 255
    :cond_f
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 256
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 257
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 276
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public containsValue(I)Z
    .registers 7
    .param p1, "value"  # I

    .line 268
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 269
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 270
    .local v1, "valueTable":[I
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_15

    .line 271
    aget-object v4, v0, v2

    if-eqz v4, :cond_12

    aget v4, v1, v2

    if-ne v4, p1, :cond_12

    return v3

    .line 270
    :cond_12
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 272
    .end local v2  # "i":I
    :cond_15
    const/4 v2, 0x0

    return v2
.end method

.method public ensureCapacity(I)V
    .registers 4
    .param p1, "additionalCapacity"  # I

    .line 294
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 295
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v1, v0, :cond_11

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 296
    :cond_11
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 391
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    return-object v0

    .line 392
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    if-nez v0, :cond_1c

    .line 393
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    .line 394
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    .line 396
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 397
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->reset()V

    .line 398
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    .line 399
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    .line 400
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    return-object v0

    .line 402
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->reset()V

    .line 403
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    .line 404
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    .line 405
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"  # Ljava/lang/Object;

    .line 330
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 331
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 332
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 333
    .local v1, "other":Lcom/badlogic/gdx/utils/ObjectIntMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-eq v3, v4, :cond_14

    return v2

    .line 334
    :cond_14
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 335
    .local v3, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 336
    .local v4, "valueTable":[I
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_1a
    if-ge v5, v6, :cond_35

    .line 337
    aget-object v7, v3, v5

    .line 338
    .local v7, "key":Ljava/lang/Object;, "TK;"
    if-eqz v7, :cond_32

    .line 339
    invoke-virtual {v1, v7, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v8

    .line 340
    .local v8, "otherValue":I
    if-nez v8, :cond_2d

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2d

    return v2

    .line 341
    :cond_2d
    aget v9, v4, v5

    if-eq v8, v9, :cond_32

    return v2

    .line 336
    .end local v7  # "key":Ljava/lang/Object;, "TK;"
    .end local v8  # "otherValue":I
    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 344
    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_35
    return v0
.end method

.method public findKey(I)Ljava/lang/Object;
    .registers 7
    .param p1, "value"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 283
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 284
    .local v1, "valueTable":[I
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_15

    .line 285
    aget-object v3, v0, v2

    .line 286
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_12

    aget v4, v1, v2

    if-ne v4, p1, :cond_12

    return-object v3

    .line 284
    .end local v3  # "key":Ljava/lang/Object;, "TK;"
    :cond_12
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 288
    .end local v2  # "i":I
    :cond_15
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Ljava/lang/Object;I)I
    .registers 5
    .param p2, "defaultValue"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 188
    .local v0, "i":I
    if-gez v0, :cond_8

    move v1, p2

    goto :goto_c

    :cond_8
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v1, v1, v0

    :goto_c
    return v1
.end method

.method public getAndIncrement(Ljava/lang/Object;II)I
    .registers 8
    .param p2, "defaultValue"  # I
    .param p3, "increment"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    .line 194
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 195
    .local v0, "i":I
    if-ltz v0, :cond_12

    .line 196
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v1, v1, v0

    .line 197
    .local v1, "oldValue":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v3, v2, v0

    add-int/2addr v3, p3

    aput v3, v2, v0

    .line 198
    return v1

    .line 200
    .end local v1  # "oldValue":I
    :cond_12
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 201
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 202
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    add-int v2, p2, p3

    aput v2, v1, v0

    .line 203
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v1, v2, :cond_31

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 204
    :cond_31
    return p2
.end method

.method public hashCode()I
    .registers 9

    .line 319
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 320
    .local v0, "h":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 321
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 322
    .local v2, "valueTable":[I
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "n":I
    :goto_8
    if-ge v3, v4, :cond_19

    .line 323
    aget-object v5, v1, v3

    .line 324
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    aget v7, v2, v3

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 322
    .end local v5  # "key":Ljava/lang/Object;, "TK;"
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 326
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_19
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 236
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 383
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 41
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 435
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    return-object v0

    .line 436
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    if-nez v0, :cond_1c

    .line 437
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    .line 438
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    .line 440
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 441
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->reset()V

    .line 442
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    .line 443
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    return-object v0

    .line 446
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->reset()V

    .line 447
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    .line 449
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

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
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_1e

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 128
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->place(Ljava/lang/Object;)I

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

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

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

    .line 231
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

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
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->shift:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public put(Ljava/lang/Object;II)I
    .registers 7
    .param p2, "value"  # I
    .param p3, "defaultValue"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 150
    .local v0, "i":I
    if-ltz v0, :cond_f

    .line 151
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v1, v1, v0

    .line 152
    .local v1, "oldValue":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v2, v0

    .line 153
    return v1

    .line 155
    .end local v1  # "oldValue":I
    :cond_f
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 156
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 157
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v1, v0

    .line 158
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v1, v2, :cond_2c

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 159
    :cond_2c
    return p3
.end method

.method public put(Ljava/lang/Object;I)V
    .registers 6
    .param p2, "value"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 137
    .local v0, "i":I
    if-ltz v0, :cond_b

    .line 138
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v1, v0

    .line 139
    return-void

    .line 141
    :cond_b
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 143
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v1, v0

    .line 144
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v1, v2, :cond_28

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 145
    :cond_28
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<+TK;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->ensureCapacity(I)V

    .line 164
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 165
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 167
    .local v1, "valueTable":[I
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "n":I
    :goto_b
    if-ge v2, v3, :cond_19

    .line 168
    aget-object v4, v0, v2

    .line 169
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_16

    aget v5, v1, v2

    invoke-virtual {p0, v4, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 167
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 171
    .end local v2  # "i":I
    .end local v3  # "n":I
    .end local v4  # "key":Ljava/lang/Object;, "TK;"
    :cond_19
    return-void
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 12
    .param p2, "defaultValue"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 209
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 210
    .local v0, "i":I
    if-gez v0, :cond_7

    return p2

    .line 211
    :cond_7
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 212
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 213
    .local v2, "valueTable":[I
    aget v3, v2, v0

    .line 214
    .local v3, "oldValue":I
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    .local v4, "mask":I
    add-int/lit8 v5, v0, 0x1

    and-int/2addr v5, v4

    .line 215
    .local v5, "next":I
    :goto_12
    aget-object v6, v1, v5

    move-object p1, v6

    if-eqz v6, :cond_2f

    .line 216
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v6

    .line 217
    .local v6, "placement":I
    sub-int v7, v5, v6

    and-int/2addr v7, v4

    sub-int v8, v0, v6

    and-int/2addr v8, v4

    if-le v7, v8, :cond_2a

    .line 218
    aput-object p1, v1, v0

    .line 219
    aget v7, v2, v5

    aput v7, v2, v0

    .line 220
    move v0, v5

    .line 222
    :cond_2a
    add-int/lit8 v7, v5, 0x1

    and-int v5, v7, v4

    .line 223
    .end local v6  # "placement":I
    goto :goto_12

    .line 224
    :cond_2f
    const/4 v6, 0x0

    aput-object v6, v1, v0

    .line 225
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 226
    return v3
.end method

.method final resize(I)V
    .registers 8
    .param p1, "newSize"  # I

    .line 299
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    .line 300
    .local v0, "oldCapacity":I
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    .line 301
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    .line 302
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->shift:I

    .line 304
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 305
    .local v1, "oldKeyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 307
    .local v2, "oldValueTable":[I
    new-array v3, p1, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 308
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 310
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-lez v3, :cond_38

    .line 311
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v0, :cond_38

    .line 312
    aget-object v4, v1, v3

    .line 313
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_35

    aget v5, v2, v3

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->putResize(Ljava/lang/Object;I)V

    .line 311
    .end local v4  # "key":Ljava/lang/Object;, "TK;"
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 316
    .end local v3  # "i":I
    :cond_38
    return-void
.end method

.method public shrink(I)V
    .registers 5
    .param p1, "maximumCapacity"  # I

    .line 243
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    if-ltz p1, :cond_11

    .line 244
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 245
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    if-le v1, v0, :cond_10

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 246
    :cond_10
    return-void

    .line 243
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

    .line 352
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    const-string v0, ", "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "separator"  # Ljava/lang/String;

    .line 348
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectIntMap$Values;
    .registers 4

    .line 413
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    return-object v0

    .line 414
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    if-nez v0, :cond_1c

    .line 415
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    .line 416
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    .line 418
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->reset()V

    .line 420
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    .line 421
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    .line 422
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    return-object v0

    .line 424
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->reset()V

    .line 425
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    .line 426
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    return-object v0
.end method
