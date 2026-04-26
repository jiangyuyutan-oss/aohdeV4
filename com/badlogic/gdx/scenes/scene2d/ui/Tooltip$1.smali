.class Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 3
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;
    .param p2, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 47
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method


# virtual methods
.method public act(F)V
    .registers 3
    .param p1, "delta"  # F

    .line 49
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;"
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->act(F)V

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;->remove()Z

    .line 51
    :cond_16
    return-void
.end method
