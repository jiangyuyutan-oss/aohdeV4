.class public Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;
.super Lcom/badlogic/gdx/utils/ObjectMap$Entries;
.source "OrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/OrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderedMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap$Entries<",
        "TK;TV;>;"
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
            "TK;TV;>;)V"
        }
    .end annotation

    .line 239
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 240
    iget-object v0, p1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 241
    return-void
.end method


# virtual methods
.method public next()Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    .registers 4

    .line 250
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries<TK;TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->hasNext:Z

    if-eqz v0, :cond_43

    .line 251
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->valid:Z

    if-eqz v0, :cond_3b

    .line 252
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->nextIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->currentIndex:I

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->entry:Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->nextIndex:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->entry:Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->entry:Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    .line 255
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->nextIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->nextIndex:I

    .line 256
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->nextIndex:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-ge v0, v2, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->hasNext:Z

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->entry:Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    return-object v0

    .line 251
    :cond_3b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_43
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 235
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->next()Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 261
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->currentIndex:I

    if-ltz v0, :cond_17

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->entry:Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->nextIndex:I

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->currentIndex:I

    .line 265
    return-void

    .line 261
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 3

    .line 244
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries<TK;TV;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->currentIndex:I

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->nextIndex:I

    .line 246
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-lez v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;->hasNext:Z

    .line 247
    return-void
.end method
