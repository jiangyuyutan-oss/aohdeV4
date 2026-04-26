.class public Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;
.super Ljava/lang/Object;
.source "ProvinceAnimationDot.java"


# static fields
.field public static final ANIMATION_DURATION:F = 1250.0f


# instance fields
.field public animationTime:J

.field public dotColor:Lcom/badlogic/gdx/graphics/Color;

.field public fPerc:F

.field public iProvinceID:I

.field public posX:I

.field public posY:I


# direct methods
.method public constructor <init>(ILcom/badlogic/gdx/graphics/Color;)V
    .registers 6
    .param p1, "nProvinceID"  # I
    .param p2, "nColor"  # Lcom/badlogic/gdx/graphics/Color;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->animationTime:J

    .line 17
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->fPerc:F

    .line 22
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->iProvinceID:I

    .line 23
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    .line 25
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->animationTime:J

    .line 27
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v0

    if-lez v0, :cond_5a

    .line 28
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/City;->getPoX()I

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v2

    mul-int v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->posX:I

    .line 29
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosY()I

    move-result v0

    neg-int v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->posY:I

    goto :goto_73

    .line 31
    :cond_5a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->posX:I

    .line 32
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->posY:I

    .line 34
    :goto_73
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z
    .registers 11
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "out":Z
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->fPerc:F

    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->animationTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x449c4000  # 1250.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->fPerc:F

    .line 40
    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->animationTime:J

    .line 42
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->fPerc:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1e

    .line 43
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->fPerc:F

    .line 44
    const/4 v0, 0x1

    .line 47
    :cond_1e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProv()Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 48
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3e19999a  # 0.15f

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->fPerc:F

    mul-float v7, v7, v6

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 50
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->posX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->posY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 51
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, p2

    const/high16 v4, 0x41a00000  # 20.0f

    mul-float v4, v4, p2

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->fPerc:F

    mul-float v4, v4, v5

    .line 50
    invoke-virtual {v1, v2, v3, v4}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->filledCircle(FFF)V

    .line 53
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3ee66666  # 0.45f

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->fPerc:F

    mul-float v7, v7, v6

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 55
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->posX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->posY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 56
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, p2

    const/high16 v4, 0x41600000  # 14.0f

    mul-float v4, v4, p2

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceAnimationDot;->fPerc:F

    mul-float v4, v4, v5

    .line 55
    invoke-virtual {v1, v2, v3, v4}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->filledCircle(FFF)V

    .line 59
    :cond_c4
    return v0
.end method
