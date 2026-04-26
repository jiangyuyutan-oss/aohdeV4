.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaledNumericValue"
.end annotation


# instance fields
.field private highMax:F

.field private highMin:F

.field private relative:Z

.field private scaling:[F

.field timeline:[F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1376
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    .line 1377
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v1, v2

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    .line 1378
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    return-void
.end method


# virtual methods
.method public getHighMax()F
    .registers 2

    .line 1405
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    return v0
.end method

.method public getHighMin()F
    .registers 2

    .line 1397
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    return v0
.end method

.method public getScale(F)F
    .registers 12
    .param p1, "percent"  # F

    .line 1465
    const/4 v0, -0x1

    .line 1466
    .local v0, "endIndex":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    .line 1467
    .local v1, "timeline":[F
    array-length v2, v1

    .line 1468
    .local v2, "n":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_12

    .line 1469
    aget v4, v1, v3

    .line 1470
    .local v4, "t":F
    cmpl-float v5, v4, p1

    if-lez v5, :cond_f

    .line 1471
    move v0, v3

    .line 1472
    goto :goto_12

    .line 1468
    .end local v4  # "t":F
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1475
    .end local v3  # "i":I
    :cond_12
    :goto_12
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1c

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    return v3

    .line 1476
    :cond_1c
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    .line 1477
    .local v3, "scaling":[F
    add-int/lit8 v4, v0, -0x1

    .line 1478
    .local v4, "startIndex":I
    aget v5, v3, v4

    .line 1479
    .local v5, "startValue":F
    aget v6, v1, v4

    .line 1480
    .local v6, "startTime":F
    aget v7, v3, v0

    sub-float/2addr v7, v5

    sub-float v8, p1, v6

    aget v9, v1, v0

    sub-float/2addr v9, v6

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    return v7
.end method

.method public getScaling()[F
    .registers 2

    .line 1441
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    return-object v0
.end method

.method public getTimeline()[F
    .registers 2

    .line 1449
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    return-object v0
.end method

.method public isRelative()Z
    .registers 2

    .line 1457
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V
    .registers 6
    .param p1, "value"  # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 1512
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    .line 1513
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1514
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1515
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    .line 1516
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1517
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    .line 1518
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1519
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    .line 1520
    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .registers 6
    .param p1, "reader"  # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1498
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 1499
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-nez v0, :cond_8

    return-void

    .line 1500
    :cond_8
    const-string v0, "highMin"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1501
    const-string v0, "highMax"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1502
    const-string v0, "relative"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    .line 1503
    const-string v0, "scalingCount"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    .line 1504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v1, v1

    if-ge v0, v1, :cond_4e

    .line 1505
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 1504
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1506
    .end local v0  # "i":I
    :cond_4e
    const-string v0, "timelineCount"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    .line 1507
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_59
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v1, v1

    if-ge v0, v1, :cond_7c

    .line 1508
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 1507
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 1509
    .end local v0  # "i":I
    :cond_7c
    return-void
.end method

.method public newHighValue()F
    .registers 4

    .line 1383
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    sub-float/2addr v1, v2

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public save(Ljava/io/Writer;)V
    .registers 7
    .param p1, "output"  # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1484
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    .line 1485
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-nez v0, :cond_8

    return-void

    .line 1486
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "highMin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "highMax: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relative: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scalingCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7c
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v2, v2

    const-string v3, ": "

    if-ge v0, v2, :cond_ac

    .line 1491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scaling"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1490
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 1492
    .end local v0  # "i":I
    :cond_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timelineCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1493
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_ca
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v2, v2

    if-ge v0, v2, :cond_f8

    .line 1494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeline"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1493
    add-int/lit8 v0, v0, 0x1

    goto :goto_ca

    .line 1495
    .end local v0  # "i":I
    :cond_f8
    return-void
.end method

.method public scale(F)V
    .registers 3
    .param p1, "scale"  # F

    .line 1413
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->scale(F)V

    .line 1414
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1415
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1416
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V
    .registers 3
    .param p1, "value"  # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 1419
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    if-eqz v0, :cond_b

    .line 1420
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    goto :goto_e

    .line 1422
    :cond_b
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    .line 1423
    :goto_e
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V
    .registers 6
    .param p1, "value"  # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 1426
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    .line 1427
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1428
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1429
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_20

    .line 1430
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    goto :goto_2a

    .line 1432
    :cond_20
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v3, v3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1433
    :goto_2a
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v1, v1

    if-eq v0, v1, :cond_3e

    .line 1434
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    goto :goto_48

    .line 1436
    :cond_3e
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v3, v3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1437
    :goto_48
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    .line 1438
    return-void
.end method

.method public setHigh(F)V
    .registers 2
    .param p1, "value"  # F

    .line 1387
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1388
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1389
    return-void
.end method

.method public setHigh(FF)V
    .registers 3
    .param p1, "min"  # F
    .param p2, "max"  # F

    .line 1392
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1393
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1394
    return-void
.end method

.method public setHighMax(F)V
    .registers 2
    .param p1, "highMax"  # F

    .line 1409
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1410
    return-void
.end method

.method public setHighMin(F)V
    .registers 2
    .param p1, "highMin"  # F

    .line 1401
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1402
    return-void
.end method

.method public setRelative(Z)V
    .registers 2
    .param p1, "relative"  # Z

    .line 1461
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    .line 1462
    return-void
.end method

.method public setScaling([F)V
    .registers 2
    .param p1, "values"  # [F

    .line 1445
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    .line 1446
    return-void
.end method

.method public setTimeline([F)V
    .registers 2
    .param p1, "timeline"  # [F

    .line 1453
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    .line 1454
    return-void
.end method
