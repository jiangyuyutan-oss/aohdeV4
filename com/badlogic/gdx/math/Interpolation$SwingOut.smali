.class public Lcom/badlogic/gdx/math/Interpolation$SwingOut;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwingOut"
.end annotation


# instance fields
.field private final scale:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .param p1, "scale"  # F

    .line 418
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 419
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$SwingOut;->scale:F

    .line 420
    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 6
    .param p1, "a"  # F

    .line 423
    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr p1, v0

    .line 424
    mul-float v1, p1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$SwingOut;->scale:F

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$SwingOut;->scale:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method
