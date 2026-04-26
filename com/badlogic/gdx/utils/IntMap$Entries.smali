.class public Lcom/badlogic/gdx/utils/IntMap$Entries;
.super Lcom/badlogic/gdx/utils/IntMap$MapIterator;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/IntMap$MapIterator<",
        "TV;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntMap$Entry<",
        "TV;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/IntMap$Entry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final entry:Lcom/badlogic/gdx/utils/IntMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .registers 3
    .param p1, "map"  # Lcom/badlogic/gdx/utils/IntMap;

    .line 591
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    .line 588
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntMap$Entry;

    .line 592
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 612
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    if-eqz v0, :cond_7

    .line 613
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->hasNext:Z

    return v0

    .line 612
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;>;"
        }
    .end annotation

    .line 617
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/IntMap$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;"
        }
    .end annotation

    .line 596
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->hasNext:Z

    if-eqz v0, :cond_45

    .line 597
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    if-eqz v0, :cond_3d

    .line 598
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 599
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    .line 600
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntMap$Entry;

    const/4 v2, 0x0

    iput v2, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    .line 601
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    goto :goto_33

    .line 603
    :cond_1f
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->nextIndex:I

    aget v2, v0, v2

    iput v2, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    .line 604
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->nextIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    .line 606
    :goto_33
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->currentIndex:I

    .line 607
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->findNextIndex()V

    .line 608
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntMap$Entry;

    return-object v1

    .line 597
    .end local v0  # "keyTable":[I
    :cond_3d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_45
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 587
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->next()Lcom/badlogic/gdx/utils/IntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 587
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 587
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->reset()V

    return-void
.end method
