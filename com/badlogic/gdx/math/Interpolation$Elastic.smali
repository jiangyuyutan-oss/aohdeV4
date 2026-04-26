.class public Lcom/badlogic/gdx/math/Interpolation$Elastic;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Elastic"
.end annotation


# instance fields
.field final bounces:F

.field final power:F

.field final scale:F

.field final value:F


# direct methods
.method public constructor <init>(FFIF)V
    .registers 7
    .param p1, "value"  # F
    .param p2, "power"  # F
    .param p3, "bounces"  # I
    .param p4, "scale"  # F

    .line 247
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 248
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    .line 249
    iput p2, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    .line 250
    iput p4, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->scale:F

    .line 251
    int-to-float v0, p3

    const v1, 0x40490fdb  # (float)Math.PI

    mul-float/2addr v0, v1

    rem-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, -0x1

    :goto_15
    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->bounces:F

    .line 252
    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 9
    .param p1, "a"  # F

    .line 255
    const/high16 v0, 0x3f000000  # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x40000000  # 2.0f

    const/high16 v2, 0x3f800000  # 1.0f

    if-gtz v0, :cond_26

    .line 256
    mul-float/2addr p1, v1

    .line 257
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    float-to-double v3, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    sub-float v2, p1, v2

    mul-float/2addr v0, v2

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->bounces:F

    mul-float/2addr v2, p1

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->scale:F

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    return v0

    .line 259
    :cond_26
    sub-float p1, v2, p1

    .line 260
    mul-float/2addr p1, v1

    .line 261
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    float-to-double v3, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    sub-float v5, p1, v2

    mul-float/2addr v0, v5

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v0, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->bounces:F

    mul-float/2addr v3, p1

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v3

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->scale:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    return v2
.end method
