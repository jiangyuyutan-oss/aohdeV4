.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.source "ArraySelection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private array:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field private rangeSelect:Z

.field private rangeStart:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


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

    .line 15
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    .line 16
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    .line 17
    return-void
.end method


# virtual methods
.method protected changed()V
    .registers 2

    .line 58
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public choose(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_7b

    .line 21
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->isDisabled:Z

    if-eqz v0, :cond_7

    return-void

    .line 23
    :cond_7
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->multiple:Z

    if-nez v0, :cond_11

    goto/16 :goto_77

    .line 28
    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_71

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_2d

    :cond_25
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 30
    .local v0, "rangeStartIndex":I
    :goto_2d
    if-eq v0, v1, :cond_71

    .line 31
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    .line 32
    .local v1, "oldRangeStart":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->snapshot()V

    .line 34
    move v3, v0

    .local v3, "start":I
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, p1, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v2

    .line 35
    .local v2, "end":I
    if-le v3, v2, :cond_40

    .line 36
    move v4, v2

    .line 37
    .local v4, "temp":I
    move v2, v3

    .line 38
    move v3, v4

    .line 40
    .end local v4  # "temp":I
    :cond_40
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v4

    if-nez v4, :cond_4d

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 41
    :cond_4d
    move v4, v3

    .local v4, "i":I
    :goto_4e
    if-gt v4, v2, :cond_5e

    .line 42
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 43
    .end local v4  # "i":I
    :cond_5e
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->fireChangeEvent()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->revert()V

    goto :goto_6b

    .line 46
    :cond_68
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->changed()V

    .line 47
    :goto_6b
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->cleanup()V

    .line 49
    return-void

    .line 52
    .end local v0  # "rangeStartIndex":I
    .end local v1  # "oldRangeStart":Ljava/lang/Object;, "TT;"
    .end local v2  # "end":I
    .end local v3  # "start":I
    :cond_71
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    .line 54
    return-void

    .line 24
    :cond_77
    :goto_77
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    .line 25
    return-void

    .line 20
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "item cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeSelect()Z
    .registers 2

    .line 62
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    return v0
.end method

.method public setRangeSelect(Z)V
    .registers 2
    .param p1, "rangeSelect"  # Z

    .line 66
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    .line 67
    return-void
.end method

.method public validate()V
    .registers 6

    .line 72
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    .line 73
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_a

    .line 74
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    .line 75
    return-void

    .line 77
    :cond_a
    const/4 v1, 0x0

    .line 78
    .local v1, "changed":Z
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 80
    .local v3, "selected":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_28

    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 82
    const/4 v1, 0x1

    .line 84
    .end local v3  # "selected":Ljava/lang/Object;, "TT;"
    :cond_28
    goto :goto_13

    .line 85
    .end local v2  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_29
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->required:Z

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v2, :cond_3b

    .line 86
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    goto :goto_40

    .line 87
    :cond_3b
    if-eqz v1, :cond_40

    .line 88
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->changed()V

    .line 89
    :cond_40
    :goto_40
    return-void
.end method
