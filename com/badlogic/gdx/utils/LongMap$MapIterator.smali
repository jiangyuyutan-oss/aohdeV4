.class Lcom/badlogic/gdx/utils/LongMap$MapIterator;
.super Ljava/lang/Object;
.source "LongMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/LongMap;
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

.field final map:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 532
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$MapIterator;, "Lcom/badlogic/gdx/utils/LongMap$MapIterator<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->valid:Z

    .line 533
    iput-object p1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    .line 534
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->reset()V

    .line 535
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .registers 9

    .line 547
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$MapIterator;, "Lcom/badlogic/gdx/utils/LongMap$MapIterator<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 548
    .local v0, "keyTable":[J
    array-length v1, v0

    .local v1, "n":I
    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1a

    .line 549
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    aget-wide v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_5

    .line 550
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    .line 551
    return-void

    .line 554
    .end local v1  # "n":I
    :cond_1a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    .line 555
    return-void
.end method

.method public remove()V
    .registers 13

    .line 558
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$MapIterator;, "Lcom/badlogic/gdx/utils/LongMap$MapIterator<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    .line 559
    .local v0, "i":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-boolean v1, v1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v1, :cond_16

    .line 560
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 561
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    goto :goto_58

    .line 562
    :cond_16
    if-ltz v0, :cond_64

    .line 565
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 566
    .local v1, "keyTable":[J
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 567
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v4, v4, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .local v4, "mask":I
    add-int/lit8 v5, v0, 0x1

    and-int/2addr v5, v4

    .line 569
    .local v5, "next":I
    :goto_27
    aget-wide v6, v1, v5

    move-wide v8, v6

    .local v8, "key":J
    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_4a

    .line 570
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/utils/LongMap;->place(J)I

    move-result v6

    .line 571
    .local v6, "placement":I
    sub-int v7, v5, v6

    and-int/2addr v7, v4

    sub-int v10, v0, v6

    and-int/2addr v10, v4

    if-le v7, v10, :cond_45

    .line 572
    aput-wide v8, v1, v0

    .line 573
    aget-object v7, v3, v5

    aput-object v7, v3, v0

    .line 574
    move v0, v5

    .line 576
    :cond_45
    add-int/lit8 v7, v5, 0x1

    and-int v5, v7, v4

    .line 577
    .end local v6  # "placement":I
    goto :goto_27

    .line 578
    :cond_4a
    aput-wide v10, v1, v0

    .line 579
    aput-object v2, v3, v0

    .line 580
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    if-eq v0, v2, :cond_58

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    .line 582
    .end local v1  # "keyTable":[J
    .end local v3  # "valueTable":[Ljava/lang/Object;, "[TV;"
    .end local v4  # "mask":I
    .end local v5  # "next":I
    .end local v8  # "key":J
    :cond_58
    :goto_58
    const/4 v1, -0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    .line 583
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v2, v1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 584
    return-void

    .line 563
    :cond_64
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "next must be called before remove."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .registers 2

    .line 538
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$MapIterator;, "Lcom/badlogic/gdx/utils/LongMap$MapIterator<TV;>;"
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    .line 539
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    .line 540
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v0, :cond_10

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    goto :goto_13

    .line 543
    :cond_10
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->findNextIndex()V

    .line 544
    :goto_13
    return-void
.end method
