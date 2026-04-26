.class Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "TextField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyRepeatTask"
.end annotation


# instance fields
.field keycode:I

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    .line 784
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 788
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_c

    .line 789
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->cancel()V

    .line 790
    return-void

    .line 792
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->keycode:I

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    .line 793
    return-void
.end method
