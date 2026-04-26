.class public Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "DragListener.java"


# instance fields
.field private button:I

.field private dragLastX:F

.field private dragLastY:F

.field private dragStartX:F

.field private dragStartY:F

.field private dragX:F

.field private dragY:F

.field private dragging:Z

.field private pressedPointer:I

.field private stageTouchDownX:F

.field private stageTouchDownY:F

.field private tapSquareSize:F

.field private touchDownX:F

.field private touchDownY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    .line 29
    const/high16 v0, 0x41600000  # 14.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->tapSquareSize:F

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->stageTouchDownX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->stageTouchDownY:F

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->pressedPointer:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragging:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->pressedPointer:I

    .line 85
    return-void
.end method

.method public drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 5
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 76
    return-void
.end method

.method public dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 5
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 73
    return-void
.end method

.method public dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 5
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 79
    return-void
.end method

.method public getButton()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->button:I

    return v0
.end method

.method public getDeltaX()F
    .registers 3

    .line 147
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragLastX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getDeltaY()F
    .registers 3

    .line 152
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragLastY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getDragDistance()F
    .registers 4

    .line 142
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStartX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragY:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStartY:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->len(FF)F

    move-result v0

    return v0
.end method

.method public getDragStartX()F
    .registers 2

    .line 117
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStartX:F

    return v0
.end method

.method public getDragStartY()F
    .registers 2

    .line 125
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStartY:F

    return v0
.end method

.method public getDragX()F
    .registers 2

    .line 133
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragX:F

    return v0
.end method

.method public getDragY()F
    .registers 2

    .line 137
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragY:F

    return v0
.end method

.method public getStageTouchDownX()F
    .registers 2

    .line 109
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->stageTouchDownX:F

    return v0
.end method

.method public getStageTouchDownY()F
    .registers 2

    .line 113
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->stageTouchDownY:F

    return v0
.end method

.method public getTapSquareSize()F
    .registers 2

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->tapSquareSize:F

    return v0
.end method

.method public getTouchDownX()F
    .registers 2

    .line 101
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownX:F

    return v0
.end method

.method public getTouchDownY()F
    .registers 2

    .line 105
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownY:F

    return v0
.end method

.method public isDragging()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragging:Z

    return v0
.end method

.method public setButton(I)V
    .registers 2
    .param p1, "button"  # I

    .line 161
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->button:I

    .line 162
    return-void
.end method

.method public setDragStartX(F)V
    .registers 2
    .param p1, "dragStartX"  # F

    .line 121
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStartX:F

    .line 122
    return-void
.end method

.method public setDragStartY(F)V
    .registers 2
    .param p1, "dragStartY"  # F

    .line 129
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStartY:F

    .line 130
    return-void
.end method

.method public setTapSquareSize(F)V
    .registers 2
    .param p1, "halfTapSquareSize"  # F

    .line 93
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->tapSquareSize:F

    .line 94
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .registers 9
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 36
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->pressedPointer:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    return v1

    .line 37
    :cond_7
    if-nez p4, :cond_12

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->button:I

    if-eq v0, v2, :cond_12

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->button:I

    if-eq p5, v0, :cond_12

    return v1

    .line 38
    :cond_12
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->pressedPointer:I

    .line 39
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownX:F

    .line 40
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownY:F

    .line 41
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->stageTouchDownX:F

    .line 42
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->stageTouchDownY:F

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 7
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 47
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->pressedPointer:I

    if-eq p4, v0, :cond_5

    return-void

    .line 48
    :cond_5
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragging:Z

    if-nez v0, :cond_31

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownX:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->tapSquareSize:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_23

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownY:F

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->tapSquareSize:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_31

    .line 49
    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragging:Z

    .line 50
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStartX:F

    .line 51
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStartY:F

    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    .line 53
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragX:F

    .line 54
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragY:F

    .line 56
    :cond_31
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragging:Z

    if-eqz v0, :cond_44

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragLastX:F

    .line 58
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragLastY:F

    .line 59
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragX:F

    .line 60
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragY:F

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    .line 63
    :cond_44
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .registers 7
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 66
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->pressedPointer:I

    if-ne p4, v0, :cond_e

    .line 67
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragging:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    .line 68
    :cond_b
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->cancel()V

    .line 70
    :cond_e
    return-void
.end method
