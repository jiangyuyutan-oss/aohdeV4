.class public Lcom/badlogic/gdx/utils/SortedIntList;
.super Ljava/lang/Object;
.source "SortedIntList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/SortedIntList$NodePool;,
        Lcom/badlogic/gdx/utils/SortedIntList$Node;,
        Lcom/badlogic/gdx/utils/SortedIntList$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field first:Lcom/badlogic/gdx/utils/SortedIntList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient iterator:Lcom/badlogic/gdx/utils/SortedIntList$Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList<",
            "TE;>.Iterator;"
        }
    .end annotation
.end field

.field private nodePool:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList$NodePool<",
            "TE;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->nodePool:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    .line 31
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 91
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    nop

    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v0, :cond_13

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->nodePool:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->free(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    goto :goto_1

    .line 94
    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    .line 95
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    const/4 v0, 0x0

    .line 77
    .local v0, "match":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v1, :cond_18

    .line 78
    iget-object v1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 79
    .local v1, "c":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    :goto_7
    iget-object v2, v1, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v2, :cond_12

    iget v2, v1, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-ge v2, p1, :cond_12

    .line 80
    iget-object v1, v1, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    goto :goto_7

    .line 82
    :cond_12
    iget v2, v1, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-ne v2, p1, :cond_18

    .line 83
    iget-object v0, v1, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    .line 86
    .end local v1  # "c":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    :cond_18
    return-object v0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 42
    .local v0, "c":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    :goto_7
    iget-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget v2, v2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-gt v2, p1, :cond_14

    .line 43
    iget-object v0, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    goto :goto_7

    .line 46
    :cond_14
    iget v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-le p1, v2, :cond_37

    .line 47
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->nodePool:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    iget-object v3, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    invoke-virtual {v2, v0, v3, p2, p1}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->obtain(Lcom/badlogic/gdx/utils/SortedIntList$Node;Lcom/badlogic/gdx/utils/SortedIntList$Node;Ljava/lang/Object;I)Lcom/badlogic/gdx/utils/SortedIntList$Node;

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 48
    iget-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v2, :cond_30

    .line 49
    iget-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget-object v3, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object v3, v2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->p:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 51
    :cond_30
    iget v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    goto :goto_52

    .line 54
    :cond_37
    iget v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-ge p1, v2, :cond_50

    .line 55
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->nodePool:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    invoke-virtual {v2, v1, v3, p2, p1}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->obtain(Lcom/badlogic/gdx/utils/SortedIntList$Node;Lcom/badlogic/gdx/utils/SortedIntList$Node;Ljava/lang/Object;I)Lcom/badlogic/gdx/utils/SortedIntList$Node;

    move-result-object v2

    .line 56
    .local v2, "newFirst":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object v2, v3, Lcom/badlogic/gdx/utils/SortedIntList$Node;->p:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 57
    iput-object v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 58
    iget v3, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    .line 59
    .end local v2  # "newFirst":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    goto :goto_52

    .line 62
    :cond_50
    iput-object p2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    .line 64
    .end local v0  # "c":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    :goto_52
    goto :goto_61

    .line 65
    :cond_53
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->nodePool:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    invoke-virtual {v0, v1, v1, p2, p1}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->obtain(Lcom/badlogic/gdx/utils/SortedIntList$Node;Lcom/badlogic/gdx/utils/SortedIntList$Node;Ljava/lang/Object;I)Lcom/badlogic/gdx/utils/SortedIntList$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 66
    iget v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    .line 68
    :goto_61
    return-object v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 109
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;-><init>(Lcom/badlogic/gdx/utils/SortedIntList;)V

    return-object v0

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->iterator:Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    if-nez v0, :cond_15

    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;-><init>(Lcom/badlogic/gdx/utils/SortedIntList;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->iterator:Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    .line 119
    :cond_15
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->iterator:Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->reset()Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 104
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public size()I
    .registers 2

    .line 99
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    return v0
.end method
