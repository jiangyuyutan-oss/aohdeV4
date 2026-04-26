.class public Lcom/badlogic/gdx/utils/LongMap;
.super Ljava/lang/Object;
.source "LongMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/LongMap$Keys;,
        Lcom/badlogic/gdx/utils/LongMap$Values;,
        Lcom/badlogic/gdx/utils/LongMap$Entries;,
        Lcom/badlogic/gdx/utils/LongMap$MapIterator;,
        Lcom/badlogic/gdx/utils/LongMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/LongMap$Entry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private transient entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

.field private transient entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

.field hasZeroValue:Z

.field keyTable:[J

.field private transient keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

.field private transient keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

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

.field private transient values1:Lcom/badlogic/gdx/utils/LongMap$Values;

.field private transient values2:Lcom/badlogic/gdx/utils/LongMap$Values;

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
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"  # I

    .line 80
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const v0, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 81
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"  # I
    .param p2, "loadFactor"  # F

    .line 86
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_31

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_31

    .line 89
    iput p2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    .line 91
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 92
    .local v0, "tableSize":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    .line 93
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 94
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->shift:I

    .line 96
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 97
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 98
    return-void

    .line 88
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<+TV;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 103
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget-object v2, p1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v0, p1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 106
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 107
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 108
    return-void
.end method

.method private locateKey(J)I
    .registers 9
    .param p1, "key"  # J

    .line 131
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 132
    .local v0, "keyTable":[J
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->place(J)I

    move-result v1

    .line 133
    .local v1, "i":I
    :goto_6
    aget-wide v2, v0, v1

    .line 134
    .local v2, "other":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_12

    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    return v4

    .line 135
    :cond_12
    cmp-long v4, v2, p1

    if-nez v4, :cond_17

    return v1

    .line 132
    .end local v2  # "other":J
    :cond_17
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    and-int v1, v2, v3

    goto :goto_6
.end method

.method private putResize(JLjava/lang/Object;)V
    .registers 10
    .param p1, "key"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 176
    .local v0, "keyTable":[J
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->place(J)I

    move-result v1

    .line 177
    .local v1, "i":I
    :goto_6
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_15

    .line 178
    aput-wide p1, v0, v1

    .line 179
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 180
    return-void

    .line 176
    :cond_15
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    and-int v1, v2, v3

    goto :goto_6
.end method

.method private resize(I)V
    .registers 10
    .param p1, "newSize"  # I

    .line 330
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v0, v0

    .line 331
    .local v0, "oldCapacity":I
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    .line 332
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 333
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->shift:I

    .line 335
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 336
    .local v1, "oldKeyTable":[J
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 338
    .local v2, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    new-array v3, p1, [J

    iput-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 339
    new-array v3, p1, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 341
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-lez v3, :cond_3c

    .line 342
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v0, :cond_3c

    .line 343
    aget-wide v4, v1, v3

    .line 344
    .local v4, "key":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_39

    aget-object v6, v2, v3

    invoke-direct {p0, v4, v5, v6}, Lcom/badlogic/gdx/utils/LongMap;->putResize(JLjava/lang/Object;)V

    .line 342
    .end local v4  # "key":J
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 347
    .end local v3  # "i":I
    :cond_3c
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 262
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-nez v0, :cond_5

    return-void

    .line 263
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 264
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 265
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    iput-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 267
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 268
    return-void
.end method

.method public clear(I)V
    .registers 4
    .param p1, "maximumCapacity"  # I

    .line 250
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 251
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v1, v1

    if-gt v1, v0, :cond_f

    .line 252
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap;->clear()V

    .line 253
    return-void

    .line 255
    :cond_f
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 256
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 258
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 259
    return-void
.end method

.method public containsKey(J)Z
    .registers 5
    .param p1, "key"  # J

    .line 295
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    return v0

    .line 296
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->locateKey(J)I

    move-result v0

    if-ltz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .registers 11
    .param p1, "value"  # Ljava/lang/Object;
    .param p2, "identity"  # Z

    .line 275
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 276
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x1

    if-nez p1, :cond_25

    .line 277
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v2, :cond_e

    return v1

    .line 278
    :cond_e
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 279
    .local v2, "keyTable":[J
    array-length v3, v0

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_12
    if-ltz v3, :cond_24

    .line 280
    aget-wide v4, v2, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_21

    aget-object v4, v0, v3

    if-nez v4, :cond_21

    return v1

    .line 279
    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 281
    .end local v2  # "keyTable":[J
    .end local v3  # "i":I
    :cond_24
    goto :goto_56

    :cond_25
    if-eqz p2, :cond_39

    .line 282
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v2, :cond_2c

    return v1

    .line 283
    :cond_2c
    array-length v2, v0

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_2e
    if-ltz v2, :cond_38

    .line 284
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_35

    return v1

    .line 283
    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    .end local v2  # "i":I
    :cond_38
    goto :goto_56

    .line 286
    :cond_39
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    return v1

    .line 287
    :cond_46
    array-length v2, v0

    sub-int/2addr v2, v1

    .restart local v2  # "i":I
    :goto_48
    if-ltz v2, :cond_56

    .line 288
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    return v1

    .line 287
    :cond_53
    add-int/lit8 v2, v2, -0x1

    goto :goto_48

    .line 290
    .end local v2  # "i":I
    :cond_56
    :goto_56
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .registers 4
    .param p1, "additionalCapacity"  # I

    .line 325
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 326
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v1, v1

    if-ge v1, v0, :cond_11

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 327
    :cond_11
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/LongMap$Entries;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Entries<",
            "TV;>;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    return-object v0

    .line 453
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    if-nez v0, :cond_1c

    .line 454
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    .line 455
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    .line 457
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 458
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->reset()V

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    return-object v0

    .line 463
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->reset()V

    .line 464
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "obj"  # Ljava/lang/Object;

    .line 366
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 367
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/LongMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 368
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/LongMap;

    .line 369
    .local v1, "other":Lcom/badlogic/gdx/utils/LongMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-eq v3, v4, :cond_14

    return v2

    .line 370
    :cond_14
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_1b

    return v2

    .line 371
    :cond_1b
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v3, :cond_33

    .line 372
    iget-object v3, v1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v3, :cond_28

    .line 373
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-eqz v3, :cond_33

    return v2

    .line 375
    :cond_28
    iget-object v3, v1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    return v2

    .line 378
    :cond_33
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 379
    .local v3, "keyTable":[J
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 380
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_39
    if-ge v5, v6, :cond_5e

    .line 381
    aget-wide v7, v3, v5

    .line 382
    .local v7, "key":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-eqz v9, :cond_5b

    .line 383
    aget-object v9, v4, v5

    .line 384
    .local v9, "value":Ljava/lang/Object;, "TV;"
    if-nez v9, :cond_50

    .line 385
    sget-object v10, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v8, v10}, Lcom/badlogic/gdx/utils/LongMap;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5b

    return v2

    .line 387
    :cond_50
    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5b

    return v2

    .line 380
    .end local v7  # "key":J
    .end local v9  # "value":Ljava/lang/Object;, "TV;"
    :cond_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 391
    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_5e
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "obj"  # Ljava/lang/Object;

    .line 396
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 397
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/LongMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 398
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/LongMap;

    .line 399
    .local v1, "other":Lcom/badlogic/gdx/utils/LongMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-eq v3, v4, :cond_14

    return v2

    .line 400
    :cond_14
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_1b

    return v2

    .line 401
    :cond_1b
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-eq v3, v4, :cond_26

    return v2

    .line 402
    :cond_26
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 403
    .local v3, "keyTable":[J
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 404
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_2c
    if-ge v5, v6, :cond_44

    .line 405
    aget-wide v7, v3, v5

    .line 406
    .local v7, "key":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-eqz v9, :cond_41

    aget-object v9, v4, v5

    sget-object v10, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v8, v10}, Lcom/badlogic/gdx/utils/LongMap;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_41

    return v2

    .line 404
    .end local v7  # "key":J
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 408
    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_44
    return v0
.end method

.method public findKey(Ljava/lang/Object;ZJ)J
    .registers 12
    .param p1, "value"  # Ljava/lang/Object;
    .param p2, "identity"  # Z
    .param p3, "notFound"  # J

    .line 304
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 305
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const-wide/16 v1, 0x0

    if-nez p1, :cond_27

    .line 306
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v3, :cond_f

    return-wide v1

    .line 307
    :cond_f
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 308
    .local v3, "keyTable":[J
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_14
    if-ltz v4, :cond_26

    .line 309
    aget-wide v5, v3, v4

    cmp-long v5, v5, v1

    if-eqz v5, :cond_23

    aget-object v5, v0, v4

    if-nez v5, :cond_23

    aget-wide v1, v3, v4

    return-wide v1

    .line 308
    :cond_23
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 310
    .end local v3  # "keyTable":[J
    .end local v4  # "i":I
    :cond_26
    goto :goto_62

    :cond_27
    if-eqz p2, :cond_40

    .line 311
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v3, :cond_2e

    return-wide v1

    .line 312
    :cond_2e
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_31
    if-ltz v1, :cond_3f

    .line 313
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_3c

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v2, v1

    return-wide v3

    .line 312
    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    .end local v1  # "i":I
    :cond_3f
    goto :goto_62

    .line 315
    :cond_40
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    return-wide v1

    .line 316
    :cond_4d
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .restart local v1  # "i":I
    :goto_50
    if-ltz v1, :cond_62

    .line 317
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v2, v1

    return-wide v3

    .line 316
    :cond_5f
    add-int/lit8 v1, v1, -0x1

    goto :goto_50

    .line 319
    .end local v1  # "i":I
    :cond_62
    :goto_62
    return-wide p3
.end method

.method public get(J)Ljava/lang/Object;
    .registers 5
    .param p1, "key"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    :cond_d
    return-object v1

    .line 187
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->locateKey(J)I

    move-result v0

    .line 188
    .local v0, "i":I
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    :cond_18
    return-object v1
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    goto :goto_e

    :cond_d
    move-object v0, p3

    :goto_e
    return-object v0

    .line 193
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->locateKey(J)I

    move-result v0

    .line 194
    .local v0, "i":I
    if-ltz v0, :cond_1a

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1b

    :cond_1a
    move-object v1, p3

    :goto_1b
    return-object v1
.end method

.method public hashCode()I
    .registers 12

    .line 350
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 351
    .local v0, "h":I
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :cond_11
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 353
    .local v1, "keyTable":[J
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 354
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "n":I
    :goto_17
    if-ge v3, v4, :cond_33

    .line 355
    aget-wide v5, v1, v3

    .line 356
    .local v5, "key":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_30

    .line 357
    int-to-long v7, v0

    const-wide/16 v9, 0x1f

    mul-long/2addr v9, v5

    add-long/2addr v7, v9

    long-to-int v0, v7

    .line 358
    aget-object v7, v2, v3

    .line 359
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-eqz v7, :cond_30

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v0, v8

    .line 354
    .end local v5  # "key":J
    .end local v7  # "value":Ljava/lang/Object;, "TV;"
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 362
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_33
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 236
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

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
            "Lcom/badlogic/gdx/utils/LongMap$Entry<",
            "TV;>;>;"
        }
    .end annotation

    .line 444
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/LongMap$Keys;
    .registers 4

    .line 496
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    return-object v0

    .line 497
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    if-nez v0, :cond_1c

    .line 498
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    .line 499
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    .line 501
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->reset()V

    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    return-object v0

    .line 507
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->reset()V

    .line 508
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 509
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 510
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 231
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected place(J)I
    .registers 7
    .param p1, "item"  # J

    .line 125
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->shift:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 142
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 143
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v2, :cond_16

    .line 144
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 145
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 147
    :cond_16
    return-object v0

    .line 149
    .end local v0  # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->locateKey(J)I

    move-result v0

    .line 150
    .local v0, "i":I
    if-ltz v0, :cond_26

    .line 151
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 152
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v0

    .line 153
    return-object v1

    .line 155
    .end local v1  # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_26
    add-int/lit8 v2, v0, 0x1

    neg-int v0, v2

    .line 156
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v2, v0

    .line 157
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v0

    .line 158
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v2, v3, :cond_42

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v2, v2

    shl-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 159
    :cond_42
    const/4 v1, 0x0

    return-object v1
.end method

.method public putAll(Lcom/badlogic/gdx/utils/LongMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<+TV;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongMap;->ensureCapacity(I)V

    .line 164
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_10
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 166
    .local v0, "keyTable":[J
    iget-object v3, p1, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 167
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v0

    .local v5, "n":I
    :goto_16
    if-ge v4, v5, :cond_26

    .line 168
    aget-wide v6, v0, v4

    .line 169
    .local v6, "key":J
    cmp-long v8, v6, v1

    if-eqz v8, :cond_23

    aget-object v8, v3, v4

    invoke-virtual {p0, v6, v7, v8}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v6  # "key":J
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 171
    .end local v4  # "i":I
    .end local v5  # "n":I
    :cond_26
    return-void
.end method

.method public remove(J)Ljava/lang/Object;
    .registers 15
    .param p1, "key"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    .line 200
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v0, :cond_c

    return-object v3

    .line 201
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 203
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 204
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 205
    return-object v0

    .line 208
    .end local v0  # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1a
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->locateKey(J)I

    move-result v2

    .line 209
    .local v2, "i":I
    if-gez v2, :cond_21

    return-object v3

    .line 210
    :cond_21
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 211
    .local v4, "keyTable":[J
    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 212
    .local v5, "valueTable":[Ljava/lang/Object;, "[TV;"
    aget-object v6, v5, v2

    .line 213
    .local v6, "oldValue":Ljava/lang/Object;, "TV;"
    iget v7, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .local v7, "mask":I
    add-int/lit8 v8, v2, 0x1

    and-int/2addr v8, v7

    .line 214
    .local v8, "next":I
    :goto_2c
    aget-wide v9, v4, v8

    move-wide p1, v9

    cmp-long v9, v9, v0

    if-eqz v9, :cond_4b

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->place(J)I

    move-result v9

    .line 216
    .local v9, "placement":I
    sub-int v10, v8, v9

    and-int/2addr v10, v7

    sub-int v11, v2, v9

    and-int/2addr v11, v7

    if-le v10, v11, :cond_46

    .line 217
    aput-wide p1, v4, v2

    .line 218
    aget-object v10, v5, v8

    aput-object v10, v5, v2

    .line 219
    move v2, v8

    .line 221
    :cond_46
    add-int/lit8 v10, v8, 0x1

    and-int v8, v10, v7

    .line 222
    .end local v9  # "placement":I
    goto :goto_2c

    .line 223
    :cond_4b
    aput-wide v0, v4, v2

    .line 224
    aput-object v3, v5, v2

    .line 225
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 226
    return-object v6
.end method

.method public shrink(I)V
    .registers 5
    .param p1, "maximumCapacity"  # I

    .line 243
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    if-ltz p1, :cond_11

    .line 244
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 245
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v1, v1

    if-le v1, v0, :cond_10

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

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
    .registers 11

    .line 412
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 413
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 414
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 416
    .local v1, "keyTable":[J
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 417
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v3, v1

    .line 418
    .local v3, "i":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_2b

    .line 419
    const-string v4, "0="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 422
    :cond_2b
    :goto_2b
    add-int/lit8 v4, v3, -0x1

    .end local v3  # "i":I
    .local v4, "i":I
    if-lez v3, :cond_43

    .line 423
    aget-wide v8, v1, v4

    .line 424
    .local v8, "key":J
    cmp-long v3, v8, v6

    if-nez v3, :cond_37

    move v3, v4

    goto :goto_2b

    .line 425
    :cond_37
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    nop

    .line 431
    .end local v8  # "key":J
    :cond_43
    :goto_43
    move v3, v4

    .end local v4  # "i":I
    .restart local v3  # "i":I
    :goto_44
    add-int/lit8 v4, v3, -0x1

    .end local v3  # "i":I
    .restart local v4  # "i":I
    if-lez v3, :cond_60

    .line 432
    aget-wide v8, v1, v4

    .line 433
    .restart local v8  # "key":J
    cmp-long v3, v8, v6

    if-nez v3, :cond_4f

    goto :goto_43

    .line 434
    :cond_4f
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 438
    .end local v8  # "key":J
    goto :goto_43

    .line 439
    :cond_60
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public values()Lcom/badlogic/gdx/utils/LongMap$Values;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 474
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    return-object v0

    .line 475
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    if-nez v0, :cond_1c

    .line 476
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    .line 477
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    .line 479
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 480
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->reset()V

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 483
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    return-object v0

    .line 485
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->reset()V

    .line 486
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 488
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    return-object v0
.end method
