.class public Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;
.super Ljava/lang/Object;
.source "GestureDetector.java"

# interfaces
.implements Lcom/badlogic/gdx/input/GestureDetector$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fling(FFI)Z
    .registers 5
    .param p1, "velocityX"  # F
    .param p2, "velocityY"  # F
    .param p3, "button"  # I

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public longPress(FF)Z
    .registers 4
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public pan(FFFF)Z
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "deltaX"  # F
    .param p4, "deltaY"  # F

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public panStop(FFII)Z
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 6
    .param p1, "initialPointer1"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "initialPointer2"  # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "pointer1"  # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "pointer2"  # Lcom/badlogic/gdx/math/Vector2;

    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public pinchStop()V
    .registers 1

    .line 396
    return-void
.end method

.method public tap(FFII)Z
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "count"  # I
    .param p4, "button"  # I

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public touchDown(FFII)Z
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public zoom(FF)Z
    .registers 4
    .param p1, "initialDistance"  # F
    .param p2, "distance"  # F

    .line 386
    const/4 v0, 0x0

    return v0
.end method
