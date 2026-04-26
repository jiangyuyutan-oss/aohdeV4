.class public Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;
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
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
        "TK;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 517
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectLongMap;, "Lcom/badlogic/gdx/utils/ObjectLongMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    .line 514
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    .line 518
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 533
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->valid:Z

    if-eqz v0, :cond_7

    .line 534
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->hasNext:Z

    return v0

    .line 533
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 538
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 513
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 522
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->hasNext:Z

    if-eqz v0, :cond_32

    .line 523
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->valid:Z

    if-eqz v0, :cond_2a

    .line 524
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 525
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->nextIndex:I

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->key:Ljava/lang/Object;

    .line 526
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->nextIndex:I

    aget-wide v3, v2, v3

    iput-wide v3, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->value:J

    .line 527
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->currentIndex:I

    .line 528
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->findNextIndex()V

    .line 529
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    return-object v1

    .line 523
    .end local v0  # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_2a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_32
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 513
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->next()Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 513
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 513
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->reset()V

    return-void
.end method
