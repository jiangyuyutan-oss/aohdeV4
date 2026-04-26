.class public abstract Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;
.super Ljava/lang/Object;
.source "FocusListener.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .registers 6
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/Event;

    .line 28
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 29
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    .line 30
    .local v0, "focusEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$1;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$utils$FocusListener$FocusEvent$Type:[I

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_32

    goto :goto_31

    .line 35
    :pswitch_19  #0x2
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isFocused()Z

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;->scrollFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    goto :goto_31

    .line 32
    :pswitch_25  #0x1
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isFocused()Z

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;->keyboardFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    .line 33
    nop

    .line 38
    :goto_31
    return v1

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_25  #00000001
        :pswitch_19  #00000002
    .end packed-switch
.end method

.method public keyboardFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .registers 4
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    .param p2, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "focused"  # Z

    .line 43
    return-void
.end method

.method public scrollFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .registers 4
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    .param p2, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "focused"  # Z

    .line 47
    return-void
.end method
