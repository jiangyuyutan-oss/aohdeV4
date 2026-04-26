.class public Lcom/badlogic/gdx/utils/viewport/ExtendViewport;
.super Lcom/badlogic/gdx/utils/viewport/Viewport;
.source "ExtendViewport.java"


# instance fields
.field private maxWorldHeight:F

.field private maxWorldWidth:F

.field private minWorldHeight:F

.field private minWorldWidth:F


# direct methods
.method public constructor <init>(FF)V
    .registers 9
    .param p1, "minWorldWidth"  # F
    .param p2, "minWorldHeight"  # F

    .line 34
    new-instance v5, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;-><init>(FFFFLcom/badlogic/gdx/graphics/Camera;)V

    .line 35
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 11
    .param p1, "minWorldWidth"  # F
    .param p2, "minWorldHeight"  # F
    .param p3, "maxWorldWidth"  # F
    .param p4, "maxWorldHeight"  # F

    .line 45
    new-instance v5, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;-><init>(FFFFLcom/badlogic/gdx/graphics/Camera;)V

    .line 46
    return-void
.end method

.method public constructor <init>(FFFFLcom/badlogic/gdx/graphics/Camera;)V
    .registers 6
    .param p1, "minWorldWidth"  # F
    .param p2, "minWorldHeight"  # F
    .param p3, "maxWorldWidth"  # F
    .param p4, "maxWorldHeight"  # F
    .param p5, "camera"  # Lcom/badlogic/gdx/graphics/Camera;

    .line 51
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/viewport/Viewport;-><init>()V

    .line 52
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    .line 53
    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    .line 54
    iput p3, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    .line 55
    iput p4, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    .line 56
    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->setCamera(Lcom/badlogic/gdx/graphics/Camera;)V

    .line 57
    return-void
.end method

.method public constructor <init>(FFLcom/badlogic/gdx/graphics/Camera;)V
    .registers 10
    .param p1, "minWorldWidth"  # F
    .param p2, "minWorldHeight"  # F
    .param p3, "camera"  # Lcom/badlogic/gdx/graphics/Camera;

    .line 39
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;-><init>(FFFFLcom/badlogic/gdx/graphics/Camera;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getMaxWorldHeight()F
    .registers 2

    .line 117
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    return v0
.end method

.method public getMaxWorldWidth()F
    .registers 2

    .line 109
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    return v0
.end method

.method public getMinWorldHeight()F
    .registers 2

    .line 101
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    return v0
.end method

.method public getMinWorldWidth()F
    .registers 2

    .line 93
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    return v0
.end method

.method public setMaxWorldHeight(F)V
    .registers 2
    .param p1, "maxWorldHeight"  # F

    .line 121
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    .line 122
    return-void
.end method

.method public setMaxWorldWidth(F)V
    .registers 2
    .param p1, "maxWorldWidth"  # F

    .line 113
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    .line 114
    return-void
.end method

.method public setMinWorldHeight(F)V
    .registers 2
    .param p1, "minWorldHeight"  # F

    .line 105
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    .line 106
    return-void
.end method

.method public setMinWorldWidth(F)V
    .registers 2
    .param p1, "minWorldWidth"  # F

    .line 97
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    .line 98
    return-void
.end method

.method public update(IIZ)V
    .registers 14
    .param p1, "screenWidth"  # I
    .param p2, "screenHeight"  # I
    .param p3, "centerCamera"  # Z

    .line 61
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    .line 62
    .local v0, "worldWidth":F
    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    .line 63
    .local v1, "worldHeight":F
    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/badlogic/gdx/utils/Scaling;->apply(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 66
    .local v2, "scaled":Lcom/badlogic/gdx/math/Vector2;
    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 67
    .local v3, "viewportWidth":I
    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 68
    .local v4, "viewportHeight":I
    const/4 v5, 0x0

    if-ge v3, p1, :cond_3c

    .line 69
    int-to-float v6, v4

    div-float/2addr v6, v1

    .line 70
    .local v6, "toViewportSpace":F
    int-to-float v7, v4

    div-float v7, v1, v7

    .line 71
    .local v7, "toWorldSpace":F
    sub-int v8, p1, v3

    int-to-float v8, v8

    mul-float/2addr v8, v7

    .line 72
    .local v8, "lengthen":F
    iget v9, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    cmpl-float v5, v9, v5

    if-lez v5, :cond_33

    iget v5, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    iget v9, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    sub-float/2addr v5, v9

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 73
    :cond_33
    add-float/2addr v0, v8

    .line 74
    mul-float v5, v8, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v3, v5

    .end local v6  # "toViewportSpace":F
    .end local v7  # "toWorldSpace":F
    .end local v8  # "lengthen":F
    goto :goto_5f

    .line 75
    :cond_3c
    if-ge v4, p2, :cond_5f

    .line 76
    int-to-float v6, v3

    div-float/2addr v6, v0

    .line 77
    .restart local v6  # "toViewportSpace":F
    int-to-float v7, v3

    div-float v7, v0, v7

    .line 78
    .restart local v7  # "toWorldSpace":F
    sub-int v8, p2, v4

    int-to-float v8, v8

    mul-float/2addr v8, v7

    .line 79
    .restart local v8  # "lengthen":F
    iget v9, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    cmpl-float v5, v9, v5

    if-lez v5, :cond_56

    iget v5, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    iget v9, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    sub-float/2addr v5, v9

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 80
    :cond_56
    add-float/2addr v1, v8

    .line 81
    mul-float v5, v8, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_60

    .line 75
    .end local v6  # "toViewportSpace":F
    .end local v7  # "toWorldSpace":F
    .end local v8  # "lengthen":F
    :cond_5f
    :goto_5f
    nop

    .line 84
    :goto_60
    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->setWorldSize(FF)V

    .line 87
    sub-int v5, p1, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v6, p2, v4

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v5, v6, v3, v4}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->setScreenBounds(IIII)V

    .line 89
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->apply(Z)V

    .line 90
    return-void
.end method
