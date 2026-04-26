.class public Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "WidgetGroup.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;


# instance fields
.field private fillParent:Z

.field private layoutEnabled:Z

.field private needsLayout:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    .line 39
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layoutEnabled:Z

    .line 42
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5
    .param p1, "actors"  # [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 45
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    .line 39
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layoutEnabled:Z

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 47
    .local v2, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 46
    .end local v2  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 48
    :cond_14
    return-void
.end method

.method private setLayoutEnabled(Lcom/badlogic/gdx/scenes/scene2d/Group;Z)V
    .registers 8
    .param p1, "parent"  # Lcom/badlogic/gdx/scenes/scene2d/Group;
    .param p2, "enabled"  # Z

    .line 80
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v0

    .line 81
    .local v0, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v2, "n":I
    :goto_7
    if-ge v1, v2, :cond_27

    .line 82
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 83
    .local v3, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v4, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v4, :cond_1a

    .line 84
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v4, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->setLayoutEnabled(Z)V

    goto :goto_24

    .line 85
    :cond_1a
    instance-of v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v4, :cond_24

    .line 86
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0, v4, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setLayoutEnabled(Lcom/badlogic/gdx/scenes/scene2d/Group;Z)V

    .line 81
    .end local v3  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 88
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_27
    return-void
.end method


# virtual methods
.method protected childrenChanged()V
    .registers 1

    .line 143
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidateHierarchy()V

    .line 144
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 3
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 169
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    .line 170
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 171
    return-void
.end method

.method public getMaxHeight()F
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxWidth()F
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getMinHeight()F
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefWidth()F

    move-result v0

    return v0
.end method

.method public getPrefHeight()F
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefWidth()F
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .registers 2

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    .line 134
    return-void
.end method

.method public invalidateHierarchy()V
    .registers 3

    .line 137
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 138
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 139
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidateHierarchy()V

    .line 140
    :cond_11
    return-void
.end method

.method public layout()V
    .registers 1

    .line 164
    return-void
.end method

.method public needsLayout()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    return v0
.end method

.method public pack()V
    .registers 3

    .line 151
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setSize(FF)V

    .line 152
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    .line 155
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setSize(FF)V

    .line 156
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    .line 157
    return-void
.end method

.method public setFillParent(Z)V
    .registers 2
    .param p1, "fillParent"  # Z

    .line 160
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->fillParent:Z

    .line 161
    return-void
.end method

.method public setLayoutEnabled(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 75
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layoutEnabled:Z

    .line 76
    invoke-direct {p0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setLayoutEnabled(Lcom/badlogic/gdx/scenes/scene2d/Group;Z)V

    .line 77
    return-void
.end method

.method protected sizeChanged()V
    .registers 1

    .line 147
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 148
    return-void
.end method

.method public validate()V
    .registers 6

    .line 91
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layoutEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 93
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 94
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->fillParent:Z

    if-eqz v1, :cond_45

    if-eqz v0, :cond_45

    .line 96
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    .line 97
    .local v1, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    if-ne v0, v2, :cond_24

    .line 98
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    .line 99
    .local v2, "parentWidth":F
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    .local v3, "parentHeight":F
    goto :goto_2c

    .line 101
    .end local v2  # "parentWidth":F
    .end local v3  # "parentHeight":F
    :cond_24
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getWidth()F

    move-result v2

    .line 102
    .restart local v2  # "parentWidth":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getHeight()F

    move-result v3

    .line 104
    .restart local v3  # "parentHeight":F
    :goto_2c
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getWidth()F

    move-result v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_3c

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getHeight()F

    move-result v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_45

    .line 105
    :cond_3c
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setWidth(F)V

    .line 106
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setHeight(F)V

    .line 107
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 111
    .end local v1  # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .end local v2  # "parentWidth":F
    .end local v3  # "parentHeight":F
    :cond_45
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    if-nez v1, :cond_4a

    return-void

    .line 112
    :cond_4a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    .line 113
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layout()V

    .line 117
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    if-eqz v2, :cond_6a

    .line 118
    instance-of v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;

    if-eqz v2, :cond_59

    return-void

    .line 119
    :cond_59
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5a
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6a

    .line 120
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    .line 121
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layout()V

    .line 122
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    if-nez v3, :cond_67

    goto :goto_6a

    .line 119
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 125
    .end local v2  # "i":I
    :cond_6a
    :goto_6a
    return-void
.end method
