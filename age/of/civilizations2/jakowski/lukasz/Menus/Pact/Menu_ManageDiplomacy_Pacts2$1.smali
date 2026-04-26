.class Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;
.super Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
.source "Menu_ManageDiplomacy_Pacts2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iHeight"  # I
    .param p4, "moveable"  # Z
    .param p5, "resizable"  # Z

    .line 46
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public drawT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "nWidth"  # I
    .param p6, "sliderMenuIsActive"  # Z

    .line 49
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeTitle:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeTitle:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->getHeightT()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;->getWidthM()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int v5, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->getHeightT()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int v6, v0, v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3c343958  # 0.011f

    const v2, 0x3c656042  # 0.014f

    const v3, 0x3c9ba5e3  # 0.019f

    const/high16 v4, 0x3e800000  # 0.25f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 52
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->getHeightT()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int v4, v0, v2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;->getWidthM()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->getHeightT()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v6, v0, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 54
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 55
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;->getWidthM()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3ecccccd  # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 58
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2;->getWidthM()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 60
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 62
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 63
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->getText()Ljava/lang/String;

    move-result-object v0

    div-int/lit8 v3, p5, 0x2

    add-int/2addr v3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->getTextWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->getHeightT()I

    move-result v4

    sub-int v4, p4, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->getHeightT()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Pact/Menu_ManageDiplomacy_Pacts2$1;->getTextHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    div-float/2addr v6, v5

    float-to-int v2, v6

    sub-int/2addr v4, v2

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 64
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 65
    return-void
.end method
