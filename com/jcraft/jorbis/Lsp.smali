.class Lcom/jcraft/jorbis/Lsp;
.super Ljava/lang/Object;
.source "Lsp.java"


# static fields
.field static final M_PI:F = 3.1415927f


# direct methods
.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static lsp_to_curve([F[III[FIFF)V
    .registers 26
    .param p0, "curve"  # [F
    .param p1, "map"  # [I
    .param p2, "n"  # I
    .param p3, "ln"  # I
    .param p4, "lsp"  # [F
    .param p5, "m"  # I
    .param p6, "amp"  # F
    .param p7, "ampoffset"  # F

    .line 46
    move/from16 v0, p2

    move/from16 v1, p5

    const v2, 0x40490fdb  # (float)Math.PI

    move/from16 v3, p3

    int-to-float v4, v3

    div-float/2addr v2, v4

    .line 47
    .local v2, "wdel":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v1, :cond_19

    .line 48
    aget v5, p4, v4

    invoke-static {v5}, Lcom/jcraft/jorbis/Lookup;->coslook(F)F

    move-result v5

    aput v5, p4, v4

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 49
    :cond_19
    div-int/lit8 v5, v1, 0x2

    mul-int/lit8 v5, v5, 0x2

    .line 51
    .local v5, "m2":I
    const/4 v4, 0x0

    .line 52
    :goto_1e
    if-ge v4, v0, :cond_b3

    .line 53
    aget v6, p1, v4

    .line 54
    .local v6, "k":I
    const v7, 0x3f3504f3

    .line 55
    .local v7, "p":F
    const v8, 0x3f3504f3

    .line 56
    .local v8, "q":F
    int-to-float v9, v6

    mul-float/2addr v9, v2

    invoke-static {v9}, Lcom/jcraft/jorbis/Lookup;->coslook(F)F

    move-result v9

    .line 58
    .local v9, "w":F
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2f
    if-ge v10, v5, :cond_3e

    .line 59
    aget v11, p4, v10

    sub-float/2addr v11, v9

    mul-float/2addr v8, v11

    .line 60
    add-int/lit8 v11, v10, 0x1

    aget v11, p4, v11

    sub-float/2addr v11, v9

    mul-float/2addr v7, v11

    .line 58
    add-int/lit8 v10, v10, 0x2

    goto :goto_2f

    .line 63
    .end local v10  # "j":I
    :cond_3e
    and-int/lit8 v10, v1, 0x1

    const/high16 v11, 0x3f800000  # 1.0f

    if-eqz v10, :cond_51

    .line 66
    add-int/lit8 v10, v1, -0x1

    aget v10, p4, v10

    sub-float/2addr v10, v9

    mul-float/2addr v8, v10

    .line 67
    mul-float/2addr v8, v8

    .line 68
    mul-float v10, v9, v9

    sub-float/2addr v11, v10

    mul-float/2addr v11, v7

    mul-float/2addr v7, v11

    goto :goto_58

    .line 72
    :cond_51
    add-float v10, v9, v11

    mul-float/2addr v10, v8

    mul-float/2addr v8, v10

    .line 73
    sub-float/2addr v11, v9

    mul-float/2addr v11, v7

    mul-float/2addr v7, v11

    .line 77
    :goto_58
    add-float/2addr v8, v7

    .line 78
    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v10

    .line 79
    .local v10, "hx":I
    const v11, 0x7fffffff

    and-int v12, v10, v11

    .line 80
    .local v12, "ix":I
    const/4 v13, 0x0

    .line 82
    .local v13, "qexp":I
    const/high16 v14, 0x7f800000  # Float.POSITIVE_INFINITY

    if-ge v12, v14, :cond_8d

    if-nez v12, :cond_6a

    goto :goto_8d

    .line 86
    :cond_6a
    const/high16 v14, 0x800000

    if-ge v12, v14, :cond_7c

    .line 87
    float-to-double v14, v8

    const-wide/high16 v16, 0x4180000000000000L  # 3.3554432E7

    mul-double v14, v14, v16

    double-to-float v8, v14

    .line 88
    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v10

    .line 89
    and-int v12, v10, v11

    .line 90
    const/16 v13, -0x19

    .line 92
    :cond_7c
    ushr-int/lit8 v11, v12, 0x17

    add-int/lit8 v11, v11, -0x7e

    add-int/2addr v13, v11

    .line 93
    const v11, -0x7f800001

    and-int/2addr v11, v10

    const/high16 v14, 0x3f000000  # 0.5f

    or-int v10, v11, v14

    .line 94
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 97
    :cond_8d
    :goto_8d
    invoke-static {v8}, Lcom/jcraft/jorbis/Lookup;->invsqlook(F)F

    move-result v11

    mul-float v11, v11, p6

    add-int v14, v13, v1

    invoke-static {v14}, Lcom/jcraft/jorbis/Lookup;->invsq2explook(I)F

    move-result v14

    mul-float/2addr v11, v14

    sub-float v11, v11, p7

    invoke-static {v11}, Lcom/jcraft/jorbis/Lookup;->fromdBlook(F)F

    move-result v8

    .line 101
    :goto_a0
    add-int/lit8 v11, v4, 0x1

    .end local v4  # "i":I
    .local v11, "i":I
    aget v14, p0, v4

    mul-float/2addr v14, v8

    aput v14, p0, v4

    .line 103
    if-ge v11, v0, :cond_b0

    aget v4, p1, v11

    if-eq v4, v6, :cond_ae

    goto :goto_b0

    :cond_ae
    move v4, v11

    goto :goto_a0

    .line 105
    .end local v6  # "k":I
    .end local v7  # "p":F
    .end local v8  # "q":F
    .end local v9  # "w":F
    .end local v10  # "hx":I
    .end local v12  # "ix":I
    .end local v13  # "qexp":I
    :cond_b0
    :goto_b0
    move v4, v11

    goto/16 :goto_1e

    .line 106
    .end local v11  # "i":I
    .restart local v4  # "i":I
    :cond_b3
    return-void
.end method
