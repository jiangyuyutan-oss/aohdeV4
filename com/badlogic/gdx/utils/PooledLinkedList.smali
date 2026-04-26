.class public Lcom/badlogic/gdx/utils/PooledLinkedList;
.super Ljava/lang/Object;
.source "PooledLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<",
            "TT;>;"
        }
    .end annotation
.end field

.field private head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<",
            "TT;>;"
        }
    .end annotation
.end field

.field private iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private size:I

.field private tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "maxPoolSize"  # I

    .line 36
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList;, "Lcom/badlogic/gdx/utils/PooledLinkedList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/PooledLinkedList$1;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1, p1}, Lcom/badlogic/gdx/utils/PooledLinkedList$1;-><init>(Lcom/badlogic/gdx/utils/PooledLinkedList;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->pool:Lcom/badlogic/gdx/utils/Pool;

    .line 43
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList;, "Lcom/badlogic/gdx/utils/PooledLinkedList<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 48
    .local v0, "item":Lcom/badlogic/gdx/utils/PooledLinkedList$Item;, "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<TT;>;"
    iput-object p1, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->payload:Ljava/lang/Object;

    .line 49
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 50
    iput-object v1, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 52
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-nez v1, :cond_1e

    .line 53
    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 54
    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 55
    iget v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    .line 56
    return-void

    .line 59
    :cond_1e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v1, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 60
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v0, v1, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 61
    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 62
    iget v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    .line 63
    return-void
.end method

.method public addFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList;, "Lcom/badlogic/gdx/utils/PooledLinkedList<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 68
    .local v0, "item":Lcom/badlogic/gdx/utils/PooledLinkedList$Item;, "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<TT;>;"
    iput-object p1, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->payload:Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v1, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 70
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 72
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-eqz v1, :cond_1a

    .line 73
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v0, v1, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    goto :goto_1c

    .line 75
    :cond_1a
    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 78
    :goto_1c
    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 80
    iget v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    .line 81
    return-void
.end method

.method public clear()V
    .registers 3

    .line 181
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList;, "Lcom/badlogic/gdx/utils/PooledLinkedList<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter()V

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "v":Ljava/lang/Object;, "TT;"
    :goto_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/PooledLinkedList;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_f

    .line 184
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/PooledLinkedList;->remove()V

    goto :goto_4

    .line 185
    :cond_f
    return-void
.end method

.method public iter()V
    .registers 2

    .line 90
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList;, "Lcom/badlogic/gdx/utils/PooledLinkedList<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 91
    return-void
.end method

.method public iterReverse()V
    .registers 2

    .line 95
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList;, "Lcom/badlogic/gdx/utils/PooledLinkedList<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 96
    return-void
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList;, "Lcom/badlogic/gdx/utils/PooledLinkedList<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->payload:Ljava/lang/Object;

    .line 105
    .local v0, "payload":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 106
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 107
    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList;, "Lcom/badlogic/gdx/utils/PooledLinkedList<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->payload:Ljava/lang/Object;

    .line 117
    .local v0, "payload":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 118
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 119
    return-object v0
.end method

.method public remove()V
    .registers 6

    .line 124
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList;, "Lcom/badlogic/gdx/utils/PooledLinkedList<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-nez v0, :cond_5

    return-void

    .line 126
    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 129
    .local v0, "c":Lcom/badlogic/gdx/utils/PooledLinkedList$Item;, "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<TT;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 130
    .local v1, "n":Lcom/badlogic/gdx/utils/PooledLinkedList$Item;, "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<TT;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 131
    .local v2, "p":Lcom/badlogic/gdx/utils/PooledLinkedList$Item;, "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<TT;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 132
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 134
    iget v4, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    if-nez v4, :cond_28

    .line 135
    iput-object v3, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 136
    iput-object v3, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 137
    return-void

    .line 140
    :cond_28
    iget-object v4, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-ne v0, v4, :cond_31

    .line 141
    iput-object v3, v1, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 142
    iput-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 143
    return-void

    .line 146
    :cond_31
    iget-object v4, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-ne v0, v4, :cond_3a

    .line 147
    iput-object v3, v2, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 148
    iput-object v2, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 149
    return-void

    .line 152
    :cond_3a
    iput-object v1, v2, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 153
    iput-object v2, v1, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 154
    return-void
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList;, "Lcom/badlogic/gdx/utils/PooledLinkedList<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 159
    return-object v1

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->payload:Ljava/lang/Object;

    .line 164
    .local v0, "payload":Ljava/lang/Object;, "TT;"
    iget v2, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    .line 166
    iget-object v2, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 167
    .local v2, "p":Lcom/badlogic/gdx/utils/PooledLinkedList$Item;, "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<TT;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 169
    iget v3, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    if-nez v3, :cond_24

    .line 170
    iput-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 171
    iput-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    goto :goto_2a

    .line 173
    :cond_24
    iput-object v2, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 174
    iget-object v3, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v1, v3, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    .line 177
    :goto_2a
    return-object v0
.end method

.method public size()I
    .registers 2

    .line 85
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList;, "Lcom/badlogic/gdx/utils/PooledLinkedList<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    return v0
.end method
