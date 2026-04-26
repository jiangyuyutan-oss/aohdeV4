.class Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "TextField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    .line 114
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_c

    .line 117
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->cancel()V

    .line 118
    return-void

    .line 120
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 121
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 122
    return-void
.end method
