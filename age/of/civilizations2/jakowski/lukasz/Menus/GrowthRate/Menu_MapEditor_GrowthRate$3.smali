.class Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;
.super Lage/of/civilizations2/jakowski/lukasz/Sliders/Slider;
.source "Menu_MapEditor_GrowthRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate;IIIIIII)V
    .registers 19
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p6, "iMin"  # I
    .param p7, "iMax"  # I
    .param p8, "iCurrent"  # I

    .line 50
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Sliders/Slider;-><init>(IIIIIII)V

    return-void
.end method


# virtual methods
.method public drawSliderBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 53
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Sliders/Slider;->drawSliderBG_UpdateAnimation()V

    .line 55
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getCurr()I

    move-result v0

    const v1, 0x3f333333  # 0.7f

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getGrowthRateColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 56
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int v4, v0, p3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->iCurrentPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->iDifference_CurrentPosX:I

    add-int v5, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getHeightE()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 58
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getCurr()I

    move-result v0

    const v1, 0x3f666666  # 0.9f

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getGrowthRateColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 59
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->iCurrentPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->iDifference_CurrentPosX:I

    add-int v5, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getHeightE()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 61
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3f19999a  # 0.6f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 62
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getPosXE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->iCurrentPosX:I

    add-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->iDifference_CurrentPosX:I

    add-int/2addr v0, v1

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int v7, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getWidthE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->iCurrentPosX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->iDifference_CurrentPosX:I

    sub-int v8, v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getHeightE()I

    move-result v9

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 64
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 65
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getPosXE()I

    move-result v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->iCurrentPosX:I

    add-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->iDifference_CurrentPosX:I

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getWidthE()I

    move-result v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->iCurrentPosX:I

    sub-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->iDifference_CurrentPosX:I

    sub-int v5, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getHeightE()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 66
    return-void
.end method

.method public getDrawText()Ljava/lang/String;
    .registers 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/GrowthRate/Menu_MapEditor_GrowthRate$3;->getCurr()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
