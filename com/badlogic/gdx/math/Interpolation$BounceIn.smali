.class public Lcom/badlogic/gdx/math/Interpolation$BounceIn;
.super Lcom/badlogic/gdx/math/Interpolation$BounceOut;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BounceIn"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "bounces"  # I

    .line 387
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>(I)V

    .line 388
    return-void
.end method

.method public constructor <init>([F[F)V
    .registers 3
    .param p1, "widths"  # [F
    .param p2, "heights"  # [F

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>([F[F)V

    .line 384
    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 4
    .param p1, "a"  # F

    .line 391
    const/high16 v0, 0x3f800000  # 1.0f

    sub-float v1, v0, p1

    invoke-super {p0, v1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->apply(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method
