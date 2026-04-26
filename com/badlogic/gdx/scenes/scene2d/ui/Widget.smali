.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Widget.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;


# instance fields
.field private fillParent:Z

.field private layoutEnabled:Z

.field private needsLayout:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    .line 38
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 3
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 122
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    .line 123
    return-void
.end method

.method public getMaxHeight()F
    .registers 2

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxWidth()F
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getMinHeight()F
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefWidth()F

    move-result v0

    return v0
.end method

.method public getPrefHeight()F
    .registers 2

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefWidth()F
    .registers 2

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .registers 2

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    .line 98
    return-void
.end method

.method public invalidateHierarchy()V
    .registers 3

    .line 101
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 102
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    .line 103
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 104
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidateHierarchy()V

    .line 105
    :cond_16
    return-void
.end method

.method public layout()V
    .registers 1

    .line 126
    return-void
.end method

.method public needsLayout()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    return v0
.end method

.method public pack()V
    .registers 3

    .line 112
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setSize(FF)V

    .line 113
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    .line 114
    return-void
.end method

.method public setFillParent(Z)V
    .registers 2
    .param p1, "fillParent"  # Z

    .line 117
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->fillParent:Z

    .line 118
    return-void
.end method

.method public setLayoutEnabled(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 65
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    .line 66
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    .line 67
    :cond_7
    return-void
.end method

.method protected sizeChanged()V
    .registers 1

    .line 108
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    .line 109
    return-void
.end method

.method public validate()V
    .registers 5

    .line 70
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 73
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->fillParent:Z

    if-eqz v1, :cond_2f

    if-eqz v0, :cond_2f

    .line 75
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    .line 76
    .local v1, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    if-ne v0, v2, :cond_24

    .line 77
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    .line 78
    .local v2, "parentWidth":F
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    .local v3, "parentHeight":F
    goto :goto_2c

    .line 80
    .end local v2  # "parentWidth":F
    .end local v3  # "parentHeight":F
    :cond_24
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getWidth()F

    move-result v2

    .line 81
    .restart local v2  # "parentWidth":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getHeight()F

    move-result v3

    .line 83
    .restart local v3  # "parentHeight":F
    :goto_2c
    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setSize(FF)V

    .line 86
    .end local v1  # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .end local v2  # "parentWidth":F
    .end local v3  # "parentHeight":F
    :cond_2f
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    if-nez v1, :cond_34

    return-void

    .line 87
    :cond_34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    .line 88
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layout()V

    .line 89
    return-void
.end method
