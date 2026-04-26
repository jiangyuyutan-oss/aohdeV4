.class public Lcom/badlogic/gdx/utils/LongMap$Keys;
.super Lcom/badlogic/gdx/utils/LongMap$MapIterator;
.source "LongMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .registers 2
    .param p1, "map"  # Lcom/badlogic/gdx/utils/LongMap;

    .line 659
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    .line 660
    return-void
.end method


# virtual methods
.method public next()J
    .registers 4

    .line 663
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->hasNext:Z

    if-eqz v0, :cond_29

    .line 664
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    if-eqz v0, :cond_21

    .line 665
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->nextIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    const-wide/16 v0, 0x0

    goto :goto_19

    :cond_10
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->nextIndex:I

    aget-wide v1, v0, v1

    move-wide v0, v1

    .line 666
    .local v0, "key":J
    :goto_19
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->nextIndex:I

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->currentIndex:I

    .line 667
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->findNextIndex()V

    .line 668
    return-wide v0

    .line 664
    .end local v0  # "key":J
    :cond_21
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_29
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 657
    invoke-super {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 657
    invoke-super {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/LongArray;
    .registers 4

    .line 673
    new-instance v0, Lcom/badlogic/gdx/utils/LongArray;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 674
    .local v0, "array":Lcom/badlogic/gdx/utils/LongArray;
    :goto_a
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->hasNext:Z

    if-eqz v1, :cond_16

    .line 675
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->next()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongArray;->add(J)V

    goto :goto_a

    .line 676
    :cond_16
    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/LongArray;)Lcom/badlogic/gdx/utils/LongArray;
    .registers 4
    .param p1, "array"  # Lcom/badlogic/gdx/utils/LongArray;

    .line 681
    nop

    :goto_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->hasNext:Z

    if-eqz v0, :cond_d

    .line 682
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->next()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;->add(J)V

    goto :goto_1

    .line 683
    :cond_d
    return-object p1
.end method
