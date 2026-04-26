.class public Lcom/badlogic/gdx/InputAdapter;
.super Ljava/lang/Object;
.source "InputAdapter.java"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(I)Z
    .registers 3
    .param p1, "keycode"  # I

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public keyTyped(C)Z
    .registers 3
    .param p1, "character"  # C

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public keyUp(I)Z
    .registers 3
    .param p1, "keycode"  # I

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public mouseMoved(II)Z
    .registers 4
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public scrolled(FF)Z
    .registers 4
    .param p1, "amountX"  # F
    .param p2, "amountY"  # F

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public touchDown(IIII)Z
    .registers 6
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public touchDragged(III)Z
    .registers 5
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(IIII)Z
    .registers 6
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 40
    const/4 v0, 0x0

    return v0
.end method
