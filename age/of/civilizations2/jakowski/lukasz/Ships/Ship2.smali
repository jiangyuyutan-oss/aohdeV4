.class public Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;
.super Ljava/lang/Object;
.source "Ship2.java"


# static fields
.field public static final IMG_WH:I = 0x20


# instance fields
.field public angle:I

.field public currentWidth:F

.field public isInView:Z

.field public movingBack:Z

.field public posX:F

.field public posY:F

.field public remove:Z

.field public shipIMGID:I

.field public shipLineID:I

.field public speed:F

.field public tID:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "nShipLineID"  # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    .line 26
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->movingBack:Z

    .line 30
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->remove:Z

    .line 33
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    .line 35
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->randomize()V

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "ageGroup"  # I

    .line 110
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->isInView:Z

    if-eqz v0, :cond_66

    .line 111
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipIMGID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posX:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 112
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->rotateXMoveUnits:[I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->angle:I

    aget v2, v2, v3

    add-int v3, v0, v2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posY:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 113
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->rotateYMoveUnits:[I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->angle:I

    aget v2, v2, v4

    add-int/2addr v0, v2

    const/16 v5, 0x20

    const/16 v6, 0x20

    int-to-float v7, v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 111
    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZ)V

    .line 118
    :cond_66
    return-void
.end method

.method public drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "ageGroup"  # I

    .line 99
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->isInView:Z

    if-eqz v0, :cond_4e

    .line 100
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipIMGID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posX:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 101
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->rotateXMoveUnits:[I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->angle:I

    aget v2, v2, v3

    add-int v3, v0, v2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posY:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 102
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->rotateYMoveUnits:[I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->angle:I

    aget v2, v2, v4

    add-int/2addr v0, v2

    const/16 v5, 0x20

    const/16 v6, 0x20

    int-to-float v7, v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 100
    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZ)V

    .line 107
    :cond_4e
    return-void
.end method

.method public final inViewX()Z
    .registers 4

    .line 141
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewX_CordsX_Width:I

    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1b

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewX_CordsX:I

    add-int/lit8 v0, v0, -0x20

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posX:F

    const/high16 v2, 0x42000000  # 32.0f

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public final inViewX2()Z
    .registers 4

    .line 146
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewX_CordsX_Width:I

    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posX:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_33

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewX_CordsX:I

    add-int/lit8 v0, v0, -0x20

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posX:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 147
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42000000  # 32.0f

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    .line 146
    :goto_34
    return v0
.end method

.method public final inViewY()Z
    .registers 4

    .line 136
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewY_CordsY_Height:I

    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1b

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewY_CordsY:I

    add-int/lit8 v0, v0, -0x20

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posY:F

    const/high16 v2, 0x42000000  # 32.0f

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public final randomize()V
    .registers 4

    .line 41
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvShips:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_IMAGES:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipIMGID:I

    .line 42
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvShips:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_SPEED_MIN:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvShips:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_SPEED_RANDOM:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->speed:F

    .line 43
    return-void
.end method

.method public final update()V
    .registers 13

    .line 48
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->speed:F

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    .line 50
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->movingBack:Z

    const/4 v2, 0x0

    const-wide v3, 0x400921fb54442d18L  # Math.PI

    const-wide v5, 0x4066800000000000L  # 180.0

    const-wide v7, 0x4076800000000000L  # 360.0

    const/4 v9, 0x1

    if-eqz v1, :cond_187

    .line 51
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->width:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    sub-int/2addr v10, v9

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6c

    .line 52
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    sub-int/2addr v0, v9

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    if-ge v0, v9, :cond_4e

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    .line 54
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->movingBack:Z

    .line 55
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->randomize()V

    .line 56
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    .line 57
    iput-boolean v9, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->remove:Z

    .line 58
    return-void

    .line 61
    :cond_4e
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->width:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    .line 64
    :cond_6c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    sub-int/2addr v2, v9

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    aget-object v2, v2, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->width:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v2, v10

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posX:F

    .line 65
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    sub-int/2addr v2, v9

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    aget-object v2, v2, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->width:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v2, v10

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posY:F

    .line 67
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->updateIsInView()V

    .line 69
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->isInView:Z

    if-eqz v0, :cond_2f9

    .line 70
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    sub-int/2addr v2, v9

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    aget-object v2, v2, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v2

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    sub-int/2addr v11, v9

    aget-object v9, v10, v11

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, v9

    float-to-double v9, v2

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double v0, v0, v5

    div-double/2addr v0, v3

    add-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->angle:I

    goto/16 :goto_2f9

    .line 74
    :cond_187
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->width:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1e0

    .line 75
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    add-int/2addr v0, v9

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvShips:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_LINE_PRECISION:I

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_1c2

    .line 76
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvShips:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_LINE_PRECISION:I

    sub-int/2addr v0, v9

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    .line 77
    iput-boolean v9, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->movingBack:Z

    .line 78
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->randomize()V

    .line 79
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    .line 80
    iput-boolean v9, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->remove:Z

    .line 81
    return-void

    .line 84
    :cond_1c2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->width:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    .line 87
    :cond_1e0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    add-int/2addr v2, v9

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    aget-object v2, v2, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->width:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v2, v10

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posX:F

    .line 88
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    add-int/2addr v2, v9

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    aget-object v2, v2, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->currentWidth:F

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->width:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v2, v10

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->posY:F

    .line 90
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->updateIsInView()V

    .line 92
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->isInView:Z

    if-eqz v0, :cond_2f9

    .line 93
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    add-int/2addr v2, v9

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    aget-object v2, v2, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v2

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->tID:I

    add-int/2addr v11, v9

    aget-object v9, v10, v11

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, v9

    float-to-double v9, v2

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double v0, v0, v5

    div-double/2addr v0, v3

    add-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->angle:I

    .line 96
    :cond_2f9
    :goto_2f9
    return-void
.end method

.method public final updateIsInView()V
    .registers 2

    .line 123
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->inViewY()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 124
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->inViewX()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->isInView:Z

    .line 126
    return-void

    .line 130
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->isInView:Z

    .line 131
    return-void
.end method
