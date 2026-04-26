.class public abstract Lcom/badlogic/gdx/utils/viewport/Viewport;
.super Ljava/lang/Object;
.source "Viewport.java"


# instance fields
.field private camera:Lcom/badlogic/gdx/graphics/Camera;

.field private screenHeight:I

.field private screenWidth:I

.field private screenX:I

.field private screenY:I

.field private final tmp:Lcom/badlogic/gdx/math/Vector3;

.field private worldHeight:F

.field private worldWidth:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 2

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply(Z)V

    .line 44
    return-void
.end method

.method public apply(Z)V
    .registers 6
    .param p1, "centerCamera"  # Z

    .line 49
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    iget v3, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->glViewport(IIII)V

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldWidth:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldHeight:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    .line 52
    if-eqz p1, :cond_29

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldWidth:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldHeight:F

    div-float/2addr v3, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 53
    :cond_29
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    .line 54
    return-void
.end method

.method public calculateScissors(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .registers 12
    .param p1, "batchTransform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "area"  # Lcom/badlogic/gdx/math/Rectangle;
    .param p3, "scissor"  # Lcom/badlogic/gdx/math/Rectangle;

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v4, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;FFFFLcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 113
    return-void
.end method

.method public getBottomGutterHeight()I
    .registers 2

    .line 232
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    return v0
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    return-object v0
.end method

.method public getLeftGutterWidth()I
    .registers 2

    .line 217
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    return v0
.end method

.method public getPickRay(FF)Lcom/badlogic/gdx/math/collision/Ray;
    .registers 10
    .param p1, "screenX"  # F
    .param p2, "screenY"  # F

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v3, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v4, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v5, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v6, v1

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Camera;->getPickRay(FFFFFF)Lcom/badlogic/gdx/math/collision/Ray;

    move-result-object v0

    return-object v0
.end method

.method public getRightGutterWidth()I
    .registers 4

    .line 227
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRightGutterX()I
    .registers 3

    .line 222
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getScreenHeight()I
    .registers 2

    .line 187
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    return v0
.end method

.method public getScreenX()I
    .registers 2

    .line 160
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    return v0
.end method

.method public getScreenY()I
    .registers 2

    .line 169
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    return v0
.end method

.method public getTopGutterHeight()I
    .registers 4

    .line 242
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTopGutterY()I
    .registers 3

    .line 237
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWorldHeight()F
    .registers 2

    .line 146
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldHeight:F

    return v0
.end method

.method public getWorldWidth()F
    .registers 2

    .line 137
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldWidth:F

    return v0
.end method

.method public project(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 12
    .param p1, "worldCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 84
    iget-object v4, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v6, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v7, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v8, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v9, v0

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 86
    return-object p1
.end method

.method public project(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .registers 8
    .param p1, "worldCoords"  # Lcom/badlogic/gdx/math/Vector3;

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v2, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v3, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v4, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 102
    return-object p1
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .registers 2
    .param p1, "camera"  # Lcom/badlogic/gdx/graphics/Camera;

    .line 133
    iput-object p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 134
    return-void
.end method

.method public setScreenBounds(IIII)V
    .registers 5
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "screenWidth"  # I
    .param p4, "screenHeight"  # I

    .line 209
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    .line 210
    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    .line 211
    iput p3, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    .line 212
    iput p4, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    .line 213
    return-void
.end method

.method public setScreenHeight(I)V
    .registers 2
    .param p1, "screenHeight"  # I

    .line 192
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    .line 193
    return-void
.end method

.method public setScreenPosition(II)V
    .registers 3
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I

    .line 197
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    .line 198
    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    .line 199
    return-void
.end method

.method public setScreenSize(II)V
    .registers 3
    .param p1, "screenWidth"  # I
    .param p2, "screenHeight"  # I

    .line 203
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    .line 204
    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    .line 205
    return-void
.end method

.method public setScreenWidth(I)V
    .registers 2
    .param p1, "screenWidth"  # I

    .line 183
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    .line 184
    return-void
.end method

.method public setScreenX(I)V
    .registers 2
    .param p1, "screenX"  # I

    .line 165
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    .line 166
    return-void
.end method

.method public setScreenY(I)V
    .registers 2
    .param p1, "screenY"  # I

    .line 174
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    .line 175
    return-void
.end method

.method public setWorldHeight(F)V
    .registers 2
    .param p1, "worldHeight"  # F

    .line 151
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldHeight:F

    .line 152
    return-void
.end method

.method public setWorldSize(FF)V
    .registers 3
    .param p1, "worldWidth"  # F
    .param p2, "worldHeight"  # F

    .line 155
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldWidth:F

    .line 156
    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldHeight:F

    .line 157
    return-void
.end method

.method public setWorldWidth(F)V
    .registers 2
    .param p1, "worldWidth"  # F

    .line 142
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->worldWidth:F

    .line 143
    return-void
.end method

.method public toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;
    .registers 10
    .param p1, "worldCoords"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "transformMatrix"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 120
    iget-object v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v4, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v5, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 124
    return-object p1
.end method

.method public unproject(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 12
    .param p1, "screenCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 74
    iget-object v4, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v6, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v7, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v8, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v9, v0

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/Camera;->unproject(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 76
    return-object p1
.end method

.method public unproject(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .registers 8
    .param p1, "screenCoords"  # Lcom/badlogic/gdx/math/Vector3;

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenX:I

    int-to-float v2, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenY:I

    int-to-float v3, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenWidth:I

    int-to-float v4, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->screenHeight:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Camera;->unproject(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 94
    return-object p1
.end method

.method public final update(II)V
    .registers 4
    .param p1, "screenWidth"  # I
    .param p2, "screenHeight"  # I

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    .line 59
    return-void
.end method

.method public update(IIZ)V
    .registers 4
    .param p1, "screenWidth"  # I
    .param p2, "screenHeight"  # I
    .param p3, "centerCamera"  # Z

    .line 66
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply(Z)V

    .line 67
    return-void
.end method
