.class Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;
.super Ljava/lang/Object;
.source "IntFloatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntFloatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation


# static fields
.field private static final INDEX_ILLEGAL:I = -0x2

.field static final INDEX_ZERO:I = -0x1


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/IntFloatMap;

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .registers 3
    .param p1, "map"  # Lcom/badlogic/gdx/utils/IntFloatMap;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->valid:Z

    .line 543
    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    .line 544
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->reset()V

    .line 545
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .registers 5

    .line 557
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 558
    .local v0, "keyTable":[I
    array-length v1, v0

    .local v1, "n":I
    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_16

    .line 559
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->nextIndex:I

    aget v2, v0, v2

    if-eqz v2, :cond_5

    .line 560
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->hasNext:Z

    .line 561
    return-void

    .line 564
    .end local v1  # "n":I
    :cond_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->hasNext:Z

    .line 565
    return-void
.end method

.method public remove()V
    .registers 11

    .line 568
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->currentIndex:I

    .line 569
    .local v0, "i":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-boolean v1, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v1, :cond_11

    .line 570
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    goto :goto_4d

    .line 571
    :cond_11
    if-ltz v0, :cond_59

    .line 574
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 575
    .local v1, "keyTable":[I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 576
    .local v3, "valueTable":[F
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget v4, v4, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    .local v4, "mask":I
    add-int/lit8 v5, v0, 0x1

    and-int/2addr v5, v4

    .line 577
    .local v5, "next":I
    :goto_22
    aget v6, v1, v5

    move v7, v6

    .local v7, "key":I
    if-eqz v6, :cond_41

    .line 578
    iget-object v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/IntFloatMap;->place(I)I

    move-result v6

    .line 579
    .local v6, "placement":I
    sub-int v8, v5, v6

    and-int/2addr v8, v4

    sub-int v9, v0, v6

    and-int/2addr v9, v4

    if-le v8, v9, :cond_3c

    .line 580
    aput v7, v1, v0

    .line 581
    aget v8, v3, v5

    aput v8, v3, v0

    .line 582
    move v0, v5

    .line 584
    :cond_3c
    add-int/lit8 v8, v5, 0x1

    and-int v5, v8, v4

    .line 585
    .end local v6  # "placement":I
    goto :goto_22

    .line 586
    :cond_41
    aput v2, v1, v0

    .line 587
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->currentIndex:I

    if-eq v0, v2, :cond_4d

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->nextIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->nextIndex:I

    .line 589
    .end local v1  # "keyTable":[I
    .end local v3  # "valueTable":[F
    .end local v4  # "mask":I
    .end local v5  # "next":I
    .end local v7  # "key":I
    :cond_4d
    :goto_4d
    const/4 v1, -0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->currentIndex:I

    .line 590
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget v2, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 591
    return-void

    .line 572
    :cond_59
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "next must be called before remove."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .registers 2

    .line 548
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->currentIndex:I

    .line 549
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->nextIndex:I

    .line 550
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v0, :cond_10

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->hasNext:Z

    goto :goto_13

    .line 553
    :cond_10
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->findNextIndex()V

    .line 554
    :goto_13
    return-void
.end method
