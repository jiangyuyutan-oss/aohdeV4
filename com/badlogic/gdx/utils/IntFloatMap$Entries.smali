.class public Lcom/badlogic/gdx/utils/IntFloatMap$Entries;
.super Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;
.source "IntFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntFloatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
        ">;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .registers 3
    .param p1, "map"  # Lcom/badlogic/gdx/utils/IntFloatMap;

    .line 598
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    .line 595
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    .line 599
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 619
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    if-eqz v0, :cond_7

    .line 620
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->hasNext:Z

    return v0

    .line 619
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
            "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
            ">;"
        }
    .end annotation

    .line 624
    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/IntFloatMap$Entry;
    .registers 5

    .line 603
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->hasNext:Z

    if-eqz v0, :cond_45

    .line 604
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    if-eqz v0, :cond_3d

    .line 605
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 606
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    .line 607
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    const/4 v2, 0x0

    iput v2, v1, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->key:I

    .line 608
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iput v2, v1, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->value:F

    goto :goto_33

    .line 610
    :cond_1f
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->nextIndex:I

    aget v2, v0, v2

    iput v2, v1, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->key:I

    .line 611
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->nextIndex:I

    aget v2, v2, v3

    iput v2, v1, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->value:F

    .line 613
    :goto_33
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->currentIndex:I

    .line 614
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->findNextIndex()V

    .line 615
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    return-object v1

    .line 604
    .end local v0  # "keyTable":[I
    :cond_3d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_45
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->next()Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 1

    .line 628
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->remove()V

    .line 629
    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 594
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->reset()V

    return-void
.end method
