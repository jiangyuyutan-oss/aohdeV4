.class abstract Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TI;>;",
        "Ljava/util/Iterator<",
        "TI;>;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 492
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectMap$MapIterator<TK;TV;TI;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->valid:Z

    .line 493
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 494
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->reset()V

    .line 495
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .registers 5

    .line 504
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectMap$MapIterator<TK;TV;TI;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 505
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    array-length v1, v0

    .local v1, "n":I
    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_16

    .line 506
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_5

    .line 507
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->hasNext:Z

    .line 508
    return-void

    .line 511
    .end local v1  # "n":I
    :cond_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->hasNext:Z

    .line 512
    return-void
.end method

.method public remove()V
    .registers 10

    .line 515
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectMap$MapIterator<TK;TV;TI;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    .line 516
    .local v0, "i":I
    if-ltz v0, :cond_4d

    .line 517
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 518
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 519
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    .local v3, "mask":I
    add-int/lit8 v4, v0, 0x1

    and-int/2addr v4, v3

    .line 521
    .local v4, "next":I
    :goto_13
    aget-object v5, v1, v4

    move-object v6, v5

    .local v6, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_32

    .line 522
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->place(Ljava/lang/Object;)I

    move-result v5

    .line 523
    .local v5, "placement":I
    sub-int v7, v4, v5

    and-int/2addr v7, v3

    sub-int v8, v0, v5

    and-int/2addr v8, v3

    if-le v7, v8, :cond_2d

    .line 524
    aput-object v6, v1, v0

    .line 525
    aget-object v7, v2, v4

    aput-object v7, v2, v0

    .line 526
    move v0, v4

    .line 528
    :cond_2d
    add-int/lit8 v7, v4, 0x1

    and-int v4, v7, v3

    .line 529
    .end local v5  # "placement":I
    goto :goto_13

    .line 530
    :cond_32
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 531
    aput-object v5, v2, v0

    .line 532
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v7, v5, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v5, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 533
    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    if-eq v0, v5, :cond_49

    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    .line 534
    :cond_49
    const/4 v5, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    .line 535
    return-void

    .line 516
    .end local v1  # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v2  # "valueTable":[Ljava/lang/Object;, "[TV;"
    .end local v3  # "mask":I
    .end local v4  # "next":I
    .end local v6  # "key":Ljava/lang/Object;, "TK;"
    :cond_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "next must be called before remove."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .registers 2

    .line 498
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectMap$MapIterator<TK;TV;TI;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    .line 499
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    .line 500
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->findNextIndex()V

    .line 501
    return-void
.end method
