.class public Lcom/badlogic/gdx/utils/DelayedRemovalArray;
.super Lcom/badlogic/gdx/utils/Array;
.source "DelayedRemovalArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/Array<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private clear:I

.field private iterating:I

.field private remove:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "capacity"  # I

    .line 62
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .registers 4
    .param p1, "array"  # Lcom/badlogic/gdx/utils/Array;

    .line 42
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .param p1, "arrayType"  # Ljava/lang/Class;

    .line 58
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 59
    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 5
    .param p1, "ordered"  # Z
    .param p2, "capacity"  # I

    .line 50
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 51
    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .registers 6
    .param p1, "ordered"  # Z
    .param p2, "capacity"  # I
    .param p3, "arrayType"  # Ljava/lang/Class;

    .line 46
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 47
    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/Object;II)V
    .registers 7
    .param p1, "ordered"  # Z
    .param p3, "startIndex"  # I
    .param p4, "count"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TT;II)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;II)V

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 55
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 67
    return-void
.end method

.method private remove(I)V
    .registers 6
    .param p1, "index"  # I

    .line 93
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear:I

    if-ge p1, v0, :cond_5

    return-void

    .line 94
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v1, "n":I
    :goto_a
    if-ge v0, v1, :cond_20

    .line 95
    iget-object v2, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    .line 96
    .local v2, "removeIndex":I
    if-ne p1, v2, :cond_15

    return-void

    .line 97
    :cond_15
    if-ge p1, v2, :cond_1d

    .line 98
    iget-object v3, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->insert(II)V

    .line 99
    return-void

    .line 94
    .end local v2  # "removeIndex":I
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 102
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_20
    iget-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 103
    return-void
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "TT;>;"
        }
    .end annotation

    .line 196
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public begin()V
    .registers 2

    .line 70
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    .line 71
    return-void
.end method

.method public clear()V
    .registers 2

    .line 132
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_9

    .line 133
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear:I

    .line 134
    return-void

    .line 136
    :cond_9
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 137
    return-void
.end method

.method public end()V
    .registers 5

    .line 74
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-eqz v0, :cond_48

    .line 75
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-nez v0, :cond_47

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear:I

    if-lez v0, :cond_21

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear:I

    iget v1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->size:I

    if-ne v0, v1, :cond_21

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 79
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    goto :goto_44

    .line 81
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v1, "n":I
    :goto_26
    if-ge v0, v1, :cond_38

    .line 82
    iget-object v2, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v2

    .line 83
    .local v2, "index":I
    iget v3, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear:I

    if-lt v2, v3, :cond_35

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    .line 81
    .end local v2  # "index":I
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 85
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_38
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0  # "i":I
    :goto_3c
    if-ltz v0, :cond_44

    .line 86
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    .line 85
    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    .line 88
    .end local v0  # "i":I
    :cond_44
    :goto_44
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear:I

    .line 90
    :cond_47
    return-void

    .line 74
    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "begin must be called before end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_8

    .line 146
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 147
    return-void

    .line 145
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertRange(II)V
    .registers 5
    .param p1, "index"  # I
    .param p2, "count"  # I

    .line 150
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_8

    .line 151
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insertRange(II)V

    .line 152
    return-void

    .line 150
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_9

    .line 161
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 160
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_c

    .line 117
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove(I)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 120
    :cond_c
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeRange(II)V
    .registers 4
    .param p1, "start"  # I
    .param p2, "end"  # I

    .line 124
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_e

    .line 125
    move v0, p2

    .local v0, "i":I
    :goto_5
    if-lt v0, p1, :cond_d

    .line 126
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove(I)V

    .line 125
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .end local v0  # "i":I
    :cond_d
    goto :goto_11

    .line 128
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    .line 129
    :goto_11
    return-void
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .registers 5
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_12

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 108
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v1, 0x0

    return v1

    .line 109
    :cond_d
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove(I)V

    .line 110
    const/4 v1, 0x1

    return v1

    .line 112
    .end local v0  # "index":I
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public reverse()V
    .registers 3

    .line 175
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_8

    .line 176
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->reverse()V

    .line 177
    return-void

    .line 175
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_8

    .line 141
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    .line 142
    return-void

    .line 140
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSize(I)[Ljava/lang/Object;
    .registers 4
    .param p1, "newSize"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_9

    .line 191
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->setSize(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 190
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shuffle()V
    .registers 3

    .line 180
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_8

    .line 181
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->shuffle()V

    .line 182
    return-void

    .line 180
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sort()V
    .registers 3

    .line 165
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_8

    .line 166
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->sort()V

    .line 167
    return-void

    .line 165
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_8

    .line 171
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 172
    return-void

    .line 170
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public swap(II)V
    .registers 5
    .param p1, "first"  # I
    .param p2, "second"  # I

    .line 155
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_8

    .line 156
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    .line 157
    return-void

    .line 155
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public truncate(I)V
    .registers 4
    .param p1, "newSize"  # I

    .line 185
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_8

    .line 186
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 187
    return-void

    .line 185
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
