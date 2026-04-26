.class public Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;
.source "DelayAction.java"


# instance fields
.field private duration:F

.field private time:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .param p1, "duration"  # F

    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;-><init>()V

    .line 28
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->duration:F

    .line 29
    return-void
.end method


# virtual methods
.method protected delegate(F)Z
    .registers 4
    .param p1, "delta"  # F

    .line 32
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->duration:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    .line 33
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    .line 34
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->duration:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    const/4 v0, 0x0

    return v0

    .line 35
    :cond_17
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->duration:F

    sub-float p1, v0, v1

    .line 37
    :cond_1d
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-nez v0, :cond_23

    const/4 v0, 0x1

    return v0

    .line 38
    :cond_23
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .registers 2

    .line 43
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->duration:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    .line 44
    return-void
.end method

.method public getDuration()F
    .registers 2

    .line 62
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->duration:F

    return v0
.end method

.method public getTime()F
    .registers 2

    .line 53
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    return v0
.end method

.method public restart()V
    .registers 2

    .line 47
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->restart()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    .line 49
    return-void
.end method

.method public setDuration(F)V
    .registers 2
    .param p1, "duration"  # F

    .line 67
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->duration:F

    .line 68
    return-void
.end method

.method public setTime(F)V
    .registers 2
    .param p1, "time"  # F

    .line 58
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    .line 59
    return-void
.end method
