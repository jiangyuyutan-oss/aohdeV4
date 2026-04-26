.class public final Lcom/badlogic/gdx/math/WindowedMean;
.super Ljava/lang/Object;
.source "WindowedMean.java"


# instance fields
.field added_values:I

.field dirty:Z

.field last_value:I

.field mean:F

.field values:[F


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "window_size"  # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->mean:F

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    .line 36
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    .line 37
    return-void
.end method


# virtual methods
.method public addValue(F)V
    .registers 6
    .param p1, "value"  # F

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_d

    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    .line 58
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    aput p1, v0, v1

    .line 59
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_22

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    .line 60
    :cond_22
    iput-boolean v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    .line 61
    return-void
.end method

.method public clear()V
    .registers 4

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    .line 47
    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 50
    .end local v0  # "i":I
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    .line 51
    return-void
.end method

.method public getHighest()F
    .registers 4

    .line 112
    const/high16 v0, 0x800000

    .line 113
    .local v0, "lowest":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 114
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    aget v2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 115
    .end local v1  # "i":I
    :cond_13
    return v0
.end method

.method public getLatest()F
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    goto :goto_f

    :cond_d
    iget v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    :goto_f
    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLowest()F
    .registers 4

    .line 105
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 106
    .local v0, "lowest":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 107
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    aget v2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 108
    .end local v1  # "i":I
    :cond_14
    return v0
.end method

.method public getMean()F
    .registers 4

    .line 67
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 68
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    if-eqz v0, :cond_24

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "mean":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v2, v2

    if-ge v1, v2, :cond_19

    .line 71
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    aget v2, v2, v1

    add-float/2addr v0, v2

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 73
    .end local v1  # "i":I
    :cond_19
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    int-to-float v1, v1

    div-float v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->mean:F

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    .line 76
    .end local v0  # "mean":F
    :cond_24
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->mean:F

    return v0

    .line 78
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public getOldest()F
    .registers 3

    .line 83
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    aget v0, v0, v1

    :goto_13
    return v0
.end method

.method public getValueCount()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    return v0
.end method

.method public getWindowSize()I
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v0, v0

    return v0
.end method

.method public getWindowValues()[F
    .registers 6

    .line 129
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    new-array v0, v0, [F

    .line 130
    .local v0, "windowValues":[F
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 132
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v4, v4

    rem-int/2addr v3, v4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .end local v1  # "i":I
    :cond_1e
    goto :goto_27

    .line 135
    :cond_1f
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    :goto_27
    return-object v0
.end method

.method public hasEnoughData()Z
    .registers 3

    .line 41
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public standardDeviation()F
    .registers 6

    .line 93
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 95
    :cond_8
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result v0

    .line 96
    .local v0, "mean":F
    const/4 v1, 0x0

    .line 97
    .local v1, "sum":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v3, v3

    if-ge v2, v3, :cond_22

    .line 98
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    aget v3, v3, v2

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    aget v4, v4, v2

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 101
    .end local v2  # "i":I
    :cond_22
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v2, v2

    int-to-float v2, v2

    div-float v2, v1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method
