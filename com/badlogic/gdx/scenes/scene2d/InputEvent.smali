.class public Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
.super Lcom/badlogic/gdx/scenes/scene2d/Event;
.source "InputEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    }
.end annotation


# instance fields
.field private button:I

.field private character:C

.field private keyCode:I

.field private pointer:I

.field private relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private scrollAmountX:F

.field private scrollAmountY:F

.field private stageX:F

.field private stageY:F

.field private touchFocus:Z

.field private type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->touchFocus:Z

    return-void
.end method


# virtual methods
.method public getButton()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->button:I

    return v0
.end method

.method public getCharacter()C
    .registers 2

    .line 99
    iget-char v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->character:C

    return v0
.end method

.method public getKeyCode()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->keyCode:I

    return v0
.end method

.method public getPointer()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->pointer:I

    return v0
.end method

.method public getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getScrollAmountX()F
    .registers 2

    .line 108
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->scrollAmountX:F

    return v0
.end method

.method public getScrollAmountY()F
    .registers 2

    .line 112
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->scrollAmountY:F

    return v0
.end method

.method public getStageX()F
    .registers 2

    .line 42
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    return v0
.end method

.method public getStageY()F
    .registers 2

    .line 52
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    return v0
.end method

.method public getTouchFocus()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->touchFocus:Z

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-object v0
.end method

.method public isTouchFocusCancel()Z
    .registers 3

    .line 144
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public reset()V
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->reset()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->button:I

    .line 37
    return-void
.end method

.method public setButton(I)V
    .registers 2
    .param p1, "button"  # I

    .line 85
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->button:I

    .line 86
    return-void
.end method

.method public setCharacter(C)V
    .registers 2
    .param p1, "character"  # C

    .line 103
    iput-char p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->character:C

    .line 104
    return-void
.end method

.method public setKeyCode(I)V
    .registers 2
    .param p1, "keyCode"  # I

    .line 94
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->keyCode:I

    .line 95
    return-void
.end method

.method public setPointer(I)V
    .registers 2
    .param p1, "pointer"  # I

    .line 75
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->pointer:I

    .line 76
    return-void
.end method

.method public setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 2
    .param p1, "relatedActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 131
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 132
    return-void
.end method

.method public setScrollAmountX(F)V
    .registers 2
    .param p1, "scrollAmount"  # F

    .line 116
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->scrollAmountX:F

    .line 117
    return-void
.end method

.method public setScrollAmountY(F)V
    .registers 2
    .param p1, "scrollAmount"  # F

    .line 120
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->scrollAmountY:F

    .line 121
    return-void
.end method

.method public setStageX(F)V
    .registers 2
    .param p1, "stageX"  # F

    .line 46
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    .line 47
    return-void
.end method

.method public setStageY(F)V
    .registers 2
    .param p1, "stageY"  # F

    .line 56
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    .line 57
    return-void
.end method

.method public setTouchFocus(Z)V
    .registers 2
    .param p1, "touchFocus"  # Z

    .line 154
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->touchFocus:Z

    .line 155
    return-void
.end method

.method public setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V
    .registers 2
    .param p1, "type"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 65
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 66
    return-void
.end method

.method public toCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 5
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actorCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 137
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 138
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 139
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
