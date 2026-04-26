.class public Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_InGame_GameSaved.java"


# static fields
.field public static final FONT_SCALE:F = 0.75f

.field public static final FONT_SCALE2:F = 0.75f


# instance fields
.field private TIME_IN_VIEW:I

.field private TIME_IN_VIEW_HIDE_ANIMATION:I

.field private iWarWidth:I

.field private lTime:J

.field private sWar:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 34
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->lTime:J

    .line 29
    const/16 v0, 0x6d6

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->TIME_IN_VIEW:I

    .line 30
    const/16 v0, 0x1db

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->TIME_IN_VIEW_HIDE_ANIMATION:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Transparent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->setVisibleM(Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .registers 12
    .param p1, "init"  # I

    .line 43
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->lTime:J

    .line 29
    const/16 v2, 0x6d6

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->TIME_IN_VIEW:I

    .line 30
    const/16 v2, 0x1db

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->TIME_IN_VIEW_HIDE_ANIMATION:I

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Transparent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 50
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "GameSaved"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->sWar:Ljava/lang/String;

    .line 52
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->sWar:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 53
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const/high16 v4, 0x3f400000  # 0.75f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->iWarWidth:I

    .line 55
    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->lTime:J

    .line 56
    return-void
.end method

.method private final getAlpha()F
    .registers 10

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->lTime:J

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->TIME_IN_VIEW:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->TIME_IN_VIEW_HIDE_ANIMATION:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    const/high16 v4, 0x3f800000  # 1.0f

    cmp-long v5, v0, v2

    if-lez v5, :cond_2d

    .line 117
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->lTime:J

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->TIME_IN_VIEW:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->TIME_IN_VIEW_HIDE_ANIMATION:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    sub-long/2addr v1, v5

    long-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    sub-float/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 120
    :cond_2d
    return v4
.end method

.method private final getHeight2()I
    .registers 3

    .line 73
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private final getPosX2()I
    .registers 3

    .line 61
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getWidth2()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getPosY2()I
    .registers 3

    .line 65
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getHeight2()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getWidth2()I
    .registers 3

    .line 69
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->iWarWidth:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3fd33333  # 1.65f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 19
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 78
    move-object v0, p0

    move-object v7, p1

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->lTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_10

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->lTime:J

    .line 82
    :cond_10
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getAlpha()F

    move-result v8

    .line 84
    .local v8, "tAlpha":F
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f59999a  # 0.85f

    mul-float v5, v5, v8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 85
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosX2()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosY2()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getWidth2()I

    move-result v5

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getHeight2()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 87
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v9, 0x3f800000  # 1.0f

    mul-float v5, v8, v9

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 88
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosX2()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosY2()I

    move-result v2

    const/4 v10, 0x1

    add-int/2addr v2, v10

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getWidth2()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 89
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosX2()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosY2()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getHeight2()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getWidth2()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 91
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f266666  # 0.65f

    mul-float v2, v2, v8

    const/4 v11, 0x0

    invoke-direct {v1, v11, v11, v11, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 92
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosX2()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosY2()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getWidth2()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 93
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosX2()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosY2()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getHeight2()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getWidth2()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 95
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e99999a  # 0.3f

    mul-float v2, v2, v8

    invoke-direct {v1, v11, v11, v11, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 96
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosX2()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosY2()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getWidth2()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 98
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float v2, v2, v8

    invoke-direct {v1, v11, v11, v11, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 99
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosX2()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosY2()I

    move-result v2

    sub-int/2addr v2, v10

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getWidth2()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 100
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosX2()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosY2()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getWidth2()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 102
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 104
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v3, 0x3f400000  # 0.75f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 105
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->sWar:Ljava/lang/String;

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosX2()I

    move-result v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getWidth2()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->iWarWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int v4, v4, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->getPosY2()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v11, v11

    mul-float v11, v11, v3

    sub-float/2addr v6, v11

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v6, v3

    float-to-int v3, v6

    add-int/2addr v5, v3

    add-int v5, v5, p3

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v12, v12, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v13, v8, v9

    invoke-direct {v3, v6, v11, v12, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v1, v4, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 106
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 108
    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->lTime:J

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->TIME_IN_VIEW:I

    int-to-long v9, v1

    add-long/2addr v5, v9

    cmp-long v1, v3, v5

    if-lez v1, :cond_23b

    .line 111
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/InfoSaved/Menu_InGame_GameSaved;->setVisibleM(Z)V

    .line 113
    :cond_23b
    return-void
.end method
