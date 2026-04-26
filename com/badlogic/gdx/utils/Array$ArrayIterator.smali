.class public Lcom/badlogic/gdx/utils/Array$ArrayIterator;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final allowRemove:Z

.field private final array:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field index:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 627
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    .line 628
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;Z)V
    .registers 4
    .param p2, "allowRemove"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 630
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 631
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    .line 632
    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->allowRemove:Z

    .line 633
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 636
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    if-eqz v0, :cond_10

    .line 640
    iget v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 638
    :cond_10
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array$ArrayIterator<",
            "TT;>;"
        }
    .end annotation

    .line 663
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 618
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 644
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_21

    .line 645
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    if-eqz v0, :cond_19

    .line 649
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 647
    :cond_19
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_21
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 653
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->allowRemove:Z

    if-eqz v0, :cond_12

    .line 654
    iget v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    .line 655
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 656
    return-void

    .line 653
    :cond_12
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Remove not allowed."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    .line 659
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    .line 660
    return-void
.end method
