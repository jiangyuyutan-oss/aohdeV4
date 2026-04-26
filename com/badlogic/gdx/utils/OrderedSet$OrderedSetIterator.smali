.class public Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;
.super Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
.source "OrderedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/OrderedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderedSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TK;>;)V"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;, "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator<TK;>;"
    .local p1, "set":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    .line 187
    iget-object v0, p1, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->items:Lcom/badlogic/gdx/utils/Array;

    .line 188
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;, "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->hasNext:Z

    if-eqz v0, :cond_2b

    .line 197
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    if-eqz v0, :cond_23

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    .line 200
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-ge v1, v3, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->hasNext:Z

    .line 201
    return-object v0

    .line 197
    .end local v0  # "key":Ljava/lang/Object;, "TK;"
    :cond_23
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 205
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;, "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    if-ltz v0, :cond_14

    .line 206
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    check-cast v0, Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->removeIndex(I)Ljava/lang/Object;

    .line 208
    return-void

    .line 205
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 3

    .line 191
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;, "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator<TK;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    .line 192
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->hasNext:Z

    .line 193
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

    .line 218
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;, "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;, "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator<TK;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;II)V

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->hasNext:Z

    .line 214
    return-object p1
.end method
