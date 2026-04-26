.class public Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "AlphaAction.java"


# instance fields
.field private color:Lcom/badlogic/gdx/graphics/Color;

.field private end:F

.field private start:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 32
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->start:F

    .line 33
    return-void
.end method

.method public getAlpha()F
    .registers 2

    .line 60
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->end:F

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 45
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reset()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 47
    return-void
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "alpha"  # F

    .line 64
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->end:F

    .line 65
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 2
    .param p1, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 56
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 57
    return-void
.end method

.method protected update(F)V
    .registers 6
    .param p1, "percent"  # F

    .line 36
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_c

    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->start:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_26

    .line 38
    :cond_c
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_19

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->end:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_26

    .line 41
    :cond_19
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->start:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->end:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->start:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 42
    :goto_26
    return-void
.end method
