.class public Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "TouchableAction.java"


# instance fields
.field private touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .registers 4
    .param p1, "delta"  # F

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-object v0
.end method

.method public setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V
    .registers 2
    .param p1, "touchable"  # Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 38
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 39
    return-void
.end method
