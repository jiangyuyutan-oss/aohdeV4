.class Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    .line 69
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 8
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "fromActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 96
    const/4 v0, -0x1

    if-ne p4, v0, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    .line 97
    :cond_8
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 8
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "toActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 100
    const/4 v0, -0x1

    if-ne p4, v0, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    .line 101
    :cond_8
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .registers 9
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 72
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->button:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->button:I

    if-eq v0, p5, :cond_16

    return v1

    .line 73
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    if-eq v0, v2, :cond_1d

    return v1

    .line 74
    :cond_1d
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculatePositionAndValue(FF)Z

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 6
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculatePositionAndValue(FF)Z

    .line 93
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .registers 8
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    if-eq p4, v0, :cond_7

    return-void

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    const/4 v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    .line 83
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isTouchFocusCancel()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculatePositionAndValue(FF)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 85
    :cond_1a
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 86
    .local v0, "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 87
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 89
    .end local v0  # "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    :cond_2a
    return-void
.end method
