.class public Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;
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
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
        "TK;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 542
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    .line 539
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    .line 543
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 558
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    if-eqz v0, :cond_7

    .line 559
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->hasNext:Z

    return v0

    .line 558
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 563
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 538
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 547
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->hasNext:Z

    if-eqz v0, :cond_32

    .line 548
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    if-eqz v0, :cond_2a

    .line 549
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 550
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->nextIndex:I

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;->key:Ljava/lang/Object;

    .line 551
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->nextIndex:I

    aget v2, v2, v3

    iput v2, v1, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;->value:F

    .line 552
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->currentIndex:I

    .line 553
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->findNextIndex()V

    .line 554
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    return-object v1

    .line 548
    .end local v0  # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_2a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_32
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 538
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->next()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 538
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 538
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->reset()V

    return-void
.end method
