.class Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectFloatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectFloatMap;
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

.field final map:Lcom/badlogic/gdx/utils/ObjectFloatMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectFloatMap<",
            "TK;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 493
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->valid:Z

    .line 494
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    .line 495
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->reset()V

    .line 496
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .registers 5

    .line 505
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 506
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    array-length v1, v0

    .local v1, "n":I
    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_16

    .line 507
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->nextIndex:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_5

    .line 508
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->hasNext:Z

    .line 509
    return-void

    .line 512
    .end local v1  # "n":I
    :cond_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->hasNext:Z

    .line 513
    return-void
.end method

.method public remove()V
    .registers 10

    .line 516
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->currentIndex:I

    .line 517
    .local v0, "i":I
    if-ltz v0, :cond_4b

    .line 518
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 519
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 520
    .local v2, "valueTable":[F
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    .local v3, "mask":I
    add-int/lit8 v4, v0, 0x1

    and-int/2addr v4, v3

    .line 522
    .local v4, "next":I
    :goto_13
    aget-object v5, v1, v4

    move-object v6, v5

    .local v6, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_32

    .line 523
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->place(Ljava/lang/Object;)I

    move-result v5

    .line 524
    .local v5, "placement":I
    sub-int v7, v4, v5

    and-int/2addr v7, v3

    sub-int v8, v0, v5

    and-int/2addr v8, v3

    if-le v7, v8, :cond_2d

    .line 525
    aput-object v6, v1, v0

    .line 526
    aget v7, v2, v4

    aput v7, v2, v0

    .line 527
    move v0, v4

    .line 529
    :cond_2d
    add-int/lit8 v7, v4, 0x1

    and-int v4, v7, v3

    .line 530
    .end local v5  # "placement":I
    goto :goto_13

    .line 531
    :cond_32
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 532
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget v7, v5, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v5, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 533
    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->currentIndex:I

    if-eq v0, v5, :cond_47

    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->nextIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->nextIndex:I

    .line 534
    :cond_47
    const/4 v5, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->currentIndex:I

    .line 535
    return-void

    .line 517
    .end local v1  # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v2  # "valueTable":[F
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

    .line 499
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator<TK;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->currentIndex:I

    .line 500
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->nextIndex:I

    .line 501
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->findNextIndex()V

    .line 502
    return-void
.end method
