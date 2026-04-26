.class public Lcom/badlogic/gdx/utils/IntFloatMap$Keys;
.super Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;
.source "IntFloatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntFloatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .registers 2
    .param p1, "map"  # Lcom/badlogic/gdx/utils/IntFloatMap;

    .line 673
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    .line 674
    return-void
.end method


# virtual methods
.method public next()I
    .registers 3

    .line 677
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->hasNext:Z

    if-eqz v0, :cond_27

    .line 678
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    if-eqz v0, :cond_1f

    .line 679
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->nextIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    goto :goto_17

    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->nextIndex:I

    aget v0, v0, v1

    .line 680
    .local v0, "key":I
    :goto_17
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->currentIndex:I

    .line 681
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->findNextIndex()V

    .line 682
    return v0

    .line 678
    .end local v0  # "key":I
    :cond_1f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_27
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 671
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 671
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/IntArray;
    .registers 4

    .line 687
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 688
    .local v0, "array":Lcom/badlogic/gdx/utils/IntArray;
    :goto_a
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->hasNext:Z

    if-eqz v1, :cond_16

    .line 689
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_a

    .line 690
    :cond_16
    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/IntArray;)Lcom/badlogic/gdx/utils/IntArray;
    .registers 3
    .param p1, "array"  # Lcom/badlogic/gdx/utils/IntArray;

    .line 695
    nop

    :goto_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->hasNext:Z

    if-eqz v0, :cond_d

    .line 696
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->next()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_1

    .line 697
    :cond_d
    return-object p1
.end method
