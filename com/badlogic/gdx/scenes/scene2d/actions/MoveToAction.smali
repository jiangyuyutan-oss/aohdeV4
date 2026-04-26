.class public Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "MoveToAction.java"


# instance fields
.field private alignment:I

.field private endX:F

.field private endY:F

.field private startX:F

.field private startY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 26
    const/16 v0, 0xc

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    return-void
.end method


# virtual methods
.method protected begin()V
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startX:F

    .line 30
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startY:F

    .line 31
    return-void
.end method

.method public getAlignment()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    return v0
.end method

.method public getStartX()F
    .registers 2

    .line 87
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startX:F

    return v0
.end method

.method public getStartY()F
    .registers 2

    .line 92
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startY:F

    return v0
.end method

.method public getX()F
    .registers 2

    .line 70
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endX:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endY:F

    return v0
.end method

.method public reset()V
    .registers 2

    .line 49
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reset()V

    .line 50
    const/16 v0, 0xc

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    .line 51
    return-void
.end method

.method public setAlignment(I)V
    .registers 2
    .param p1, "alignment"  # I

    .line 100
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    .line 101
    return-void
.end method

.method public setPosition(FF)V
    .registers 3
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 59
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endX:F

    .line 60
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endY:F

    .line 61
    return-void
.end method

.method public setPosition(FFI)V
    .registers 4
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "alignment"  # I

    .line 64
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endX:F

    .line 65
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endY:F

    .line 66
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    .line 67
    return-void
.end method

.method public setStartPosition(FF)V
    .registers 3
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 54
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startX:F

    .line 55
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startY:F

    .line 56
    return-void
.end method

.method public setX(F)V
    .registers 2
    .param p1, "x"  # F

    .line 74
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endX:F

    .line 75
    return-void
.end method

.method public setY(F)V
    .registers 2
    .param p1, "y"  # F

    .line 82
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endY:F

    .line 83
    return-void
.end method

.method protected update(F)V
    .registers 6
    .param p1, "percent"  # F

    .line 35
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_a

    .line 36
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startX:F

    .line 37
    .local v0, "x":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startY:F

    .local v1, "y":F
    goto :goto_27

    .line 38
    .end local v0  # "x":F
    .end local v1  # "y":F
    :cond_a
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_15

    .line 39
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endX:F

    .line 40
    .restart local v0  # "x":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endY:F

    .restart local v1  # "y":F
    goto :goto_27

    .line 42
    .end local v0  # "x":F
    .end local v1  # "y":F
    :cond_15
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startX:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 43
    .restart local v0  # "x":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startY:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 45
    .restart local v1  # "y":F
    :goto_27
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FFI)V

    .line 46
    return-void
.end method
