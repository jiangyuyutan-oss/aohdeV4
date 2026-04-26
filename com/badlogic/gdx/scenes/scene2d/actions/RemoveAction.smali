.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "RemoveAction.java"


# instance fields
.field private action:Lcom/badlogic/gdx/scenes/scene2d/Action;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .registers 4
    .param p1, "delta"  # F

    .line 27
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public getAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 40
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 42
    return-void
.end method

.method public setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .registers 2
    .param p1, "action"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 36
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 37
    return-void
.end method
