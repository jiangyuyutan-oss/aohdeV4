.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;
.source "ScaledNumericValue.java"


# instance fields
.field private highMax:F

.field private highMin:F

.field private relative:Z

.field private scaling:[F

.field public timeline:[F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    .line 26
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v1, v2

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    .line 27
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    .line 29
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    return-void
.end method


# virtual methods
.method public getHighMax()F
    .registers 2

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    return v0
.end method

.method public getHighMin()F
    .registers 2

    .line 46
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    return v0
.end method

.method public getScale(F)F
    .registers 10
    .param p1, "percent"  # F

    .line 86
    const/4 v0, -0x1

    .line 87
    .local v0, "endIndex":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    array-length v1, v1

    .line 90
    .local v1, "n":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_14

    .line 91
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    aget v3, v3, v2

    .line 92
    .local v3, "t":F
    cmpl-float v4, v3, p1

    if-lez v4, :cond_11

    .line 93
    move v0, v2

    .line 94
    goto :goto_14

    .line 90
    .end local v3  # "t":F
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 97
    .end local v2  # "i":I
    :cond_14
    :goto_14
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1e

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    return v2

    .line 98
    :cond_1e
    add-int/lit8 v2, v0, -0x1

    .line 99
    .local v2, "startIndex":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    aget v3, v3, v2

    .line 100
    .local v3, "startValue":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    aget v4, v4, v2

    .line 101
    .local v4, "startTime":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    aget v5, v5, v0

    sub-float/2addr v5, v3

    sub-float v6, p1, v4

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    aget v7, v7, v0

    sub-float/2addr v7, v4

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    return v5
.end method

.method public getScaling()[F
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    return-object v0
.end method

.method public getTimeline()[F
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    return-object v0
.end method

.method public isRelative()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V
    .registers 6
    .param p1, "value"  # Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 105
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    .line 106
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    .line 107
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    .line 108
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    .line 111
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    .line 113
    return-void
.end method

.method public newHighValue()F
    .registers 4

    .line 32
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    sub-float/2addr v1, v2

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 5
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 127
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 128
    const-string v0, "highMin"

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    .line 129
    const-string v0, "highMax"

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    .line 130
    const-string v0, "relative"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    .line 131
    const-string v0, "scaling"

    const-class v1, [F

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    .line 132
    const-string v0, "timeline"

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    .line 133
    return-void
.end method

.method public setHigh(F)V
    .registers 2
    .param p1, "value"  # F

    .line 36
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    .line 37
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    .line 38
    return-void
.end method

.method public setHigh(FF)V
    .registers 3
    .param p1, "min"  # F
    .param p2, "max"  # F

    .line 41
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    .line 42
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    .line 43
    return-void
.end method

.method public setHighMax(F)V
    .registers 2
    .param p1, "highMax"  # F

    .line 58
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    .line 59
    return-void
.end method

.method public setHighMin(F)V
    .registers 2
    .param p1, "highMin"  # F

    .line 50
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    .line 51
    return-void
.end method

.method public setRelative(Z)V
    .registers 2
    .param p1, "relative"  # Z

    .line 82
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    .line 83
    return-void
.end method

.method public setScaling([F)V
    .registers 2
    .param p1, "values"  # [F

    .line 66
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    .line 67
    return-void
.end method

.method public setTimeline([F)V
    .registers 2
    .param p1, "timeline"  # [F

    .line 74
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    .line 75
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .registers 4
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;

    .line 117
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 118
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "highMin"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "highMax"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "relative"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v0, "scaling"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v0, "timeline"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    return-void
.end method
