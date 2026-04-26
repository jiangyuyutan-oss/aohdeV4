.class Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SplitPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field draggingPointer:I

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;)V
    .registers 3
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    .line 85
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    return-void
.end method


# virtual methods
.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .registers 6
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v1

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->cursorOverHandle:Z

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .registers 9
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 89
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    return v2

    .line 90
    :cond_7
    if-nez p4, :cond_c

    if-eqz p5, :cond_c

    return v2

    .line 91
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 92
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_34
    return v2
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 12
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 105
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    if-eq p4, v0, :cond_5

    return-void

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 108
    .local v0, "handle":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    const/4 v2, 0x0

    if-nez v1, :cond_48

    .line 109
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v1, p2, v1

    .line 110
    .local v1, "delta":F
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getWidth()F

    move-result v3

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    sub-float/2addr v3, v4

    .line 111
    .local v3, "availWidth":F
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v4, v1

    .line 112
    .local v4, "dragX":F
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iput v4, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 113
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 114
    .end local v4  # "dragX":F
    .local v2, "dragX":F
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 115
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    div-float v5, v2, v3

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 116
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 117
    .end local v1  # "delta":F
    .end local v2  # "dragX":F
    .end local v3  # "availWidth":F
    goto :goto_80

    .line 118
    :cond_48
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, p3, v1

    .line 119
    .restart local v1  # "delta":F
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getHeight()F

    move-result v3

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    sub-float/2addr v3, v4

    .line 120
    .local v3, "availHeight":F
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v4, v1

    .line 121
    .local v4, "dragY":F
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iput v4, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 122
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 123
    .end local v4  # "dragY":F
    .local v2, "dragY":F
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 124
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    const/high16 v5, 0x3f800000  # 1.0f

    div-float v6, v2, v3

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 125
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 127
    .end local v1  # "delta":F
    .end local v2  # "dragY":F
    .end local v3  # "availHeight":F
    :goto_80
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    .line 128
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .registers 7
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 101
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    if-ne p4, v0, :cond_7

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    .line 102
    :cond_7
    return-void
.end method
