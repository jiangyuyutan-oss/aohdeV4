.class public Lcom/badlogic/gdx/utils/LongMap$Values;
.super Lcom/badlogic/gdx/utils/LongMap$MapIterator;
.source "LongMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/LongMap$MapIterator<",
        "TV;>;",
        "Ljava/lang/Iterable<",
        "TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 623
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Values;, "Lcom/badlogic/gdx/utils/LongMap$Values<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    .line 624
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 627
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Values;, "Lcom/badlogic/gdx/utils/LongMap$Values<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    if-eqz v0, :cond_7

    .line 628
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Values;->hasNext:Z

    return v0

    .line 627
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 645
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Values;, "Lcom/badlogic/gdx/utils/LongMap$Values<TV;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 632
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Values;, "Lcom/badlogic/gdx/utils/LongMap$Values<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Values;->hasNext:Z

    if-eqz v0, :cond_2a

    .line 633
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    if-eqz v0, :cond_22

    .line 635
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$Values;->nextIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 636
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$Values;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .local v0, "value":Ljava/lang/Object;, "TV;"
    goto :goto_1a

    .line 638
    .end local v0  # "value":Ljava/lang/Object;, "TV;"
    :cond_12
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$Values;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$Values;->nextIndex:I

    aget-object v0, v0, v1

    .line 639
    .restart local v0  # "value":Ljava/lang/Object;, "TV;"
    :goto_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$Values;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap$Values;->currentIndex:I

    .line 640
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$Values;->findNextIndex()V

    .line 641
    return-object v0

    .line 633
    .end local v0  # "value":Ljava/lang/Object;, "TV;"
    :cond_22
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_2a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 621
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Values;, "Lcom/badlogic/gdx/utils/LongMap$Values<TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 621
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Values;, "Lcom/badlogic/gdx/utils/LongMap$Values<TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;"
        }
    .end annotation

    .line 650
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Values;, "Lcom/badlogic/gdx/utils/LongMap$Values<TV;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$Values;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 651
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;
    :goto_a
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap$Values;->hasNext:Z

    if-eqz v1, :cond_16

    .line 652
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$Values;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_a

    .line 653
    :cond_16
    return-object v0
.end method
