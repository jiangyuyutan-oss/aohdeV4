.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;
.source "GradientColorValue.java"


# static fields
.field private static temp:[F


# instance fields
.field private colors:[F

.field public timeline:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->temp:[F

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;-><init>()V

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    return-void

    nop

    :array_16
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public getColor(F[FI)V
    .registers 16
    .param p1, "percent"  # F
    .param p2, "out"  # [F
    .param p3, "index"  # I

    .line 52
    const/4 v0, 0x0

    .local v0, "startIndex":I
    const/4 v1, -0x1

    .line 53
    .local v1, "endIndex":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    .line 54
    .local v2, "timeline":[F
    array-length v3, v2

    .line 55
    .local v3, "n":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_6
    if-ge v4, v3, :cond_14

    .line 56
    aget v5, v2, v4

    .line 57
    .local v5, "t":F
    cmpl-float v6, v5, p1

    if-lez v6, :cond_10

    .line 58
    move v1, v4

    .line 59
    goto :goto_14

    .line 61
    :cond_10
    move v0, v4

    .line 55
    .end local v5  # "t":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 63
    .end local v4  # "i":I
    :cond_14
    :goto_14
    aget v4, v2, v0

    .line 64
    .local v4, "startTime":F
    mul-int/lit8 v0, v0, 0x3

    .line 65
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    aget v5, v5, v0

    .line 66
    .local v5, "r1":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    .line 67
    .local v6, "g1":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    add-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    .line 68
    .local v7, "b1":F
    const/4 v8, -0x1

    if-ne v1, v8, :cond_36

    .line 69
    aput v5, p2, p3

    .line 70
    add-int/lit8 v8, p3, 0x1

    aput v6, p2, v8

    .line 71
    add-int/lit8 v8, p3, 0x2

    aput v7, p2, v8

    .line 72
    return-void

    .line 74
    :cond_36
    sub-float v8, p1, v4

    aget v9, v2, v1

    sub-float/2addr v9, v4

    div-float/2addr v8, v9

    .line 75
    .local v8, "factor":F
    mul-int/lit8 v1, v1, 0x3

    .line 76
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    aget v9, v9, v1

    sub-float/2addr v9, v5

    mul-float/2addr v9, v8

    add-float/2addr v9, v5

    aput v9, p2, p3

    .line 77
    add-int/lit8 v9, p3, 0x1

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    add-int/lit8 v11, v1, 0x1

    aget v10, v10, v11

    sub-float/2addr v10, v6

    mul-float/2addr v10, v8

    add-float/2addr v10, v6

    aput v10, p2, v9

    .line 78
    add-int/lit8 v9, p3, 0x2

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    add-int/lit8 v11, v1, 0x2

    aget v10, v10, v11

    sub-float/2addr v10, v7

    mul-float/2addr v10, v8

    add-float/2addr v10, v7

    aput v10, p2, v9

    .line 79
    return-void
.end method

.method public getColor(F)[F
    .registers 4
    .param p1, "percent"  # F

    .line 47
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->temp:[F

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->getColor(F[FI)V

    .line 48
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->temp:[F

    return-object v0
.end method

.method public getColors()[F
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    return-object v0
.end method

.method public getTimeline()[F
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;)V
    .registers 6
    .param p1, "value"  # Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    .line 96
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 97
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    .line 98
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    .line 100
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 5
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 90
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 91
    const-string v0, "colors"

    const-class v1, [F

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    .line 92
    const-string v0, "timeline"

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    .line 93
    return-void
.end method

.method public setColors([F)V
    .registers 2
    .param p1, "colors"  # [F

    .line 43
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    .line 44
    return-void
.end method

.method public setTimeline([F)V
    .registers 2
    .param p1, "timeline"  # [F

    .line 35
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    .line 36
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .registers 4
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;

    .line 83
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 84
    const-string v0, "colors"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v0, "timeline"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method
