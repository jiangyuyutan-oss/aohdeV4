.class Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectLongMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectLongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/ObjectLongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "TK;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 468
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectLongMap;, "Lcom/badlogic/gdx/utils/ObjectLongMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->valid:Z

    .line 469
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    .line 470
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->reset()V

    .line 471
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .registers 5

    .line 480
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 481
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    array-length v1, v0

    .local v1, "n":I
    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_16

    .line 482
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_5

    .line 483
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    .line 484
    return-void

    .line 487
    .end local v1  # "n":I
    :cond_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    .line 488
    return-void
.end method

.method public remove()V
    .registers 10

    .line 491
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    .line 492
    .local v0, "i":I
    if-ltz v0, :cond_4b

    .line 493
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 494
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    .line 495
    .local v2, "valueTable":[J
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectLongMap;->mask:I

    .local v3, "mask":I
    add-int/lit8 v4, v0, 0x1

    and-int/2addr v4, v3

    .line 497
    .local v4, "next":I
    :goto_13
    aget-object v5, v1, v4

    move-object v6, v5

    .local v6, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_32

    .line 498
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/ObjectLongMap;->place(Ljava/lang/Object;)I

    move-result v5

    .line 499
    .local v5, "placement":I
    sub-int v7, v4, v5

    and-int/2addr v7, v3

    sub-int v8, v0, v5

    and-int/2addr v8, v3

    if-le v7, v8, :cond_2d

    .line 500
    aput-object v6, v1, v0

    .line 501
    aget-wide v7, v2, v4

    aput-wide v7, v2, v0

    .line 502
    move v0, v4

    .line 504
    :cond_2d
    add-int/lit8 v7, v4, 0x1

    and-int v4, v7, v3

    .line 505
    .end local v5  # "placement":I
    goto :goto_13

    .line 506
    :cond_32
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 507
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget v7, v5, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v5, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    .line 508
    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    if-eq v0, v5, :cond_47

    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    .line 509
    :cond_47
    const/4 v5, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    .line 510
    return-void

    .line 492
    .end local v1  # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v2  # "valueTable":[J
    .end local v3  # "mask":I
    .end local v4  # "next":I
    .end local v6  # "key":Ljava/lang/Object;, "TK;"
    :cond_4b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "next must be called before remove."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .registers 2

    .line 474
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator<TK;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    .line 475
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    .line 476
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->findNextIndex()V

    .line 477
    return-void
.end method
