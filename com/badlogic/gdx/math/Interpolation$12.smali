.class final Lcom/badlogic/gdx/math/Interpolation$12;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 7
    .param p1, "a"  # F

    .line 134
    const/high16 v0, 0x3f000000  # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x40000000  # 2.0f

    const/high16 v2, 0x3f800000  # 1.0f

    if-gtz v0, :cond_18

    .line 135
    mul-float/2addr p1, v1

    .line 136
    mul-float v0, p1, p1

    sub-float v0, v2, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    sub-float/2addr v2, v0

    div-float/2addr v2, v1

    return v2

    .line 138
    :cond_18
    sub-float/2addr p1, v2

    .line 139
    mul-float/2addr p1, v1

    .line 140
    mul-float v0, p1, p1

    sub-float v0, v2, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    return v0
.end method
