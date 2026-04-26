.class final Lcom/badlogic/gdx/utils/Scaling$4;
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

    .line 69
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Scaling;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(FFFF)Lcom/badlogic/gdx/math/Vector2;
    .registers 8
    .param p1, "sourceWidth"  # F
    .param p2, "sourceHeight"  # F
    .param p3, "targetWidth"  # F
    .param p4, "targetHeight"  # F

    .line 71
    div-float v0, p4, p2

    .line 72
    .local v0, "scale":F
    sget-object v1, Lcom/badlogic/gdx/utils/Scaling$4;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v2, p1, v0

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 73
    sget-object v1, Lcom/badlogic/gdx/utils/Scaling$4;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v2, p2, v0

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 74
    sget-object v1, Lcom/badlogic/gdx/utils/Scaling$4;->temp:Lcom/badlogic/gdx/math/Vector2;

    return-object v1
.end method
