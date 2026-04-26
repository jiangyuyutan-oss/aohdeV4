.class public Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;
.source "DragScrollListener.java"


# static fields
.field static final tmpCoords:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field interpolation:Lcom/badlogic/gdx/math/Interpolation;

.field maxSpeed:F

.field minSpeed:F

.field padBottom:F

.field padTop:F

.field rampTime:J

.field private scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field private scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

.field private scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

.field startTime:J

.field tickSecs:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .registers 4
    .param p1, "scroll"  # Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    .line 46
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;-><init>()V

    .line 41
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp5In:Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 42
    const/high16 v0, 0x41700000  # 15.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->minSpeed:F

    const/high16 v0, 0x42960000  # 75.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->maxSpeed:F

    const v0, 0x3d4ccccd  # 0.05f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    .line 43
    const-wide/16 v0, 0x6d6

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->rampTime:J

    .line 47
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$1;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$2;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    .line 59
    return-void
.end method


# virtual methods
.method public drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 8
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 73
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToActorCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 74
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->isAbove(F)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_35

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->startTime:J

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    .line 80
    :cond_35
    return-void

    .line 81
    :cond_36
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->isBelow(F)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->startTime:J

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    .line 87
    :cond_5c
    return-void

    .line 89
    :cond_5d
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 91
    return-void
.end method

.method public dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 6
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 96
    return-void
.end method

.method getScrollPixels()F
    .registers 8

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->minSpeed:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->maxSpeed:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->startTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    iget-wide v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->rampTime:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v0

    return v0
.end method

.method protected isAbove(F)Z
    .registers 4
    .param p1, "y"  # F

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->padTop:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method protected isBelow(F)Z
    .registers 3
    .param p1, "y"  # F

    .line 103
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->padBottom:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected scroll(F)V
    .registers 3
    .param p1, "y"  # F

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollY(F)V

    .line 108
    return-void
.end method

.method public setPadding(FF)V
    .registers 3
    .param p1, "padTop"  # F
    .param p2, "padBottom"  # F

    .line 111
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->padTop:F

    .line 112
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->padBottom:F

    .line 113
    return-void
.end method

.method public setup(FFFF)V
    .registers 7
    .param p1, "minSpeedPixels"  # F
    .param p2, "maxSpeedPixels"  # F
    .param p3, "tickSecs"  # F
    .param p4, "rampSecs"  # F

    .line 62
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->minSpeed:F

    .line 63
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->maxSpeed:F

    .line 64
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    .line 65
    const/high16 v0, 0x447a0000  # 1000.0f

    mul-float/2addr v0, p4

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->rampTime:J

    .line 66
    return-void
.end method
