.class public Lcom/badlogic/gdx/utils/ObjectLongMap$Values;
.super Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;
.source "ObjectLongMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectLongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "*>;)V"
        }
    .end annotation

    .line 544
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectLongMap;, "Lcom/badlogic/gdx/utils/ObjectLongMap<*>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    .line 545
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 548
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->valid:Z

    if-eqz v0, :cond_7

    .line 549
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->hasNext:Z

    return v0

    .line 548
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Values;
    .registers 1

    .line 562
    return-object p0
.end method

.method public next()J
    .registers 4

    .line 553
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->hasNext:Z

    if-eqz v0, :cond_20

    .line 554
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->valid:Z

    if-eqz v0, :cond_18

    .line 555
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->nextIndex:I

    aget-wide v1, v0, v1

    .line 556
    .local v1, "value":J
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->nextIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->currentIndex:I

    .line 557
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->findNextIndex()V

    .line 558
    return-wide v1

    .line 554
    .end local v1  # "value":J
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
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 542
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/LongArray;
    .registers 4

    .line 567
    new-instance v0, Lcom/badlogic/gdx/utils/LongArray;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 568
    .local v0, "array":Lcom/badlogic/gdx/utils/LongArray;
    :goto_a
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->hasNext:Z

    if-eqz v1, :cond_16

    .line 569
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->next()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongArray;->add(J)V

    goto :goto_a

    .line 570
    :cond_16
    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/LongArray;)Lcom/badlogic/gdx/utils/LongArray;
    .registers 4
    .param p1, "array"  # Lcom/badlogic/gdx/utils/LongArray;

    .line 575
    nop

    :goto_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->hasNext:Z

    if-eqz v0, :cond_d

    .line 576
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->next()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;->add(J)V

    goto :goto_1

    .line 577
    :cond_d
    return-object p1
.end method
