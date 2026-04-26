.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "RemoveListenerAction.java"


# instance fields
.field private capture:Z

.field private listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .registers 4
    .param p1, "delta"  # F

    .line 29
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->capture:Z

    if-eqz v0, :cond_c

    .line 30
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_13

    .line 32
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 33
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public getCapture()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->capture:Z

    return v0
.end method

.method public getListener()Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 55
    return-void
.end method

.method public setCapture(Z)V
    .registers 2
    .param p1, "capture"  # Z

    .line 49
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->capture:Z

    .line 50
    return-void
.end method

.method public setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V
    .registers 2
    .param p1, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 41
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 42
    return-void
.end method
