.class public Lcom/badlogic/gdx/utils/ObjectMap$Keys;
.super Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;
.source "ObjectMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectMap;
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
        "Lcom/badlogic/gdx/utils/ObjectMap$MapIterator<",
        "TK;",
        "Ljava/lang/Object;",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 605
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;*>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 606
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 609
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    if-eqz v0, :cond_7

    .line 610
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->hasNext:Z

    return v0

    .line 609
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 623
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 603
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

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

    .line 614
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->hasNext:Z

    if-eqz v0, :cond_20

    .line 615
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    if-eqz v0, :cond_18

    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->nextIndex:I

    aget-object v0, v0, v1

    .line 617
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->currentIndex:I

    .line 618
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->findNextIndex()V

    .line 619
    return-object v0

    .line 615
    .end local v0  # "key":Ljava/lang/Object;, "TK;"
    :cond_18
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 603
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 603
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->reset()V

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

    .line 628
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

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

    .line 633
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    nop

    :goto_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->hasNext:Z

    if-eqz v0, :cond_d

    .line 634
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 635
    :cond_d
    return-object p1
.end method
