.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "RemoveActorAction.java"


# instance fields
.field private removed:Z


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
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 28
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removed:Z

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 31
    :cond_c
    return v1
.end method

.method public restart()V
    .registers 2

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removed:Z

    .line 36
    return-void
.end method
