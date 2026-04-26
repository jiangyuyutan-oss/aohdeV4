.class public Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;
.super Lcom/badlogic/gdx/utils/ObjectMap$Keys;
.source "OrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/OrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderedMapKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap$Keys<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private keys:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 272
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;*>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 273
    iget-object v0, p1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 274
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

    .line 283
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->hasNext:Z

    if-eqz v0, :cond_2f

    .line 284
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->valid:Z

    if-eqz v0, :cond_27

    .line 285
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->currentIndex:I

    .line 287
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    .line 288
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-ge v1, v3, :cond_23

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->hasNext:Z

    .line 289
    return-object v0

    .line 284
    .end local v0  # "key":Ljava/lang/Object;, "TK;"
    :cond_27
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_2f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 293
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->currentIndex:I

    if-ltz v0, :cond_15

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    check-cast v0, Lcom/badlogic/gdx/utils/OrderedMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedMap;->removeIndex(I)Ljava/lang/Object;

    .line 295
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->currentIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    .line 296
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->currentIndex:I

    .line 297
    return-void

    .line 293
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 3

    .line 277
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->currentIndex:I

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    .line 279
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-lez v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->hasNext:Z

    .line 280
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

    .line 307
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

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

    .line 300
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;II)V

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->hasNext:Z

    .line 303
    return-object p1
.end method
