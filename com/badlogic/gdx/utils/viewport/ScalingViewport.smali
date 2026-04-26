.class public Lcom/badlogic/gdx/utils/viewport/ScalingViewport;
.super Lcom/badlogic/gdx/utils/viewport/Viewport;
.source "ScalingViewport.java"


# instance fields
.field private scaling:Lcom/badlogic/gdx/utils/Scaling;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Scaling;FF)V
    .registers 5
    .param p1, "scaling"  # Lcom/badlogic/gdx/utils/Scaling;
    .param p2, "worldWidth"  # F
    .param p3, "worldHeight"  # F

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;-><init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V
    .registers 5
    .param p1, "scaling"  # Lcom/badlogic/gdx/utils/Scaling;
    .param p2, "worldWidth"  # F
    .param p3, "worldHeight"  # F
    .param p4, "camera"  # Lcom/badlogic/gdx/graphics/Camera;

    .line 46
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/viewport/Viewport;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->setWorldSize(FF)V

    .line 49
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->setCamera(Lcom/badlogic/gdx/graphics/Camera;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getScaling()Lcom/badlogic/gdx/utils/Scaling;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    return-object v0
.end method

.method public setScaling(Lcom/badlogic/gdx/utils/Scaling;)V
    .registers 2
    .param p1, "scaling"  # Lcom/badlogic/gdx/utils/Scaling;

    .line 68
    iput-object p1, p0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    .line 69
    return-void
.end method

.method public update(IIZ)V
    .registers 9
    .param p1, "screenWidth"  # I
    .param p2, "screenHeight"  # I
    .param p3, "centerCamera"  # Z

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->getWorldWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->getWorldHeight()F

    move-result v2

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Scaling;->apply(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 54
    .local v0, "scaled":Lcom/badlogic/gdx/math/Vector2;
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 55
    .local v1, "viewportWidth":I
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 58
    .local v2, "viewportHeight":I
    sub-int v3, p1, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p2, v2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->setScreenBounds(IIII)V

    .line 60
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->apply(Z)V

    .line 61
    return-void
.end method
