.class public abstract Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.super Ljava/lang/Object;
.source "BatchTiledMapRenderer.java"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/TiledMapRenderer;
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field protected static final NUM_VERTICES:I = 0x14


# instance fields
.field protected batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field protected imageBounds:Lcom/badlogic/gdx/math/Rectangle;

.field protected map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

.field protected ownsBatch:Z

.field protected unitScale:F

.field protected vertices:[F

.field protected viewBounds:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .registers 3
    .param p1, "map"  # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 95
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .registers 4
    .param p1, "map"  # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"  # F

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 72
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->vertices:[F

    .line 99
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 100
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    .line 101
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 102
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->ownsBatch:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .registers 5
    .param p1, "map"  # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"  # F
    .param p3, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 72
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->vertices:[F

    .line 111
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 112
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    .line 113
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 114
    iput-object p3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->ownsBatch:Z

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .registers 4
    .param p1, "map"  # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 107
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected beginRender()V
    .registers 2

    .line 246
    invoke-static {}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->updateAnimationBaseTime()V

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 248
    return-void
.end method

.method public dispose()V
    .registers 2

    .line 257
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->ownsBatch:Z

    if-eqz v0, :cond_9

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->dispose()V

    .line 260
    :cond_9
    return-void
.end method

.method protected endRender()V
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 253
    return-void
.end method

.method public getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    return-object v0
.end method

.method public getMap()Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object v0
.end method

.method public getUnitScale()F
    .registers 2

    .line 83
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    return v0
.end method

.method public getViewBounds()Lcom/badlogic/gdx/math/Rectangle;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public render()V
    .registers 3

    .line 136
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->beginRender()V

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/MapLayer;

    .line 138
    .local v1, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderMapLayer(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 139
    .end local v1  # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    goto :goto_d

    .line 140
    :cond_1d
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->endRender()V

    .line 141
    return-void
.end method

.method public render([I)V
    .registers 6
    .param p1, "layers"  # [I

    .line 145
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->beginRender()V

    .line 146
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    aget v2, p1, v1

    .line 147
    .local v2, "layerIdx":I
    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v3

    .line 148
    .local v3, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderMapLayer(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 146
    .end local v2  # "layerIdx":I
    .end local v3  # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 150
    :cond_19
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->endRender()V

    .line 151
    return-void
.end method

.method public renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V
    .registers 21
    .param p1, "layer"  # Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 188
    .local v1, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getOpacity()F

    move-result v6

    mul-float/2addr v5, v6

    .line 188
    invoke-static {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v2

    .line 193
    .local v2, "color":F
    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->vertices:[F

    .line 195
    .local v3, "vertices":[F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 197
    .local v4, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-nez v4, :cond_22

    .line 198
    return-void

    .line 201
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getX()F

    move-result v5

    .line 202
    .local v5, "x":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getY()F

    move-result v6

    .line 203
    .local v6, "y":F
    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    mul-float/2addr v7, v5

    .line 204
    .local v7, "x1":F
    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    mul-float/2addr v8, v6

    .line 205
    .local v8, "y1":F
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v7

    .line 206
    .local v9, "x2":F
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v8

    .line 208
    .local v10, "y2":F
    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v12, v9, v7

    sub-float v13, v10, v8

    invoke-virtual {v11, v7, v8, v12, v13}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 210
    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/math/Rectangle;->contains(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v11

    if-nez v11, :cond_65

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v11

    if-eqz v11, :cond_60

    goto :goto_65

    :cond_60
    move-object/from16 v17, v1

    move/from16 v18, v2

    goto :goto_d4

    .line 211
    :cond_65
    :goto_65
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v11

    .line 212
    .local v11, "u1":F
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v12

    .line 213
    .local v12, "v1":F
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v13

    .line 214
    .local v13, "u2":F
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v14

    .line 216
    .local v14, "v2":F
    const/4 v15, 0x0

    aput v7, v3, v15

    .line 217
    const/16 v16, 0x1

    aput v8, v3, v16

    .line 218
    const/16 v16, 0x2

    aput v2, v3, v16

    .line 219
    const/16 v16, 0x3

    aput v11, v3, v16

    .line 220
    const/16 v16, 0x4

    aput v12, v3, v16

    .line 222
    const/16 v16, 0x5

    aput v7, v3, v16

    .line 223
    const/16 v16, 0x6

    aput v10, v3, v16

    .line 224
    const/16 v16, 0x7

    aput v2, v3, v16

    .line 225
    const/16 v16, 0x8

    aput v11, v3, v16

    .line 226
    const/16 v16, 0x9

    aput v14, v3, v16

    .line 228
    const/16 v16, 0xa

    aput v9, v3, v16

    .line 229
    const/16 v16, 0xb

    aput v10, v3, v16

    .line 230
    const/16 v16, 0xc

    aput v2, v3, v16

    .line 231
    const/16 v16, 0xd

    aput v13, v3, v16

    .line 232
    const/16 v16, 0xe

    aput v14, v3, v16

    .line 234
    const/16 v16, 0xf

    aput v9, v3, v16

    .line 235
    const/16 v16, 0x10

    aput v8, v3, v16

    .line 236
    const/16 v16, 0x11

    aput v2, v3, v16

    .line 237
    const/16 v16, 0x12

    aput v13, v3, v16

    .line 238
    const/16 v16, 0x13

    aput v12, v3, v16

    .line 240
    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    move-object/from16 v17, v1

    .end local v1  # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .local v17, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    const/16 v1, 0x14

    move/from16 v18, v2

    const/4 v2, 0x0

    .end local v2  # "color":F
    .local v18, "color":F
    invoke-interface {v15, v0, v3, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 242
    .end local v11  # "u1":F
    .end local v12  # "v1":F
    .end local v13  # "u2":F
    .end local v14  # "v2":F
    :goto_d4
    return-void
.end method

.method protected renderMapLayer(Lcom/badlogic/gdx/maps/MapLayer;)V
    .registers 6
    .param p1, "layer"  # Lcom/badlogic/gdx/maps/MapLayer;

    .line 154
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 155
    :cond_7
    instance-of v0, p1, Lcom/badlogic/gdx/maps/MapGroupLayer;

    if-eqz v0, :cond_2b

    .line 156
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/maps/MapGroupLayer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapGroupLayer;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    .line 157
    .local v0, "childLayers":Lcom/badlogic/gdx/maps/MapLayers;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 158
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v2

    .line 159
    .local v2, "childLayer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_27

    .line 160
    :cond_24
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderMapLayer(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 157
    .end local v2  # "childLayer":Lcom/badlogic/gdx/maps/MapLayer;
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 162
    .end local v0  # "childLayers":Lcom/badlogic/gdx/maps/MapLayers;
    .end local v1  # "i":I
    :cond_2a
    goto :goto_44

    .line 163
    :cond_2b
    instance-of v0, p1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v0, :cond_36

    .line 164
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    goto :goto_44

    .line 165
    :cond_36
    instance-of v0, p1, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v0, :cond_41

    .line 166
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    goto :goto_44

    .line 168
    :cond_41
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 171
    :goto_44
    return-void
.end method

.method public renderObject(Lcom/badlogic/gdx/maps/MapObject;)V
    .registers 2
    .param p1, "object"  # Lcom/badlogic/gdx/maps/MapObject;

    .line 183
    return-void
.end method

.method public renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V
    .registers 4
    .param p1, "layer"  # Lcom/badlogic/gdx/maps/MapLayer;

    .line 175
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/MapLayer;->getObjects()Lcom/badlogic/gdx/maps/MapObjects;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapObjects;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/MapObject;

    .line 176
    .local v1, "object":Lcom/badlogic/gdx/maps/MapObject;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderObject(Lcom/badlogic/gdx/maps/MapObject;)V

    .line 177
    .end local v1  # "object":Lcom/badlogic/gdx/maps/MapObject;
    goto :goto_8

    .line 178
    :cond_18
    return-void
.end method

.method public setMap(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .registers 2
    .param p1, "map"  # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 79
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 80
    return-void
.end method

.method public setView(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .registers 10
    .param p1, "camera"  # Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 121
    iget v0, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v0, v1

    .line 122
    .local v0, "width":F
    iget v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v1, v2

    .line 123
    .local v1, "height":F
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 124
    .local v2, "w":F
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v1

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    .line 125
    .local v3, "h":F
    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v6, 0x40000000  # 2.0f

    div-float v7, v2, v6

    sub-float/2addr v5, v7

    iget-object v7, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v6, v3, v6

    sub-float/2addr v7, v6

    invoke-virtual {v4, v5, v7, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 126
    return-void
.end method

.method public setView(Lcom/badlogic/gdx/math/Matrix4;FFFF)V
    .registers 7
    .param p1, "projection"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 132
    return-void
.end method
