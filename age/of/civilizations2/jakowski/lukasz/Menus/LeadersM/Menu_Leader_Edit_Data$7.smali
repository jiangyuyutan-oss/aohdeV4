.class Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;
.super Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
.source "Menu_Leader_Edit_Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iHeight"  # I
    .param p4, "moveable"  # Z
    .param p5, "resizable"  # Z

    .line 169
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public drawT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 18
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "nWidth"  # I
    .param p6, "sliderMenuIsActive"  # Z

    .line 172
    move-object v0, p0

    move-object v9, p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeTitle:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getPosX()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeTitle:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->getHeightT()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getWidthM()I

    move-result v2

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->getHeightT()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 174
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3ed9999a  # 0.425f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 175
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->getHeightT()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getWidthM()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->getHeightT()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v6, v2, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 177
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x0

    const v2, 0x3f266666  # 0.65f

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 178
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getWidthM()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 180
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 181
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getPosY()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getWidthM()I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 183
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f666666  # 0.9f

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 184
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data;->getWidthM()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 186
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 188
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v3, 0x3f400000  # 0.75f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 189
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->getText()Ljava/lang/String;

    move-result-object v1

    div-int/lit8 v4, p5, 0x2

    add-int/2addr v4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->getTextWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    add-int/2addr v4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->getHeightT()I

    move-result v5

    sub-int v5, p4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->getHeightT()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/LeadersM/Menu_Leader_Edit_Data$7;->getTextHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v3

    div-float/2addr v7, v6

    float-to-int v3, v7

    sub-int/2addr v5, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v1, v4, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 190
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 191
    return-void
.end method
