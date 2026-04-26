.class public Lcom/badlogic/gdx/input/GestureDetector;
.super Lcom/badlogic/gdx/InputAdapter;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;,
        Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;,
        Lcom/badlogic/gdx/input/GestureDetector$GestureListener;
    }
.end annotation


# instance fields
.field private inTapRectangle:Z

.field private final initialPointer1:Lcom/badlogic/gdx/math/Vector2;

.field private final initialPointer2:Lcom/badlogic/gdx/math/Vector2;

.field private lastTapButton:I

.field private lastTapPointer:I

.field private lastTapTime:J

.field private lastTapX:F

.field private lastTapY:F

.field final listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

.field longPressFired:Z

.field private longPressSeconds:F

.field private final longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

.field private maxFlingDelay:J

.field private panning:Z

.field private pinching:Z

.field pointer1:Lcom/badlogic/gdx/math/Vector2;

.field private final pointer2:Lcom/badlogic/gdx/math/Vector2;

.field private tapCount:I

.field private tapCountInterval:J

.field private tapRectangleCenterX:F

.field private tapRectangleCenterY:F

.field private tapRectangleHeight:F

.field private tapRectangleWidth:F

.field private touchDownTime:J

.field private final tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;


# direct methods
.method public constructor <init>(FFFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .registers 10
    .param p1, "halfTapRectangleWidth"  # F
    .param p2, "halfTapRectangleHeight"  # F
    .param p3, "tapCountInterval"  # F
    .param p4, "longPressDuration"  # F
    .param p5, "maxFlingDelay"  # F
    .param p6, "listener"  # Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    .line 90
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 47
    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-direct {v0}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/input/GestureDetector$1;-><init>(Lcom/badlogic/gdx/input/GestureDetector;)V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    .line 91
    if-eqz p6, :cond_44

    .line 92
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleWidth:F

    .line 93
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleHeight:F

    .line 94
    const v0, 0x4e6e6b28  # 1.0E9f

    mul-float v1, p3, v0

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountInterval:J

    .line 95
    iput p4, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    .line 96
    mul-float/2addr v0, p5

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelay:J

    .line 97
    iput-object p6, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    .line 98
    return-void

    .line 91
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(FFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .registers 13
    .param p1, "halfTapSquareSize"  # F
    .param p2, "tapCountInterval"  # F
    .param p3, "longPressDuration"  # F
    .param p4, "maxFlingDelay"  # F
    .param p5, "listener"  # Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    .line 77
    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(FFFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .registers 8
    .param p1, "listener"  # Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    .line 65
    const v3, 0x3f8ccccd  # 1.1f

    const/high16 v4, 0x4f000000

    const/high16 v1, 0x41a00000  # 20.0f

    const v2, 0x3ecccccd  # 0.4f

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(FFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    .line 66
    return-void
.end method

.method private isWithinTapRectangle(FFFF)Z
    .registers 7
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "centerX"  # F
    .param p4, "centerY"  # F

    .line 272
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleWidth:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    sub-float v0, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    .line 246
    return-void
.end method

.method public invalidateTapSquare()V
    .registers 2

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 278
    return-void
.end method

.method public isLongPressed()Z
    .registers 2

    .line 250
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/input/GestureDetector;->isLongPressed(F)Z

    move-result v0

    return v0
.end method

.method public isLongPressed(F)Z
    .registers 8
    .param p1, "duration"  # F

    .line 256
    iget-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->touchDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 257
    :cond_a
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->touchDownTime:J

    sub-long/2addr v2, v4

    const v0, 0x4e6e6b28  # 1.0E9f

    mul-float/2addr v0, p1

    float-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public isPanning()Z
    .registers 2

    .line 261
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    return v0
.end method

.method public reset()V
    .registers 4

    .line 265
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->touchDownTime:J

    .line 266
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 267
    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 268
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iput-wide v0, v2, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    .line 269
    return-void
.end method

.method public setLongPressSeconds(F)V
    .registers 2
    .param p1, "longPressSeconds"  # F

    .line 296
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    .line 297
    return-void
.end method

.method public setMaxFlingDelay(J)V
    .registers 3
    .param p1, "maxFlingDelay"  # J

    .line 300
    iput-wide p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelay:J

    .line 301
    return-void
.end method

.method public setTapCountInterval(F)V
    .registers 4
    .param p1, "tapCountInterval"  # F

    .line 292
    const v0, 0x4e6e6b28  # 1.0E9f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountInterval:J

    .line 293
    return-void
.end method

.method public setTapRectangleSize(FF)V
    .registers 3
    .param p1, "halfTapRectangleWidth"  # F
    .param p2, "halfTapRectangleHeight"  # F

    .line 285
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleWidth:F

    .line 286
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleHeight:F

    .line 287
    return-void
.end method

.method public setTapSquareSize(F)V
    .registers 2
    .param p1, "halfTapSquareSize"  # F

    .line 281
    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/input/GestureDetector;->setTapRectangleSize(FF)V

    .line 282
    return-void
.end method

.method public touchDown(FFII)Z
    .registers 10
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p3, v1, :cond_5

    return v0

    .line 108
    :cond_5
    if-nez p3, :cond_55

    .line 109
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 110
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->touchDownTime:J

    .line 111
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-wide v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->touchDownTime:J

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    .line 112
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 114
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 115
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    goto :goto_71

    .line 121
    :cond_3b
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 122
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 123
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    .line 124
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleCenterX:F

    .line 125
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleCenterY:F

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    goto :goto_71

    .line 130
    :cond_55
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 131
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 132
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 137
    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->touchDown(FFII)Z

    move-result v0

    return v0
.end method

.method public touchDown(IIII)Z
    .registers 7
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 102
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchDown(FFII)Z

    move-result v0

    return v0
.end method

.method public touchDragged(FFI)Z
    .registers 11
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "pointer"  # I

    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p3, v1, :cond_5

    return v0

    .line 147
    :cond_5
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    if-eqz v2, :cond_a

    return v0

    .line 149
    :cond_a
    if-nez p3, :cond_12

    .line 150
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_17

    .line 152
    :cond_12
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 155
    :goto_17
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    if-eqz v2, :cond_4a

    .line 156
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    if-eqz v2, :cond_49

    .line 157
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    .line 158
    .local v2, "result":Z
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->zoom(FF)Z

    move-result v3

    if-nez v3, :cond_47

    if-eqz v2, :cond_48

    :cond_47
    move v0, v1

    :cond_48
    return v0

    .line 160
    .end local v2  # "result":Z
    :cond_49
    return v0

    .line 164
    :cond_4a
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v3

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->update(FFJ)V

    .line 167
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    if-eqz v2, :cond_6a

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleCenterX:F

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleCenterY:F

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector;->isWithinTapRectangle(FFFF)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 168
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 169
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 173
    :cond_6a
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    if-nez v2, :cond_7f

    .line 174
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v1, v1, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v2, v2, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pan(FFFF)Z

    move-result v0

    return v0

    .line 178
    :cond_7f
    return v0
.end method

.method public touchDragged(III)Z
    .registers 6
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "pointer"  # I

    .line 142
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/badlogic/gdx/input/GestureDetector;->touchDragged(FFI)Z

    move-result v0

    return v0
.end method

.method public touchUp(FFII)Z
    .registers 20
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 187
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v6, :cond_e

    return v5

    .line 190
    :cond_e
    iget-boolean v7, v0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    if-eqz v7, :cond_1e

    iget v7, v0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleCenterX:F

    iget v8, v0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleCenterY:F

    invoke-direct {p0, v1, v2, v7, v8}, Lcom/badlogic/gdx/input/GestureDetector;->isWithinTapRectangle(FFFF)Z

    move-result v7

    if-nez v7, :cond_1e

    iput-boolean v5, v0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 192
    :cond_1e
    iget-boolean v7, v0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 193
    .local v7, "wasPanning":Z
    iput-boolean v5, v0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 195
    iget-object v8, v0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 196
    iget-boolean v8, v0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    if-eqz v8, :cond_2c

    return v5

    .line 198
    :cond_2c
    iget-boolean v8, v0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_71

    .line 200
    iget v8, v0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapButton:I

    if-ne v8, v4, :cond_51

    iget v8, v0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapPointer:I

    if-ne v8, v3, :cond_51

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapTime:J

    sub-long/2addr v11, v13

    iget-wide v13, v0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountInterval:J

    cmp-long v8, v11, v13

    if-gtz v8, :cond_51

    iget v8, v0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapX:F

    iget v11, v0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapY:F

    .line 201
    invoke-direct {p0, v1, v2, v8, v11}, Lcom/badlogic/gdx/input/GestureDetector;->isWithinTapRectangle(FFFF)Z

    move-result v8

    if-nez v8, :cond_53

    :cond_51
    iput v5, v0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    .line 202
    :cond_53
    iget v5, v0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    .line 203
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapTime:J

    .line 204
    iput v1, v0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapX:F

    .line 205
    iput v2, v0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapY:F

    .line 206
    iput v4, v0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapButton:I

    .line 207
    iput v3, v0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapPointer:I

    .line 208
    iput-wide v9, v0, Lcom/badlogic/gdx/input/GestureDetector;->touchDownTime:J

    .line 209
    iget-object v5, v0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget v6, v0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    invoke-interface {v5, v1, v2, v6, v4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->tap(FFII)Z

    move-result v5

    return v5

    .line 212
    :cond_71
    iget-boolean v8, v0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    if-eqz v8, :cond_a8

    .line 214
    iput-boolean v5, v0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 215
    iget-object v8, v0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v8}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pinchStop()V

    .line 216
    iput-boolean v6, v0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 218
    if-nez v3, :cond_94

    .line 220
    iget-object v6, v0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-object v8, v0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v10}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v10

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    goto :goto_a7

    .line 223
    :cond_94
    iget-object v6, v0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-object v8, v0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v10}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v10

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    .line 225
    :goto_a7
    return v5

    .line 229
    :cond_a8
    const/4 v8, 0x0

    .line 230
    .local v8, "handled":Z
    if-eqz v7, :cond_b5

    iget-boolean v11, v0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    if-nez v11, :cond_b5

    iget-object v11, v0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v11, v1, v2, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->panStop(FFII)Z

    move-result v8

    .line 233
    :cond_b5
    sget-object v11, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v11}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v11

    .line 234
    .local v11, "time":J
    iget-wide v13, v0, Lcom/badlogic/gdx/input/GestureDetector;->touchDownTime:J

    sub-long v13, v11, v13

    iget-wide v5, v0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelay:J

    cmp-long v5, v13, v5

    if-gtz v5, :cond_e5

    .line 235
    iget-object v5, v0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v5, v1, v2, v11, v12}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->update(FFJ)V

    .line 236
    iget-object v5, v0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v6, v0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v6}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getVelocityX()F

    move-result v6

    iget-object v13, v0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v13}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getVelocityY()F

    move-result v13

    invoke-interface {v5, v6, v13, v4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->fling(FFI)Z

    move-result v5

    if-nez v5, :cond_e3

    if-eqz v8, :cond_e1

    goto :goto_e3

    :cond_e1
    const/4 v5, 0x0

    goto :goto_e4

    :cond_e3
    :goto_e3
    const/4 v5, 0x1

    :goto_e4
    move v8, v5

    .line 238
    :cond_e5
    iput-wide v9, v0, Lcom/badlogic/gdx/input/GestureDetector;->touchDownTime:J

    .line 239
    return v8
.end method

.method public touchUp(IIII)Z
    .registers 7
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 183
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchUp(FFII)Z

    move-result v0

    return v0
.end method
