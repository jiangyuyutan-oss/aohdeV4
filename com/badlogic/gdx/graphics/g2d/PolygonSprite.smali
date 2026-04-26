.class public Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;
.super Ljava/lang/Object;
.source "PolygonSprite.java"


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private dirty:Z

.field private height:F

.field private originX:F

.field private originY:F

.field region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private vertices:[F

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V
    .registers 5
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 34
    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 35
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 38
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    .line 39
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    int-to-float v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setSize(FF)V

    .line 40
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setOrigin(FF)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;)V
    .registers 4
    .param p1, "sprite"  # Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 34
    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 35
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->set(Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;)V

    .line 46
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V
    .registers 12
    .param p1, "spriteBatch"  # Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    .line 260
    .local v0, "region":Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->getVertices()[F

    move-result-object v4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    array-length v6, v1

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    array-length v9, v1

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V

    .line 261
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;F)V
    .registers 6
    .param p1, "spriteBatch"  # Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;
    .param p2, "alphaModulation"  # F

    .line 264
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 265
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 266
    .local v1, "oldAlpha":F
    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, p2

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 267
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V

    .line 269
    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 270
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 271
    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .registers 10

    .line 235
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->getVertices()[F

    move-result-object v0

    .line 237
    .local v0, "vertices":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 238
    .local v2, "minx":F
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 239
    .local v4, "miny":F
    aget v1, v0, v1

    .line 240
    .local v1, "maxx":F
    aget v3, v0, v3

    .line 242
    .local v3, "maxy":F
    const/4 v5, 0x5

    .local v5, "i":I
    :goto_f
    array-length v6, v0

    if-ge v5, v6, :cond_3b

    .line 243
    aget v6, v0, v5

    .line 244
    .local v6, "x":F
    add-int/lit8 v7, v5, 0x1

    aget v7, v0, v7

    .line 245
    .local v7, "y":F
    cmpl-float v8, v2, v6

    if-lez v8, :cond_1e

    move v8, v6

    goto :goto_1f

    :cond_1e
    move v8, v2

    :goto_1f
    move v2, v8

    .line 246
    cmpg-float v8, v1, v6

    if-gez v8, :cond_26

    move v8, v6

    goto :goto_27

    :cond_26
    move v8, v1

    :goto_27
    move v1, v8

    .line 247
    cmpl-float v8, v4, v7

    if-lez v8, :cond_2e

    move v8, v7

    goto :goto_2f

    :cond_2e
    move v8, v4

    :goto_2f
    move v4, v8

    .line 248
    cmpg-float v8, v3, v7

    if-gez v8, :cond_36

    move v8, v7

    goto :goto_37

    :cond_36
    move v8, v3

    :goto_37
    move v3, v8

    .line 242
    .end local v6  # "x":F
    .end local v7  # "y":F
    add-int/lit8 v5, v5, 0x5

    goto :goto_f

    .line 251
    .end local v5  # "i":I
    :cond_3b
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v2, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 252
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v4, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 253
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v6, v1, v2

    iput v6, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 254
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v6, v3, v4

    iput v6, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 255
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v5
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHeight()F
    .registers 2

    .line 286
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    return v0
.end method

.method public getOriginX()F
    .registers 2

    .line 290
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    return v0
.end method

.method public getOriginY()F
    .registers 2

    .line 294
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    return v0
.end method

.method public getPackedColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 4

    .line 319
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 320
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    return-object v0
.end method

.method public getRotation()F
    .registers 2

    .line 298
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 302
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 306
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    return v0
.end method

.method public getVertices()[F
    .registers 22

    .line 202
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    return-object v1

    .line 203
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 205
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    .line 206
    .local v1, "originX":F
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    .line 207
    .local v2, "originY":F
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 208
    .local v3, "scaleX":F
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 209
    .local v4, "scaleY":F
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    .line 210
    .local v5, "region":Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 211
    .local v6, "vertices":[F
    iget-object v7, v5, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 213
    .local v7, "regionVertices":[F
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    add-float/2addr v8, v1

    .line 214
    .local v8, "worldOriginX":F
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    add-float/2addr v9, v2

    .line 215
    .local v9, "worldOriginY":F
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    iget-object v11, v5, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 216
    .local v10, "sX":F
    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 217
    .local v11, "sY":F
    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    invoke-static {v12}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v12

    .line 218
    .local v12, "cos":F
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    invoke-static {v13}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v13

    .line 221
    .local v13, "sin":F
    const/4 v14, 0x0

    .local v14, "i":I
    const/4 v15, 0x0

    .local v15, "v":I
    array-length v0, v7

    .local v0, "n":I
    :goto_43
    if-ge v14, v0, :cond_72

    .line 222
    aget v16, v7, v14

    mul-float v16, v16, v10

    sub-float v16, v16, v1

    mul-float v16, v16, v3

    .line 223
    .local v16, "fx":F
    add-int/lit8 v17, v14, 0x1

    aget v17, v7, v17

    mul-float v17, v17, v11

    sub-float v17, v17, v2

    mul-float v17, v17, v4

    .line 224
    .local v17, "fy":F
    mul-float v18, v12, v16

    mul-float v19, v13, v17

    sub-float v18, v18, v19

    add-float v18, v18, v8

    aput v18, v6, v15

    .line 225
    add-int/lit8 v18, v15, 0x1

    mul-float v19, v13, v16

    mul-float v20, v12, v17

    add-float v19, v19, v20

    add-float v19, v19, v9

    aput v19, v6, v18

    .line 221
    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v15, v15, 0x5

    goto :goto_43

    .line 227
    .end local v0  # "n":I
    .end local v14  # "i":I
    .end local v15  # "v":I
    .end local v16  # "fx":F
    .end local v17  # "fy":F
    :cond_72
    return-object v6
.end method

.method public getWidth()F
    .registers 2

    .line 282
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    return v0
.end method

.method public getX()F
    .registers 2

    .line 274
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 278
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    return v0
.end method

.method public rotate(F)V
    .registers 3
    .param p1, "degrees"  # F

    .line 177
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 179
    return-void
.end method

.method public scale(F)V
    .registers 3
    .param p1, "amount"  # F

    .line 195
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 196
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 198
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;)V
    .registers 4
    .param p1, "sprite"  # Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    .line 49
    if-eqz p1, :cond_33

    .line 51
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    .line 53
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    .line 55
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    .line 56
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    .line 57
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    .line 58
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    .line 59
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    .line 60
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 61
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 63
    return-void

    .line 49
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sprite cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBounds(FFFF)V
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "width"  # F
    .param p4, "height"  # F

    .line 68
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    .line 69
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    .line 70
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    .line 71
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 74
    return-void
.end method

.method public setColor(FFFF)V
    .registers 9
    .param p1, "r"  # F
    .param p2, "g"  # F
    .param p3, "b"  # F
    .param p4, "a"  # F

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 158
    .local v0, "packedColor":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 159
    .local v1, "vertices":[F
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_16

    .line 160
    aput v0, v1, v2

    .line 159
    add-int/lit8 v2, v2, 0x5

    goto :goto_e

    .line 161
    .end local v2  # "i":I
    :cond_16
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 6
    .param p1, "tint"  # Lcom/badlogic/gdx/graphics/Color;

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 148
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 150
    .local v0, "color":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 151
    .local v1, "vertices":[F
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_14

    .line 152
    aput v0, v1, v2

    .line 151
    add-int/lit8 v2, v2, 0x5

    goto :goto_c

    .line 153
    .end local v2  # "i":I
    :cond_14
    return-void
.end method

.method public setOrigin(FF)V
    .registers 4
    .param p1, "originX"  # F
    .param p2, "originY"  # F

    .line 165
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    .line 166
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 168
    return-void
.end method

.method public setPosition(FF)V
    .registers 5
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 90
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->translate(FF)V

    .line 91
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V
    .registers 11
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    .line 324
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    .line 326
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 327
    .local v0, "regionVertices":[F
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 329
    .local v1, "textureCoords":[F
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x5

    .line 330
    .local v2, "verticesLength":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    array-length v3, v3

    if-eq v3, v2, :cond_18

    :cond_14
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 333
    :cond_18
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    .line 334
    .local v3, "floatColor":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 335
    .local v4, "vertices":[F
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x2

    .local v6, "v":I
    :goto_22
    if-ge v6, v2, :cond_39

    .line 336
    aput v3, v4, v6

    .line 337
    add-int/lit8 v7, v6, 0x1

    aget v8, v1, v5

    aput v8, v4, v7

    .line 338
    add-int/lit8 v7, v6, 0x2

    add-int/lit8 v8, v5, 0x1

    aget v8, v1, v8

    aput v8, v4, v7

    .line 335
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x5

    goto :goto_22

    .line 341
    .end local v5  # "i":I
    .end local v6  # "v":I
    :cond_39
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 342
    return-void
.end method

.method public setRotation(F)V
    .registers 3
    .param p1, "degrees"  # F

    .line 171
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 173
    return-void
.end method

.method public setScale(F)V
    .registers 3
    .param p1, "scaleXY"  # F

    .line 182
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 183
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 185
    return-void
.end method

.method public setScale(FF)V
    .registers 4
    .param p1, "scaleX"  # F
    .param p2, "scaleY"  # F

    .line 188
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 189
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 191
    return-void
.end method

.method public setSize(FF)V
    .registers 4
    .param p1, "width"  # F
    .param p2, "height"  # F

    .line 80
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    .line 81
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 84
    return-void
.end method

.method public setX(F)V
    .registers 3
    .param p1, "x"  # F

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->translateX(F)V

    .line 98
    return-void
.end method

.method public setY(F)V
    .registers 3
    .param p1, "y"  # F

    .line 104
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->translateY(F)V

    .line 105
    return-void
.end method

.method public translate(FF)V
    .registers 7
    .param p1, "xAmount"  # F
    .param p2, "yAmount"  # F

    .line 134
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    .line 135
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    .line 137
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    if-eqz v0, :cond_f

    return-void

    .line 139
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 140
    .local v0, "vertices":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_24

    .line 141
    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 142
    add-int/lit8 v2, v1, 0x1

    aget v3, v0, v2

    add-float/2addr v3, p2

    aput v3, v0, v2

    .line 140
    add-int/lit8 v1, v1, 0x5

    goto :goto_12

    .line 144
    .end local v1  # "i":I
    :cond_24
    return-void
.end method

.method public translateX(F)V
    .registers 5
    .param p1, "xAmount"  # F

    .line 110
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    .line 112
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    if-eqz v0, :cond_a

    return-void

    .line 114
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 115
    .local v0, "vertices":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 116
    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 115
    add-int/lit8 v1, v1, 0x5

    goto :goto_d

    .line 117
    .end local v1  # "i":I
    :cond_18
    return-void
.end method

.method public translateY(F)V
    .registers 5
    .param p1, "yAmount"  # F

    .line 122
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    .line 124
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    if-eqz v0, :cond_a

    return-void

    .line 126
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 127
    .local v0, "vertices":[F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 128
    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 127
    add-int/lit8 v1, v1, 0x5

    goto :goto_d

    .line 129
    .end local v1  # "i":I
    :cond_18
    return-void
.end method
