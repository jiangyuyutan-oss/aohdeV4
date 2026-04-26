.class Lcom/jcraft/jorbis/Lpc;
.super Ljava/lang/Object;
.source "Lpc.java"


# instance fields
.field fft:Lcom/jcraft/jorbis/Drft;

.field ln:I

.field m:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/jcraft/jorbis/Drft;

    invoke-direct {v0}, Lcom/jcraft/jorbis/Drft;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jorbis/Lpc;->fft:Lcom/jcraft/jorbis/Drft;

    return-void
.end method

.method static FAST_HYPOT(FF)F
    .registers 4
    .param p0, "a"  # F
    .param p1, "b"  # F

    .line 150
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static lpc_from_data([F[FII)F
    .registers 15
    .param p0, "data"  # [F
    .param p1, "lpc"  # [F
    .param p2, "n"  # I
    .param p3, "m"  # I

    .line 43
    add-int/lit8 v0, p3, 0x1

    new-array v0, v0, [F

    .line 49
    .local v0, "aut":[F
    add-int/lit8 v1, p3, 0x1

    .line 50
    .local v1, "j":I
    :goto_6
    add-int/lit8 v2, v1, -0x1

    .end local v1  # "j":I
    .local v2, "j":I
    if-eqz v1, :cond_1d

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "d":F
    move v3, v2

    .local v3, "i":I
    :goto_c
    if-ge v3, p2, :cond_19

    .line 53
    aget v4, p0, v3

    sub-int v5, v3, v2

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 54
    :cond_19
    aput v1, v0, v2

    .line 55
    .end local v1  # "d":F
    move v1, v2

    goto :goto_6

    .line 59
    .end local v3  # "i":I
    :cond_1d
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 67
    .local v1, "error":F
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_21
    if-ge v3, p3, :cond_7e

    .line 68
    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    neg-float v4, v4

    .line 70
    .local v4, "r":F
    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    if-nez v6, :cond_36

    .line 71
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2e
    if-ge v6, p3, :cond_35

    .line 72
    aput v5, p1, v6

    .line 71
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 73
    .end local v6  # "k":I
    :cond_35
    return v5

    .line 81
    :cond_36
    const/4 v2, 0x0

    :goto_37
    if-ge v2, v3, :cond_44

    .line 82
    aget v5, p1, v2

    sub-int v6, v3, v2

    aget v6, v0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 83
    :cond_44
    div-float/2addr v4, v1

    .line 87
    aput v4, p1, v3

    .line 88
    const/4 v2, 0x0

    :goto_48
    div-int/lit8 v5, v3, 0x2

    if-ge v2, v5, :cond_66

    .line 89
    aget v5, p1, v2

    .line 90
    .local v5, "tmp":F
    aget v6, p1, v2

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v2

    aget v7, p1, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    aput v6, p1, v2

    .line 91
    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v2

    aget v7, p1, v6

    mul-float v8, v4, v5

    add-float/2addr v7, v8

    aput v7, p1, v6

    .line 88
    .end local v5  # "tmp":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 93
    :cond_66
    rem-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_72

    .line 94
    aget v5, p1, v2

    aget v6, p1, v2

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    aput v5, p1, v2

    .line 96
    :cond_72
    float-to-double v5, v1

    mul-float v7, v4, v4

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v9, v7

    mul-double/2addr v5, v9

    double-to-float v1, v5

    .line 67
    .end local v4  # "r":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 102
    :cond_7e
    return v1
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/jcraft/jorbis/Lpc;->fft:Lcom/jcraft/jorbis/Drft;

    invoke-virtual {v0}, Lcom/jcraft/jorbis/Drft;->clear()V

    .line 147
    return-void
.end method

.method init(II)V
    .registers 5
    .param p1, "mapped"  # I
    .param p2, "m"  # I

    .line 138
    iput p1, p0, Lcom/jcraft/jorbis/Lpc;->ln:I

    .line 139
    iput p2, p0, Lcom/jcraft/jorbis/Lpc;->m:I

    .line 142
    iget-object v0, p0, Lcom/jcraft/jorbis/Lpc;->fft:Lcom/jcraft/jorbis/Drft;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/jcraft/jorbis/Drft;->init(I)V

    .line 143
    return-void
.end method

.method lpc_from_curve([F[F)F
    .registers 11
    .param p1, "curve"  # [F
    .param p2, "lpc"  # [F

    .line 109
    iget v0, p0, Lcom/jcraft/jorbis/Lpc;->ln:I

    .line 110
    .local v0, "n":I
    add-int v1, v0, v0

    new-array v1, v1, [F

    .line 111
    .local v1, "work":[F
    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    int-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 116
    .local v2, "fscale":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v0, :cond_1f

    .line 117
    mul-int/lit8 v4, v3, 0x2

    aget v5, p1, v3

    mul-float/2addr v5, v2

    aput v5, v1, v4

    .line 118
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    aput v5, v1, v4

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 120
    :cond_1f
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v0, -0x1

    aget v5, p1, v5

    mul-float/2addr v5, v2

    aput v5, v1, v4

    .line 122
    mul-int/lit8 v0, v0, 0x2

    .line 123
    iget-object v4, p0, Lcom/jcraft/jorbis/Lpc;->fft:Lcom/jcraft/jorbis/Drft;

    invoke-virtual {v4, v1}, Lcom/jcraft/jorbis/Drft;->backward([F)V

    .line 128
    const/4 v3, 0x0

    div-int/lit8 v4, v0, 0x2

    .local v4, "j":I
    :goto_34
    div-int/lit8 v5, v0, 0x2

    if-ge v3, v5, :cond_47

    .line 129
    aget v5, v1, v3

    .line 130
    .local v5, "temp":F
    add-int/lit8 v6, v3, 0x1

    .end local v3  # "i":I
    .local v6, "i":I
    aget v7, v1, v4

    aput v7, v1, v3

    .line 131
    add-int/lit8 v3, v4, 0x1

    .end local v4  # "j":I
    .local v3, "j":I
    aput v5, v1, v4

    .line 132
    .end local v5  # "temp":F
    move v4, v3

    move v3, v6

    goto :goto_34

    .line 134
    .end local v6  # "i":I
    .local v3, "i":I
    .restart local v4  # "j":I
    :cond_47
    iget v5, p0, Lcom/jcraft/jorbis/Lpc;->m:I

    invoke-static {v1, p2, v0, v5}, Lcom/jcraft/jorbis/Lpc;->lpc_from_data([F[FII)F

    move-result v5

    return v5
.end method

.method lpc_to_curve([F[FF)V
    .registers 14
    .param p1, "curve"  # [F
    .param p2, "lpc"  # [F
    .param p3, "amp"  # F

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/jcraft/jorbis/Lpc;->ln:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    .line 163
    aput v2, p1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    .end local v0  # "i":I
    :cond_d
    cmpl-float v0, p3, v2

    if-nez v0, :cond_12

    .line 166
    return-void

    .line 168
    :cond_12
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_13
    iget v1, p0, Lcom/jcraft/jorbis/Lpc;->m:I

    if-ge v0, v1, :cond_32

    .line 169
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v2, p2, v0

    const/high16 v3, 0x40800000  # 4.0f

    mul-float v4, p3, v3

    div-float/2addr v2, v4

    aput v2, p1, v1

    .line 170
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    aget v2, p2, v0

    neg-float v2, v2

    mul-float/2addr v3, p3

    div-float/2addr v2, v3

    aput v2, p1, v1

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 173
    .end local v0  # "i":I
    :cond_32
    iget-object v0, p0, Lcom/jcraft/jorbis/Lpc;->fft:Lcom/jcraft/jorbis/Drft;

    invoke-virtual {v0, p1}, Lcom/jcraft/jorbis/Drft;->backward([F)V

    .line 176
    iget v0, p0, Lcom/jcraft/jorbis/Lpc;->ln:I

    mul-int/lit8 v0, v0, 0x2

    .line 177
    .local v0, "l2":I
    float-to-double v1, p3

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    div-double v1, v3, v1

    double-to-float v1, v1

    .line 178
    .local v1, "unit":F
    const/4 v2, 0x0

    aget v5, p1, v2

    const/high16 v6, 0x40000000  # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    float-to-double v5, v5

    div-double v5, v3, v5

    double-to-float v5, v5

    aput v5, p1, v2

    .line 179
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_4f
    iget v5, p0, Lcom/jcraft/jorbis/Lpc;->ln:I

    if-ge v2, v5, :cond_70

    .line 180
    aget v5, p1, v2

    sub-int v6, v0, v2

    aget v6, p1, v6

    add-float/2addr v5, v6

    .line 181
    .local v5, "real":F
    aget v6, p1, v2

    sub-int v7, v0, v2

    aget v7, p1, v7

    sub-float/2addr v6, v7

    .line 183
    .local v6, "imag":F
    add-float v7, v5, v1

    .line 184
    .local v7, "a":F
    invoke-static {v7, v6}, Lcom/jcraft/jorbis/Lpc;->FAST_HYPOT(FF)F

    move-result v8

    float-to-double v8, v8

    div-double v8, v3, v8

    double-to-float v8, v8

    aput v8, p1, v2

    .line 179
    .end local v5  # "real":F
    .end local v6  # "imag":F
    .end local v7  # "a":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 187
    .end local v0  # "l2":I
    .end local v1  # "unit":F
    .end local v2  # "i":I
    :cond_70
    return-void
.end method
