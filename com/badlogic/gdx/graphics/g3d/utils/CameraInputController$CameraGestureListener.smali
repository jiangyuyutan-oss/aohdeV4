.class public Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;
.super Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;
.source "CameraInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CameraGestureListener"
.end annotation


# instance fields
.field public controller:Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;

.field private previousZoom:F


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public fling(FFI)Z
    .registers 5
    .param p1, "velocityX"  # F
    .param p2, "velocityY"  # F
    .param p3, "button"  # I

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public longPress(FF)Z
    .registers 4
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public pan(FFFF)Z
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "deltaX"  # F
    .param p4, "deltaY"  # F

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 6
    .param p1, "initialPointer1"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "initialPointer2"  # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "pointer1"  # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "pointer2"  # Lcom/badlogic/gdx/math/Vector2;

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public tap(FFII)Z
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "count"  # I
    .param p4, "button"  # I

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public touchDown(FFII)Z
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;->previousZoom:F

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public zoom(FF)Z
    .registers 9
    .param p1, "initialDistance"  # F
    .param p2, "distance"  # F

    .line 108
    sub-float v0, p2, p1

    .line 109
    .local v0, "newZoom":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;->previousZoom:F

    sub-float v1, v0, v1

    .line 110
    .local v1, "amount":F
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;->previousZoom:F

    .line 111
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .local v2, "w":F
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 112
    .local v3, "h":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;->controller:Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;

    cmpl-float v5, v2, v3

    if-lez v5, :cond_1e

    move v5, v3

    goto :goto_1f

    :cond_1e
    move v5, v2

    :goto_1f
    div-float v5, v1, v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->pinchZoom(F)Z

    move-result v4

    return v4
.end method
