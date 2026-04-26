.class public Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "IsometricTiledMapRenderer.java"


# instance fields
.field private bottomLeft:Lcom/badlogic/gdx/math/Vector2;

.field private bottomRight:Lcom/badlogic/gdx/math/Vector2;

.field private invIsotransform:Lcom/badlogic/gdx/math/Matrix4;

.field private isoTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private screenPos:Lcom/badlogic/gdx/math/Vector3;

.field private topLeft:Lcom/badlogic/gdx/math/Vector2;

.field private topRight:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .registers 3
    .param p1, "map"  # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 44
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    .line 45
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .registers 4
    .param p1, "map"  # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"  # F

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    .line 55
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .registers 5
    .param p1, "map"  # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"  # F
    .param p3, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    .line 60
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .registers 4
    .param p1, "map"  # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    .line 50
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    .line 51
    return-void
.end method

.method private init()V
    .registers 7

    .line 65
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    const-wide/high16 v1, 0x4000000000000000L  # 2.0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v4, 0x4010000000000000L  # 4.0

    div-double/2addr v1, v4

    double-to-float v1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v1, 0x0

    const/high16 v3, -0x3dcc0000  # -45.0f

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 73
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->invIsotransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->invIsotransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    .line 75
    return-void
.end method

.method private translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;
    .registers 6
    .param p1, "vec"  # Lcom/badlogic/gdx/math/Vector2;

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->invIsotransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method


# virtual methods
.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .registers 46
    .param p1, "layer"  # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 87
    .local v1, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getOpacity()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v2

    .line 89
    .local v2, "color":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float/2addr v3, v4

    .line 90
    .local v3, "tileWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float/2addr v4, v5

    .line 92
    .local v4, "tileHeight":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getRenderOffsetX()F

    move-result v5

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v6

    .line 94
    .local v5, "layerOffsetX":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getRenderOffsetY()F

    move-result v6

    neg-float v6, v6

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float/2addr v6, v7

    .line 96
    .local v6, "layerOffsetY":F
    const/high16 v7, 0x3f000000  # 0.5f

    mul-float v8, v3, v7

    .line 97
    .local v8, "halfTileWidth":F
    mul-float/2addr v7, v4

    .line 101
    .local v7, "halfTileHeight":F
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v10, v11

    sub-float/2addr v10, v5

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v11, v6

    invoke-virtual {v9, v10, v11}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 103
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v10, v5

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v11, v12

    sub-float/2addr v11, v6

    invoke-virtual {v9, v10, v11}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 105
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v10, v5

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v11, v6

    invoke-virtual {v9, v10, v11}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 107
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v10, v11

    sub-float/2addr v10, v5

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v11, v12

    sub-float/2addr v11, v6

    invoke-virtual {v9, v10, v11}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 110
    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v9}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v9, v3

    float-to-int v9, v9

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    .line 111
    .local v9, "row1":I
    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v11}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v11, v3

    float-to-int v11, v11

    add-int/2addr v11, v10

    .line 113
    .local v11, "row2":I
    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v12}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v12, v3

    float-to-int v12, v12

    sub-int/2addr v12, v10

    .line 114
    .local v12, "col1":I
    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v13}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v13, v3

    float-to-int v13, v13

    add-int/2addr v13, v10

    .line 116
    .local v13, "col2":I
    move v14, v11

    .local v14, "row":I
    :goto_bb
    if-lt v14, v9, :cond_318

    .line 117
    move v15, v12

    .local v15, "col":I
    :goto_be
    if-gt v15, v13, :cond_302

    .line 118
    int-to-float v10, v15

    mul-float/2addr v10, v8

    move-object/from16 v17, v1

    .end local v1  # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .local v17, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    int-to-float v1, v14

    mul-float/2addr v1, v8

    add-float/2addr v10, v1

    .line 119
    .local v10, "x":F
    int-to-float v1, v14

    mul-float/2addr v1, v7

    move/from16 v18, v3

    .end local v3  # "tileWidth":F
    .local v18, "tileWidth":F
    int-to-float v3, v15

    mul-float/2addr v3, v7

    sub-float/2addr v1, v3

    .line 121
    .local v1, "y":F
    move-object/from16 v3, p1

    invoke-virtual {v3, v15, v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v19

    .line 122
    .local v19, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    if-nez v19, :cond_e4

    move/from16 v34, v2

    move/from16 v26, v4

    move/from16 v28, v5

    move/from16 v32, v6

    move/from16 v33, v7

    const/16 v16, 0x2

    goto/16 :goto_2ec

    .line 123
    :cond_e4
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v20

    .line 125
    .local v20, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v20, :cond_2de

    .line 126
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v21

    .line 127
    .local v21, "flipX":Z
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v22

    .line 128
    .local v22, "flipY":Z
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v23

    .line 130
    .local v23, "rotations":I
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v24

    .line 132
    .local v24, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v25

    iget v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float v25, v25, v3

    add-float v25, v10, v25

    add-float v25, v25, v5

    .line 133
    .local v25, "x1":F
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v3

    move/from16 v26, v4

    .end local v4  # "tileHeight":F
    .local v26, "tileHeight":F
    iget v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    add-float/2addr v3, v6

    .line 134
    .local v3, "y1":F
    invoke-virtual/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    move/from16 v27, v1

    .end local v1  # "y":F
    .local v27, "y":F
    iget v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float/2addr v4, v1

    add-float v4, v25, v4

    .line 135
    .local v4, "x2":F
    invoke-virtual/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    move/from16 v28, v5

    .end local v5  # "layerOffsetX":F
    .local v28, "layerOffsetX":F
    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v3

    .line 137
    .local v1, "y2":F
    invoke-virtual/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v5

    .line 138
    .local v5, "u1":F
    invoke-virtual/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v29

    .line 139
    .local v29, "v1":F
    invoke-virtual/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v30

    .line 140
    .local v30, "u2":F
    invoke-virtual/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v31

    .line 142
    .local v31, "v2":F
    move/from16 v32, v6

    .end local v6  # "layerOffsetY":F
    .local v32, "layerOffsetY":F
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move/from16 v33, v7

    .end local v7  # "halfTileHeight":F
    .local v33, "halfTileHeight":F
    const/4 v7, 0x0

    aput v25, v6, v7

    .line 143
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v34, 0x1

    aput v3, v6, v34

    .line 144
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v16, 0x2

    aput v2, v6, v16

    .line 145
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v34, 0x3

    aput v5, v6, v34

    .line 146
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v35, 0x4

    aput v29, v6, v35

    .line 148
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v36, 0x5

    aput v25, v6, v36

    .line 149
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v36, 0x6

    aput v1, v6, v36

    .line 150
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v36, 0x7

    aput v2, v6, v36

    .line 151
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v36, 0x8

    aput v5, v6, v36

    .line 152
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v37, 0x9

    aput v31, v6, v37

    .line 154
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v38, 0xa

    aput v4, v6, v38

    .line 155
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v38, 0xb

    aput v1, v6, v38

    .line 156
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v38, 0xc

    aput v2, v6, v38

    .line 157
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v38, 0xd

    aput v30, v6, v38

    .line 158
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v39, 0xe

    aput v31, v6, v39

    .line 160
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v40, 0xf

    aput v4, v6, v40

    .line 161
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v40, 0x10

    aput v3, v6, v40

    .line 162
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v40, 0x11

    aput v2, v6, v40

    .line 163
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v40, 0x12

    aput v30, v6, v40

    .line 164
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v41, 0x13

    aput v29, v6, v41

    .line 166
    if-eqz v21, :cond_1d8

    .line 167
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v6, v6, v34

    .line 168
    .local v6, "temp":F
    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move/from16 v42, v1

    .end local v1  # "y2":F
    .local v42, "y2":F
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v1, v1, v38

    aput v1, v7, v34

    .line 169
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v6, v1, v38

    .line 170
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v1, v1, v36

    .line 171
    .end local v6  # "temp":F
    .local v1, "temp":F
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v40

    aput v7, v6, v36

    .line 172
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v1, v6, v40

    goto :goto_1da

    .line 166
    .end local v42  # "y2":F
    .local v1, "y2":F
    :cond_1d8
    move/from16 v42, v1

    .line 174
    .end local v1  # "y2":F
    .restart local v42  # "y2":F
    :goto_1da
    if-eqz v22, :cond_1fc

    .line 175
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v1, v1, v35

    .line 176
    .local v1, "temp":F
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v39

    aput v7, v6, v35

    .line 177
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v1, v6, v39

    .line 178
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v1, v6, v37

    .line 179
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v41

    aput v7, v6, v37

    .line 180
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v1, v6, v41

    .line 182
    .end local v1  # "temp":F
    :cond_1fc
    if-eqz v23, :cond_2cd

    .line 183
    packed-switch v23, :pswitch_data_31a

    goto/16 :goto_2cd

    .line 214
    :pswitch_203  #0x3
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v1, v1, v35

    .line 215
    .local v1, "tempV":F
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v41

    aput v7, v6, v35

    .line 216
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v39

    aput v7, v6, v41

    .line 217
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v37

    aput v7, v6, v39

    .line 218
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v1, v6, v37

    .line 220
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v6, v6, v34

    .line 221
    .local v6, "tempU":F
    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move/from16 v43, v1

    .end local v1  # "tempV":F
    .local v43, "tempV":F
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v1, v1, v40

    aput v1, v7, v34

    .line 222
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v38

    aput v7, v1, v40

    .line 223
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v36

    aput v7, v1, v38

    .line 224
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v6, v1, v36

    .line 225
    goto/16 :goto_2cd

    .line 199
    .end local v6  # "tempU":F
    .end local v43  # "tempV":F
    :pswitch_247  #0x2
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v1, v1, v34

    .line 200
    .local v1, "tempU":F
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v38

    aput v7, v6, v34

    .line 201
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v1, v6, v38

    .line 202
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v1, v6, v36

    .line 203
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v40

    aput v7, v6, v36

    .line 204
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v1, v6, v40

    .line 205
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v6, v6, v35

    .line 206
    .local v6, "tempV":F
    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move/from16 v34, v1

    .end local v1  # "tempU":F
    .local v34, "tempU":F
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v1, v1, v39

    aput v1, v7, v35

    .line 207
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v6, v1, v39

    .line 208
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v1, v1, v37

    .line 209
    .end local v6  # "tempV":F
    .local v1, "tempV":F
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v41

    aput v7, v6, v37

    .line 210
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v1, v6, v41

    .line 211
    goto :goto_2cd

    .line 185
    .end local v1  # "tempV":F
    .end local v34  # "tempU":F
    :pswitch_28a  #0x1
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v1, v1, v35

    .line 186
    .restart local v1  # "tempV":F
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v37

    aput v7, v6, v35

    .line 187
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v39

    aput v7, v6, v37

    .line 188
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v41

    aput v7, v6, v39

    .line 189
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v1, v6, v41

    .line 191
    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v6, v6, v34

    .line 192
    .local v6, "tempU":F
    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move/from16 v35, v1

    .end local v1  # "tempV":F
    .local v35, "tempV":F
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v1, v1, v36

    aput v1, v7, v34

    .line 193
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v38

    aput v7, v1, v36

    .line 194
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v7, v7, v40

    aput v7, v1, v38

    .line 195
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v6, v1, v40

    .line 196
    nop

    .line 229
    .end local v6  # "tempU":F
    .end local v35  # "tempV":F
    :cond_2cd
    :goto_2cd
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual/range {v24 .. v24}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v0, 0x14

    move/from16 v34, v2

    const/4 v2, 0x0

    .end local v2  # "color":F
    .local v34, "color":F
    invoke-interface {v1, v6, v7, v2, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_2ec

    .line 125
    .end local v3  # "y1":F
    .end local v21  # "flipX":Z
    .end local v22  # "flipY":Z
    .end local v23  # "rotations":I
    .end local v24  # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v25  # "x1":F
    .end local v26  # "tileHeight":F
    .end local v27  # "y":F
    .end local v28  # "layerOffsetX":F
    .end local v29  # "v1":F
    .end local v30  # "u2":F
    .end local v31  # "v2":F
    .end local v32  # "layerOffsetY":F
    .end local v33  # "halfTileHeight":F
    .end local v34  # "color":F
    .end local v42  # "y2":F
    .local v1, "y":F
    .restart local v2  # "color":F
    .local v4, "tileHeight":F
    .local v5, "layerOffsetX":F
    .local v6, "layerOffsetY":F
    .restart local v7  # "halfTileHeight":F
    :cond_2de
    move/from16 v27, v1

    move/from16 v34, v2

    move/from16 v26, v4

    move/from16 v28, v5

    move/from16 v32, v6

    move/from16 v33, v7

    const/16 v16, 0x2

    .line 117
    .end local v1  # "y":F
    .end local v2  # "color":F
    .end local v4  # "tileHeight":F
    .end local v5  # "layerOffsetX":F
    .end local v6  # "layerOffsetY":F
    .end local v7  # "halfTileHeight":F
    .end local v10  # "x":F
    .end local v19  # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v20  # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .restart local v26  # "tileHeight":F
    .restart local v28  # "layerOffsetX":F
    .restart local v32  # "layerOffsetY":F
    .restart local v33  # "halfTileHeight":F
    .restart local v34  # "color":F
    :goto_2ec
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v16

    move-object/from16 v1, v17

    move/from16 v3, v18

    move/from16 v4, v26

    move/from16 v5, v28

    move/from16 v6, v32

    move/from16 v7, v33

    move/from16 v2, v34

    goto/16 :goto_be

    .end local v17  # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v18  # "tileWidth":F
    .end local v26  # "tileHeight":F
    .end local v28  # "layerOffsetX":F
    .end local v32  # "layerOffsetY":F
    .end local v33  # "halfTileHeight":F
    .end local v34  # "color":F
    .local v1, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v2  # "color":F
    .local v3, "tileWidth":F
    .restart local v4  # "tileHeight":F
    .restart local v5  # "layerOffsetX":F
    .restart local v6  # "layerOffsetY":F
    .restart local v7  # "halfTileHeight":F
    :cond_302
    move-object/from16 v17, v1

    move/from16 v34, v2

    move/from16 v18, v3

    move/from16 v26, v4

    move/from16 v28, v5

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v16, v10

    .line 116
    .end local v1  # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v2  # "color":F
    .end local v3  # "tileWidth":F
    .end local v4  # "tileHeight":F
    .end local v5  # "layerOffsetX":F
    .end local v6  # "layerOffsetY":F
    .end local v7  # "halfTileHeight":F
    .end local v15  # "col":I
    .restart local v17  # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v18  # "tileWidth":F
    .restart local v26  # "tileHeight":F
    .restart local v28  # "layerOffsetX":F
    .restart local v32  # "layerOffsetY":F
    .restart local v33  # "halfTileHeight":F
    .restart local v34  # "color":F
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_bb

    .line 233
    .end local v14  # "row":I
    .end local v17  # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v18  # "tileWidth":F
    .end local v26  # "tileHeight":F
    .end local v28  # "layerOffsetX":F
    .end local v32  # "layerOffsetY":F
    .end local v33  # "halfTileHeight":F
    .end local v34  # "color":F
    .restart local v1  # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v2  # "color":F
    .restart local v3  # "tileWidth":F
    .restart local v4  # "tileHeight":F
    .restart local v5  # "layerOffsetX":F
    .restart local v6  # "layerOffsetY":F
    .restart local v7  # "halfTileHeight":F
    :cond_318
    return-void

    nop

    :pswitch_data_31a
    .packed-switch 0x1
        :pswitch_28a  #00000001
        :pswitch_247  #00000002
        :pswitch_203  #00000003
    .end packed-switch
.end method
