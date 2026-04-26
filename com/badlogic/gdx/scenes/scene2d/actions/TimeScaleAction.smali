.class public Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;
.source "TimeScaleAction.java"


# instance fields
.field private scale:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected delegate(F)Z
    .registers 4
    .param p1, "delta"  # F

    .line 25
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 26
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->scale:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    return v0
.end method

.method public getScale()F
    .registers 2

    .line 30
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->scale:F

    return v0
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "scale"  # F

    .line 34
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->scale:F

    .line 35
    return-void
.end method
