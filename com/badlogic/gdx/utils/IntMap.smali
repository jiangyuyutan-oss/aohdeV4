.class public Lcom/badlogic/gdx/utils/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntMap$Keys;,
        Lcom/badlogic/gdx/utils/IntMap$Values;,
        Lcom/badlogic/gdx/utils/IntMap$Entries;,
        Lcom/badlogic/gdx/utils/IntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntMap$Entry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private transient entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

.field private transient entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

.field hasZeroValue:Z

.field keyTable:[I

.field private transient keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

.field private transient keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

.field private final loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field private threshold:I

.field valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private transient values1:Lcom/badlogic/gdx/utils/IntMap$Values;

.field private transient values2:Lcom/badlogic/gdx/utils/IntMap$Values;

.field zeroValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 74
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"  # I

    .line 81
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const v0, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 82
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"  # I
    .param p2, "loadFactor"  # F

    .line 87
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_31

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_31

    .line 90
    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    .line 92
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 93
    .local v0, "tableSize":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    .line 94
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 95
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->shift:I

    .line 97
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 98
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 99
    return-void

    .line 89
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<+TV;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 104
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v0, p1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 107
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 108
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 109
    return-void
.end method

.method private locateKey(I)I
    .registers 6
    .param p1, "key"  # I

    .line 132
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 133
    .local v0, "keyTable":[I
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->place(I)I

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

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v1, v2, v3

    goto :goto_6
.end method

.method private putResize(ILjava/lang/Object;)V
    .registers 7
    .param p1, "key"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 177
    .local v0, "keyTable":[I
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->place(I)I

    move-result v1

    .line 178
    .local v1, "i":I
    :goto_6
    aget v2, v0, v1

    if-nez v2, :cond_11

    .line 179
    aput p1, v0, v1

    .line 180
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 181
    return-void

    .line 177
    :cond_11
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v1, v2, v3

    goto :goto_6
.end method

.method private resize(I)V
    .registers 8
    .param p1, "newSize"  # I

    .line 331
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v0, v0

    .line 332
    .local v0, "oldCapacity":I
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    .line 333
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 334
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->shift:I

    .line 336
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 337
    .local v1, "oldKeyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 339
    .local v2, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 340
    new-array v3, p1, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 342
    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-lez v3, :cond_38

    .line 343
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v0, :cond_38

    .line 344
    aget v4, v1, v3

    .line 345
    .local v4, "key":I
    if-eqz v4, :cond_35

    aget-object v5, v2, v3

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/utils/IntMap;->putResize(ILjava/lang/Object;)V

    .line 343
    .end local v4  # "key":I
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 348
    .end local v3  # "i":I
    :cond_38
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 263
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v0, :cond_5

    return-void

    .line 264
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 265
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 266
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    iput-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 268
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 269
    return-void
.end method

.method public clear(I)V
    .registers 4
    .param p1, "maximumCapacity"  # I

    .line 251
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 252
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v1, v1

    if-gt v1, v0, :cond_f

    .line 253
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    .line 254
    return-void

    .line 256
    :cond_f
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 257
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 259
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 260
    return-void
.end method

.method public containsKey(I)Z
    .registers 3
    .param p1, "key"  # I

    .line 296
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    return v0

    .line 297
    :cond_5
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->locateKey(I)I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .registers 8
    .param p1, "value"  # Ljava/lang/Object;
    .param p2, "identity"  # Z

    .line 276
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 277
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x1

    if-nez p1, :cond_21

    .line 278
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v2, :cond_e

    return v1

    .line 279
    :cond_e
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 280
    .local v2, "keyTable":[I
    array-length v3, v0

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_12
    if-ltz v3, :cond_20

    .line 281
    aget v4, v2, v3

    if-eqz v4, :cond_1d

    aget-object v4, v0, v3

    if-nez v4, :cond_1d

    return v1

    .line 280
    :cond_1d
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 282
    .end local v2  # "keyTable":[I
    .end local v3  # "i":I
    :cond_20
    goto :goto_52

    :cond_21
    if-eqz p2, :cond_35

    .line 283
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v2, :cond_28

    return v1

    .line 284
    :cond_28
    array-length v2, v0

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_2a
    if-ltz v2, :cond_34

    .line 285
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_31

    return v1

    .line 284
    :cond_31
    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    .end local v2  # "i":I
    :cond_34
    goto :goto_52

    .line 287
    :cond_35
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    return v1

    .line 288
    :cond_42
    array-length v2, v0

    sub-int/2addr v2, v1

    .restart local v2  # "i":I
    :goto_44
    if-ltz v2, :cond_52

    .line 289
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    return v1

    .line 288
    :cond_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_44

    .line 291
    .end local v2  # "i":I
    :cond_52
    :goto_52
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .registers 4
    .param p1, "additionalCapacity"  # I

    .line 326
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 327
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v1, v1

    if-ge v1, v0, :cond_11

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 328
    :cond_11
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntMap$Entries;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Entries<",
            "TV;>;"
        }
    .end annotation

    .line 453
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0

    .line 454
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    if-nez v0, :cond_1c

    .line 455
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    .line 456
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    .line 458
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->reset()V

    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    return-object v0

    .line 464
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->reset()V

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"  # Ljava/lang/Object;

    .line 367
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 368
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 369
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IntMap;

    .line 370
    .local v1, "other":Lcom/badlogic/gdx/utils/IntMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-eq v3, v4, :cond_14

    return v2

    .line 371
    :cond_14
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_1b

    return v2

    .line 372
    :cond_1b
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v3, :cond_33

    .line 373
    iget-object v3, v1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v3, :cond_28

    .line 374
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-eqz v3, :cond_33

    return v2

    .line 376
    :cond_28
    iget-object v3, v1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    return v2

    .line 379
    :cond_33
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 380
    .local v3, "keyTable":[I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 381
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_39
    if-ge v5, v6, :cond_5a

    .line 382
    aget v7, v3, v5

    .line 383
    .local v7, "key":I
    if-eqz v7, :cond_57

    .line 384
    aget-object v8, v4, v5

    .line 385
    .local v8, "value":Ljava/lang/Object;, "TV;"
    if-nez v8, :cond_4c

    .line 386
    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_57

    return v2

    .line 388
    :cond_4c
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_57

    return v2

    .line 381
    .end local v7  # "key":I
    .end local v8  # "value":Ljava/lang/Object;, "TV;"
    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 392
    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_5a
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"  # Ljava/lang/Object;

    .line 397
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 398
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 399
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IntMap;

    .line 400
    .local v1, "other":Lcom/badlogic/gdx/utils/IntMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-eq v3, v4, :cond_14

    return v2

    .line 401
    :cond_14
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_1b

    return v2

    .line 402
    :cond_1b
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-eq v3, v4, :cond_26

    return v2

    .line 403
    :cond_26
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 404
    .local v3, "keyTable":[I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 405
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_2c
    if-ge v5, v6, :cond_40

    .line 406
    aget v7, v3, v5

    .line 407
    .local v7, "key":I
    if-eqz v7, :cond_3d

    aget-object v8, v4, v5

    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_3d

    return v2

    .line 405
    .end local v7  # "key":I
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 409
    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_40
    return v0
.end method

.method public findKey(Ljava/lang/Object;ZI)I
    .registers 8
    .param p1, "value"  # Ljava/lang/Object;
    .param p2, "identity"  # Z
    .param p3, "notFound"  # I

    .line 305
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 306
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x0

    if-nez p1, :cond_24

    .line 307
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v2, :cond_e

    return v1

    .line 308
    :cond_e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 309
    .local v1, "keyTable":[I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_23

    .line 310
    aget v3, v1, v2

    if-eqz v3, :cond_20

    aget-object v3, v0, v2

    if-nez v3, :cond_20

    aget v3, v1, v2

    return v3

    .line 309
    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 311
    .end local v1  # "keyTable":[I
    .end local v2  # "i":I
    :cond_23
    goto :goto_5f

    :cond_24
    if-eqz p2, :cond_3d

    .line 312
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v2, :cond_2b

    return v1

    .line 313
    :cond_2b
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_2e
    if-ltz v1, :cond_3c

    .line 314
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_39

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v2, v2, v1

    return v2

    .line 313
    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    .end local v1  # "i":I
    :cond_3c
    goto :goto_5f

    .line 316
    :cond_3d
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    return v1

    .line 317
    :cond_4a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .restart local v1  # "i":I
    :goto_4d
    if-ltz v1, :cond_5f

    .line 318
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v2, v2, v1

    return v2

    .line 317
    :cond_5c
    add-int/lit8 v1, v1, -0x1

    goto :goto_4d

    .line 320
    .end local v1  # "i":I
    :cond_5f
    :goto_5f
    return p3
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "key"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_a

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    :cond_9
    return-object v0

    .line 188
    :cond_a
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->locateKey(I)I

    move-result v1

    .line 189
    .local v1, "i":I
    if-ltz v1, :cond_14

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    :cond_14
    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_b

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    move-object v0, p2

    :goto_a
    return-object v0

    .line 194
    :cond_b
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->locateKey(I)I

    move-result v0

    .line 195
    .local v0, "i":I
    if-ltz v0, :cond_16

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_17

    :cond_16
    move-object v1, p2

    :goto_17
    return-object v1
.end method

.method public hashCode()I
    .registers 9

    .line 351
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 352
    .local v0, "h":I
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_11
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 354
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 355
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "n":I
    :goto_17
    if-ge v3, v4, :cond_2c

    .line 356
    aget v5, v1, v3

    .line 357
    .local v5, "key":I
    if-eqz v5, :cond_29

    .line 358
    mul-int/lit8 v6, v5, 0x1f

    add-int/2addr v0, v6

    .line 359
    aget-object v6, v2, v3

    .line 360
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_29

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v0, v7

    .line 355
    .end local v5  # "key":I
    .end local v6  # "value":Ljava/lang/Object;, "TV;"
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 363
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_2c
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 237
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

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
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;>;"
        }
    .end annotation

    .line 445
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntMap$Keys;
    .registers 4

    .line 497
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0

    .line 498
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    if-nez v0, :cond_1c

    .line 499
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    .line 500
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    .line 502
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->reset()V

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    return-object v0

    .line 508
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->reset()V

    .line 509
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 510
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 511
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 232
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

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
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->shift:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    if-nez p1, :cond_13

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 143
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 144
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v2, :cond_12

    .line 145
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 146
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 148
    :cond_12
    return-object v1

    .line 150
    .end local v1  # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_13
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->locateKey(I)I

    move-result v1

    .line 151
    .local v1, "i":I
    if-ltz v1, :cond_22

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 153
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 154
    return-object v0

    .line 156
    .end local v0  # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_22
    add-int/lit8 v2, v1, 0x1

    neg-int v1, v2

    .line 157
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v2, v1

    .line 158
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 159
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v2, v3, :cond_3e

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v2, v2

    shl-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 160
    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<+TV;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->ensureCapacity(I)V

    .line 165
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_f
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 167
    .local v0, "keyTable":[I
    iget-object v1, p1, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 168
    .local v1, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "n":I
    :goto_15
    if-ge v2, v3, :cond_23

    .line 169
    aget v4, v0, v2

    .line 170
    .local v4, "key":I
    if-eqz v4, :cond_20

    aget-object v5, v1, v2

    invoke-virtual {p0, v4, v5}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    .end local v4  # "key":I
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 172
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_23
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 13
    .param p1, "key"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_16

    .line 201
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v2, :cond_9

    return-object v1

    .line 202
    :cond_9
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 204
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 205
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 206
    return-object v0

    .line 209
    .end local v0  # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_16
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->locateKey(I)I

    move-result v2

    .line 210
    .local v2, "i":I
    if-gez v2, :cond_1d

    return-object v1

    .line 211
    :cond_1d
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 212
    .local v3, "keyTable":[I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 213
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    aget-object v5, v4, v2

    .line 214
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .local v6, "mask":I
    add-int/lit8 v7, v2, 0x1

    and-int/2addr v7, v6

    .line 215
    .local v7, "next":I
    :goto_28
    aget v8, v3, v7

    move p1, v8

    if-eqz v8, :cond_45

    .line 216
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->place(I)I

    move-result v8

    .line 217
    .local v8, "placement":I
    sub-int v9, v7, v8

    and-int/2addr v9, v6

    sub-int v10, v2, v8

    and-int/2addr v10, v6

    if-le v9, v10, :cond_40

    .line 218
    aput p1, v3, v2

    .line 219
    aget-object v9, v4, v7

    aput-object v9, v4, v2

    .line 220
    move v2, v7

    .line 222
    :cond_40
    add-int/lit8 v9, v7, 0x1

    and-int v7, v9, v6

    .line 223
    .end local v8  # "placement":I
    goto :goto_28

    .line 224
    :cond_45
    aput v0, v3, v2

    .line 225
    aput-object v1, v4, v2

    .line 226
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 227
    return-object v5
.end method

.method public shrink(I)V
    .registers 5
    .param p1, "maximumCapacity"  # I

    .line 244
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    if-ltz p1, :cond_11

    .line 245
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 246
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v1, v1

    if-le v1, v0, :cond_10

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 247
    :cond_10
    return-void

    .line 244
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

    .line 413
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 414
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 415
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 417
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 418
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v3, v1

    .line 419
    .local v3, "i":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_29

    .line 420
    const-string v4, "0="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 423
    :cond_29
    :goto_29
    add-int/lit8 v4, v3, -0x1

    .end local v3  # "i":I
    .local v4, "i":I
    if-lez v3, :cond_3f

    .line 424
    aget v3, v1, v4

    .line 425
    .local v3, "key":I
    if-nez v3, :cond_33

    move v3, v4

    goto :goto_29

    .line 426
    :cond_33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    aget-object v6, v2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    nop

    .line 432
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

    .line 433
    aget v3, v1, v4

    .line 434
    .local v3, "key":I
    if-nez v3, :cond_49

    goto :goto_3f

    .line 435
    :cond_49
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    aget-object v6, v2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    .end local v3  # "key":I
    goto :goto_3f

    .line 440
    :cond_5a
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public values()Lcom/badlogic/gdx/utils/IntMap$Values;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 475
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0

    .line 476
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    if-nez v0, :cond_1c

    .line 477
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    .line 478
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    .line 480
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->reset()V

    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 483
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 484
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    return-object v0

    .line 486
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->reset()V

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 488
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    return-object v0
.end method
