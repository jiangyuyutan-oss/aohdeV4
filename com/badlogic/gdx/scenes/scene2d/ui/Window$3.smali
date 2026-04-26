.class Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastX:F

.field lastY:F

.field startX:F

.field startY:F

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    .line 92
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method

.method private updateEdge(FF)V
    .registers 15
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->resizeBorder:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 97
    .local v0, "border":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v1

    .local v1, "width":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v2

    .line 98
    .local v2, "height":F
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadTop()F

    move-result v3

    .local v3, "padTop":F
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadLeft()F

    move-result v4

    .local v4, "padLeft":F
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadBottom()F

    move-result v5

    .local v5, "padBottom":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadRight()F

    move-result v6

    .line 99
    .local v6, "padRight":F
    move v7, v4

    .local v7, "left":F
    sub-float v8, v1, v6

    .local v8, "right":F
    move v9, v5

    .line 100
    .local v9, "bottom":F
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    const/4 v11, 0x0

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 101
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isResizable:Z

    if-eqz v10, :cond_aa

    sub-float v10, v7, v0

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_aa

    add-float v10, v8, v0

    cmpg-float v10, p1, v10

    if-gtz v10, :cond_aa

    sub-float v10, v9, v0

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_aa

    .line 102
    add-float v10, v7, v0

    cmpg-float v10, p1, v10

    if-gez v10, :cond_5b

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 103
    :cond_5b
    sub-float v10, v8, v0

    cmpl-float v10, p1, v10

    if-lez v10, :cond_69

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 104
    :cond_69
    add-float v10, v9, v0

    cmpg-float v10, p2, v10

    if-gez v10, :cond_77

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 105
    :cond_77
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    if-eqz v10, :cond_80

    const/high16 v10, 0x41c80000  # 25.0f

    add-float/2addr v0, v10

    .line 106
    :cond_80
    add-float v10, v7, v0

    cmpg-float v10, p1, v10

    if-gez v10, :cond_8e

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 107
    :cond_8e
    sub-float v10, v8, v0

    cmpl-float v10, p1, v10

    if-lez v10, :cond_9c

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 108
    :cond_9c
    add-float v10, v9, v0

    cmpg-float v10, p2, v10

    if-gez v10, :cond_aa

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 110
    :cond_aa
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    if-eqz v10, :cond_ce

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    if-nez v10, :cond_ce

    cmpg-float v10, p2, v2

    if-gtz v10, :cond_ce

    sub-float v10, v2, v3

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_ce

    cmpl-float v10, p1, v7

    if-ltz v10, :cond_ce

    cmpg-float v10, p1, v8

    if-gtz v10, :cond_ce

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    const/16 v11, 0x20

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 111
    :cond_ce
    return-void
.end method


# virtual methods
.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .registers 4
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode"  # I

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .registers 4
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "character"  # C

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .registers 4
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode"  # I

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .registers 5
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 175
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->updateEdge(FF)V

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)Z
    .registers 6
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "amount"  # I

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .registers 10
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p5, :cond_2c

    .line 115
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->updateEdge(FF)V

    .line 116
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    if-eqz v3, :cond_11

    move v3, v1

    goto :goto_12

    :cond_11
    move v3, v0

    :goto_12
    iput-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    .line 117
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startX:F

    .line 118
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startY:F

    .line 119
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v2

    sub-float v2, p2, v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastX:F

    .line 120
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v2

    sub-float v2, p3, v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastY:F

    .line 122
    :cond_2c
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    if-eqz v2, :cond_39

    :cond_38
    move v0, v1

    :cond_39
    return v0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 21
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    if-nez v1, :cond_9

    return-void

    .line 131
    :cond_9
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v1

    .local v1, "width":F
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v2

    .line 132
    .local v2, "height":F
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX()F

    move-result v3

    .local v3, "windowX":F
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY()F

    move-result v4

    .line 134
    .local v4, "windowY":F
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMinWidth()F

    move-result v5

    .local v5, "minWidth":F
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMaxWidth()F

    move-result v6

    .line 135
    .local v6, "maxWidth":F
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMinHeight()F

    move-result v7

    .local v7, "minHeight":F
    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMaxHeight()F

    move-result v8

    .line 136
    .local v8, "maxHeight":F
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v9

    .line 137
    .local v9, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage:Z

    if-eqz v10, :cond_55

    if-eqz v9, :cond_55

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v10

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v11

    if-ne v10, v11, :cond_55

    const/4 v10, 0x1

    goto :goto_56

    :cond_55
    const/4 v10, 0x0

    .line 139
    .local v10, "clampPosition":Z
    :goto_56
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_68

    .line 140
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startX:F

    sub-float v11, p2, v11

    .local v11, "amountX":F
    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startY:F

    sub-float v12, p3, v12

    .line 141
    .local v12, "amountY":F
    add-float/2addr v3, v11

    .line 142
    add-float/2addr v4, v12

    .line 144
    .end local v11  # "amountX":F
    .end local v12  # "amountY":F
    :cond_68
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    and-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    if-eqz v11, :cond_89

    .line 145
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startX:F

    sub-float v11, p2, v11

    .line 146
    .restart local v11  # "amountX":F
    sub-float v13, v1, v11

    cmpg-float v13, v13, v5

    if-gez v13, :cond_7e

    sub-float v13, v5, v1

    neg-float v11, v13

    .line 147
    :cond_7e
    if-eqz v10, :cond_87

    add-float v13, v3, v11

    cmpg-float v13, v13, v12

    if-gez v13, :cond_87

    neg-float v11, v3

    .line 148
    :cond_87
    sub-float/2addr v1, v11

    .line 149
    add-float/2addr v3, v11

    .line 151
    .end local v11  # "amountX":F
    :cond_89
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_a9

    .line 152
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startY:F

    sub-float v11, p3, v11

    .line 153
    .local v11, "amountY":F
    sub-float v13, v2, v11

    cmpg-float v13, v13, v7

    if-gez v13, :cond_9e

    sub-float v13, v7, v2

    neg-float v11, v13

    .line 154
    :cond_9e
    if-eqz v10, :cond_a7

    add-float v13, v4, v11

    cmpg-float v12, v13, v12

    if-gez v12, :cond_a7

    neg-float v11, v4

    .line 155
    :cond_a7
    sub-float/2addr v2, v11

    .line 156
    add-float/2addr v4, v11

    .line 158
    .end local v11  # "amountY":F
    :cond_a9
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    and-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_d3

    .line 159
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastX:F

    sub-float v11, p2, v11

    sub-float/2addr v11, v1

    .line 160
    .local v11, "amountX":F
    add-float v12, v1, v11

    cmpg-float v12, v12, v5

    if-gez v12, :cond_be

    sub-float v11, v5, v1

    .line 161
    :cond_be
    if-eqz v10, :cond_d2

    add-float v12, v3, v1

    add-float/2addr v12, v11

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_d2

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v12

    sub-float/2addr v12, v3

    sub-float v11, v12, v1

    .line 162
    :cond_d2
    add-float/2addr v1, v11

    .line 164
    .end local v11  # "amountX":F
    :cond_d3
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_fd

    .line 165
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastY:F

    sub-float v11, p3, v11

    sub-float/2addr v11, v2

    .line 166
    .local v11, "amountY":F
    add-float v12, v2, v11

    cmpg-float v12, v12, v7

    if-gez v12, :cond_e8

    sub-float v11, v7, v2

    .line 167
    :cond_e8
    if-eqz v10, :cond_fc

    add-float v12, v4, v2

    add-float/2addr v12, v11

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_fc

    .line 168
    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v12

    sub-float/2addr v12, v4

    sub-float v11, v12, v2

    .line 169
    :cond_fc
    add-float/2addr v2, v11

    .line 171
    .end local v11  # "amountY":F
    :cond_fd
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setBounds(FFFF)V

    .line 172
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .registers 8
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    .line 127
    return-void
.end method
