.class public Lcom/badlogic/gdx/utils/IntFloatMap;
.super Ljava/lang/Object;
.source "IntFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntFloatMap$Keys;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Values;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Entries;,
        Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private transient entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

.field private transient entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

.field hasZeroValue:Z

.field keyTable:[I

.field private transient keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

.field private transient keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

.field private final loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field private threshold:I

.field valueTable:[F

.field private transient values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

.field private transient values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

.field zeroValue:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 74
    const/16 v0, 0x33

    const v1, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"  # I

    .line 81
    const v0, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    .line 82
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"  # I
    .param p2, "loadFactor"  # F

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2f

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_2f

    .line 90
    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    .line 92
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 93
    .local v0, "tableSize":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    .line 94
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    .line 95
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->shift:I

    .line 97
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 98
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 99
    return-void

    .line 89
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .registers 6
    .param p1, "map"  # Lcom/badlogic/gdx/utils/IntFloatMap;

    .line 103
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    .line 104
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 107
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 108
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 109
    return-void
.end method

.method private locateKey(I)I
    .registers 6
    .param p1, "key"  # I

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 133
    .local v0, "keyTable":[I
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->place(I)I

    move-result v1

    .line 134
    .local v1, "i":I
    :goto_6
    aget v2, v0, v1

    .line 135
    .local v2, "other":I
    if-nez v2, :cond_e

    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    return v3

    .line 136
    :cond_e
    if-ne v2, p1, :cond_11

    return v1

    .line 133
    .end local v2  # "other":I
    :cond_11
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int v1, v2, v3

    goto :goto_6
.end method

.method private putResize(IF)V
    .registers 7
    .param p1, "key"  # I
    .param p2, "value"  # F

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 200
    .local v0, "keyTable":[I
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->place(I)I

    move-result v1

    .line 201
    .local v1, "i":I
    :goto_6
    aget v2, v0, v1

    if-nez v2, :cond_11

    .line 202
    aput p1, v0, v1

    .line 203
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v2, v1

    .line 204
    return-void

    .line 200
    :cond_11
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int v1, v2, v3

    goto :goto_6
.end method

.method private resize(I)V
    .registers 8
    .param p1, "newSize"  # I

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    .line 369
    .local v0, "oldCapacity":I
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    .line 370
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    .line 371
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->shift:I

    .line 373
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 374
    .local v1, "oldKeyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 376
    .local v2, "oldValueTable":[F
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 377
    new-array v3, p1, [F

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 379
    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-lez v3, :cond_36

    .line 380
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v0, :cond_36

    .line 381
    aget v4, v1, v3

    .line 382
    .local v4, "key":I
    if-eqz v4, :cond_33

    aget v5, v2, v3

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/utils/IntFloatMap;->putResize(IF)V

    .line 380
    .end local v4  # "key":I
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 385
    .end local v3  # "i":I
    :cond_36
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 305
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v0, :cond_5

    return-void

    .line 306
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 307
    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 308
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 309
    return-void
.end method

.method public clear(I)V
    .registers 4
    .param p1, "maximumCapacity"  # I

    .line 294
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 295
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v1, v1

    if-gt v1, v0, :cond_f

    .line 296
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap;->clear()V

    .line 297
    return-void

    .line 299
    :cond_f
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 300
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 301
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 302
    return-void
.end method

.method public containsKey(I)Z
    .registers 3
    .param p1, "key"  # I

    .line 334
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    return v0

    .line 335
    :cond_5
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public containsValue(F)Z
    .registers 7
    .param p1, "value"  # F

    .line 314
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    return v1

    .line 315
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 316
    .local v0, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 317
    .local v2, "valueTable":[F
    array-length v3, v2

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_12
    if-ltz v3, :cond_22

    .line 318
    aget v4, v0, v3

    if-eqz v4, :cond_1f

    aget v4, v2, v3

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1f

    return v1

    .line 317
    :cond_1f
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 319
    .end local v3  # "i":I
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method public containsValue(FF)Z
    .registers 8
    .param p1, "value"  # F
    .param p2, "epsilon"  # F

    .line 325
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_11

    return v1

    .line 326
    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 327
    .local v0, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 328
    .local v2, "valueTable":[F
    array-length v3, v2

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_17
    if-ltz v3, :cond_2c

    .line 329
    aget v4, v0, v3

    if-eqz v4, :cond_29

    aget v4, v2, v3

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_29

    return v1

    .line 328
    :cond_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 330
    .end local v3  # "i":I
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .registers 4
    .param p1, "additionalCapacity"  # I

    .line 363
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 364
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v1, v1

    if-ge v1, v0, :cond_11

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 365
    :cond_11
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntFloatMap$Entries;
    .registers 4

    .line 462
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-object v0

    .line 463
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    if-nez v0, :cond_1c

    .line 464
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    .line 465
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    .line 467
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 468
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->reset()V

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 470
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 471
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    return-object v0

    .line 473
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->reset()V

    .line 474
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 476
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"  # Ljava/lang/Object;

    .line 400
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 401
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 402
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IntFloatMap;

    .line 403
    .local v1, "other":Lcom/badlogic/gdx/utils/IntFloatMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-eq v3, v4, :cond_14

    return v2

    .line 404
    :cond_14
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_1b

    return v2

    .line 405
    :cond_1b
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v3, :cond_28

    .line 406
    iget v3, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_28

    return v2

    .line 408
    :cond_28
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 409
    .local v3, "keyTable":[I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 410
    .local v4, "valueTable":[F
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_2e
    if-ge v5, v6, :cond_4e

    .line 411
    aget v7, v3, v5

    .line 412
    .local v7, "key":I
    if-eqz v7, :cond_4b

    .line 413
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v9

    .line 414
    .local v9, "otherValue":F
    cmpl-float v8, v9, v8

    if-nez v8, :cond_44

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/IntFloatMap;->containsKey(I)Z

    move-result v8

    if-nez v8, :cond_44

    return v2

    .line 415
    :cond_44
    aget v8, v4, v5

    cmpl-float v8, v9, v8

    if-eqz v8, :cond_4b

    return v2

    .line 410
    .end local v7  # "key":I
    .end local v9  # "otherValue":F
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 418
    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_4e
    return v0
.end method

.method public findKey(FFI)I
    .registers 8
    .param p1, "value"  # F
    .param p2, "epsilon"  # F
    .param p3, "notFound"  # I

    .line 352
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_11

    const/4 v0, 0x0

    return v0

    .line 353
    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 354
    .local v0, "keyTable":[I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 355
    .local v1, "valueTable":[F
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_2f

    .line 356
    aget v3, v0, v2

    if-eqz v3, :cond_2c

    aget v3, v1, v2

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_2c

    aget v3, v0, v2

    return v3

    .line 355
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 357
    .end local v2  # "i":I
    :cond_2f
    return p3
.end method

.method public findKey(FI)I
    .registers 7
    .param p1, "value"  # F
    .param p2, "notFound"  # I

    .line 341
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 342
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 343
    .local v0, "keyTable":[I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 344
    .local v1, "valueTable":[F
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_25

    .line 345
    aget v3, v0, v2

    if-eqz v3, :cond_22

    aget v3, v1, v2

    cmpl-float v3, v3, p1

    if-nez v3, :cond_22

    aget v3, v0, v2

    return v3

    .line 344
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 346
    .end local v2  # "i":I
    :cond_25
    return p2
.end method

.method public get(IF)F
    .registers 5
    .param p1, "key"  # I
    .param p2, "defaultValue"  # F

    .line 211
    if-nez p1, :cond_b

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    goto :goto_a

    :cond_9
    move v0, p2

    :goto_a
    return v0

    .line 212
    :cond_b
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result v0

    .line 213
    .local v0, "i":I
    if-ltz v0, :cond_16

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v1, v1, v0

    goto :goto_17

    :cond_16
    move v1, p2

    :goto_17
    return v1
.end method

.method public getAndIncrement(IFF)F
    .registers 8
    .param p1, "key"  # I
    .param p2, "defaultValue"  # F
    .param p3, "increment"  # F

    .line 219
    const/4 v0, 0x1

    if-nez p1, :cond_1b

    .line 220
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez v1, :cond_13

    .line 221
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 222
    add-float v1, p2, p3

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 223
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 224
    return p2

    .line 226
    :cond_13
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 227
    .local v0, "oldValue":F
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    add-float/2addr v1, p3

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 228
    return v0

    .line 230
    .end local v0  # "oldValue":F
    :cond_1b
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result v1

    .line 231
    .local v1, "i":I
    if-ltz v1, :cond_2d

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v0, v0, v1

    .line 233
    .restart local v0  # "oldValue":F
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v3, v2, v1

    add-float/2addr v3, p3

    aput v3, v2, v1

    .line 234
    return v0

    .line 236
    .end local v0  # "oldValue":F
    :cond_2d
    add-int/lit8 v2, v1, 0x1

    neg-int v1, v2

    .line 237
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v2, v1

    .line 238
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    add-float v3, p2, p3

    aput v3, v2, v1

    .line 239
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v2, v3, :cond_4b

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v2, v2

    shl-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 240
    :cond_4b
    return p2
.end method

.method public hashCode()I
    .registers 9

    .line 388
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 389
    .local v0, "h":I
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    :cond_d
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 391
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 392
    .local v2, "valueTable":[F
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "n":I
    :goto_13
    if-ge v3, v4, :cond_26

    .line 393
    aget v5, v1, v3

    .line 394
    .local v5, "key":I
    if-eqz v5, :cond_23

    mul-int/lit8 v6, v5, 0x1f

    aget v7, v2, v3

    invoke-static {v7}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 392
    .end local v5  # "key":I
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 396
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_26
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 280
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

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
            "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
            ">;"
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap;->entries()Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntFloatMap$Keys;
    .registers 4

    .line 506
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-object v0

    .line 507
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    if-nez v0, :cond_1c

    .line 508
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    .line 509
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    .line 511
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 512
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->reset()V

    .line 513
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 514
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 515
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    return-object v0

    .line 517
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->reset()V

    .line 518
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 519
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 275
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

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

    .line 126
    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->shift:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public put(IFF)F
    .registers 8
    .param p1, "key"  # I
    .param p2, "value"  # F
    .param p3, "defaultValue"  # F

    .line 163
    const/4 v0, 0x1

    if-nez p1, :cond_14

    .line 164
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 165
    .local v1, "oldValue":F
    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 166
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez v2, :cond_13

    .line 167
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 168
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 169
    return p3

    .line 171
    :cond_13
    return v1

    .line 173
    .end local v1  # "oldValue":F
    :cond_14
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result v1

    .line 174
    .local v1, "i":I
    if-ltz v1, :cond_23

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v0, v0, v1

    .line 176
    .local v0, "oldValue":F
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v2, v1

    .line 177
    return v0

    .line 179
    .end local v0  # "oldValue":F
    :cond_23
    add-int/lit8 v2, v1, 0x1

    neg-int v1, v2

    .line 180
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v2, v1

    .line 181
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v2, v1

    .line 182
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v2, v3, :cond_3f

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v2, v2

    shl-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 183
    :cond_3f
    return p3
.end method

.method public put(IF)V
    .registers 7
    .param p1, "key"  # I
    .param p2, "value"  # F

    .line 141
    const/4 v0, 0x1

    if-nez p1, :cond_11

    .line 142
    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 143
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez v1, :cond_10

    .line 144
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 145
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 147
    :cond_10
    return-void

    .line 149
    :cond_11
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result v1

    .line 150
    .local v1, "i":I
    if-ltz v1, :cond_1c

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v0, v1

    .line 152
    return-void

    .line 154
    :cond_1c
    add-int/lit8 v2, v1, 0x1

    neg-int v1, v2

    .line 155
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v2, v1

    .line 156
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v2, v1

    .line 157
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v2, v3, :cond_38

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v2, v2

    shl-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 158
    :cond_38
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .registers 8
    .param p1, "map"  # Lcom/badlogic/gdx/utils/IntFloatMap;

    .line 187
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->ensureCapacity(I)V

    .line 188
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    .line 189
    :cond_f
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 190
    .local v0, "keyTable":[I
    iget-object v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 191
    .local v1, "valueTable":[F
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "n":I
    :goto_15
    if-ge v2, v3, :cond_23

    .line 192
    aget v4, v0, v2

    .line 193
    .local v4, "key":I
    if-eqz v4, :cond_20

    aget v5, v1, v2

    invoke-virtual {p0, v4, v5}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    .line 191
    .end local v4  # "key":I
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 195
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_23
    return-void
.end method

.method public remove(IF)F
    .registers 13
    .param p1, "key"  # I
    .param p2, "defaultValue"  # F

    .line 246
    const/4 v0, 0x0

    if-nez p1, :cond_13

    .line 247
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez v1, :cond_8

    return p2

    .line 248
    :cond_8
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 249
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 250
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    return v0

    .line 253
    :cond_13
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result v1

    .line 254
    .local v1, "i":I
    if-gez v1, :cond_1a

    return p2

    .line 255
    :cond_1a
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 256
    .local v2, "keyTable":[I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 257
    .local v3, "valueTable":[F
    aget v4, v3, v1

    .line 258
    .local v4, "oldValue":F
    iget v5, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    .local v5, "mask":I
    add-int/lit8 v6, v1, 0x1

    and-int/2addr v6, v5

    .line 259
    .local v6, "next":I
    :goto_25
    aget v7, v2, v6

    move p1, v7

    if-eqz v7, :cond_42

    .line 260
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->place(I)I

    move-result v7

    .line 261
    .local v7, "placement":I
    sub-int v8, v6, v7

    and-int/2addr v8, v5

    sub-int v9, v1, v7

    and-int/2addr v9, v5

    if-le v8, v9, :cond_3d

    .line 262
    aput p1, v2, v1

    .line 263
    aget v8, v3, v6

    aput v8, v3, v1

    .line 264
    move v1, v6

    .line 266
    :cond_3d
    add-int/lit8 v8, v6, 0x1

    and-int v6, v8, v5

    .line 267
    .end local v7  # "placement":I
    goto :goto_25

    .line 268
    :cond_42
    aput v0, v2, v1

    .line 269
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 270
    return v4
.end method

.method public shrink(I)V
    .registers 5
    .param p1, "maximumCapacity"  # I

    .line 287
    if-ltz p1, :cond_11

    .line 288
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 289
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v1, v1

    if-le v1, v0, :cond_10

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 290
    :cond_10
    return-void

    .line 287
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

    .line 422
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 423
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 424
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 426
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 427
    .local v2, "valueTable":[F
    array-length v3, v1

    .line 428
    .local v3, "i":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_29

    .line 429
    const-string v4, "0="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 432
    :cond_29
    :goto_29
    add-int/lit8 v4, v3, -0x1

    .end local v3  # "i":I
    .local v4, "i":I
    if-lez v3, :cond_3f

    .line 433
    aget v3, v1, v4

    .line 434
    .local v3, "key":I
    if-nez v3, :cond_33

    move v3, v4

    goto :goto_29

    .line 435
    :cond_33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 438
    nop

    .line 441
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

    .line 442
    aget v3, v1, v4

    .line 443
    .local v3, "key":I
    if-nez v3, :cond_49

    goto :goto_3f

    .line 444
    :cond_49
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 448
    .end local v3  # "key":I
    goto :goto_3f

    .line 449
    :cond_5a
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public values()Lcom/badlogic/gdx/utils/IntFloatMap$Values;
    .registers 4

    .line 484
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-object v0

    .line 485
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    if-nez v0, :cond_1c

    .line 486
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    .line 487
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    .line 489
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 490
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->reset()V

    .line 491
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 493
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    return-object v0

    .line 495
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->reset()V

    .line 496
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    return-object v0
.end method
