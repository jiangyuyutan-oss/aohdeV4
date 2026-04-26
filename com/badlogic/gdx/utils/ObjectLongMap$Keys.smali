.class public Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;
.super Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;
.source "ObjectLongMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectLongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "TK;>;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 583
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Keys<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectLongMap;, "Lcom/badlogic/gdx/utils/ObjectLongMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    .line 584
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 587
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->valid:Z

    if-eqz v0, :cond_7

    .line 588
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->hasNext:Z

    return v0

    .line 587
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 601
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Keys<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 581
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Keys<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 592
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->hasNext:Z

    if-eqz v0, :cond_20

    .line 593
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->valid:Z

    if-eqz v0, :cond_18

    .line 594
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->nextIndex:I

    aget-object v0, v0, v1

    .line 595
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->currentIndex:I

    .line 596
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->findNextIndex()V

    .line 597
    return-object v0

    .line 593
    .end local v0  # "key":Ljava/lang/Object;, "TK;"
    :cond_18
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 581
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 581
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    .line 606
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Keys<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    .line 611
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Keys<TK;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    nop

    :goto_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->hasNext:Z

    if-eqz v0, :cond_d

    .line 612
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 613
    :cond_d
    return-object p1
.end method
