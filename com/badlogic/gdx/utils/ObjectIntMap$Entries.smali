.class public Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;
.super Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;
.source "ObjectIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectIntMap;
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
        "Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<",
        "TK;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field entry:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 517
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    .line 514
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    .line 518
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 533
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    if-eqz v0, :cond_7

    .line 534
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->hasNext:Z

    return v0

    .line 533
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 538
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 513
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 522
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->hasNext:Z

    if-eqz v0, :cond_32

    .line 523
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    if-eqz v0, :cond_2a

    .line 524
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 525
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->nextIndex:I

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->key:Ljava/lang/Object;

    .line 526
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->nextIndex:I

    aget v2, v2, v3

    iput v2, v1, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->value:I

    .line 527
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->currentIndex:I

    .line 528
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->findNextIndex()V

    .line 529
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

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
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->next()Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 513
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 513
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->reset()V

    return-void
.end method
