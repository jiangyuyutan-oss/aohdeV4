.class public Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
.super Ljava/lang/Object;
.source "IntSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntSetIterator"
.end annotation


# static fields
.field private static final INDEX_ILLEGAL:I = -0x2

.field private static final INDEX_ZERO:I = -0x1


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field nextIndex:I

.field final set:Lcom/badlogic/gdx/utils/IntSet;

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntSet;)V
    .registers 3
    .param p1, "set"  # Lcom/badlogic/gdx/utils/IntSet;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 373
    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    .line 374
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 375
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .registers 5

    .line 387
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 388
    .local v0, "keyTable":[I
    array-length v1, v0

    .local v1, "n":I
    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    if-ge v2, v1, :cond_16

    .line 389
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    aget v2, v0, v2

    if-eqz v2, :cond_5

    .line 390
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    .line 391
    return-void

    .line 394
    .end local v1  # "n":I
    :cond_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    .line 395
    return-void
.end method

.method public next()I
    .registers 3

    .line 422
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v0, :cond_27

    .line 423
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    if-eqz v0, :cond_1f

    .line 424
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    goto :goto_17

    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    aget v0, v0, v1

    .line 425
    .local v0, "key":I
    :goto_17
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    .line 426
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->findNextIndex()V

    .line 427
    return v0

    .line 423
    .end local v0  # "key":I
    :cond_1f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_27
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 10

    .line 398
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    .line 399
    .local v0, "i":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-boolean v1, v1, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v1, :cond_11

    .line 400
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    goto :goto_45

    .line 401
    :cond_11
    if-ltz v0, :cond_51

    .line 404
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 405
    .local v1, "keyTable":[I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .local v3, "mask":I
    add-int/lit8 v4, v0, 0x1

    and-int/2addr v4, v3

    .line 406
    .local v4, "next":I
    :goto_1e
    aget v5, v1, v4

    move v6, v5

    .local v6, "key":I
    if-eqz v5, :cond_39

    .line 407
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/IntSet;->place(I)I

    move-result v5

    .line 408
    .local v5, "placement":I
    sub-int v7, v4, v5

    and-int/2addr v7, v3

    sub-int v8, v0, v5

    and-int/2addr v8, v3

    if-le v7, v8, :cond_34

    .line 409
    aput v6, v1, v0

    .line 410
    move v0, v4

    .line 412
    :cond_34
    add-int/lit8 v7, v4, 0x1

    and-int v4, v7, v3

    .line 413
    .end local v5  # "placement":I
    goto :goto_1e

    .line 414
    :cond_39
    aput v2, v1, v0

    .line 415
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    if-eq v0, v2, :cond_45

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    .line 417
    .end local v1  # "keyTable":[I
    .end local v3  # "mask":I
    .end local v4  # "next":I
    .end local v6  # "key":I
    :cond_45
    :goto_45
    const/4 v1, -0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    .line 418
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget v2, v1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 419
    return-void

    .line 402
    :cond_51
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "next must be called before remove."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .registers 2

    .line 378
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v0, :cond_10

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    goto :goto_13

    .line 383
    :cond_10
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->findNextIndex()V

    .line 384
    :goto_13
    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/IntArray;
    .registers 4

    .line 432
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 433
    .local v0, "array":Lcom/badlogic/gdx/utils/IntArray;
    :goto_a
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v1, :cond_16

    .line 434
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_a

    .line 435
    :cond_16
    return-object v0
.end method
