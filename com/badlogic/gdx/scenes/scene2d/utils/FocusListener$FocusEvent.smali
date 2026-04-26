.class public Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
.super Lcom/badlogic/gdx/scenes/scene2d/Event;
.source "FocusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FocusEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;
    }
.end annotation


# instance fields
.field private focused:Z

.field private relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private type:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;-><init>()V

    return-void
.end method


# virtual methods
.method public getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    return-object v0
.end method

.method public isFocused()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->focused:Z

    return v0
.end method

.method public reset()V
    .registers 2

    .line 57
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->reset()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 59
    return-void
.end method

.method public setFocused(Z)V
    .registers 2
    .param p1, "focused"  # Z

    .line 66
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->focused:Z

    .line 67
    return-void
.end method

.method public setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 2
    .param p1, "relatedActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 85
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 86
    return-void
.end method

.method public setType(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;)V
    .registers 2
    .param p1, "focusType"  # Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    .line 74
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    .line 75
    return-void
.end method
