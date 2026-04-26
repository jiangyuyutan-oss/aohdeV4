.class public Lcom/badlogic/gdx/utils/IntIntMap;
.super Ljava/lang/Object;
.source "IntIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntIntMap$Keys;,
        Lcom/badlogic/gdx/utils/IntIntMap$Values;,
        Lcom/badlogic/gdx/utils/IntIntMap$Entries;,
        Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private transient entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

.field private transient entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

.field hasZeroValue:Z

.field keyTable:[I

.field private transient keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

.field private transient keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

.field private final loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field private threshold:I

.field valueTable:[I

.field private transient values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

.field private transient values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

.field zeroValue:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 73
    const/16 v0, 0x33

    const v1, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"  # I

    .line 79
    const v0, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    .line 80
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"  # I
    .param p2, "loadFactor"  # F

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2f

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_2f

    .line 88
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    .line 90
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 91
    .local v0, "tableSize":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    .line 92
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    .line 93
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->shift:I

    .line 95
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 96
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 97
    return-void

    .line 87
    .end local v0  # "tableSize":I
    :cond_2f
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .registers 6
    .param p1, "map"  # Lcom/badlogic/gdx/utils/IntIntMap;

    .line 101
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    .line 102
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 105
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 106
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 107
    return-void
.end method

.method private locateKey(I)I
    .registers 6
    .param p1, "key"  # I

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 131
    .local v0, "keyTable":[I
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->place(I)I

    move-result v1

    .line 132
    .local v1, "i":I
    :goto_6
    aget v2, v0, v1

    .line 133
    .local v2, "other":I
    if-nez v2, :cond_e

    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    return v3

    .line 134
    :cond_e
    if-ne v2, p1, :cond_11

    return v1

    .line 131
    .end local v2  # "other":I
    :cond_11
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int v1, v2, v3

    goto :goto_6
.end method

.method private putResize(II)V
    .registers 7
    .param p1, "key"  # I
    .param p2, "value"  # I

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 197
    .local v0, "keyTable":[I
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->place(I)I

    move-result v1

    .line 198
    .local v1, "i":I
    :goto_6
    aget v2, v0, v1

    if-nez v2, :cond_11

    .line 199
    aput p1, v0, v1

    .line 200
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v2, v1

    .line 201
    return-void

    .line 197
    :cond_11
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int v1, v2, v3

    goto :goto_6
.end method

.method private resize(I)V
    .registers 8
    .param p1, "newSize"  # I

    .line 342
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v0, v0

    .line 343
    .local v0, "oldCapacity":I
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    .line 344
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    .line 345
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->shift:I

    .line 347
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 348
    .local v1, "oldKeyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 350
    .local v2, "oldValueTable":[I
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 351
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 353
    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-lez v3, :cond_36

    .line 354
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v0, :cond_36

    .line 355
    aget v4, v1, v3

    .line 356
    .local v4, "key":I
    if-eqz v4, :cond_33

    aget v5, v2, v3

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/utils/IntIntMap;->putResize(II)V

    .line 354
    .end local v4  # "key":I
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 359
    .end local v3  # "i":I
    :cond_36
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 299
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-nez v0, :cond_5

    return-void

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 301
    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 302
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 303
    return-void
.end method

.method public clear(I)V
    .registers 4
    .param p1, "maximumCapacity"  # I

    .line 288
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 289
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v1, v1

    if-gt v1, v0, :cond_f

    .line 290
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    .line 291
    return-void

    .line 293
    :cond_f
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 294
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 295
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 296
    return-void
.end method

.method public containsKey(I)Z
    .registers 3
    .param p1, "key"  # I

    .line 317
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    return v0

    .line 318
    :cond_5
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public containsValue(I)Z
    .registers 7
    .param p1, "value"  # I

    .line 308
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    if-ne v0, p1, :cond_a

    return v1

    .line 309
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 310
    .local v0, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 311
    .local v2, "valueTable":[I
    array-length v3, v2

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_10
    if-ltz v3, :cond_1e

    .line 312
    aget v4, v0, v3

    if-eqz v4, :cond_1b

    aget v4, v2, v3

    if-ne v4, p1, :cond_1b

    return v1

    .line 311
    :cond_1b
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 313
    .end local v3  # "i":I
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .registers 4
    .param p1, "additionalCapacity"  # I

    .line 337
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 338
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v1, v1

    if-ge v1, v0, :cond_11

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 339
    :cond_11
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;
    .registers 4

    .line 436
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-object v0

    .line 437
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    if-nez v0, :cond_1c

    .line 438
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    .line 439
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    .line 441
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 442
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->reset()V

    .line 443
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    return-object v0

    .line 447
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->reset()V

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 449
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 450
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"  # Ljava/lang/Object;

    .line 374
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 375
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 376
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IntIntMap;

    .line 377
    .local v1, "other":Lcom/badlogic/gdx/utils/IntIntMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-eq v3, v4, :cond_14

    return v2

    .line 378
    :cond_14
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_1b

    return v2

    .line 379
    :cond_1b
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v3, :cond_26

    .line 380
    iget v3, v1, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    if-eq v3, v4, :cond_26

    return v2

    .line 382
    :cond_26
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 383
    .local v3, "keyTable":[I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 384
    .local v4, "valueTable":[I
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_2c
    if-ge v5, v6, :cond_47

    .line 385
    aget v7, v3, v5

    .line 386
    .local v7, "key":I
    if-eqz v7, :cond_44

    .line 387
    invoke-virtual {v1, v7, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v8

    .line 388
    .local v8, "otherValue":I
    if-nez v8, :cond_3f

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result v9

    if-nez v9, :cond_3f

    return v2

    .line 389
    :cond_3f
    aget v9, v4, v5

    if-eq v8, v9, :cond_44

    return v2

    .line 384
    .end local v7  # "key":I
    .end local v8  # "otherValue":I
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 392
    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_47
    return v0
.end method

.method public findKey(II)I
    .registers 8
    .param p1, "value"  # I
    .param p2, "notFound"  # I

    .line 324
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    if-ne v0, p1, :cond_a

    const/4 v0, 0x0

    return v0

    .line 325
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 326
    .local v0, "keyTable":[I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 327
    .local v1, "valueTable":[I
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_1f

    .line 328
    aget v3, v0, v2

    .line 329
    .local v3, "key":I
    if-eqz v3, :cond_1c

    aget v4, v1, v2

    if-ne v4, p1, :cond_1c

    return v3

    .line 327
    .end local v3  # "key":I
    :cond_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 331
    .end local v2  # "i":I
    :cond_1f
    return p2
.end method

.method public get(II)I
    .registers 5
    .param p1, "key"  # I
    .param p2, "defaultValue"  # I

    .line 207
    if-nez p1, :cond_b

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    goto :goto_a

    :cond_9
    move v0, p2

    :goto_a
    return v0

    .line 208
    :cond_b
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result v0

    .line 209
    .local v0, "i":I
    if-ltz v0, :cond_16

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v1, v1, v0

    goto :goto_17

    :cond_16
    move v1, p2

    :goto_17
    return v1
.end method

.method public getAndIncrement(III)I
    .registers 8
    .param p1, "key"  # I
    .param p2, "defaultValue"  # I
    .param p3, "increment"  # I

    .line 215
    const/4 v0, 0x1

    if-nez p1, :cond_1b

    .line 216
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez v1, :cond_13

    .line 217
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 218
    add-int v1, p2, p3

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 219
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 220
    return p2

    .line 222
    :cond_13
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 223
    .local v0, "oldValue":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 224
    return v0

    .line 226
    .end local v0  # "oldValue":I
    :cond_1b
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result v1

    .line 227
    .local v1, "i":I
    if-ltz v1, :cond_2d

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v0, v0, v1

    .line 229
    .restart local v0  # "oldValue":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v3, v2, v1

    add-int/2addr v3, p3

    aput v3, v2, v1

    .line 230
    return v0

    .line 232
    .end local v0  # "oldValue":I
    :cond_2d
    add-int/lit8 v2, v1, 0x1

    neg-int v1, v2

    .line 233
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v2, v1

    .line 234
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    add-int v3, p2, p3

    aput v3, v2, v1

    .line 235
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v2, v3, :cond_4b

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v2, v2

    shl-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 236
    :cond_4b
    return p2
.end method

.method public hashCode()I
    .registers 9

    .line 362
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 363
    .local v0, "h":I
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    add-int/2addr v0, v1

    .line 364
    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 365
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 366
    .local v2, "valueTable":[I
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "n":I
    :goto_f
    if-ge v3, v4, :cond_1e

    .line 367
    aget v5, v1, v3

    .line 368
    .local v5, "key":I
    if-eqz v5, :cond_1b

    mul-int/lit8 v6, v5, 0x1f

    aget v7, v2, v3

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 366
    .end local v5  # "key":I
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 370
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_1e
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 274
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
            ">;"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap;->entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntIntMap$Keys;
    .registers 4

    .line 480
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-object v0

    .line 481
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    if-nez v0, :cond_1c

    .line 482
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    .line 483
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    .line 485
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 486
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->reset()V

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 488
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    return-object v0

    .line 491
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->reset()V

    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 493
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 494
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 269
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected place(I)I
    .registers 6
    .param p1, "item"  # I

    .line 124
    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->shift:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public put(III)I
    .registers 8
    .param p1, "key"  # I
    .param p2, "value"  # I
    .param p3, "defaultValue"  # I

    .line 160
    const/4 v0, 0x1

    if-nez p1, :cond_14

    .line 161
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 162
    .local v1, "oldValue":I
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 163
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez v2, :cond_13

    .line 164
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 165
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 166
    return p3

    .line 168
    :cond_13
    return v1

    .line 170
    .end local v1  # "oldValue":I
    :cond_14
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result v1

    .line 171
    .local v1, "i":I
    if-ltz v1, :cond_23

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v0, v0, v1

    .line 173
    .local v0, "oldValue":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v2, v1

    .line 174
    return v0

    .line 176
    .end local v0  # "oldValue":I
    :cond_23
    add-int/lit8 v2, v1, 0x1

    neg-int v1, v2

    .line 177
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v2, v1

    .line 178
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v2, v1

    .line 179
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v2, v3, :cond_3f

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v2, v2

    shl-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 180
    :cond_3f
    return p3
.end method

.method public put(II)V
    .registers 7
    .param p1, "key"  # I
    .param p2, "value"  # I

    .line 139
    const/4 v0, 0x1

    if-nez p1, :cond_11

    .line 140
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 141
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez v1, :cond_10

    .line 142
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 143
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 145
    :cond_10
    return-void

    .line 147
    :cond_11
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result v1

    .line 148
    .local v1, "i":I
    if-ltz v1, :cond_1c

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v0, v1

    .line 150
    return-void

    .line 152
    :cond_1c
    add-int/lit8 v2, v1, 0x1

    neg-int v1, v2

    .line 153
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v2, v1

    .line 154
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v2, v1

    .line 155
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v2, v3, :cond_38

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v2, v2

    shl-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 156
    :cond_38
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .registers 8
    .param p1, "map"  # Lcom/badlogic/gdx/utils/IntIntMap;

    .line 184
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->ensureCapacity(I)V

    .line 185
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 186
    :cond_f
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 187
    .local v0, "keyTable":[I
    iget-object v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 188
    .local v1, "valueTable":[I
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "n":I
    :goto_15
    if-ge v2, v3, :cond_23

    .line 189
    aget v4, v0, v2

    .line 190
    .local v4, "key":I
    if-eqz v4, :cond_20

    aget v5, v1, v2

    invoke-virtual {p0, v4, v5}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 188
    .end local v4  # "key":I
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 192
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_23
    return-void
.end method

.method public remove(II)I
    .registers 13
    .param p1, "key"  # I
    .param p2, "defaultValue"  # I

    .line 241
    const/4 v0, 0x0

    if-nez p1, :cond_13

    .line 242
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez v1, :cond_8

    return p2

    .line 243
    :cond_8
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 244
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 245
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    return v0

    .line 248
    :cond_13
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result v1

    .line 249
    .local v1, "i":I
    if-gez v1, :cond_1a

    return p2

    .line 250
    :cond_1a
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 251
    .local v2, "keyTable":[I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 252
    .local v3, "valueTable":[I
    aget v4, v3, v1

    .local v4, "oldValue":I
    iget v5, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    .local v5, "mask":I
    add-int/lit8 v6, v1, 0x1

    and-int/2addr v6, v5

    .line 253
    .local v6, "next":I
    :goto_25
    aget v7, v2, v6

    move p1, v7

    if-eqz v7, :cond_42

    .line 254
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->place(I)I

    move-result v7

    .line 255
    .local v7, "placement":I
    sub-int v8, v6, v7

    and-int/2addr v8, v5

    sub-int v9, v1, v7

    and-int/2addr v9, v5

    if-le v8, v9, :cond_3d

    .line 256
    aput p1, v2, v1

    .line 257
    aget v8, v3, v6

    aput v8, v3, v1

    .line 258
    move v1, v6

    .line 260
    :cond_3d
    add-int/lit8 v8, v6, 0x1

    and-int v6, v8, v5

    .line 261
    .end local v7  # "placement":I
    goto :goto_25

    .line 262
    :cond_42
    aput v0, v2, v1

    .line 263
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 264
    return v4
.end method

.method public shrink(I)V
    .registers 5
    .param p1, "maximumCapacity"  # I

    .line 281
    if-ltz p1, :cond_11

    .line 282
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 283
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v1, v1

    if-le v1, v0, :cond_10

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 284
    :cond_10
    return-void

    .line 281
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
    .registers 8

    .line 396
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 397
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 398
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 400
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 401
    .local v2, "valueTable":[I
    array-length v3, v1

    .line 402
    .local v3, "i":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_29

    .line 403
    const-string v4, "0="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 406
    :cond_29
    :goto_29
    add-int/lit8 v4, v3, -0x1

    .end local v3  # "i":I
    .local v4, "i":I
    if-lez v3, :cond_3f

    .line 407
    aget v3, v1, v4

    .line 408
    .local v3, "key":I
    if-nez v3, :cond_33

    move v3, v4

    goto :goto_29

    .line 409
    :cond_33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    nop

    .line 415
    .end local v3  # "key":I
    :cond_3f
    :goto_3f
    move v3, v4

    .end local v4  # "i":I
    .local v3, "i":I
    :goto_40
    add-int/lit8 v4, v3, -0x1

    .end local v3  # "i":I
    .restart local v4  # "i":I
    if-lez v3, :cond_5a

    .line 416
    aget v3, v1, v4

    .line 417
    .local v3, "key":I
    if-nez v3, :cond_49

    goto :goto_3f

    .line 418
    :cond_49
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    .end local v3  # "key":I
    goto :goto_3f

    .line 423
    :cond_5a
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public values()Lcom/badlogic/gdx/utils/IntIntMap$Values;
    .registers 4

    .line 458
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-object v0

    .line 459
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    if-nez v0, :cond_1c

    .line 460
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    .line 461
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    .line 463
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 464
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;->reset()V

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    return-object v0

    .line 469
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;->reset()V

    .line 470
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 471
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 472
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    return-object v0
.end method
