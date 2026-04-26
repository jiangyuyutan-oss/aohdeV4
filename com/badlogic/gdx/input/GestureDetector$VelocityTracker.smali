.class Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VelocityTracker"
.end annotation


# instance fields
.field deltaX:F

.field deltaY:F

.field lastTime:J

.field lastX:F

.field lastY:F

.field meanTime:[J

.field meanX:[F

.field meanY:[F

.field numSamples:I

.field sampleSize:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    const/16 v0, 0xa

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    .line 405
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    .line 406
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    .line 407
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    return-void
.end method

.method private getAverage([FI)F
    .registers 6
    .param p1, "values"  # [F
    .param p2, "numSamples"  # I

    .line 452
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p2, :cond_10

    .line 455
    aget v2, p1, v1

    add-float/2addr v0, v2

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 457
    .end local v1  # "i":I
    :cond_10
    int-to-float v1, p2

    div-float v1, v0, v1

    return v1
.end method

.method private getAverage([JI)J
    .registers 8
    .param p1, "values"  # [J
    .param p2, "numSamples"  # I

    .line 461
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 462
    const-wide/16 v0, 0x0

    .line 463
    .local v0, "sum":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, p2, :cond_11

    .line 464
    aget-wide v3, p1, v2

    add-long/2addr v0, v3

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 466
    .end local v2  # "i":I
    :cond_11
    if-nez p2, :cond_16

    const-wide/16 v2, 0x0

    return-wide v2

    .line 467
    :cond_16
    int-to-long v2, p2

    div-long v2, v0, v2

    return-wide v2
.end method

.method private getSum([FI)F
    .registers 6
    .param p1, "values"  # [F
    .param p2, "numSamples"  # I

    .line 471
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p2, :cond_10

    .line 474
    aget v2, p1, v1

    add-float/2addr v0, v2

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 476
    .end local v1  # "i":I
    :cond_10
    if-nez p2, :cond_14

    const/4 v1, 0x0

    return v1

    .line 477
    :cond_14
    return v0
.end method


# virtual methods
.method public getVelocityX()F
    .registers 5

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([FI)F

    move-result v0

    .line 439
    .local v0, "meanX":F
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([JI)J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28  # 1.0E9f

    div-float/2addr v1, v2

    .line 440
    .local v1, "meanTime":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1b

    return v2

    .line 441
    :cond_1b
    div-float v2, v0, v1

    return v2
.end method

.method public getVelocityY()F
    .registers 5

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([FI)F

    move-result v0

    .line 446
    .local v0, "meanY":F
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([JI)J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28  # 1.0E9f

    div-float/2addr v1, v2

    .line 447
    .local v1, "meanTime":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1b

    return v2

    .line 448
    :cond_1b
    div-float v2, v0, v1

    return v2
.end method

.method public start(FFJ)V
    .registers 10
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "timeStamp"  # J

    .line 410
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:F

    .line 411
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:F

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    .line 413
    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    .line 414
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    .line 415
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    if-ge v1, v2, :cond_22

    .line 416
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    aput v0, v2, v1

    .line 417
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    aput v0, v2, v1

    .line 418
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 420
    .end local v1  # "i":I
    :cond_22
    iput-wide p3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    .line 421
    return-void
.end method

.method public update(FFJ)V
    .registers 10
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "currTime"  # J

    .line 424
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    .line 425
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:F

    sub-float v0, p2, v0

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    .line 426
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:F

    .line 427
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:F

    .line 428
    iget-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    sub-long v0, p3, v0

    .line 429
    .local v0, "deltaTime":J
    iput-wide p3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    .line 430
    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    rem-int/2addr v2, v3

    .line 431
    .local v2, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    aput v4, v3, v2

    .line 432
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    aput v4, v3, v2

    .line 433
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    aput-wide v0, v3, v2

    .line 434
    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    .line 435
    return-void
.end method
