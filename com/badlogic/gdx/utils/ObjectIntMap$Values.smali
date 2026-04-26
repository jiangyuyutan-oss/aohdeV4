.class public Lcom/badlogic/gdx/utils/ObjectIntMap$Values;
.super Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;
.source "ObjectIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "*>;)V"
        }
    .end annotation

    .line 544
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<*>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    .line 545
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 548
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    if-eqz v0, :cond_7

    .line 549
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->hasNext:Z

    return v0

    .line 548
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Values;
    .registers 1

    .line 562
    return-object p0
.end method

.method public next()I
    .registers 3

    .line 553
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->hasNext:Z

    if-eqz v0, :cond_20

    .line 554
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    if-eqz v0, :cond_18

    .line 555
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->nextIndex:I

    aget v0, v0, v1

    .line 556
    .local v0, "value":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->currentIndex:I

    .line 557
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->findNextIndex()V

    .line 558
    return v0

    .line 554
    .end local v0  # "value":I
    :cond_18
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 542
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 542
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/IntArray;
    .registers 4

    .line 567
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 568
    .local v0, "array":Lcom/badlogic/gdx/utils/IntArray;
    :goto_a
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->hasNext:Z

    if-eqz v1, :cond_16

    .line 569
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_a

    .line 570
    :cond_16
    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/IntArray;)Lcom/badlogic/gdx/utils/IntArray;
    .registers 3
    .param p1, "array"  # Lcom/badlogic/gdx/utils/IntArray;

    .line 575
    nop

    :goto_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->hasNext:Z

    if-eqz v0, :cond_d

    .line 576
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->next()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_1

    .line 577
    :cond_d
    return-object p1
.end method
