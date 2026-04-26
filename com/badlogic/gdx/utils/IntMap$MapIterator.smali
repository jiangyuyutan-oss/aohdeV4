.class Lcom/badlogic/gdx/utils/IntMap$MapIterator;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INDEX_ILLEGAL:I = -0x2

.field static final INDEX_ZERO:I = -0x1


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 533
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$MapIterator;, "Lcom/badlogic/gdx/utils/IntMap$MapIterator<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->valid:Z

    .line 534
    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    .line 535
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->reset()V

    .line 536
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .registers 5

    .line 548
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$MapIterator;, "Lcom/badlogic/gdx/utils/IntMap$MapIterator<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 549
    .local v0, "keyTable":[I
    array-length v1, v0

    .local v1, "n":I
    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_16

    .line 550
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->nextIndex:I

    aget v2, v0, v2

    if-eqz v2, :cond_5

    .line 551
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->hasNext:Z

    .line 552
    return-void

    .line 555
    .end local v1  # "n":I
    :cond_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->hasNext:Z

    .line 556
    return-void
.end method

.method public remove()V
    .registers 12

    .line 559
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$MapIterator;, "Lcom/badlogic/gdx/utils/IntMap$MapIterator<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    .line 560
    .local v0, "i":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_16

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-boolean v1, v1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v1, :cond_16

    .line 561
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iput-boolean v3, v1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 562
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    goto :goto_54

    .line 563
    :cond_16
    if-ltz v0, :cond_60

    .line 566
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 567
    .local v1, "keyTable":[I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 568
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget v5, v5, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .local v5, "mask":I
    add-int/lit8 v6, v0, 0x1

    and-int/2addr v6, v5

    .line 569
    .local v6, "next":I
    :goto_27
    aget v7, v1, v6

    move v8, v7

    .local v8, "key":I
    if-eqz v7, :cond_46

    .line 570
    iget-object v7, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/IntMap;->place(I)I

    move-result v7

    .line 571
    .local v7, "placement":I
    sub-int v9, v6, v7

    and-int/2addr v9, v5

    sub-int v10, v0, v7

    and-int/2addr v10, v5

    if-le v9, v10, :cond_41

    .line 572
    aput v8, v1, v0

    .line 573
    aget-object v9, v4, v6

    aput-object v9, v4, v0

    .line 574
    move v0, v6

    .line 576
    :cond_41
    add-int/lit8 v9, v6, 0x1

    and-int v6, v9, v5

    .line 577
    .end local v7  # "placement":I
    goto :goto_27

    .line 578
    :cond_46
    aput v3, v1, v0

    .line 579
    aput-object v2, v4, v0

    .line 580
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    if-eq v0, v2, :cond_54

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->nextIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->nextIndex:I

    .line 582
    .end local v1  # "keyTable":[I
    .end local v4  # "valueTable":[Ljava/lang/Object;, "[TV;"
    .end local v5  # "mask":I
    .end local v6  # "next":I
    .end local v8  # "key":I
    :cond_54
    :goto_54
    const/4 v1, -0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    .line 583
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget v2, v1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 584
    return-void

    .line 564
    :cond_60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "next must be called before remove."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .registers 2

    .line 539
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$MapIterator;, "Lcom/badlogic/gdx/utils/IntMap$MapIterator<TV;>;"
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->nextIndex:I

    .line 541
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v0, :cond_10

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->hasNext:Z

    goto :goto_13

    .line 544
    :cond_10
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->findNextIndex()V

    .line 545
    :goto_13
    return-void
.end method
