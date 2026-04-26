.class public Lcom/badlogic/gdx/utils/LongQueue;
.super Ljava/lang/Object;
.source "LongQueue.java"


# instance fields
.field protected head:I

.field public size:I

.field protected tail:I

.field protected values:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/LongQueue;-><init>(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialSize"  # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 33
    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 36
    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    .line 46
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 47
    return-void
.end method


# virtual methods
.method public addFirst(J)V
    .registers 6
    .param p1, "value"  # J

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 70
    .local v0, "values":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_f

    .line 71
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongQueue;->resize(I)V

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 75
    :cond_f
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 76
    .local v1, "head":I
    const/4 v2, -0x1

    add-int/2addr v1, v2

    .line 77
    if-ne v1, v2, :cond_18

    .line 78
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 80
    :cond_18
    aput-wide p1, v0, v1

    .line 82
    iput v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 83
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    .line 84
    return-void
.end method

.method public addLast(J)V
    .registers 6
    .param p1, "value"  # J

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 53
    .local v0, "values":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_f

    .line 54
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongQueue;->resize(I)V

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 58
    :cond_f
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    aput-wide p1, v0, v1

    .line 59
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    array-length v2, v0

    if-ne v1, v2, :cond_1f

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 62
    :cond_1f
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    .line 63
    return-void
.end method

.method public clear()V
    .registers 2

    .line 273
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-nez v0, :cond_5

    return-void

    .line 275
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 276
    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 277
    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    .line 278
    return-void
.end method

.method public ensureCapacity(I)V
    .registers 4
    .param p1, "additional"  # I

    .line 89
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/2addr v0, p1

    .line 90
    .local v0, "needed":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    array-length v1, v1

    if-ge v1, v0, :cond_b

    .line 91
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongQueue;->resize(I)V

    .line 93
    :cond_b
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 19
    .param p1, "o"  # Ljava/lang/Object;

    .line 331
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    return v2

    .line 332
    :cond_8
    const/4 v3, 0x0

    if-eqz v1, :cond_3e

    instance-of v4, v1, Lcom/badlogic/gdx/utils/LongQueue;

    if-nez v4, :cond_10

    goto :goto_3e

    .line 334
    :cond_10
    move-object v4, v1

    check-cast v4, Lcom/badlogic/gdx/utils/LongQueue;

    .line 335
    .local v4, "q":Lcom/badlogic/gdx/utils/LongQueue;
    iget v5, v0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    .line 337
    .local v5, "size":I
    iget v6, v4, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eq v6, v5, :cond_1a

    return v3

    .line 339
    :cond_1a
    iget-object v6, v0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 340
    .local v6, "myValues":[J
    array-length v7, v6

    .line 341
    .local v7, "myBackingLength":I
    iget-object v8, v4, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 342
    .local v8, "itsValues":[J
    array-length v9, v8

    .line 344
    .local v9, "itsBackingLength":I
    iget v10, v0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 345
    .local v10, "myIndex":I
    iget v11, v4, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 346
    .local v11, "itsIndex":I
    const/4 v12, 0x0

    .local v12, "s":I
    :goto_25
    if-ge v12, v5, :cond_3d

    .line 347
    aget-wide v13, v6, v10

    aget-wide v15, v8, v11

    cmp-long v13, v13, v15

    if-eqz v13, :cond_30

    return v3

    .line 348
    :cond_30
    add-int/lit8 v10, v10, 0x1

    .line 349
    add-int/lit8 v11, v11, 0x1

    .line 350
    if-ne v10, v7, :cond_37

    const/4 v10, 0x0

    .line 351
    :cond_37
    if-ne v11, v9, :cond_3a

    const/4 v11, 0x0

    .line 346
    :cond_3a
    add-int/lit8 v12, v12, 0x1

    goto :goto_25

    .line 353
    .end local v12  # "s":I
    :cond_3d
    return v2

    .line 332
    .end local v4  # "q":Lcom/badlogic/gdx/utils/LongQueue;
    .end local v5  # "size":I
    .end local v6  # "myValues":[J
    .end local v7  # "myBackingLength":I
    .end local v8  # "itsValues":[J
    .end local v9  # "itsBackingLength":I
    .end local v10  # "myIndex":I
    .end local v11  # "itsIndex":I
    :cond_3e
    :goto_3e
    return v3
.end method

.method public first()J
    .registers 4

    .line 231
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eqz v0, :cond_b

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    aget-wide v1, v0, v1

    return-wide v1

    .line 233
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)J
    .registers 6
    .param p1, "index"  # I

    .line 260
    if-ltz p1, :cond_38

    .line 261
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-ge p1, v0, :cond_13

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 264
    .local v0, "values":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    add-int/2addr v1, p1

    .line 265
    .local v1, "i":I
    array-length v2, v0

    if-lt v1, v2, :cond_10

    .line 266
    array-length v2, v0

    sub-int/2addr v1, v2

    .line 268
    :cond_10
    aget-wide v2, v0, v1

    return-wide v2

    .line 261
    .end local v0  # "values":[J
    .end local v1  # "i":I
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 11

    .line 312
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    .line 313
    .local v0, "size":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 314
    .local v1, "values":[J
    array-length v2, v1

    .line 315
    .local v2, "backingLength":I
    iget v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 317
    .local v3, "index":I
    add-int/lit8 v4, v0, 0x1

    .line 318
    .local v4, "hash":I
    const/4 v5, 0x0

    .local v5, "s":I
    :goto_a
    if-ge v5, v0, :cond_1f

    .line 319
    aget-wide v6, v1, v3

    .line 321
    .local v6, "value":J
    const/16 v8, 0x20

    ushr-long v8, v6, v8

    xor-long/2addr v8, v6

    long-to-int v8, v8

    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v4, v8

    .line 323
    add-int/lit8 v3, v3, 0x1

    .line 324
    if-ne v3, v2, :cond_1c

    const/4 v3, 0x0

    .line 318
    .end local v6  # "value":J
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 327
    .end local v5  # "s":I
    :cond_1f
    return v4
.end method

.method public indexOf(J)I
    .registers 11
    .param p1, "value"  # J

    .line 162
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 164
    .local v0, "values":[J
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .local v2, "head":I
    iget v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 165
    .local v3, "tail":I
    if-ge v2, v3, :cond_1e

    .line 166
    move v4, v2

    .local v4, "i":I
    :goto_f
    if-ge v4, v3, :cond_1d

    .line 167
    aget-wide v5, v0, v4

    cmp-long v5, v5, p1

    if-nez v5, :cond_1a

    sub-int v1, v4, v2

    return v1

    .line 166
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .end local v4  # "i":I
    :cond_1d
    goto :goto_3e

    .line 169
    :cond_1e
    move v4, v2

    .restart local v4  # "i":I
    array-length v5, v0

    .local v5, "n":I
    :goto_20
    if-ge v4, v5, :cond_2e

    .line 170
    aget-wide v6, v0, v4

    cmp-long v6, v6, p1

    if-nez v6, :cond_2b

    sub-int v1, v4, v2

    return v1

    .line 169
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 171
    .end local v4  # "i":I
    .end local v5  # "n":I
    :cond_2e
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_2f
    if-ge v4, v3, :cond_3e

    .line 172
    aget-wide v5, v0, v4

    cmp-long v5, v5, p1

    if-nez v5, :cond_3b

    array-length v1, v0

    add-int/2addr v1, v4

    sub-int/2addr v1, v2

    return v1

    .line 171
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 174
    .end local v4  # "i":I
    :cond_3e
    :goto_3e
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 223
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public last()J
    .registers 5

    .line 243
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eqz v0, :cond_12

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 248
    .local v0, "values":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 249
    .local v1, "tail":I
    const/4 v2, -0x1

    add-int/2addr v1, v2

    .line 250
    if-ne v1, v2, :cond_f

    .line 251
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 253
    :cond_f
    aget-wide v2, v0, v1

    return-wide v2

    .line 245
    .end local v0  # "values":[J
    .end local v1  # "tail":I
    :cond_12
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 218
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public removeFirst()J
    .registers 6

    .line 120
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eqz v0, :cond_1f

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 127
    .local v0, "values":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    aget-wide v1, v0, v1

    .line 128
    .local v1, "result":J
    iget v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 129
    iget v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    array-length v4, v0

    if-ne v3, v4, :cond_18

    .line 130
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 132
    :cond_18
    iget v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    .line 134
    return-wide v1

    .line 122
    .end local v0  # "values":[J
    .end local v1  # "result":J
    :cond_1f
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(I)J
    .registers 9
    .param p1, "index"  # I

    .line 188
    if-ltz p1, :cond_77

    .line 189
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-ge p1, v0, :cond_52

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 192
    .local v0, "values":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 193
    .local v2, "tail":I
    add-int/2addr p1, v1

    .line 195
    if-ge v1, v2, :cond_1f

    .line 196
    aget-wide v3, v0, p1

    .line 197
    .local v3, "value":J
    add-int/lit8 v5, p1, 0x1

    sub-int v6, v2, p1

    invoke-static {v0, v5, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget v5, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    goto :goto_4b

    .line 199
    .end local v3  # "value":J
    :cond_1f
    array-length v3, v0

    if-lt p1, v3, :cond_34

    .line 200
    array-length v3, v0

    sub-int/2addr p1, v3

    .line 201
    aget-wide v3, v0, p1

    .line 202
    .restart local v3  # "value":J
    add-int/lit8 v5, p1, 0x1

    sub-int v6, v2, p1

    invoke-static {v0, v5, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget v5, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    goto :goto_4b

    .line 205
    .end local v3  # "value":J
    :cond_34
    aget-wide v3, v0, p1

    .line 206
    .restart local v3  # "value":J
    add-int/lit8 v5, v1, 0x1

    sub-int v6, p1, v1

    invoke-static {v0, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget v5, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 208
    iget v5, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    array-length v6, v0

    if-ne v5, v6, :cond_4b

    .line 209
    const/4 v5, 0x0

    iput v5, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 212
    :cond_4b
    :goto_4b
    iget v5, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    .line 213
    return-wide v3

    .line 189
    .end local v0  # "values":[J
    .end local v1  # "head":I
    .end local v2  # "tail":I
    .end local v3  # "value":J
    :cond_52
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_77
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeLast()J
    .registers 6

    .line 142
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eqz v0, :cond_1a

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 147
    .local v0, "values":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 148
    .local v1, "tail":I
    const/4 v2, -0x1

    add-int/2addr v1, v2

    .line 149
    if-ne v1, v2, :cond_f

    .line 150
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 152
    :cond_f
    aget-wide v2, v0, v1

    .line 153
    .local v2, "result":J
    iput v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 154
    iget v4, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    .line 156
    return-wide v2

    .line 143
    .end local v0  # "values":[J
    .end local v1  # "tail":I
    .end local v2  # "result":J
    :cond_1a
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeValue(J)Z
    .registers 5
    .param p1, "value"  # J

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongQueue;->indexOf(J)I

    move-result v0

    .line 181
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    return v1

    .line 182
    :cond_9
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongQueue;->removeIndex(I)J

    .line 183
    const/4 v1, 0x1

    return v1
.end method

.method protected resize(I)V
    .registers 8
    .param p1, "newSize"  # I

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 98
    .local v0, "values":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 99
    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 101
    .local v2, "tail":I
    new-array v3, p1, [J

    .line 102
    .local v3, "newArray":[J
    const/4 v4, 0x0

    if-ge v1, v2, :cond_11

    .line 104
    sub-int v5, v2, v1

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1d

    .line 105
    :cond_11
    iget v5, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-lez v5, :cond_1d

    .line 107
    array-length v5, v0

    sub-int/2addr v5, v1

    .line 108
    .local v5, "rest":I
    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    .end local v5  # "rest":I
    :cond_1d
    :goto_1d
    iput-object v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 112
    iput v4, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 113
    iget v4, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    iput v4, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 281
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-nez v0, :cond_7

    .line 282
    const-string v0, "[]"

    return-object v0

    .line 284
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 285
    .local v0, "values":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 286
    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 288
    .local v2, "tail":I
    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 289
    .local v3, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 290
    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 291
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    rem-int/2addr v4, v5

    .local v4, "i":I
    :goto_22
    if-eq v4, v2, :cond_35

    .line 292
    const-string v5, ", "

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    aget-wide v6, v0, v4

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 291
    add-int/lit8 v5, v4, 0x1

    array-length v6, v0

    rem-int v4, v5, v6

    goto :goto_22

    .line 294
    .end local v4  # "i":I
    :cond_35
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 295
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "separator"  # Ljava/lang/String;

    .line 299
    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->values:[J

    .line 301
    .local v0, "values":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->head:I

    .line 302
    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->tail:I

    .line 304
    .local v2, "tail":I
    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 305
    .local v3, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 306
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    rem-int/2addr v4, v5

    .local v4, "i":I
    :goto_1d
    if-eq v4, v2, :cond_2e

    .line 307
    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    aget-wide v6, v0, v4

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 306
    add-int/lit8 v5, v4, 0x1

    array-length v6, v0

    rem-int v4, v5, v6

    goto :goto_1d

    .line 308
    .end local v4  # "i":I
    :cond_2e
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
