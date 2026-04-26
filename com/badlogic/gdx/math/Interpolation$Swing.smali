.class public Lcom/badlogic/gdx/math/Interpolation$Swing;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Swing"
.end annotation


# instance fields
.field private final scale:F


# direct methods
.method public constructor <init>(F)V
    .registers 3
    .param p1, "scale"  # F

    .line 400
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 401
    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Interpolation$Swing;->scale:F

    .line 402
    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 7
    .param p1, "a"  # F

    .line 405
    const/high16 v0, 0x3f000000  # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x40000000  # 2.0f

    const/high16 v2, 0x3f800000  # 1.0f

    if-gtz v0, :cond_17

    .line 406
    mul-float/2addr p1, v1

    .line 407
    mul-float v0, p1, p1

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$Swing;->scale:F

    add-float/2addr v3, v2

    mul-float/2addr v3, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Swing;->scale:F

    sub-float/2addr v3, v2

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    return v0

    .line 409
    :cond_17
    sub-float/2addr p1, v2

    .line 410
    mul-float/2addr p1, v1

    .line 411
    mul-float v0, p1, p1

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$Swing;->scale:F

    add-float/2addr v3, v2

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/badlogic/gdx/math/Interpolation$Swing;->scale:F

    add-float/2addr v3, v4

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method
