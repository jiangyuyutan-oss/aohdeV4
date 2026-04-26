.class public final Lcom/badlogic/gdx/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/MathUtils$Sin;
    }
.end annotation


# static fields
.field private static final BIG_ENOUGH_CEIL:D = 16384.999999999996

.field private static final BIG_ENOUGH_FLOOR:D = 16384.0

.field private static final BIG_ENOUGH_INT:I = 0x4000

.field private static final BIG_ENOUGH_ROUND:D = 16384.5

.field private static final CEIL:D = 0.9999999

.field public static final E:F = 2.7182817f

.field public static final FLOAT_ROUNDING_ERROR:F = 1.0E-6f

.field public static final HALF_PI:F = 1.5707964f

.field public static final PI:F = 3.1415927f

.field public static final PI2:F = 6.2831855f

.field private static final SIN_BITS:I = 0xe

.field private static final SIN_COUNT:I = 0x4000

.field private static final SIN_MASK:I = 0x3fff

.field private static final degFull:F = 360.0f

.field public static final degRad:F = 0.017453292f

.field private static final degToIndex:F = 45.511112f

.field public static final degreesToRadians:F = 0.017453292f

.field public static final nanoToSec:F = 1.0E-9f

.field public static final radDeg:F = 57.295776f

.field private static final radFull:F = 6.2831855f

.field private static final radToIndex:F = 2607.5945f

.field public static final radiansToDegrees:F = 57.295776f

.field public static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 149
    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/RandomXS128;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static acos(F)F
    .registers 10
    .param p0, "a"  # F

    .line 117
    mul-float v0, p0, p0

    .line 118
    .local v0, "a2":F
    mul-float v1, p0, v0

    .line 119
    .local v1, "a3":F
    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    const v3, 0x3c996e30

    const v4, 0x3d981627

    const v5, 0x3e593484

    const v6, 0x3fc90da4

    const/high16 v7, 0x3f800000  # 1.0f

    if-ltz v2, :cond_26

    .line 120
    sub-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr v5, p0

    sub-float/2addr v6, v5

    mul-float/2addr v4, v0

    add-float/2addr v6, v4

    mul-float/2addr v3, v1

    sub-float/2addr v6, v3

    mul-float/2addr v2, v6

    return v2

    .line 124
    :cond_26
    add-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr v5, p0

    add-float/2addr v5, v6

    mul-float/2addr v4, v0

    add-float/2addr v5, v4

    mul-float/2addr v3, v1

    add-float/2addr v5, v3

    mul-float/2addr v2, v5

    const v3, 0x40490fdb  # (float)Math.PI

    sub-float/2addr v3, v2

    return v3
.end method

.method public static asin(F)F
    .registers 10
    .param p0, "a"  # F

    .line 135
    mul-float v0, p0, p0

    .line 136
    .local v0, "a2":F
    mul-float v1, p0, v0

    .line 137
    .local v1, "a3":F
    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    const v3, 0x3c996e30

    const v4, 0x3d981627

    const v5, 0x3e593484

    const v6, 0x3fc90da4

    const/high16 v7, 0x3f800000  # 1.0f

    if-ltz v2, :cond_2a

    .line 138
    sub-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr v5, p0

    sub-float/2addr v6, v5

    mul-float/2addr v4, v0

    add-float/2addr v6, v4

    mul-float/2addr v3, v1

    sub-float/2addr v6, v3

    mul-float/2addr v2, v6

    const v3, 0x3fc90fdb

    sub-float/2addr v3, v2

    return v3

    .line 142
    :cond_2a
    add-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr v5, p0

    add-float/2addr v5, v6

    mul-float/2addr v4, v0

    add-float/2addr v5, v4

    mul-float/2addr v3, v1

    add-float/2addr v5, v3

    mul-float/2addr v2, v5

    const v3, -0x4036f025

    add-float/2addr v2, v3

    return v2
.end method

.method public static atan2(FF)F
    .registers 9
    .param p0, "y"  # F
    .param p1, "x"  # F

    .line 96
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const v2, 0x3fc90fdb

    if-nez v1, :cond_16

    .line 97
    cmpl-float v1, p0, v0

    if-lez v1, :cond_d

    return v2

    .line 98
    :cond_d
    cmpl-float v1, p0, v0

    if-nez v1, :cond_12

    return v0

    .line 99
    :cond_12
    const v0, -0x4036f025

    return v0

    .line 101
    :cond_16
    div-float v1, p0, p1

    .line 102
    .local v1, "z":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    cmpg-float v3, v3, v4

    const v5, 0x40490fdb  # (float)Math.PI

    const v6, 0x3e8f5c29  # 0.28f

    if-gez v3, :cond_3b

    .line 103
    mul-float/2addr v6, v1

    mul-float/2addr v6, v1

    add-float/2addr v6, v4

    div-float v2, v1, v6

    .line 104
    .local v2, "atan":F
    cmpg-float v3, p1, v0

    if-gez v3, :cond_3a

    cmpg-float v0, p0, v0

    if-gez v0, :cond_38

    const v5, -0x3fb6f025

    :cond_38
    add-float/2addr v5, v2

    return v5

    .line 105
    :cond_3a
    return v2

    .line 107
    .end local v2  # "atan":F
    :cond_3b
    mul-float v3, v1, v1

    add-float/2addr v3, v6

    div-float v3, v1, v3

    sub-float/2addr v2, v3

    .line 108
    .restart local v2  # "atan":F
    cmpg-float v0, p0, v0

    if-gez v0, :cond_48

    sub-float v0, v2, v5

    goto :goto_49

    :cond_48
    move v0, v2

    :goto_49
    return v0
.end method

.method public static ceil(F)I
    .registers 5
    .param p0, "value"  # F

    .line 381
    const-wide/high16 v0, 0x40d0000000000000L  # 16384.0

    float-to-double v2, p0

    sub-double/2addr v0, v2

    double-to-int v0, v0

    rsub-int v0, v0, 0x4000

    return v0
.end method

.method public static ceilPositive(F)I
    .registers 5
    .param p0, "value"  # F

    .line 387
    float-to-double v0, p0

    const-wide v2, 0x3fefffffca501acbL  # 0.9999999

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static clamp(DDD)D
    .registers 7
    .param p0, "value"  # D
    .param p2, "min"  # D
    .param p4, "max"  # D

    .line 301
    cmpg-double v0, p0, p2

    if-gez v0, :cond_5

    return-wide p2

    .line 302
    :cond_5
    cmpl-double v0, p0, p4

    if-lez v0, :cond_a

    return-wide p4

    .line 303
    :cond_a
    return-wide p0
.end method

.method public static clamp(FFF)F
    .registers 4
    .param p0, "value"  # F
    .param p1, "min"  # F
    .param p2, "max"  # F

    .line 295
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    return p1

    .line 296
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_a

    return p2

    .line 297
    :cond_a
    return p0
.end method

.method public static clamp(III)I
    .registers 3
    .param p0, "value"  # I
    .param p1, "min"  # I
    .param p2, "max"  # I

    .line 283
    if-ge p0, p1, :cond_3

    return p1

    .line 284
    :cond_3
    if-le p0, p2, :cond_6

    return p2

    .line 285
    :cond_6
    return p0
.end method

.method public static clamp(JJJ)J
    .registers 7
    .param p0, "value"  # J
    .param p2, "min"  # J
    .param p4, "max"  # J

    .line 289
    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    return-wide p2

    .line 290
    :cond_5
    cmp-long v0, p0, p4

    if-lez v0, :cond_a

    return-wide p4

    .line 291
    :cond_a
    return-wide p0
.end method

.method public static clamp(SSS)S
    .registers 3
    .param p0, "value"  # S
    .param p1, "min"  # S
    .param p2, "max"  # S

    .line 277
    if-ge p0, p1, :cond_3

    return p1

    .line 278
    :cond_3
    if-le p0, p2, :cond_6

    return p2

    .line 279
    :cond_6
    return p0
.end method

.method public static cos(F)F
    .registers 4
    .param p0, "radians"  # F

    .line 76
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x3fc90fdb

    add-float/2addr v1, p0

    const v2, 0x4522f983

    mul-float/2addr v1, v2

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    aget v0, v0, v1

    return v0
.end method

.method public static cosDeg(F)F
    .registers 4
    .param p0, "degrees"  # F

    .line 88
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const/high16 v1, 0x42b40000  # 90.0f

    add-float/2addr v1, p0

    const v2, 0x42360b61

    mul-float/2addr v1, v2

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    aget v0, v0, v1

    return v0
.end method

.method public static floor(F)I
    .registers 5
    .param p0, "value"  # F

    .line 369
    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0000000000000L  # 16384.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static floorPositive(F)I
    .registers 2
    .param p0, "value"  # F

    .line 375
    float-to-int v0, p0

    return v0
.end method

.method public static isEqual(FF)Z
    .registers 4
    .param p0, "a"  # F
    .param p1, "b"  # F

    .line 416
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd  # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static isEqual(FFF)Z
    .registers 4
    .param p0, "a"  # F
    .param p1, "b"  # F
    .param p2, "tolerance"  # F

    .line 424
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isPowerOfTwo(I)Z
    .registers 2
    .param p0, "value"  # I

    .line 271
    if-eqz p0, :cond_9

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static isZero(F)Z
    .registers 3
    .param p0, "value"  # F

    .line 403
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd  # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static isZero(FF)Z
    .registers 3
    .param p0, "value"  # F
    .param p1, "tolerance"  # F

    .line 409
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static lerp(FFF)F
    .registers 4
    .param p0, "fromValue"  # F
    .param p1, "toValue"  # F
    .param p2, "progress"  # F

    .line 310
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static lerpAngle(FFF)F
    .registers 6
    .param p0, "fromRadians"  # F
    .param p1, "toRadians"  # F
    .param p2, "progress"  # F

    .line 342
    sub-float v0, p1, p0

    const v1, 0x40c90fdb

    add-float/2addr v0, v1

    const v2, 0x40490fdb  # (float)Math.PI

    add-float/2addr v0, v2

    rem-float/2addr v0, v1

    sub-float/2addr v0, v2

    .line 343
    .local v0, "delta":F
    mul-float v2, v0, p2

    add-float/2addr v2, p0

    add-float/2addr v2, v1

    rem-float/2addr v2, v1

    return v2
.end method

.method public static lerpAngleDeg(FFF)F
    .registers 6
    .param p0, "fromDegrees"  # F
    .param p1, "toDegrees"  # F
    .param p2, "progress"  # F

    .line 354
    sub-float v0, p1, p0

    const/high16 v1, 0x43b40000  # 360.0f

    add-float/2addr v0, v1

    const/high16 v2, 0x43340000  # 180.0f

    add-float/2addr v0, v2

    rem-float/2addr v0, v1

    sub-float/2addr v0, v2

    .line 355
    .local v0, "delta":F
    mul-float v2, v0, p2

    add-float/2addr v2, p0

    add-float/2addr v2, v1

    rem-float/2addr v2, v1

    return v2
.end method

.method public static log(FF)F
    .registers 6
    .param p0, "a"  # F
    .param p1, "value"  # F

    .line 429
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static log2(F)F
    .registers 2
    .param p0, "value"  # F

    .line 434
    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {v0, p0}, Lcom/badlogic/gdx/math/MathUtils;->log(FF)F

    move-result v0

    return v0
.end method

.method public static map(FFFFF)F
    .registers 7
    .param p0, "inRangeStart"  # F
    .param p1, "inRangeEnd"  # F
    .param p2, "outRangeStart"  # F
    .param p3, "outRangeEnd"  # F
    .param p4, "value"  # F

    .line 331
    sub-float v0, p4, p0

    sub-float v1, p3, p2

    mul-float/2addr v0, v1

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public static nextPowerOfTwo(I)I
    .registers 2
    .param p0, "value"  # I

    .line 260
    if-nez p0, :cond_4

    const/4 v0, 0x1

    return v0

    .line 261
    :cond_4
    add-int/lit8 p0, p0, -0x1

    .line 262
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 263
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 264
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 265
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 266
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 267
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static norm(FFF)F
    .registers 5
    .param p0, "rangeStart"  # F
    .param p1, "rangeEnd"  # F
    .param p2, "value"  # F

    .line 319
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static random()F
    .registers 1

    .line 199
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static random(F)F
    .registers 2
    .param p0, "range"  # F

    .line 204
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static random(FF)F
    .registers 4
    .param p0, "start"  # F
    .param p1, "end"  # F

    .line 209
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static random(I)I
    .registers 3
    .param p0, "range"  # I

    .line 153
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static random(II)I
    .registers 4
    .param p0, "start"  # I
    .param p1, "end"  # I

    .line 158
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static random(J)J
    .registers 4
    .param p0, "range"  # J

    .line 164
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/badlogic/gdx/math/MathUtils;->random(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static random(JJ)J
    .registers 25
    .param p0, "start"  # J
    .param p2, "end"  # J

    .line 169
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 172
    .local v0, "rand":J
    cmp-long v2, p2, p0

    if-gez v2, :cond_10

    .line 173
    move-wide/from16 v2, p2

    .line 174
    .local v2, "t":J
    move-wide/from16 v4, p0

    .line 175
    .end local p2  # "end":J
    .local v4, "end":J
    move-wide v6, v2

    .end local p0  # "start":J
    .local v6, "start":J
    goto :goto_14

    .line 172
    .end local v2  # "t":J
    .end local v4  # "end":J
    .end local v6  # "start":J
    .restart local p0  # "start":J
    .restart local p2  # "end":J
    :cond_10
    move-wide/from16 v6, p0

    move-wide/from16 v4, p2

    .line 177
    .end local p0  # "start":J
    .end local p2  # "end":J
    .restart local v4  # "end":J
    .restart local v6  # "start":J
    :goto_14
    sub-long v2, v4, v6

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 180
    .local v2, "bound":J
    const-wide v8, 0xffffffffL

    and-long v10, v0, v8

    .line 181
    .local v10, "randLow":J
    and-long/2addr v8, v2

    .line 182
    .local v8, "boundLow":J
    const/16 v12, 0x20

    ushr-long v13, v0, v12

    .line 183
    .local v13, "randHigh":J
    ushr-long v15, v2, v12

    .line 184
    .local v15, "boundHigh":J
    mul-long v17, v13, v8

    ushr-long v17, v17, v12

    add-long v17, v6, v17

    mul-long v19, v10, v15

    ushr-long v19, v19, v12

    add-long v17, v17, v19

    mul-long v19, v13, v15

    add-long v17, v17, v19

    return-wide v17
.end method

.method public static randomBoolean()Z
    .registers 1

    .line 189
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static randomBoolean(F)Z
    .registers 2
    .param p0, "chance"  # F

    .line 194
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    cmpg-float v0, v0, p0

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static randomSign()I
    .registers 1

    .line 214
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1f

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static randomTriangular()F
    .registers 2

    .line 222
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static randomTriangular(F)F
    .registers 3
    .param p0, "max"  # F

    .line 231
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static randomTriangular(FF)F
    .registers 4
    .param p0, "min"  # F
    .param p1, "max"  # F

    .line 241
    add-float v0, p0, p1

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float/2addr v0, v1

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/MathUtils;->randomTriangular(FFF)F

    move-result v0

    return v0
.end method

.method public static randomTriangular(FFF)F
    .registers 7
    .param p0, "min"  # F
    .param p1, "max"  # F
    .param p2, "mode"  # F

    .line 250
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 251
    .local v0, "u":F
    sub-float v1, p1, p0

    .line 252
    .local v1, "d":F
    sub-float v2, p2, p0

    div-float/2addr v2, v1

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1c

    mul-float v2, v0, v1

    sub-float v3, p2, p0

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v2, p0

    return v2

    .line 253
    :cond_1c
    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v2, v1

    sub-float v3, p1, p2

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v2, p1, v2

    return v2
.end method

.method public static round(F)I
    .registers 5
    .param p0, "value"  # F

    .line 393
    float-to-double v0, p0

    const-wide v2, 0x40d0002000000000L  # 16384.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static roundPositive(F)I
    .registers 2
    .param p0, "value"  # F

    .line 398
    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static sin(F)F
    .registers 3
    .param p0, "radians"  # F

    .line 70
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x4522f983

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    aget v0, v0, v1

    return v0
.end method

.method public static sinDeg(F)F
    .registers 3
    .param p0, "degrees"  # F

    .line 82
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x42360b61

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    aget v0, v0, v1

    return v0
.end method
