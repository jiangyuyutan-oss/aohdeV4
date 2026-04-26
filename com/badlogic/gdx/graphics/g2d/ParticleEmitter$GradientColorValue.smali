.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientColorValue"
.end annotation


# static fields
.field private static temp:[F


# instance fields
.field private colors:[F

.field timeline:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1587
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1592
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;-><init>()V

    .line 1589
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    .line 1590
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1593
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->alwaysActive:Z

    .line 1594
    return-void

    nop

    :array_18
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public getColor(F)[F
    .registers 16
    .param p1, "percent"  # F

    .line 1615
    const/4 v0, 0x0

    .local v0, "startIndex":I
    const/4 v1, -0x1

    .line 1616
    .local v1, "endIndex":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1617
    .local v2, "timeline":[F
    array-length v3, v2

    .line 1618
    .local v3, "n":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_6
    if-ge v4, v3, :cond_14

    .line 1619
    aget v5, v2, v4

    .line 1620
    .local v5, "t":F
    cmpl-float v6, v5, p1

    if-lez v6, :cond_10

    .line 1621
    move v1, v4

    .line 1622
    goto :goto_14

    .line 1624
    :cond_10
    move v0, v4

    .line 1618
    .end local v5  # "t":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1626
    .end local v4  # "i":I
    :cond_14
    :goto_14
    aget v4, v2, v0

    .line 1627
    .local v4, "startTime":F
    mul-int/lit8 v0, v0, 0x3

    .line 1628
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    aget v5, v5, v0

    .line 1629
    .local v5, "r1":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    .line 1630
    .local v6, "g1":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    add-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    .line 1631
    .local v7, "b1":F
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v1, v8, :cond_3d

    .line 1632
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    aput v5, v8, v9

    .line 1633
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    aput v6, v8, v11

    .line 1634
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    aput v7, v8, v10

    .line 1635
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    return-object v8

    .line 1637
    :cond_3d
    sub-float v8, p1, v4

    aget v12, v2, v1

    sub-float/2addr v12, v4

    div-float/2addr v8, v12

    .line 1638
    .local v8, "factor":F
    mul-int/lit8 v1, v1, 0x3

    .line 1639
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    iget-object v13, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    aget v13, v13, v1

    sub-float/2addr v13, v5

    mul-float/2addr v13, v8

    add-float/2addr v13, v5

    aput v13, v12, v9

    .line 1640
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    add-int/lit8 v13, v1, 0x1

    aget v12, v12, v13

    sub-float/2addr v12, v6

    mul-float/2addr v12, v8

    add-float/2addr v12, v6

    aput v12, v9, v11

    .line 1641
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    add-int/lit8 v12, v1, 0x2

    aget v11, v11, v12

    sub-float/2addr v11, v7

    mul-float/2addr v11, v8

    add-float/2addr v11, v7

    aput v11, v9, v10

    .line 1642
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    return-object v9
.end method

.method public getColors()[F
    .registers 2

    .line 1606
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    return-object v0
.end method

.method public getTimeline()[F
    .registers 2

    .line 1597
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;)V
    .registers 6
    .param p1, "value"  # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    .line 1668
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;)V

    .line 1669
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    .line 1670
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1671
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1672
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1673
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

    .line 1657
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Ljava/io/BufferedReader;)V

    .line 1658
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->active:Z

    if-nez v0, :cond_8

    return-void

    .line 1659
    :cond_8
    const-string v0, "colorsCount"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    .line 1660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 1661
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "colors"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 1660
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1662
    .end local v0  # "i":I
    :cond_36
    const-string v0, "timelineCount"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1663
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_41
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v1, v1

    if-ge v0, v1, :cond_64

    .line 1664
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

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

    .line 1663
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 1665
    .end local v0  # "i":I
    :cond_64
    return-void
.end method

.method public save(Ljava/io/Writer;)V
    .registers 7
    .param p1, "output"  # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1646
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->save(Ljava/io/Writer;)V

    .line 1647
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->active:Z

    if-nez v0, :cond_8

    return-void

    .line 1648
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "colorsCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1649
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v2, v2

    const-string v3, ": "

    if-ge v0, v2, :cond_58

    .line 1650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "colors"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1649
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1651
    .end local v0  # "i":I
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timelineCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1652
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_76
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v2, v2

    if-ge v0, v2, :cond_a4

    .line 1653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeline"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1652
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 1654
    .end local v0  # "i":I
    :cond_a4
    return-void
.end method

.method public setColors([F)V
    .registers 2
    .param p1, "colors"  # [F

    .line 1611
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    .line 1612
    return-void
.end method

.method public setTimeline([F)V
    .registers 2
    .param p1, "timeline"  # [F

    .line 1601
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1602
    return-void
.end method
