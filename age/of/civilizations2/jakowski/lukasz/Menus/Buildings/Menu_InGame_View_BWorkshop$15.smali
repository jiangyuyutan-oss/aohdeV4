.class Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;
.super Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;
.source "Menu_InGame_View_BWorkshop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iHeight"  # I
    .param p4, "moveable"  # Z
    .param p5, "resizable"  # Z

    .line 592
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public drawT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 20
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "nWidth"  # I
    .param p6, "sliderMenuIsActive"  # Z

    .line 595
    move-object v0, p0

    move-object v9, p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeTitle:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeTitle:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->getHeightT()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getWidthM()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->getHeightT()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int/2addr v6, v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 597
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v10, 0x3ee0e0e1

    const v11, 0x3f008081

    const v12, 0x3f109091

    const v2, 0x3e28f5c3  # 0.165f

    invoke-direct {v1, v10, v11, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 598
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int v3, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->getHeightT()I

    move-result v2

    sub-int v2, p4, v2

    add-int/lit8 v2, v2, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->getHeightT()I

    move-result v2

    add-int/lit8 v6, v2, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 600
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3ec00000  # 0.375f

    invoke-direct {v1, v10, v11, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 601
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int v3, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->getHeightT()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    sub-int v2, p4, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->getHeightT()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v6, v2, 0x3

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 603
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 604
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosY()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getWidthM()I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 606
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3ecccccd  # 0.4f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 607
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosY()I

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

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getWidthM()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 609
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    const v2, 0x3f19999a  # 0.6f

    invoke-direct {v1, v7, v7, v7, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 610
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosY()I

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

    sub-int/2addr v2, v4

    add-int/lit8 v4, v2, -0x1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getWidthM()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 612
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f4ccccd  # 0.8f

    invoke-direct {v1, v7, v7, v7, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 613
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getWidthM()I

    move-result v2

    div-int/lit8 v5, v2, 0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 614
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosX()I

    move-result v2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getWidthM()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getWidthM()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getWidthM()I

    move-result v2

    div-int/lit8 v5, v2, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 616
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 618
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->bWorkshop:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int v2, p3, v2

    add-int/2addr v2, p2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->getHeightT()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->bWorkshop:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 620
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->getText()Ljava/lang/String;

    move-result-object v3

    div-int/lit8 v1, p5, 0x2

    add-int v1, p3, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->getTextWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->getHeightT()I

    move-result v1

    sub-int v1, p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->getHeightT()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BWorkshop$15;->getTextHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 622
    return-void
.end method
