.class public Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
.super Ljava/lang/Object;
.source "AnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationDesc"
.end annotation


# instance fields
.field public animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

.field public duration:F

.field public listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

.field public loopCount:I

.field public offset:F

.field public speed:F

.field public time:F


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method protected update(F)F
    .registers 9
    .param p1, "delta"  # F

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-eqz v0, :cond_9d

    .line 79
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    mul-float/2addr v0, p1

    .line 80
    .local v0, "diff":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_51

    .line 81
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 82
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3b

    .line 83
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    sub-float/2addr v1, v3

    .line 84
    .local v1, "invTime":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    div-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 85
    .local v3, "loops":I
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    rem-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 86
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 87
    .end local v1  # "invTime":F
    goto :goto_52

    .line 88
    .end local v3  # "loops":I
    :cond_3b
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v3, v1

    .line 89
    .restart local v3  # "loops":I
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    rem-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    goto :goto_52

    .line 92
    .end local v3  # "loops":I
    :cond_51
    const/4 v3, 0x1

    .line 93
    .restart local v3  # "loops":I
    :goto_52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_53
    if-ge v1, v3, :cond_9a

    .line 94
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-lez v4, :cond_5f

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    .line 95
    :cond_5f
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-eqz v4, :cond_6c

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    if-eqz v4, :cond_6c

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    invoke-interface {v4, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;->onLoop(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)V

    .line 96
    :cond_6c
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v4, :cond_97

    .line 97
    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    mul-float/2addr v4, v5

    cmpg-float v5, v0, v2

    if-gez v5, :cond_81

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    sub-float/2addr v5, v6

    goto :goto_83

    :cond_81
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    :goto_83
    add-float/2addr v4, v5

    .line 98
    .local v4, "result":F
    cmpg-float v5, v0, v2

    if-gez v5, :cond_89

    goto :goto_8b

    :cond_89
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    :goto_8b
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 99
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    if-eqz v2, :cond_96

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    invoke-interface {v2, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;->onEnd(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)V

    .line 100
    :cond_96
    return v4

    .line 93
    .end local v4  # "result":F
    :cond_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 103
    .end local v1  # "i":I
    :cond_9a
    const/high16 v1, -0x40800000  # -1.0f

    return v1

    .line 105
    .end local v0  # "diff":F
    .end local v3  # "loops":I
    :cond_9d
    return p1
.end method
