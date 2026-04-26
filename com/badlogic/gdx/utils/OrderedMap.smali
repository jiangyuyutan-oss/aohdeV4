.class public Lcom/badlogic/gdx/utils/OrderedMap;
.super Lcom/badlogic/gdx/utils/ObjectMap;
.source "OrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;,
        Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;,
        Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final keys:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"  # I

    .line 54
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    .line 55
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 56
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"  # I
    .param p2, "loadFactor"  # F

    .line 62
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 69
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 70
    return-void
.end method


# virtual methods
.method public alter(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)Z"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    .local p1, "before":Ljava/lang/Object;, "TK;"
    .local p2, "after":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/OrderedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 114
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 115
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    return v1

    .line 116
    :cond_12
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0, p2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    .line 118
    const/4 v1, 0x1

    return v1
.end method

.method public alterIndex(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)Z"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    .local p2, "after":Ljava/lang/Object;, "TK;"
    if-ltz p1, :cond_21

    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    if-ge p1, v0, :cond_21

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/OrderedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_21

    .line 129
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p2, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    .line 131
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .registers 2

    .line 140
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 141
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 142
    return-void
.end method

.method public clear(I)V
    .registers 3
    .param p1, "maximumCapacity"  # I

    .line 135
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 136
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear(I)V

    .line 137
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    return-object v0

    .line 158
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    if-nez v0, :cond_1c

    .line 159
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    .line 160
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    .line 162
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->reset()V

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    return-object v0

    .line 168
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->reset()V

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    return-object v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 43
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    return-object v0

    .line 202
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    if-nez v0, :cond_1c

    .line 203
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    .line 204
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    .line 206
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->reset()V

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    return-object v0

    .line 212
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->reset()V

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    return-object v0
.end method

.method public orderedKeys()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 74
    .local v0, "i":I
    if-ltz v0, :cond_f

    .line 75
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 76
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 77
    return-object v1

    .line 79
    .end local v1  # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_f
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 80
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 81
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 83
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedMap;->threshold:I

    if-lt v1, v2, :cond_31

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/OrderedMap;->resize(I)V

    .line 84
    :cond_31
    const/4 v1, 0x0

    return-object v1
.end method

.method public putAll(Lcom/badlogic/gdx/utils/OrderedMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TK;>(",
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "TT;+TV;>;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TT;+TV;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/OrderedMap;->ensureCapacity(I)V

    .line 89
    iget-object v0, p1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 90
    .local v0, "keys":[Ljava/lang/Object;, "[TK;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_e
    if-ge v1, v2, :cond_1c

    .line 91
    aget-object v3, v0, v1

    .line 92
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v3  # "key":Ljava/lang/Object;, "TK;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 94
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_1c
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 98
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected toString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p1, "separator"  # Ljava/lang/String;
    .param p2, "braces"  # Z

    .line 219
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    if-nez v0, :cond_c

    if-eqz p2, :cond_9

    const-string v0, "{}"

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0

    .line 220
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 221
    .local v0, "buffer":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1a

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_1a
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 223
    .local v1, "keys":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_1f
    if-ge v2, v3, :cond_47

    .line 224
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 225
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-lez v2, :cond_2a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_2a
    const-string v5, "(this)"

    if-ne v4, p0, :cond_30

    move-object v6, v5

    goto :goto_31

    :cond_30
    move-object v6, v4

    :goto_31
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 229
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-ne v6, p0, :cond_40

    goto :goto_41

    :cond_40
    move-object v5, v6

    :goto_41
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .end local v4  # "key":Ljava/lang/Object;, "TK;"
    .end local v6  # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 231
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_47
    if-eqz p2, :cond_4e

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectMap$Values;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    return-object v0

    .line 180
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    if-nez v0, :cond_1c

    .line 181
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    .line 182
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    .line 184
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->reset()V

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    return-object v0

    .line 190
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->reset()V

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    return-object v0
.end method
