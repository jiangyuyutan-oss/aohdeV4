.class public Lage/of/civilizations2/jakowski/lukasz/MapA/Distance;
.super Ljava/lang/Object;
.source "Distance.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDistanceFromAToB_PercOfMax(II)F
    .registers 4
    .param p0, "nProvinceA"  # I
    .param p1, "nProvinceB"  # I

    .line 33
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Distance;->getDistanceFromCapital(II)F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMaxDistance()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static getDistanceFromCapital(II)F
    .registers 11
    .param p0, "nCapital"  # I
    .param p1, "toProvinceID"  # I

    .line 10
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    .line 11
    .local v0, "provinceTo":Lage/of/civilizations2/jakowski/lukasz/Province;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 13
    .local v1, "provinceCapital":Lage/of/civilizations2/jakowski/lukasz/Province;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getIsMapWorldMap(I)Z

    move-result v2

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    if-eqz v2, :cond_a2

    .line 14
    nop

    .line 15
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthReal()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-double v5, v2

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-double v7, v2

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 16
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthReal()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v7

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 15
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 17
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v7

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2

    .line 21
    :cond_a2
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-double v5, v2

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-double v7, v2

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c3} :catch_c5

    double-to-float v2, v2

    return v2

    .line 23
    .end local v0  # "provinceTo":Lage/of/civilizations2/jakowski/lukasz/Province;
    .end local v1  # "provinceCapital":Lage/of/civilizations2/jakowski/lukasz/Province;
    :catch_c5
    move-exception v0

    .line 24
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMaxDistance()I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method public static getDistanceFromCapital_PercOfMax(II)F
    .registers 4
    .param p0, "nCapital"  # I
    .param p1, "toProvinceID"  # I

    .line 29
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Distance;->getDistanceFromCapital(II)F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMaxDistance()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static getManhattanDistance(II)F
    .registers 10
    .param p0, "provA"  # I
    .param p1, "provB"  # I

    .line 37
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    .line 38
    .local v0, "provinceA":Lage/of/civilizations2/jakowski/lukasz/Province;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 40
    .local v1, "provinceB":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 41
    .local v2, "xDifference":I
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v3

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 43
    .local v3, "yDifference":I
    add-int v4, v2, v3

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthReal()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v6

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    return v4
.end method

.method public static getManhattanDistance_PercOfMax(II)F
    .registers 10
    .param p0, "provA"  # I
    .param p1, "provB"  # I

    .line 47
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    .line 48
    .local v0, "provinceA":Lage/of/civilizations2/jakowski/lukasz/Province;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 50
    .local v1, "provinceB":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 51
    .local v2, "xDifference":I
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v3

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 53
    .local v3, "yDifference":I
    add-int v4, v2, v3

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthReal()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeXR()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v6

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeYR()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMaxDistance()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    return v4
.end method
