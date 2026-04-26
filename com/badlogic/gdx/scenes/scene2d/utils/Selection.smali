.class public Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.super Ljava/lang/Object;
.source "Selection.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field isDisabled:Z

.field lastSelected:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field multiple:Z

.field private final old:Lcom/badlogic/gdx/utils/OrderedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation
.end field

.field private programmaticChangeEvents:Z

.field required:Z

.field final selected:Lcom/badlogic/gdx/utils/OrderedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation
.end field

.field private toggle:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    .line 19
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

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

    .line 142
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_21

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 144
    :cond_b
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_20

    .line 147
    :cond_1b
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 148
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 150
    :goto_20
    return-void

    .line 142
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "item cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "items":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x0

    .line 154
    .local v0, "added":Z
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 155
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_7
    if-ge v1, v2, :cond_23

    .line 156
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 157
    .local v3, "item":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1b

    .line 158
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v0, 0x1

    .line 155
    .end local v3  # "item":Ljava/lang/Object;, "TT;"
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 157
    .restart local v3  # "item":Ljava/lang/Object;, "TT;"
    :cond_1b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "item cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    .end local v1  # "i":I
    .end local v2  # "n":I
    .end local v3  # "item":Ljava/lang/Object;, "TT;"
    :cond_23
    if-eqz v0, :cond_3c

    .line 161
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 162
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_3c

    .line 164
    :cond_33
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 165
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 168
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    .line 169
    return-void
.end method

.method protected changed()V
    .registers 1

    .line 216
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    return-void
.end method

.method public choose(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_8c

    .line 36
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled:Z

    if-eqz v0, :cond_7

    return-void

    .line 37
    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 39
    :try_start_a
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    const/4 v1, 0x1

    if-nez v0, :cond_15

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_15
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 40
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_87

    if-ne v0, v1, :cond_2b

    .line 58
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    .line 40
    return-void

    .line 41
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    goto :goto_75

    .line 44
    :cond_34
    const/4 v0, 0x0

    .line 45
    .local v0, "modified":Z
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->multiple:Z

    if-eqz v2, :cond_43

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    if-nez v2, :cond_65

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v2

    if-nez v2, :cond_65

    .line 46
    :cond_43
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-ne v2, v1, :cond_55

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4f
    .catchall {:try_start_2b .. :try_end_4f} :catchall_87

    if-eqz v2, :cond_55

    .line 58
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    .line 46
    return-void

    .line 47
    :cond_55
    :try_start_55
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v2, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    :goto_5d
    move v0, v1

    .line 48
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 50
    :cond_65
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_87

    if-nez v1, :cond_73

    if-nez v0, :cond_73

    .line 58
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    .line 50
    return-void

    .line 51
    :cond_73
    :try_start_73
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 53
    .end local v0  # "modified":Z
    :goto_75
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 54
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_82

    .line 56
    :cond_7f
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V
    :try_end_82
    .catchall {:try_start_73 .. :try_end_82} :catchall_87

    .line 58
    :goto_82
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    .line 59
    nop

    .line 60
    return-void

    .line 58
    :catchall_87
    move-exception v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    throw v0

    .line 35
    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "item cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method cleanup()V
    .registers 3

    .line 100
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 101
    return-void
.end method

.method public clear()V
    .registers 3

    .line 202
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_7

    return-void

    .line 203
    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 205
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 206
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_25

    .line 208
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 209
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 211
    :goto_25
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    .line 212
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 233
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fireChangeEvent()Z
    .registers 3

    .line 222
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 223
    :cond_6
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 225
    .local v0, "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    :try_start_e
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    .line 227
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 225
    return v1

    .line 227
    :catchall_18
    move-exception v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    throw v1
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_e

    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->first()Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public getLastSelected()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    return-object v0

    .line 241
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_14

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 244
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiple()Z
    .registers 2

    .line 278
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->multiple:Z

    return v0
.end method

.method public getRequired()Z
    .registers 2

    .line 287
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    return v0
.end method

.method public getToggle()Z
    .registers 2

    .line 269
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    return v0
.end method

.method public hasItems()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDisabled()Z
    .registers 2

    .line 265
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 73
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public items()Lcom/badlogic/gdx/utils/OrderedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 69
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_22

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 174
    :cond_b
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 177
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 178
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 180
    :goto_21
    return-void

    .line 172
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "item cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "items":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x0

    .line 184
    .local v0, "removed":Z
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_7
    if-ge v1, v2, :cond_23

    .line 186
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 187
    .local v3, "item":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1b

    .line 188
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v0, 0x1

    .line 185
    .end local v3  # "item":Ljava/lang/Object;, "TT;"
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 187
    .restart local v3  # "item":Ljava/lang/Object;, "TT;"
    :cond_1b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "item cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    .end local v1  # "i":I
    .end local v2  # "n":I
    .end local v3  # "item":Ljava/lang/Object;, "TT;"
    :cond_23
    if-eqz v0, :cond_39

    .line 191
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 192
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_39

    .line 194
    :cond_33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 195
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 198
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    .line 199
    return-void
.end method

.method revert()V
    .registers 3

    .line 95
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->addAll(Lcom/badlogic/gdx/utils/OrderedSet;)V

    .line 97
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_38

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->first()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_12

    return-void

    .line 107
    :cond_12
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    .line 110
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 111
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_34

    .line 113
    :cond_2f
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 116
    :goto_34
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    .line 117
    return-void

    .line 105
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "item cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 2
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 29
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 30
    return-void
.end method

.method public setAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "items":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x0

    .line 121
    .local v0, "added":Z
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_11
    if-ge v1, v2, :cond_2d

    .line 125
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 126
    .local v3, "item":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_25

    .line 127
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v0, 0x1

    .line 124
    .end local v3  # "item":Ljava/lang/Object;, "TT;"
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 126
    .restart local v3  # "item":Ljava/lang/Object;, "TT;"
    :cond_25
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "item cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    .end local v1  # "i":I
    .end local v2  # "n":I
    .end local v3  # "item":Ljava/lang/Object;, "TT;"
    :cond_2d
    if-eqz v0, :cond_4a

    .line 130
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 131
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_4a

    .line 132
    :cond_3d
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_4a

    .line 133
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 137
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    .line 138
    return-void
.end method

.method public setDisabled(Z)V
    .registers 2
    .param p1, "isDisabled"  # Z

    .line 261
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled:Z

    .line 262
    return-void
.end method

.method public setMultiple(Z)V
    .registers 2
    .param p1, "multiple"  # Z

    .line 283
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->multiple:Z

    .line 284
    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .registers 2
    .param p1, "programmaticChangeEvents"  # Z

    .line 297
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    .line 298
    return-void
.end method

.method public setRequired(Z)V
    .registers 2
    .param p1, "required"  # Z

    .line 292
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    .line 293
    return-void
.end method

.method public setToggle(Z)V
    .registers 2
    .param p1, "toggle"  # Z

    .line 274
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    .line 275
    return-void
.end method

.method public size()I
    .registers 2

    .line 77
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    return v0
.end method

.method snapshot()V
    .registers 3

    .line 90
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->addAll(Lcom/badlogic/gdx/utils/OrderedSet;)V

    .line 92
    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 252
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 256
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 301
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
