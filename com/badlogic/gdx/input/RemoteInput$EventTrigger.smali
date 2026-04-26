.class Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventTrigger"
.end annotation


# instance fields
.field keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

.field final synthetic this$0:Lcom/badlogic/gdx/input/RemoteInput;

.field touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/input/RemoteInput;Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;)V
    .registers 4
    .param p1, "this$0"  # Lcom/badlogic/gdx/input/RemoteInput;
    .param p2, "touchEvent"  # Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    .param p3, "keyEvent"  # Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    .line 81
    iput-object p1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    .line 83
    iput-object p3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    .line 84
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-boolean v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    if-eqz v0, :cond_20

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v1, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v2, v2, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_20

    .line 92
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v2, v2, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    aput-boolean v1, v2, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 96
    .end local v0  # "i":I
    :cond_20
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    const/4 v2, 0x1

    if-eqz v0, :cond_178

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    if-eqz v0, :cond_fe

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    packed-switch v0, :pswitch_data_26e

    goto/16 :goto_e2

    .line 113
    :pswitch_34  #0x2
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->deltaX:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v5, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v5, v5, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    iget-object v6, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v6, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    aput v4, v0, v3

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->deltaY:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v5, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v5, v5, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    iget-object v6, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v6, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    aput v4, v0, v3

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v5, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v5, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    invoke-interface {v0, v3, v4, v5}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    goto :goto_e2

    .line 107
    :pswitch_7a  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->deltaX:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput v1, v0, v3

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->deltaY:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput v1, v0, v3

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v5, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v5, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    invoke-interface {v0, v3, v4, v5, v1}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v1, v0, v3

    .line 111
    goto :goto_e2

    .line 100
    :pswitch_ac  #0x0
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->deltaX:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput v1, v0, v3

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->deltaY:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput v1, v0, v3

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v5, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v5, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    invoke-interface {v0, v3, v4, v5, v1}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v2, v0, v3

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v2, v0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    .line 105
    nop

    .line 118
    :goto_e2
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    aput v4, v0, v3

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    aput v4, v0, v3

    .line 121
    :cond_fe
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    if-eqz v0, :cond_26d

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    packed-switch v0, :pswitch_data_278

    goto :goto_176

    .line 140
    :pswitch_10a  #0x2
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget-char v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyChar:C

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    goto :goto_176

    .line 133
    :pswitch_116  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_176

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget v3, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v1, v0, v2

    goto :goto_176

    .line 124
    :pswitch_13f  #0x0
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_167

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget v1, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v2, v0, v1

    .line 129
    :cond_167
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v2, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v2, v0, v1

    .line 131
    nop

    .line 141
    :cond_176
    :goto_176
    goto/16 :goto_26d

    .line 145
    :cond_178
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    if-eqz v0, :cond_215

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    packed-switch v0, :pswitch_data_282

    goto :goto_1f9

    .line 159
    :pswitch_184  #0x2
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->deltaX:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v5, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v5, v5, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    iget-object v6, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v6, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    aput v4, v0, v3

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->deltaY:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v5, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v5, v5, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    iget-object v6, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v6, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    aput v4, v0, v3

    goto :goto_1f9

    .line 154
    :pswitch_1b7  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->deltaX:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput v1, v0, v3

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->deltaY:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput v1, v0, v3

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v1, v0, v3

    .line 157
    goto :goto_1f9

    .line 148
    :pswitch_1d6  #0x0
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->deltaX:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput v1, v0, v3

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->deltaY:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput v1, v0, v3

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v2, v0, v3

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v2, v0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    .line 152
    nop

    .line 163
    :goto_1f9
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    aput v4, v0, v3

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    aput v4, v0, v3

    .line 166
    :cond_215
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    if-eqz v0, :cond_26d

    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    if-nez v0, :cond_24a

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aget-boolean v0, v0, v3

    if-nez v0, :cond_23c

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget v3, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v2, v0, v3

    .line 172
    :cond_23c
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v2, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v2, v0, v3

    .line 175
    :cond_24a
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    if-ne v0, v2, :cond_26d

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_26d

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget v3, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v1, v0, v2

    .line 183
    :cond_26d
    :goto_26d
    return-void

    :pswitch_data_26e
    .packed-switch 0x0
        :pswitch_ac  #00000000
        :pswitch_7a  #00000001
        :pswitch_34  #00000002
    .end packed-switch

    :pswitch_data_278
    .packed-switch 0x0
        :pswitch_13f  #00000000
        :pswitch_116  #00000001
        :pswitch_10a  #00000002
    .end packed-switch

    :pswitch_data_282
    .packed-switch 0x0
        :pswitch_1d6  #00000000
        :pswitch_1b7  #00000001
        :pswitch_184  #00000002
    .end packed-switch
.end method
