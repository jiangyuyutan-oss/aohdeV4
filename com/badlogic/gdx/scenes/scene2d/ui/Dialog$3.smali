.class Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    .line 97
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;-><init>()V

    return-void
.end method

.method private focusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;)V
    .registers 5
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 108
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->isModal:Z

    if-eqz v1, :cond_4f

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lez v1, :cond_4f

    .line 109
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->peek()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    if-ne v1, v2, :cond_4f

    .line 110
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 111
    .local v1, "newFocusedActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v1, :cond_4f

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousKeyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 113
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->cancel()V

    .line 115
    .end local v1  # "newFocusedActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_4f
    return-void
.end method


# virtual methods
.method public keyboardFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .registers 4
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    .param p2, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "focused"  # Z

    .line 99
    if-nez p3, :cond_5

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->focusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;)V

    .line 100
    :cond_5
    return-void
.end method

.method public scrollFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .registers 4
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    .param p2, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "focused"  # Z

    .line 103
    if-nez p3, :cond_5

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->focusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;)V

    .line 104
    :cond_5
    return-void
.end method
