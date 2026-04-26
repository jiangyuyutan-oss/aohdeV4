.class public Lcom/badlogic/gdx/utils/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# instance fields
.field bits:[J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6
    .param p1, "nbits"  # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 36
    ushr-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 37
    return-void
.end method

.method private checkCapacity(I)V
    .registers 6
    .param p1, "len"  # I

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v0, v0

    if-lt p1, v0, :cond_14

    .line 89
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [J

    .line 90
    .local v0, "newBits":[J
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iput-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 93
    .end local v0  # "newBits":[J
    :cond_14
    return-void
.end method


# virtual methods
.method public and(Lcom/badlogic/gdx/utils/Bits;)V
    .registers 10
    .param p1, "other"  # Lcom/badlogic/gdx/utils/Bits;

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 211
    .local v0, "commonWords":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-le v0, v1, :cond_1b

    .line 212
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v5, v1

    and-long/2addr v3, v6

    aput-wide v3, v2, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 215
    .end local v1  # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    if-le v1, v0, :cond_2f

    .line 216
    move v1, v0

    .restart local v1  # "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v2

    .local v2, "s":I
    :goto_24
    if-le v2, v1, :cond_2f

    .line 217
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 220
    .end local v1  # "i":I
    .end local v2  # "s":I
    :cond_2f
    return-void
.end method

.method public andNot(Lcom/badlogic/gdx/utils/Bits;)V
    .registers 11
    .param p1, "other"  # Lcom/badlogic/gdx/utils/Bits;

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    .local v1, "j":I
    iget-object v2, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v2

    .local v2, "k":I
    :goto_7
    if-ge v0, v1, :cond_1a

    if-ge v0, v2, :cond_1a

    .line 227
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v3, v0

    iget-object v6, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v7, v6, v0

    not-long v6, v7

    and-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 229
    .end local v0  # "i":I
    .end local v1  # "j":I
    .end local v2  # "k":I
    :cond_1a
    return-void
.end method

.method public clear()V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 106
    return-void
.end method

.method public clear(I)V
    .registers 9
    .param p1, "index"  # I

    .line 98
    ushr-int/lit8 v0, p1, 0x6

    .line 99
    .local v0, "word":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    if-lt v0, v1, :cond_8

    return-void

    .line 100
    :cond_8
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v2, v1, v0

    and-int/lit8 v4, p1, 0x3f

    const-wide/16 v5, 0x1

    shl-long v4, v5, v4

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 101
    return-void
.end method

.method public containsAll(Lcom/badlogic/gdx/utils/Bits;)Z
    .registers 13
    .param p1, "other"  # Lcom/badlogic/gdx/utils/Bits;

    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 293
    .local v0, "bits":[J
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 294
    .local v1, "otherBits":[J
    array-length v2, v1

    .line 295
    .local v2, "otherBitsLength":I
    array-length v3, v0

    .line 297
    .local v3, "bitsLength":I
    move v4, v3

    .local v4, "i":I
    :goto_7
    const/4 v5, 0x0

    if-ge v4, v2, :cond_16

    .line 298
    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_13

    .line 299
    return v5

    .line 297
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 302
    .end local v4  # "i":I
    :cond_16
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    .restart local v4  # "i":I
    :goto_1c
    if-ltz v4, :cond_2d

    .line 303
    aget-wide v7, v0, v4

    aget-wide v9, v1, v4

    and-long/2addr v7, v9

    aget-wide v9, v1, v4

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2a

    .line 304
    return v5

    .line 302
    :cond_2a
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c

    .line 307
    .end local v4  # "i":I
    :cond_2d
    return v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "obj"  # Ljava/lang/Object;

    .line 322
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 323
    return v0

    .line 324
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 325
    return v1

    .line 326
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 327
    return v1

    .line 329
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/utils/Bits;

    .line 330
    .local v2, "other":Lcom/badlogic/gdx/utils/Bits;
    iget-object v3, v2, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 332
    .local v3, "otherBits":[J
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v4, v4

    array-length v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 333
    .local v4, "commonWords":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    if-le v4, v5, :cond_31

    .line 334
    iget-object v6, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v7, v6, v5

    aget-wide v9, v3, v5

    cmp-long v6, v7, v9

    if-eqz v6, :cond_2e

    .line 335
    return v1

    .line 333
    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 338
    .end local v5  # "i":I
    :cond_31
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v5, v5

    array-length v6, v3

    if-ne v5, v6, :cond_38

    .line 339
    return v0

    .line 341
    :cond_38
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Bits;->length()I

    move-result v5

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Bits;->length()I

    move-result v6

    if-ne v5, v6, :cond_43

    goto :goto_44

    :cond_43
    move v0, v1

    :goto_44
    return v0
.end method

.method public flip(I)V
    .registers 9
    .param p1, "index"  # I

    .line 82
    ushr-int/lit8 v0, p1, 0x6

    .line 83
    .local v0, "word":I
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 84
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v2, v1, v0

    and-int/lit8 v4, p1, 0x3f

    const-wide/16 v5, 0x1

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 85
    return-void
.end method

.method public get(I)Z
    .registers 9
    .param p1, "index"  # I

    .line 43
    ushr-int/lit8 v0, p1, 0x6

    .line 44
    .local v0, "word":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_9

    return v2

    .line 45
    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v3, v1, v0

    and-int/lit8 v1, p1, 0x3f

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    return v2
.end method

.method public getAndClear(I)Z
    .registers 12
    .param p1, "index"  # I

    .line 53
    ushr-int/lit8 v0, p1, 0x6

    .line 54
    .local v0, "word":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_9

    return v2

    .line 55
    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v3, v1, v0

    .line 56
    .local v3, "oldBits":J
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v5, v1, v0

    and-int/lit8 v7, p1, 0x3f

    const-wide/16 v8, 0x1

    shl-long v7, v8, v7

    not-long v7, v7

    and-long/2addr v5, v7

    aput-wide v5, v1, v0

    .line 57
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v5, v1, v0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_24

    const/4 v2, 0x1

    :cond_24
    return v2
.end method

.method public getAndSet(I)Z
    .registers 11
    .param p1, "index"  # I

    .line 65
    ushr-int/lit8 v0, p1, 0x6

    .line 66
    .local v0, "word":I
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 67
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v2, v1, v0

    .line 68
    .local v2, "oldBits":J
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v1, v0

    and-int/lit8 v6, p1, 0x3f

    const-wide/16 v7, 0x1

    shl-long v6, v7, v6

    or-long/2addr v4, v6

    aput-wide v4, v1, v0

    .line 69
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v1, v0

    cmp-long v1, v4, v2

    if-nez v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method

.method public hashCode()I
    .registers 10

    .line 312
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Bits;->length()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x6

    .line 313
    .local v0, "word":I
    const/4 v1, 0x0

    .line 314
    .local v1, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-lt v0, v2, :cond_1f

    .line 315
    mul-int/lit8 v3, v1, 0x7f

    iget-object v4, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v5, v4, v2

    iget-object v4, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v7, v4, v2

    const/16 v4, 0x20

    ushr-long/2addr v7, v4

    xor-long v4, v5, v7

    long-to-int v4, v4

    add-int v1, v3, v4

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 317
    .end local v2  # "i":I
    :cond_1f
    return v1
.end method

.method public intersects(Lcom/badlogic/gdx/utils/Bits;)Z
    .registers 10
    .param p1, "other"  # Lcom/badlogic/gdx/utils/Bits;

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 277
    .local v0, "bits":[J
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 278
    .local v1, "otherBits":[J
    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_1d

    .line 279
    aget-wide v4, v0, v2

    aget-wide v6, v1, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1a

    .line 280
    return v3

    .line 278
    :cond_1a
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 283
    .end local v2  # "i":I
    :cond_1d
    const/4 v2, 0x0

    return v2
.end method

.method public isEmpty()Z
    .registers 8

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 140
    .local v0, "bits":[J
    array-length v1, v0

    .line 141
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_13

    .line 142
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_10

    .line 143
    const/4 v3, 0x0

    return v3

    .line 141
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 146
    .end local v2  # "i":I
    :cond_13
    const/4 v2, 0x1

    return v2
.end method

.method public length()I
    .registers 11

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 119
    .local v0, "bits":[J
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "word":I
    :goto_5
    if-ltz v1, :cond_2a

    .line 120
    aget-wide v2, v0, v1

    .line 121
    .local v2, "bitsAtWord":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_27

    .line 122
    const/16 v6, 0x3f

    .local v6, "bit":I
    :goto_11
    if-ltz v6, :cond_27

    .line 123
    and-int/lit8 v7, v6, 0x3f

    const-wide/16 v8, 0x1

    shl-long v7, v8, v7

    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    if-eqz v7, :cond_24

    .line 124
    shl-int/lit8 v4, v1, 0x6

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    return v4

    .line 122
    :cond_24
    add-int/lit8 v6, v6, -0x1

    goto :goto_11

    .line 119
    .end local v2  # "bitsAtWord":J
    .end local v6  # "bit":I
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 129
    .end local v1  # "word":I
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method public nextClearBit(I)I
    .registers 15
    .param p1, "fromIndex"  # I

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 182
    .local v0, "bits":[J
    ushr-int/lit8 v1, p1, 0x6

    .line 183
    .local v1, "word":I
    array-length v2, v0

    .line 184
    .local v2, "bitsLength":I
    if-lt v1, v2, :cond_b

    array-length v3, v0

    shl-int/lit8 v3, v3, 0x6

    return v3

    .line 185
    :cond_b
    aget-wide v3, v0, v1

    .line 186
    .local v3, "bitsAtWord":J
    and-int/lit8 v5, p1, 0x3f

    .local v5, "i":I
    :goto_f
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    const/16 v10, 0x40

    if-ge v5, v10, :cond_26

    .line 187
    and-int/lit8 v10, v5, 0x3f

    shl-long/2addr v8, v10

    and-long/2addr v8, v3

    cmp-long v6, v8, v6

    if-nez v6, :cond_23

    .line 188
    shl-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v5

    return v6

    .line 186
    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 191
    .end local v5  # "i":I
    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_45

    .line 192
    if-nez v1, :cond_2f

    .line 193
    shl-int/lit8 v5, v1, 0x6

    return v5

    .line 195
    :cond_2f
    aget-wide v3, v0, v1

    .line 196
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_32
    if-ge v5, v10, :cond_44

    .line 197
    and-int/lit8 v11, v5, 0x3f

    shl-long v11, v8, v11

    and-long/2addr v11, v3

    cmp-long v11, v11, v6

    if-nez v11, :cond_41

    .line 198
    shl-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v5

    return v6

    .line 196
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .end local v5  # "i":I
    :cond_44
    goto :goto_26

    .line 202
    :cond_45
    array-length v5, v0

    shl-int/lit8 v5, v5, 0x6

    return v5
.end method

.method public nextSetBit(I)I
    .registers 16
    .param p1, "fromIndex"  # I

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 153
    .local v0, "bits":[J
    ushr-int/lit8 v1, p1, 0x6

    .line 154
    .local v1, "word":I
    array-length v2, v0

    .line 155
    .local v2, "bitsLength":I
    const/4 v3, -0x1

    if-lt v1, v2, :cond_9

    return v3

    .line 156
    :cond_9
    aget-wide v4, v0, v1

    .line 157
    .local v4, "bitsAtWord":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const-wide/16 v9, 0x1

    const/16 v11, 0x40

    if-eqz v8, :cond_29

    .line 158
    and-int/lit8 v8, p1, 0x3f

    .local v8, "i":I
    :goto_17
    if-ge v8, v11, :cond_29

    .line 159
    and-int/lit8 v12, v8, 0x3f

    shl-long v12, v9, v12

    and-long/2addr v12, v4

    cmp-long v12, v12, v6

    if-eqz v12, :cond_26

    .line 160
    shl-int/lit8 v3, v1, 0x6

    add-int/2addr v3, v8

    return v3

    .line 158
    :cond_26
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 164
    .end local v8  # "i":I
    :cond_29
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_48

    .line 165
    if-eqz v1, :cond_29

    .line 166
    aget-wide v4, v0, v1

    .line 167
    cmp-long v8, v4, v6

    if-eqz v8, :cond_29

    .line 168
    const/4 v8, 0x0

    .restart local v8  # "i":I
    :goto_36
    if-ge v8, v11, :cond_29

    .line 169
    and-int/lit8 v12, v8, 0x3f

    shl-long v12, v9, v12

    and-long/2addr v12, v4

    cmp-long v12, v12, v6

    if-eqz v12, :cond_45

    .line 170
    shl-int/lit8 v3, v1, 0x6

    add-int/2addr v3, v8

    return v3

    .line 168
    :cond_45
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    .line 176
    .end local v8  # "i":I
    :cond_48
    return v3
.end method

.method public notEmpty()Z
    .registers 2

    .line 134
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Bits;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public numBits()I
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public or(Lcom/badlogic/gdx/utils/Bits;)V
    .registers 10
    .param p1, "other"  # Lcom/badlogic/gdx/utils/Bits;

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 237
    .local v0, "commonWords":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-le v0, v1, :cond_1b

    .line 238
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v5, v1

    or-long/2addr v3, v6

    aput-wide v3, v2, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 241
    .end local v1  # "i":I
    :cond_1b
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    if-ge v0, v1, :cond_37

    .line 242
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 243
    move v1, v0

    .restart local v1  # "i":I
    iget-object v2, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v2

    .local v2, "s":I
    :goto_2a
    if-le v2, v1, :cond_37

    .line 244
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    iget-object v4, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v5, v4, v1

    aput-wide v5, v3, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 247
    .end local v1  # "i":I
    .end local v2  # "s":I
    :cond_37
    return-void
.end method

.method public set(I)V
    .registers 9
    .param p1, "index"  # I

    .line 75
    ushr-int/lit8 v0, p1, 0x6

    .line 76
    .local v0, "word":I
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 77
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v2, v1, v0

    and-int/lit8 v4, p1, 0x3f

    const-wide/16 v5, 0x1

    shl-long v4, v5, v4

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 78
    return-void
.end method

.method public xor(Lcom/badlogic/gdx/utils/Bits;)V
    .registers 10
    .param p1, "other"  # Lcom/badlogic/gdx/utils/Bits;

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 259
    .local v0, "commonWords":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-le v0, v1, :cond_1b

    .line 260
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v5, v1

    xor-long/2addr v3, v6

    aput-wide v3, v2, v1

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 263
    .end local v1  # "i":I
    :cond_1b
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    if-ge v0, v1, :cond_37

    .line 264
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 265
    move v1, v0

    .restart local v1  # "i":I
    iget-object v2, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v2

    .local v2, "s":I
    :goto_2a
    if-le v2, v1, :cond_37

    .line 266
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    iget-object v4, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v5, v4, v1

    aput-wide v5, v3, v1

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 269
    .end local v1  # "i":I
    .end local v2  # "s":I
    :cond_37
    return-void
.end method
