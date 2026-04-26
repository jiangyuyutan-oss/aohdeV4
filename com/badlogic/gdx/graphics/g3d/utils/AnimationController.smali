.class public Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;
.super Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;
.source "AnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;,
        Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    }
.end annotation


# instance fields
.field public allowSameAnimation:Z

.field protected final animationPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;",
            ">;"
        }
    .end annotation
.end field

.field public current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public inAction:Z

.field private justChangedAnimation:Z

.field public paused:Z

.field public previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public queuedTransitionTime:F

.field public transitionCurrentTime:F

.field public transitionTargetTime:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V
    .registers 3
    .param p1, "target"  # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    .line 140
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V

    .line 109
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 141
    return-void
.end method

.method private obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 10
    .param p1, "anim"  # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"  # F
    .param p3, "duration"  # F
    .param p4, "loopCount"  # I
    .param p5, "speed"  # F
    .param p6, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 145
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 147
    .local v0, "result":Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .line 148
    iput-object p6, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 149
    iput p4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    .line 150
    iput p5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    .line 151
    iput p2, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    .line 152
    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-gez v2, :cond_1f

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    sub-float/2addr v2, p2

    goto :goto_20

    :cond_1f
    move v2, p3

    :goto_20
    iput v2, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    .line 153
    cmpg-float v2, p5, v1

    if-gez v2, :cond_28

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    :cond_28
    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 154
    return-object v0
.end method

.method private obtain(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 9
    .param p1, "anim"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 166
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method private obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 15
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "offset"  # F
    .param p3, "duration"  # F
    .param p4, "loopCount"  # I
    .param p5, "speed"  # F
    .param p6, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 159
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-result-object v0

    .line 161
    .local v0, "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    if-eqz v0, :cond_18

    .line 162
    move-object v1, p0

    move-object v2, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v1

    return-object v1

    .line 161
    :cond_18
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown animation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected action(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 9
    .param p1, "anim"  # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"  # F
    .param p3, "duration"  # F
    .param p4, "loopCount"  # I
    .param p5, "speed"  # F
    .param p6, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"  # F

    .line 475
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected action(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5
    .param p1, "anim"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .param p2, "transitionTime"  # F

    .line 480
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-ltz v0, :cond_2e

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v0, :cond_f

    goto :goto_2a

    .line 484
    :cond_f
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_1b

    :cond_15
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    .line 485
    .local v0, "toQueue":Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    :goto_1b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    .line 486
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 487
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    .line 488
    if-eqz v0, :cond_2d

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_2d

    .line 482
    .end local v0  # "toQueue":Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 490
    :cond_2d
    :goto_2d
    return-object p1

    .line 480
    :cond_2e
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "An action cannot be continuous"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public action(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 9
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "offset"  # F
    .param p3, "duration"  # F
    .param p4, "loopCount"  # I
    .param p5, "speed"  # F
    .param p6, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"  # F

    .line 469
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public action(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 14
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "loopCount"  # I
    .param p3, "speed"  # F
    .param p4, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p5, "transitionTime"  # F

    .line 451
    const/4 v2, 0x0

    const/high16 v3, -0x40800000  # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected animate(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 9
    .param p1, "anim"  # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"  # F
    .param p3, "duration"  # F
    .param p4, "loopCount"  # I
    .param p5, "speed"  # F
    .param p6, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"  # F

    .line 358
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5
    .param p1, "anim"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .param p2, "transitionTime"  # F

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v0, :cond_b

    goto :goto_4f

    .line 365
    :cond_b
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    if-eqz v0, :cond_13

    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_51

    .line 367
    :cond_13
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->allowSameAnimation:Z

    if-nez v0, :cond_31

    if-eqz p1, :cond_31

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-ne v0, v1, :cond_31

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 369
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 370
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_51

    .line 372
    :cond_31
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_43

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    .line 374
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 376
    :cond_43
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 377
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    .line 379
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    goto :goto_51

    .line 364
    :cond_4f
    :goto_4f
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 381
    :goto_51
    return-object p1
.end method

.method public animate(Ljava/lang/String;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 9
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "transitionTime"  # F

    .line 296
    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public animate(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 9
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "offset"  # F
    .param p3, "duration"  # F
    .param p4, "loopCount"  # I
    .param p5, "speed"  # F
    .param p6, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"  # F

    .line 352
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 14
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "loopCount"  # I
    .param p3, "speed"  # F
    .param p4, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p5, "transitionTime"  # F

    .line 334
    const/4 v2, 0x0

    const/high16 v3, -0x40800000  # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public animate(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 11
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "loopCount"  # I
    .param p3, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p4, "transitionTime"  # F

    .line 318
    const/high16 v3, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public animate(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 10
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p3, "transitionTime"  # F

    .line 306
    const/4 v2, 0x1

    const/high16 v3, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected queue(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 9
    .param p1, "anim"  # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"  # F
    .param p3, "duration"  # F
    .param p4, "loopCount"  # I
    .param p5, "speed"  # F
    .param p6, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"  # F

    .line 422
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5
    .param p1, "anim"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .param p2, "transitionTime"  # F

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v0, :cond_b

    goto :goto_26

    .line 430
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 431
    :cond_16
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 432
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queuedTransitionTime:F

    .line 433
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-gez v0, :cond_29

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    const/4 v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    goto :goto_29

    .line 428
    :cond_26
    :goto_26
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 435
    :cond_29
    :goto_29
    return-object p1
.end method

.method public queue(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 9
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "offset"  # F
    .param p3, "duration"  # F
    .param p4, "loopCount"  # I
    .param p5, "speed"  # F
    .param p6, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"  # F

    .line 416
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public queue(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 14
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "loopCount"  # I
    .param p3, "speed"  # F
    .param p4, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p5, "transitionTime"  # F

    .line 397
    const/4 v2, 0x0

    const/high16 v3, -0x40800000  # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected setAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 8
    .param p1, "anim"  # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"  # F
    .param p3, "duration"  # F
    .param p4, "loopCount"  # I
    .param p5, "speed"  # F
    .param p6, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 271
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected setAnimation(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 4
    .param p1, "anim"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-nez v0, :cond_7

    .line 277
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_2c

    .line 279
    :cond_7
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->allowSameAnimation:Z

    if-nez v0, :cond_1c

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-ne v0, v1, :cond_1c

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    goto :goto_23

    .line 282
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    .line 283
    :goto_23
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 284
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 286
    :goto_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 287
    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5
    .param p1, "id"  # Ljava/lang/String;

    .line 204
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 8
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "offset"  # F
    .param p3, "duration"  # F
    .param p4, "loopCount"  # I
    .param p5, "speed"  # F
    .param p6, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 265
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "loopCount"  # I

    .line 214
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 12
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "loopCount"  # I
    .param p3, "speed"  # F
    .param p4, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 248
    const/4 v2, 0x0

    const/high16 v3, -0x40800000  # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "loopCount"  # I
    .param p3, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 234
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "listener"  # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 223
    const/4 v0, 0x1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .registers 10
    .param p1, "delta"  # F

    .line 172
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->paused:Z

    if-eqz v0, :cond_5

    return-void

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_28

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 177
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 179
    :cond_28
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 181
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 183
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-nez v0, :cond_45

    goto :goto_a3

    .line 184
    :cond_45
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->update(F)F

    move-result v0

    .line 185
    .local v0, "remain":F
    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_67

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v4, :cond_67

    .line 186
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    .line 187
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queuedTransitionTime:F

    invoke-virtual {p0, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 188
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 189
    cmpl-float v1, v0, v3

    if-lez v1, :cond_66

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->update(F)V

    .line 190
    :cond_66
    return-void

    .line 192
    :cond_67
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v1, :cond_92

    .line 193
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float v4, v1, v2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float v6, v1, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    div-float v7, v1, v2

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->applyAnimations(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FLcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V

    goto :goto_a2

    .line 196
    :cond_92
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->applyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    .line 197
    :goto_a2
    return-void

    .line 183
    .end local v0  # "remain":F
    :cond_a3
    :goto_a3
    return-void
.end method
