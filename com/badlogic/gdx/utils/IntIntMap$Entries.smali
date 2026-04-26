.class public Lcom/badlogic/gdx/utils/IntIntMap$Entries;
.super Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;
.source "IntIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
        ">;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .registers 3
    .param p1, "map"  # Lcom/badlogic/gdx/utils/IntIntMap;

    .line 572
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    .line 569
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    .line 573
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 593
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    if-eqz v0, :cond_7

    .line 594
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->hasNext:Z

    return v0

    .line 593
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
            "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
            ">;"
        }
    .end annotation

    .line 598
    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    .registers 5

    .line 577
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->hasNext:Z

    if-eqz v0, :cond_45

    .line 578
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    if-eqz v0, :cond_3d

    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 580
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    .line 581
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    const/4 v2, 0x0

    iput v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    .line 582
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    iput v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    goto :goto_33

    .line 584
    :cond_1f
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->nextIndex:I

    aget v2, v0, v2

    iput v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    .line 585
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->nextIndex:I

    aget v2, v2, v3

    iput v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    .line 587
    :goto_33
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->currentIndex:I

    .line 588
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->findNextIndex()V

    .line 589
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    return-object v1

    .line 578
    .end local v0  # "keyTable":[I
    :cond_3d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_45
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->next()Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 568
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 568
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->reset()V

    return-void
.end method
