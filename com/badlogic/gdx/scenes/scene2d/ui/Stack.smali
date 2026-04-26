.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Stack.java"


# instance fields
.field private maxHeight:F

.field private maxWidth:F

.field private minHeight:F

.field private minWidth:F

.field private prefHeight:F

.field private prefWidth:F

.field private sizeInvalid:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->setTransform(Z)V

    .line 47
    const/high16 v0, 0x43160000  # 150.0f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->setWidth(F)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->setHeight(F)V

    .line 49
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 50
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5
    .param p1, "actors"  # [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 53
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    .line 54
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v2, p1, v1

    .line 55
    .local v2, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 54
    .end local v2  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 56
    :cond_f
    return-void
.end method

.method private computeSize()V
    .registers 9

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    .line 66
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    .line 67
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    .line 68
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    .line 69
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    .line 70
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    .line 71
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    .line 72
    .local v1, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v3, "n":I
    :goto_17
    if-ge v2, v3, :cond_bd

    .line 73
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 75
    .local v4, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v5, :cond_5f

    .line 76
    move-object v5, v4

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 77
    .local v5, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    .line 78
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    .line 79
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    .line 80
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    .line 81
    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v6

    .line 82
    .local v6, "childMaxWidth":F
    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxHeight()F

    move-result v5

    .line 83
    .local v5, "childMaxHeight":F
    goto :goto_91

    .line 84
    .end local v5  # "childMaxHeight":F
    .end local v6  # "childMaxWidth":F
    :cond_5f
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    .line 85
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    .line 86
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    .line 87
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    .line 88
    const/4 v6, 0x0

    .line 89
    .restart local v6  # "childMaxWidth":F
    const/4 v5, 0x0

    .line 91
    .restart local v5  # "childMaxHeight":F
    :goto_91
    cmpl-float v7, v6, v0

    if-lez v7, :cond_a5

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    cmpl-float v7, v7, v0

    if-nez v7, :cond_9d

    move v7, v6

    goto :goto_a3

    :cond_9d
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :goto_a3
    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    .line 92
    :cond_a5
    cmpl-float v7, v5, v0

    if-lez v7, :cond_b9

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    cmpl-float v7, v7, v0

    if-nez v7, :cond_b1

    move v7, v5

    goto :goto_b7

    :cond_b1
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :goto_b7
    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    .line 72
    .end local v4  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v5  # "childMaxHeight":F
    .end local v6  # "childMaxWidth":F
    :cond_b9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_17

    .line 94
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_bd
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 2
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 97
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 98
    return-void
.end method

.method public getMaxHeight()F
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 138
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    return v0
.end method

.method public getMaxWidth()F
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 133
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    return v0
.end method

.method public getMinHeight()F
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 128
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    return v0
.end method

.method public getMinWidth()F
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 123
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    return v0
.end method

.method public getPrefHeight()F
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 118
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .registers 2

    .line 112
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 113
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    return v0
.end method

.method public invalidate()V
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    .line 61
    return-void
.end method

.method public layout()V
    .registers 8

    .line 101
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 102
    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->getWidth()F

    move-result v0

    .local v0, "width":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->getHeight()F

    move-result v1

    .line 103
    .local v1, "height":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    .line 104
    .local v2, "children":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_16
    if-ge v3, v4, :cond_2f

    .line 105
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 106
    .local v5, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 107
    instance-of v6, v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v6, :cond_2c

    move-object v6, v5

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 104
    .end local v5  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 109
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_2f
    return-void
.end method
