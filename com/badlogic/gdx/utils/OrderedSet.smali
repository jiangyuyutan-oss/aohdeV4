.class public Lcom/badlogic/gdx/utils/OrderedSet;
.super Lcom/badlogic/gdx/utils/ObjectSet;
.source "OrderedSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field transient iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

.field transient iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"  # I

    .line 57
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(I)V

    .line 58
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    .line 59
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"  # I
    .param p2, "loadFactor"  # F

    .line 52
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    .line 53
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "+TT;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    .local p1, "set":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<+TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    .line 64
    return-void
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/OrderedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation

    .line 223
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedSet;-><init>()V

    .line 224
    .local v0, "set":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/OrderedSet;->addAll([Ljava/lang/Object;)Z

    .line 225
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public add(Ljava/lang/Object;I)Z
    .registers 6
    .param p2, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 77
    .local v0, "oldIndex":I
    if-eq v0, p2, :cond_1a

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 78
    :cond_1a
    const/4 v1, 0x0

    return v1

    .line 80
    .end local v0  # "oldIndex":I
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 81
    return v1
.end method

.method public addAll(Lcom/badlogic/gdx/utils/OrderedSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    .local p1, "set":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/OrderedSet;->ensureCapacity(I)V

    .line 86
    iget-object v0, p1, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 87
    .local v0, "keys":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p1, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_e
    if-ge v1, v2, :cond_18

    .line 88
    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 89
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_18
    return-void
.end method

.method public alter(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    .local p1, "before":Ljava/lang/Object;, "TT;"
    .local p2, "after":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 112
    :cond_8
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 113
    :cond_f
    invoke-super {p0, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p1, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public alterIndex(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    .local p2, "after":Ljava/lang/Object;, "TT;"
    if-ltz p1, :cond_20

    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-ge p1, v0, :cond_20

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_20

    .line 126
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    .line 127
    invoke-super {p0, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    .line 129
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .registers 2

    .line 138
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 139
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    .line 140
    return-void
.end method

.method public clear(I)V
    .registers 3
    .param p1, "maximumCapacity"  # I

    .line 133
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 134
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->clear(I)V

    .line 135
    return-void
.end method

.method public bridge synthetic iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    .registers 2

    .line 43
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator<",
            "TT;>;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;-><init>(Lcom/badlogic/gdx/utils/OrderedSet;)V

    return-object v0

    .line 148
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    if-nez v0, :cond_1c

    .line 149
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;-><init>(Lcom/badlogic/gdx/utils/OrderedSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    .line 150
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;-><init>(Lcom/badlogic/gdx/utils/OrderedSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    .line 152
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->reset()V

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    return-object v0

    .line 158
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->reset()V

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 43
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public orderedItems()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 93
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, "key":Ljava/lang/Object;, "TT;"
    invoke-super {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    .line 100
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 165
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_7

    const-string v0, "{}"

    return-object v0

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 167
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1e
    iget v3, p0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-ge v2, v3, :cond_2f

    .line 171
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 174
    .end local v2  # "i":I
    :cond_2f
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "separator"  # Ljava/lang/String;

    .line 179
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
