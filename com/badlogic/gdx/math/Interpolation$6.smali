.class final Lcom/badlogic/gdx/math/Interpolation$6;
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

    .line 76
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 5
    .param p1, "a"  # F

    .line 78
    const v0, 0x358637bd  # 1.0E-6f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    const/4 v0, 0x0

    return v0

    .line 79
    :cond_9
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_10

    return v0

    .line 80
    :cond_10
    sub-float v1, p1, v0

    neg-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method
