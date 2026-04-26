.class public Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
.super Ljava/lang/Object;
.source "ObjectSet.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TK;>;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field nextIndex:I

.field final set:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TK;>;)V"
        }
    .end annotation

    .line 368
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    .local p1, "set":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 369
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    .line 370
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->reset()V

    .line 371
    return-void
.end method

.method private findNextIndex()V
    .registers 5

    .line 380
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 381
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    .local v1, "n":I
    :cond_9
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    if-ge v2, v1, :cond_1a

    .line 382
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_9

    .line 383
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    .line 384
    return-void

    .line 387
    .end local v1  # "n":I
    :cond_1a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    .line 388
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 411
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    if-eqz v0, :cond_7

    .line 412
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    return v0

    .line 411
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<",
            "TK;>;"
        }
    .end annotation

    .line 425
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 361
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 416
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    if-eqz v0, :cond_20

    .line 417
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    if-eqz v0, :cond_18

    .line 418
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    aget-object v0, v0, v1

    .line 419
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    .line 420
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->findNextIndex()V

    .line 421
    return-object v0

    .line 417
    .end local v0  # "key":Ljava/lang/Object;, "TK;"
    :cond_18
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 9

    .line 391
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    .line 392
    .local v0, "i":I
    if-ltz v0, :cond_43

    .line 393
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 394
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    .local v2, "mask":I
    add-int/lit8 v3, v0, 0x1

    and-int/2addr v3, v2

    .line 396
    .local v3, "next":I
    :goto_f
    aget-object v4, v1, v3

    move-object v5, v4

    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_2a

    .line 397
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/ObjectSet;->place(Ljava/lang/Object;)I

    move-result v4

    .line 398
    .local v4, "placement":I
    sub-int v6, v3, v4

    and-int/2addr v6, v2

    sub-int v7, v0, v4

    and-int/2addr v7, v2

    if-le v6, v7, :cond_25

    .line 399
    aput-object v5, v1, v0

    .line 400
    move v0, v3

    .line 402
    :cond_25
    add-int/lit8 v6, v3, 0x1

    and-int v3, v6, v2

    .line 403
    .end local v4  # "placement":I
    goto :goto_f

    .line 404
    :cond_2a
    const/4 v4, 0x0

    aput-object v4, v1, v0

    .line 405
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v6, v4, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 406
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    if-eq v0, v4, :cond_3f

    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    .line 407
    :cond_3f
    const/4 v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    .line 408
    return-void

    .line 392
    .end local v1  # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v2  # "mask":I
    .end local v3  # "next":I
    .end local v5  # "key":Ljava/lang/Object;, "TK;"
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "next must be called before remove."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .registers 2

    .line 374
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    .line 375
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    .line 376
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->findNextIndex()V

    .line 377
    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    .line 437
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    nop

    :goto_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    if-eqz v0, :cond_d

    .line 431
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 432
    :cond_d
    return-object p1
.end method
