.class final Lcom/badlogic/gdx/utils/Scaling$1;
.super Lcom/badlogic/gdx/utils/Scaling;
.source "Scaling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Scaling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Scaling;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(FFFF)Lcom/badlogic/gdx/math/Vector2;
    .registers 10
    .param p1, "sourceWidth"  # F
    .param p2, "sourceHeight"  # F
    .param p3, "targetWidth"  # F
    .param p4, "targetHeight"  # F

    .line 34
    div-float v0, p4, p3

    .line 35
    .local v0, "targetRatio":F
    div-float v1, p2, p1

    .line 36
    .local v1, "sourceRatio":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_b

    div-float v2, p3, p1

    goto :goto_d

    :cond_b
    div-float v2, p4, p2

    .line 37
    .local v2, "scale":F
    :goto_d
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling$1;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p1, v2

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 38
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling$1;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p2, v2

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 39
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling$1;->temp:Lcom/badlogic/gdx/math/Vector2;

    return-object v3
.end method
