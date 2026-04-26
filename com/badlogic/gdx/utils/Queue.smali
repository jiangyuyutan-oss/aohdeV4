.class public Lcom/badlogic/gdx/utils/Queue;
.super Ljava/lang/Object;
.source "Queue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Queue$QueueIterable;,
        Lcom/badlogic/gdx/utils/Queue$QueueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected head:I

.field private transient iterable:Lcom/badlogic/gdx/utils/Queue$QueueIterable;

.field public size:I

.field protected tail:I

.field protected values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Queue;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialSize"  # I

    .line 49
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 36
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 39
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 51
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .registers 4
    .param p1, "initialSize"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 36
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 39
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 58
    invoke-static {p2, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 84
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_f

    .line 85
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Queue;->resize(I)V

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 89
    :cond_f
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 90
    .local v1, "head":I
    const/4 v2, -0x1

    add-int/2addr v1, v2

    .line 91
    if-ne v1, v2, :cond_18

    .line 92
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 94
    :cond_18
    aput-object p1, v0, v1

    .line 96
    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 97
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 98
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 66
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_f

    .line 67
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Queue;->resize(I)V

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 71
    :cond_f
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    aput-object p1, v0, v1

    .line 72
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    array-length v2, v0

    if-ne v1, v2, :cond_1f

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 75
    :cond_1f
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 76
    return-void
.end method

.method public clear()V
    .registers 7

    .line 306
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-nez v0, :cond_5

    return-void

    .line 307
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 308
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 309
    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 311
    .local v2, "tail":I
    const/4 v3, 0x0

    if-ge v1, v2, :cond_17

    .line 313
    move v4, v1

    .local v4, "i":I
    :goto_f
    if-ge v4, v2, :cond_16

    .line 314
    aput-object v3, v0, v4

    .line 313
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .end local v4  # "i":I
    :cond_16
    goto :goto_28

    .line 318
    :cond_17
    move v4, v1

    .restart local v4  # "i":I
    :goto_18
    array-length v5, v0

    if-ge v4, v5, :cond_20

    .line 319
    aput-object v3, v0, v4

    .line 318
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 321
    .end local v4  # "i":I
    :cond_20
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_21
    if-ge v4, v2, :cond_28

    .line 322
    aput-object v3, v0, v4

    .line 321
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 325
    .end local v4  # "i":I
    :cond_28
    :goto_28
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 326
    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 327
    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 328
    return-void
.end method

.method public ensureCapacity(I)V
    .registers 4
    .param p1, "additional"  # I

    .line 103
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/2addr v0, p1

    .line 104
    .local v0, "needed":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v1, v0, :cond_b

    .line 105
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Queue;->resize(I)V

    .line 107
    :cond_b
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 16
    .param p1, "o"  # Ljava/lang/Object;

    .line 392
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 393
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_41

    instance-of v2, p1, Lcom/badlogic/gdx/utils/Queue;

    if-nez v2, :cond_c

    goto :goto_41

    .line 395
    :cond_c
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/utils/Queue;

    .line 396
    .local v2, "q":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<*>;"
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 398
    .local v3, "size":I
    iget v4, v2, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eq v4, v3, :cond_16

    return v1

    .line 400
    :cond_16
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 401
    .local v4, "myValues":[Ljava/lang/Object;, "[TT;"
    array-length v5, v4

    .line 402
    .local v5, "myBackingLength":I
    iget-object v6, v2, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 403
    .local v6, "itsValues":[Ljava/lang/Object;
    array-length v7, v6

    .line 405
    .local v7, "itsBackingLength":I
    iget v8, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 406
    .local v8, "myIndex":I
    iget v9, v2, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 407
    .local v9, "itsIndex":I
    const/4 v10, 0x0

    .local v10, "s":I
    :goto_21
    if-ge v10, v3, :cond_40

    .line 408
    aget-object v11, v4, v8

    .line 409
    .local v11, "myValue":Ljava/lang/Object;, "TT;"
    aget-object v12, v6, v9

    .line 411
    .local v12, "itsValue":Ljava/lang/Object;
    if-nez v11, :cond_2c

    if-nez v12, :cond_32

    goto :goto_33

    :cond_2c
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_33

    :cond_32
    return v1

    .line 412
    :cond_33
    :goto_33
    add-int/lit8 v8, v8, 0x1

    .line 413
    add-int/lit8 v9, v9, 0x1

    .line 414
    if-ne v8, v5, :cond_3a

    const/4 v8, 0x0

    .line 415
    :cond_3a
    if-ne v9, v7, :cond_3d

    const/4 v9, 0x0

    .line 407
    .end local v11  # "myValue":Ljava/lang/Object;, "TT;"
    .end local v12  # "itsValue":Ljava/lang/Object;
    :cond_3d
    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    .line 417
    .end local v10  # "s":I
    :cond_40
    return v0

    .line 393
    .end local v2  # "q":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<*>;"
    .end local v3  # "size":I
    .end local v4  # "myValues":[Ljava/lang/Object;, "[TT;"
    .end local v5  # "myBackingLength":I
    .end local v6  # "itsValues":[Ljava/lang/Object;
    .end local v7  # "itsBackingLength":I
    .end local v8  # "myIndex":I
    .end local v9  # "itsIndex":I
    :cond_41
    :goto_41
    return v1
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .registers 15
    .param p1, "o"  # Ljava/lang/Object;

    .line 422
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 423
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    instance-of v2, p1, Lcom/badlogic/gdx/utils/Queue;

    if-nez v2, :cond_c

    goto :goto_38

    .line 425
    :cond_c
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/utils/Queue;

    .line 426
    .local v2, "q":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<*>;"
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 428
    .local v3, "size":I
    iget v4, v2, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eq v4, v3, :cond_16

    return v1

    .line 430
    :cond_16
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 431
    .local v4, "myValues":[Ljava/lang/Object;, "[TT;"
    array-length v5, v4

    .line 432
    .local v5, "myBackingLength":I
    iget-object v6, v2, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 433
    .local v6, "itsValues":[Ljava/lang/Object;
    array-length v7, v6

    .line 435
    .local v7, "itsBackingLength":I
    iget v8, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 436
    .local v8, "myIndex":I
    iget v9, v2, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 437
    .local v9, "itsIndex":I
    const/4 v10, 0x0

    .local v10, "s":I
    :goto_21
    if-ge v10, v3, :cond_37

    .line 438
    aget-object v11, v4, v8

    aget-object v12, v6, v9

    if-eq v11, v12, :cond_2a

    return v1

    .line 439
    :cond_2a
    add-int/lit8 v8, v8, 0x1

    .line 440
    add-int/lit8 v9, v9, 0x1

    .line 441
    if-ne v8, v5, :cond_31

    const/4 v8, 0x0

    .line 442
    :cond_31
    if-ne v9, v7, :cond_34

    const/4 v9, 0x0

    .line 437
    :cond_34
    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    .line 444
    .end local v10  # "s":I
    :cond_37
    return v0

    .line 423
    .end local v2  # "q":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<*>;"
    .end local v3  # "size":I
    .end local v4  # "myValues":[Ljava/lang/Object;, "[TT;"
    .end local v5  # "myBackingLength":I
    .end local v6  # "itsValues":[Ljava/lang/Object;
    .end local v7  # "itsBackingLength":I
    .end local v8  # "myIndex":I
    .end local v9  # "itsIndex":I
    :cond_38
    :goto_38
    return v1
.end method

.method public first()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eqz v0, :cond_b

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    aget-object v0, v0, v1

    return-object v0

    .line 265
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    if-ltz p1, :cond_38

    .line 293
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-ge p1, v0, :cond_13

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 296
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    add-int/2addr v1, p1

    .line 297
    .local v1, "i":I
    array-length v2, v0

    if-lt v1, v2, :cond_10

    .line 298
    array-length v2, v0

    sub-int/2addr v1, v2

    .line 300
    :cond_10
    aget-object v2, v0, v1

    return-object v2

    .line 293
    .end local v0  # "values":[Ljava/lang/Object;, "[TT;"
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

    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
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
    .registers 9

    .line 372
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 373
    .local v0, "size":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 374
    .local v1, "values":[Ljava/lang/Object;, "[TT;"
    array-length v2, v1

    .line 375
    .local v2, "backingLength":I
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 377
    .local v3, "index":I
    add-int/lit8 v4, v0, 0x1

    .line 378
    .local v4, "hash":I
    const/4 v5, 0x0

    .local v5, "s":I
    :goto_a
    if-ge v5, v0, :cond_1f

    .line 379
    aget-object v6, v1, v3

    .line 381
    .local v6, "value":Ljava/lang/Object;, "TT;"
    mul-int/lit8 v4, v4, 0x1f

    .line 382
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v4, v7

    .line 384
    :cond_17
    add-int/lit8 v3, v3, 0x1

    .line 385
    if-ne v3, v2, :cond_1c

    const/4 v3, 0x0

    .line 378
    .end local v6  # "value":Ljava/lang/Object;, "TT;"
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 388
    .end local v5  # "s":I
    :cond_1f
    return v4
.end method

.method public indexOf(Ljava/lang/Object;Z)I
    .registers 10
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 180
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 181
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .local v2, "head":I
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 182
    .local v3, "tail":I
    if-nez p2, :cond_49

    if-nez p1, :cond_11

    goto :goto_49

    .line 193
    :cond_11
    if-ge v2, v3, :cond_25

    .line 194
    move v4, v2

    .local v4, "i":I
    :goto_14
    if-ge v4, v3, :cond_24

    .line 195
    aget-object v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    sub-int v1, v4, v2

    return v1

    .line 194
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .end local v4  # "i":I
    :cond_24
    goto :goto_75

    .line 197
    :cond_25
    move v4, v2

    .restart local v4  # "i":I
    array-length v5, v0

    .local v5, "n":I
    :goto_27
    if-ge v4, v5, :cond_37

    .line 198
    aget-object v6, v0, v4

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    sub-int v1, v4, v2

    return v1

    .line 197
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 199
    .end local v4  # "i":I
    .end local v5  # "n":I
    :cond_37
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_38
    if-ge v4, v3, :cond_75

    .line 200
    aget-object v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    array-length v1, v0

    add-int/2addr v1, v4

    sub-int/2addr v1, v2

    return v1

    .line 199
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 183
    .end local v4  # "i":I
    :cond_49
    :goto_49
    if-ge v2, v3, :cond_59

    .line 184
    move v4, v2

    .restart local v4  # "i":I
    :goto_4c
    if-ge v4, v3, :cond_58

    .line 185
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_55

    sub-int v1, v4, v2

    return v1

    .line 184
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .end local v4  # "i":I
    :cond_58
    goto :goto_75

    .line 187
    :cond_59
    move v4, v2

    .restart local v4  # "i":I
    array-length v5, v0

    .restart local v5  # "n":I
    :goto_5b
    if-ge v4, v5, :cond_67

    .line 188
    aget-object v6, v0, v4

    if-ne v6, p1, :cond_64

    sub-int v1, v4, v2

    return v1

    .line 187
    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    .line 189
    .end local v4  # "i":I
    .end local v5  # "n":I
    :cond_67
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_68
    if-ge v4, v3, :cond_75

    .line 190
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_72

    array-length v1, v0

    add-int/2addr v1, v4

    sub-int/2addr v1, v2

    return v1

    .line 189
    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 203
    .end local v4  # "i":I
    :cond_75
    :goto_75
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 255
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 335
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_b

    new-instance v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/utils/Queue$QueueIterator;-><init>(Lcom/badlogic/gdx/utils/Queue;Z)V

    return-object v0

    .line 336
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->iterable:Lcom/badlogic/gdx/utils/Queue$QueueIterable;

    if-nez v0, :cond_16

    new-instance v0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Queue$QueueIterable;-><init>(Lcom/badlogic/gdx/utils/Queue;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->iterable:Lcom/badlogic/gdx/utils/Queue$QueueIterable;

    .line 337
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->iterable:Lcom/badlogic/gdx/utils/Queue$QueueIterable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eqz v0, :cond_12

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 280
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 281
    .local v1, "tail":I
    const/4 v2, -0x1

    add-int/2addr v1, v2

    .line 282
    if-ne v1, v2, :cond_f

    .line 283
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 285
    :cond_f
    aget-object v2, v0, v1

    return-object v2

    .line 277
    .end local v0  # "values":[Ljava/lang/Object;, "[TT;"
    .end local v1  # "tail":I
    :cond_12
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 250
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eqz v0, :cond_24

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 141
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    aget-object v1, v0, v1

    .line 142
    .local v1, "result":Ljava/lang/Object;, "TT;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 143
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 144
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    array-length v3, v0

    if-ne v2, v3, :cond_1d

    .line 145
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 147
    :cond_1d
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 149
    return-object v1

    .line 136
    .end local v0  # "values":[Ljava/lang/Object;, "[TT;"
    .end local v1  # "result":Ljava/lang/Object;, "TT;"
    :cond_24
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .registers 9
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    if-ltz p1, :cond_7c

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-ge p1, v0, :cond_57

    .line 221
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 222
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 223
    .local v2, "tail":I
    add-int/2addr p1, v1

    .line 225
    const/4 v3, 0x0

    if-ge v1, v2, :cond_22

    .line 226
    aget-object v4, v0, p1

    .line 227
    .local v4, "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v5, p1, 0x1

    sub-int v6, v2, p1

    invoke-static {v0, v5, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    aput-object v3, v0, v2

    .line 229
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    goto :goto_50

    .line 230
    .end local v4  # "value":Ljava/lang/Object;, "TT;"
    :cond_22
    array-length v4, v0

    if-lt p1, v4, :cond_37

    .line 231
    array-length v3, v0

    sub-int/2addr p1, v3

    .line 232
    aget-object v4, v0, p1

    .line 233
    .restart local v4  # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, p1, 0x1

    sub-int v5, v2, p1

    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    goto :goto_50

    .line 236
    .end local v4  # "value":Ljava/lang/Object;, "TT;"
    :cond_37
    aget-object v4, v0, p1

    .line 237
    .restart local v4  # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v5, v1, 0x1

    sub-int v6, p1, v1

    invoke-static {v0, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    aput-object v3, v0, v1

    .line 239
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 240
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    array-length v5, v0

    if-ne v3, v5, :cond_50

    .line 241
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 244
    :cond_50
    :goto_50
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 245
    return-object v4

    .line 219
    .end local v0  # "values":[Ljava/lang/Object;, "[TT;"
    .end local v1  # "head":I
    .end local v2  # "tail":I
    .end local v4  # "value":Ljava/lang/Object;, "TT;"
    :cond_57
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

    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_7c
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

.method public removeLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eqz v0, :cond_1d

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 162
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 163
    .local v1, "tail":I
    const/4 v2, -0x1

    add-int/2addr v1, v2

    .line 164
    if-ne v1, v2, :cond_f

    .line 165
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 167
    :cond_f
    aget-object v2, v0, v1

    .line 168
    .local v2, "result":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 169
    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 170
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 172
    return-object v2

    .line 158
    .end local v0  # "values":[Ljava/lang/Object;, "[TT;"
    .end local v1  # "tail":I
    .end local v2  # "result":Ljava/lang/Object;, "TT;"
    :cond_1d
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .registers 5
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/Queue;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 211
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    return v1

    .line 212
    :cond_9
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Queue;->removeIndex(I)Ljava/lang/Object;

    .line 213
    const/4 v1, 0x1

    return v1
.end method

.method protected resize(I)V
    .registers 8
    .param p1, "newSize"  # I

    .line 111
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 112
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 113
    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 115
    .local v2, "tail":I
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 116
    .local v3, "newArray":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    if-ge v1, v2, :cond_1f

    .line 118
    sub-int v5, v2, v1

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2b

    .line 119
    :cond_1f
    iget v5, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-lez v5, :cond_2b

    .line 121
    array-length v5, v0

    sub-int/2addr v5, v1

    .line 122
    .local v5, "rest":I
    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    .end local v5  # "rest":I
    :cond_2b
    :goto_2b
    iput-object v3, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 126
    iput v4, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 127
    iget v4, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    iput v4, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 341
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-nez v0, :cond_7

    .line 342
    const-string v0, "[]"

    return-object v0

    .line 344
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 345
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 346
    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 348
    .local v2, "tail":I
    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 349
    .local v3, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 350
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 351
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    rem-int/2addr v4, v5

    .local v4, "i":I
    :goto_22
    if-eq v4, v2, :cond_35

    .line 352
    const-string v5, ", "

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 351
    add-int/lit8 v5, v4, 0x1

    array-length v6, v0

    rem-int v4, v5, v6

    goto :goto_22

    .line 354
    .end local v4  # "i":I
    :cond_35
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 355
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "separator"  # Ljava/lang/String;

    .line 359
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 360
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 361
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 362
    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 364
    .local v2, "tail":I
    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 365
    .local v3, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 366
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    rem-int/2addr v4, v5

    .local v4, "i":I
    :goto_1d
    if-eq v4, v2, :cond_2e

    .line 367
    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 366
    add-int/lit8 v5, v4, 0x1

    array-length v6, v0

    rem-int v4, v5, v6

    goto :goto_1d

    .line 368
    .end local v4  # "i":I
    :cond_2e
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
