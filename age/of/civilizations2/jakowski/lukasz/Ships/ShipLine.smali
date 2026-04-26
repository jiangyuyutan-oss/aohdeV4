.class public Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;
.super Ljava/lang/Object;
.source "ShipLine.java"


# instance fields
.field public fromProvinceID:I

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Point_XY2;",
            ">;"
        }
    .end annotation
.end field

.field public pointsSize:I

.field public toProvinceID:I

.field public vPoints:[Lcom/badlogic/gdx/math/Vector2;

.field public width:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->fromProvinceID:I

    .line 23
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->toProvinceID:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->width:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addNewPoint()V
    .registers 7

    .line 34
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, -0x1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosY()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    .line 37
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->buildData()V

    .line 38
    return-void
.end method

.method public addNewPoint_Just(II)V
    .registers 5
    .param p1, "nX"  # I
    .param p2, "nY"  # I

    .line 50
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-direct {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    .line 52
    return-void
.end method

.method public final buildData()V
    .registers 11

    .line 57
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_11e

    .line 58
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->width:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvShips:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_LINE_PRECISION:I

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    .line 61
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    .line 63
    .local v0, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v3

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    if-ge v1, v2, :cond_64

    .line 65
    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v2

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 67
    .end local v1  # "i":I
    :cond_64
    const/4 v1, 0x1

    add-int/2addr v2, v1

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    sub-int/2addr v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    sub-int/2addr v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v2

    .line 69
    new-instance v2, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v2, v0, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    .line 71
    .local v2, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_93
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvShips:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_LINE_PRECISION:I

    if-ge v3, v4, :cond_b6

    .line 72
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v5, v4, v3

    .line 73
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v3

    int-to-float v5, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvShips:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_LINE_PRECISION:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000  # 1.0f

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    .line 76
    .end local v3  # "j":I
    :cond_b6
    const/4 v3, 0x0

    .restart local v3  # "j":I
    :goto_b7
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvShips:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_LINE_PRECISION:I

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_115

    .line 77
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->width:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v7, v3, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v7

    mul-float v5, v5, v6

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v8, v3, 0x1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v9, v3, 0x1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v7, v8

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 80
    .end local v3  # "j":I
    :cond_115
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->width:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v0  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v2  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_11e
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 88
    :try_start_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_7b

    .line 89
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 91
    .local v0, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvShips:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_LINE_PRECISION:I

    if-ge v1, v2, :cond_59

    .line 92
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    mul-float v3, v3, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 93
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v5

    mul-float v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 92
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 96
    .end local v1  # "j":I
    :cond_59
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f400000  # 0.75f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 97
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    const/high16 v2, 0x40c00000  # 6.0f

    sget-object v3, Lspace/earlygrey/shapedrewer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrewer/JoinType;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrewer/JoinType;Z)V

    .line 99
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V

    .line 100
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begin()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7b} :catch_7c

    .line 104
    .end local v0  # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_7b
    goto :goto_80

    .line 102
    :catch_7c
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 105
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_80
    return-void
.end method

.method public removePoint()V
    .registers 3

    .line 41
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    if-lez v0, :cond_13

    .line 42
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    .line 46
    :cond_13
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->buildData()V

    .line 47
    return-void
.end method
