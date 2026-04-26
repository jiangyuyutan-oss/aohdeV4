.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "RotateToAction.java"


# instance fields
.field private end:F

.field private start:F

.field private useShortestDirection:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "useShortestDirection"  # Z

    .line 41
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    .line 42
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    .line 43
    return-void
.end method


# virtual methods
.method protected begin()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    .line 47
    return-void
.end method

.method public getRotation()F
    .registers 2

    .line 63
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    return v0
.end method

.method public isUseShortestDirection()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    return v0
.end method

.method public setRotation(F)V
    .registers 2
    .param p1, "rotation"  # F

    .line 67
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    .line 68
    return-void
.end method

.method public setUseShortestDirection(Z)V
    .registers 2
    .param p1, "useShortestDirection"  # Z

    .line 75
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    .line 76
    return-void
.end method

.method protected update(F)V
    .registers 5
    .param p1, "percent"  # F

    .line 51
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    .line 52
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    .local v0, "rotation":F
    goto :goto_27

    .line 53
    .end local v0  # "rotation":F
    :cond_8
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    .restart local v0  # "rotation":F
    goto :goto_27

    .line 55
    .end local v0  # "rotation":F
    :cond_11
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    if-eqz v0, :cond_1e

    .line 56
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/math/MathUtils;->lerpAngleDeg(FFF)F

    move-result v0

    .restart local v0  # "rotation":F
    goto :goto_27

    .line 58
    .end local v0  # "rotation":F
    :cond_1e
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 59
    .restart local v0  # "rotation":F
    :goto_27
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setRotation(F)V

    .line 60
    return-void
.end method
