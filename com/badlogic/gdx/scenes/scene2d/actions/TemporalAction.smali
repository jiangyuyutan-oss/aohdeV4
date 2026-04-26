.class public abstract Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "TemporalAction.java"


# instance fields
.field private began:Z

.field private complete:Z

.field private duration:F

.field private interpolation:Lcom/badlogic/gdx/math/Interpolation;

.field private reverse:Z

.field private time:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .param p1, "duration"  # F

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 35
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    .line 36
    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/math/Interpolation;)V
    .registers 3
    .param p1, "duration"  # F
    .param p2, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 39
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    .line 40
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 41
    return-void
.end method


# virtual methods
.method public act(F)Z
    .registers 6
    .param p1, "delta"  # F

    .line 44
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 45
    :cond_6
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->getPool()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    .line 46
    .local v0, "pool":Lcom/badlogic/gdx/utils/Pool;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    .line 48
    :try_start_e
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->began:Z

    if-nez v2, :cond_17

    .line 49
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->begin()V

    .line 50
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->began:Z

    .line 52
    :cond_17
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    .line 53
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    .line 54
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_30

    move v1, v2

    goto :goto_35

    :cond_30
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    div-float/2addr v1, v3

    .line 55
    .local v1, "percent":F
    :goto_35
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v3

    move v1, v3

    .line 56
    :cond_40
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reverse:Z

    if-eqz v3, :cond_46

    sub-float/2addr v2, v1

    goto :goto_47

    :cond_46
    move v2, v1

    :goto_47
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->update(F)V

    .line 57
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    if-eqz v2, :cond_51

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->end()V

    .line 58
    :cond_51
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z
    :try_end_53
    .catchall {:try_start_e .. :try_end_53} :catchall_57

    .line 60
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    .line 58
    return v2

    .line 60
    .end local v1  # "percent":F
    :catchall_57
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    throw v1
.end method

.method protected begin()V
    .registers 1

    .line 67
    return-void
.end method

.method protected end()V
    .registers 1

    .line 71
    return-void
.end method

.method public finish()V
    .registers 2

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    .line 81
    return-void
.end method

.method public getDuration()F
    .registers 2

    .line 106
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    return v0
.end method

.method public getInterpolation()Lcom/badlogic/gdx/math/Interpolation;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    return-object v0
.end method

.method public getTime()F
    .registers 2

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    return v0
.end method

.method public isComplete()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    return v0
.end method

.method public isReverse()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reverse:Z

    return v0
.end method

.method public reset()V
    .registers 2

    .line 90
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reverse:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 93
    return-void
.end method

.method public restart()V
    .registers 2

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->began:Z

    .line 86
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    .line 87
    return-void
.end method

.method public setDuration(F)V
    .registers 2
    .param p1, "duration"  # F

    .line 111
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    .line 112
    return-void
.end method

.method public setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .registers 2
    .param p1, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 119
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 120
    return-void
.end method

.method public setReverse(Z)V
    .registers 2
    .param p1, "reverse"  # Z

    .line 128
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reverse:Z

    .line 129
    return-void
.end method

.method public setTime(F)V
    .registers 2
    .param p1, "time"  # F

    .line 102
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    .line 103
    return-void
.end method

.method protected abstract update(F)V
.end method
