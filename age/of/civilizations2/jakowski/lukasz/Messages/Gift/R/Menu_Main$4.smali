.class Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Text;
.source "Menu_Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I

    .line 196
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public actionElemPPM()V
    .registers 4

    .line 209
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->GLGO:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->GLGO:I

    .line 211
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->GLGO:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_e

    .line 212
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->GLGO:I

    .line 215
    :cond_e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->lTime:J

    .line 216
    return-void
.end method

.method public buildElemHover()V
    .registers 7

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    const-string v3, "Programmer and Designer"

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 291
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 295
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLukaszJakowski()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image_Big;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->key:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image_Big;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 300
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v4, "One Man Army!"

    invoke-direct {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image_Big;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmy:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image_Big;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 305
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 309
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->GLGO:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_a0

    .line 310
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    const-string v4, "Age of Civilizations 2: Definitive Edition"

    invoke-direct {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    .line 313
    :cond_a0
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    const-string v4, "Age of History 2: Definitive Edition"

    invoke-direct {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :goto_ac
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 326
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 327
    return-void
.end method

.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 22
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz p4, :cond_17

    .line 221
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v6, 0x3f400000  # 0.75f

    invoke-direct {v5, v4, v4, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_31

    .line 222
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getIsHovered()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 223
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v4, v4, v4, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_31

    .line 225
    :cond_26
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3f733333  # 0.95f

    invoke-direct {v5, v4, v4, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 228
    :goto_31
    sget v5, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->GLGO:I

    const v6, 0x3ed9999a  # 0.425f

    const-wide/high16 v7, 0x4018000000000000L  # 6.0

    const/4 v9, 0x0

    const/high16 v10, 0x40000000  # 2.0f

    const/4 v11, 0x2

    if-le v5, v11, :cond_102

    .line 229
    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;

    iget-wide v12, v5, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->lTime:J

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->ANIMATION_TIME:I

    int-to-long v14, v5

    add-long/2addr v12, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v5, v12, v14

    if-lez v5, :cond_c9

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;

    iget-wide v13, v5, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->lTime:J

    sub-long/2addr v11, v13

    long-to-float v5, v11

    iget-object v11, v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->ANIMATION_TIME:I

    int-to-float v11, v11

    div-float/2addr v5, v11

    .line 232
    .local v5, "t":F
    cmpl-float v11, v5, v4

    if-lez v11, :cond_66

    const/high16 v5, 0x3f800000  # 1.0f

    .line 233
    :cond_66
    cmpg-float v9, v5, v9

    if-gez v9, :cond_6b

    const/4 v5, 0x0

    .line 235
    :cond_6b
    sub-float v9, v4, v5

    float-to-double v11, v9

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    sub-float/2addr v4, v7

    .line 237
    .end local v5  # "t":F
    .local v4, "t":F
    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogoC:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v6

    .line 239
    .local v5, "extraH":F
    mul-float v6, v5, v4

    sub-float v6, v5, v6

    .line 241
    .local v6, "offsetY":F
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getPosXE()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getWidthE()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogoC:I

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    int-to-float v8, v2

    add-float/2addr v7, v8

    .line 242
    .local v7, "drawX":F
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getPosY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getHeightE()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogoC:I

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    sub-float/2addr v8, v6

    int-to-float v9, v3

    add-float/2addr v8, v9

    .line 244
    .local v8, "drawY":F
    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogoC:I

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    float-to-int v10, v7

    float-to-int v11, v8

    invoke-virtual {v9, v1, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 245
    .end local v4  # "t":F
    .end local v5  # "extraH":F
    .end local v6  # "offsetY":F
    .end local v7  # "drawX":F
    .end local v8  # "drawY":F
    goto/16 :goto_1c3

    .line 247
    :cond_c9
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogoC:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getPosXE()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getWidthE()I

    move-result v6

    div-int/2addr v6, v11

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogoC:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    div-int/2addr v6, v11

    sub-int/2addr v5, v6

    add-int/2addr v5, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getPosY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getHeightE()I

    move-result v7

    div-int/2addr v7, v11

    add-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogoC:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    div-int/2addr v7, v11

    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto/16 :goto_1c3

    .line 251
    :cond_102
    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;

    iget-wide v12, v5, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->lTime:J

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->ANIMATION_TIME:I

    int-to-long v14, v5

    add-long/2addr v12, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v5, v12, v14

    if-lez v5, :cond_18c

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;

    iget-wide v13, v5, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->lTime:J

    sub-long/2addr v11, v13

    long-to-float v5, v11

    iget-object v11, v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->ANIMATION_TIME:I

    int-to-float v11, v11

    div-float/2addr v5, v11

    .line 254
    .local v5, "t":F
    cmpl-float v11, v5, v4

    if-lez v11, :cond_12a

    const/high16 v5, 0x3f800000  # 1.0f

    .line 255
    :cond_12a
    cmpg-float v9, v5, v9

    if-gez v9, :cond_12f

    const/4 v5, 0x0

    .line 257
    :cond_12f
    sub-float v9, v4, v5

    float-to-double v11, v9

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    sub-float/2addr v4, v7

    .line 259
    .end local v5  # "t":F
    .restart local v4  # "t":F
    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v6

    .line 261
    .local v5, "extraH":F
    mul-float v6, v5, v4

    sub-float v6, v5, v6

    .line 263
    .restart local v6  # "offsetY":F
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getPosXE()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getWidthE()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    int-to-float v8, v2

    add-float/2addr v7, v8

    .line 264
    .restart local v7  # "drawX":F
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getPosY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getHeightE()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    sub-float/2addr v8, v6

    int-to-float v9, v3

    add-float/2addr v8, v9

    .line 266
    .restart local v8  # "drawY":F
    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    float-to-int v10, v7

    float-to-int v11, v8

    invoke-virtual {v9, v1, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 267
    .end local v4  # "t":F
    .end local v5  # "extraH":F
    .end local v6  # "offsetY":F
    .end local v7  # "drawX":F
    .end local v8  # "drawY":F
    goto :goto_1c3

    .line 269
    :cond_18c
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getPosXE()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getWidthE()I

    move-result v6

    div-int/2addr v6, v11

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    div-int/2addr v6, v11

    sub-int/2addr v5, v6

    add-int/2addr v5, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getPosY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main$4;->getHeightE()I

    move-result v7

    div-int/2addr v7, v11

    add-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    div-int/2addr v7, v11

    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 273
    :goto_1c3
    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 274
    return-void
.end method

.method public getPosXE()I
    .registers 4

    .line 199
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->getMenuPosX_Default()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Messages/Gift/R/Menu_Main;->getMenuWidth_Default()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getWidthE()I
    .registers 3

    .line 204
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method
