.class Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 90
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .registers 7
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 93
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(ZZ)V

    .line 94
    return-void
.end method
