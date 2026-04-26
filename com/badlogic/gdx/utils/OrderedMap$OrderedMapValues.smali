.class public Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;
.super Lcom/badlogic/gdx/utils/ObjectMap$Values;
.source "OrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/OrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderedMapValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap$Values<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private keys:Lcom/badlogic/gdx/utils/Array;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "*TV;>;)V"
        }
    .end annotation

    .line 315
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<*TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 316
    iget-object v0, p1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 317
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->hasNext:Z

    if-eqz v0, :cond_35

    .line 327
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->valid:Z

    if-eqz v0, :cond_2d

    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->currentIndex:I

    .line 330
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    .line 331
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-ge v1, v3, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->hasNext:Z

    .line 332
    return-object v0

    .line 327
    .end local v0  # "value":Ljava/lang/Object;, "TV;"
    :cond_2d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_35
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 336
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->currentIndex:I

    if-ltz v0, :cond_15

    .line 337
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    check-cast v0, Lcom/badlogic/gdx/utils/OrderedMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedMap;->removeIndex(I)Ljava/lang/Object;

    .line 338
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->currentIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    .line 339
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->currentIndex:I

    .line 340
    return-void

    .line 336
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 3

    .line 320
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues<TV;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->currentIndex:I

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    .line 322
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-lez v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->hasNext:Z

    .line 323
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

    .line 355
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues<TV;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues<TV;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 344
    .local v0, "n":I
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 345
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->keys:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 346
    .local v1, "keys":[Ljava/lang/Object;
    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_21

    .line 347
    iget-object v3, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 348
    .end local v2  # "i":I
    :cond_21
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->currentIndex:I

    .line 349
    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    .line 350
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->hasNext:Z

    .line 351
    return-object p1
.end method
