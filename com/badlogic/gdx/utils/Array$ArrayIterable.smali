.class public Lcom/badlogic/gdx/utils/Array$ArrayIterable;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
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

.field private iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

.field private iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;


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

    .line 675
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterable;, "Lcom/badlogic/gdx/utils/Array$ArrayIterable<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Array$ArrayIterable;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    .line 676
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;Z)V
    .registers 3
    .param p2, "allowRemove"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 678
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterable;, "Lcom/badlogic/gdx/utils/Array$ArrayIterable<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->array:Lcom/badlogic/gdx/utils/Array;

    .line 680
    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->allowRemove:Z

    .line 681
    return-void
.end method


# virtual methods
.method public iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array$ArrayIterator<",
            "TT;>;"
        }
    .end annotation

    .line 685
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterable;, "Lcom/badlogic/gdx/utils/Array$ArrayIterable<TT;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_e

    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->array:Lcom/badlogic/gdx/utils/Array;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->allowRemove:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    return-object v0

    .line 688
    :cond_e
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    if-nez v0, :cond_28

    .line 689
    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->array:Lcom/badlogic/gdx/utils/Array;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->allowRemove:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    .line 690
    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->array:Lcom/badlogic/gdx/utils/Array;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->allowRemove:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    .line 694
    :cond_28
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3f

    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput v2, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    .line 696
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 697
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 698
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    return-object v0

    .line 700
    :cond_3f
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput v2, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    .line 701
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 702
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 703
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 667
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterable;, "Lcom/badlogic/gdx/utils/Array$ArrayIterable<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    return-object v0
.end method
