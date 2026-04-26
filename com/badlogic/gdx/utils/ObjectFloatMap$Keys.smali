.class public Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;
.super Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;
.source "ObjectFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectFloatMap;
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
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "TK;>;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 608
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    .line 609
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 612
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    if-eqz v0, :cond_7

    .line 613
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->hasNext:Z

    return v0

    .line 612
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 626
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 606
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

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

    .line 617
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->hasNext:Z

    if-eqz v0, :cond_20

    .line 618
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    if-eqz v0, :cond_18

    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->nextIndex:I

    aget-object v0, v0, v1

    .line 620
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->currentIndex:I

    .line 621
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->findNextIndex()V

    .line 622
    return-object v0

    .line 618
    .end local v0  # "key":Ljava/lang/Object;, "TK;"
    :cond_18
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 606
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 606
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->reset()V

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

    .line 631
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

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

    .line 636
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    nop

    :goto_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->hasNext:Z

    if-eqz v0, :cond_d

    .line 637
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 638
    :cond_d
    return-object p1
.end method
