.class public Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;
.source "Button_InGameAction_Animated.java"


# static fields
.field public static final ANIMATION_T:I = 0x2ee

.field public static animationState:I

.field public static lTimeAnimation:J


# instance fields
.field public sparksAnimation:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->lTimeAnimation:J

    .line 18
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->animationState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .registers 9
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "isClickable"  # Z

    .line 28
    invoke-direct/range {p0 .. p7}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 21
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->sparksAnimation:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .registers 8
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "isClickable"  # Z

    .line 24
    invoke-direct/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;-><init>(Ljava/lang/String;IIIIZ)V

    .line 21
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->sparksAnimation:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    .line 25
    return-void
.end method

.method public static final getColorLine()Lcom/badlogic/gdx/graphics/Color;
    .registers 5

    .line 74
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f79999a  # 0.975f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;->drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 37
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->sparksAnimation:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getWidthE()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getHeightE()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 39
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_19b

    if-nez p4, :cond_19b

    .line 40
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->animationState:I

    if-ltz v0, :cond_19b

    .line 41
    const-wide/16 v1, 0x2ee

    const v3, 0x443b8000  # 750.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000  # 1.0f

    if-nez v0, :cond_cc

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->lTimeAnimation:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    mul-float v0, v0, v5

    div-float/2addr v0, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 44
    .local v0, "drawPerc":F
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 45
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getPosXE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v6

    add-int v7, v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getPosY()I

    move-result v3

    add-int/2addr v3, v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    add-int v8, v3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v9, v3

    const/4 v10, 0x1

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 46
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getPosXE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v6

    add-int v7, v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getHeightE()I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    add-int v8, v3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v9, v3

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 48
    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->lTimeAnimation:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    cmp-long v1, v5, v7

    if-gez v1, :cond_ca

    .line 49
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->animationState:I

    add-int/2addr v1, v4

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->animationState:I

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->lTimeAnimation:J

    .line 52
    .end local v0  # "drawPerc":F
    :cond_ca
    goto/16 :goto_193

    .line 54
    :cond_cc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->lTimeAnimation:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    mul-float v0, v0, v5

    div-float/2addr v0, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 56
    .restart local v0  # "drawPerc":F
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 57
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getPosXE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getWidthE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v6, v6

    add-int/2addr v3, v6

    add-int v7, v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getPosY()I

    move-result v3

    add-int/2addr v3, v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    add-int v8, v3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getWidthE()I

    move-result v6

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v6, v9

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v6, v6

    sub-int v9, v3, v6

    const/4 v10, 0x1

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 58
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getPosXE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getWidthE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v6, v6

    add-int/2addr v3, v6

    add-int v7, v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getHeightE()I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    add-int v8, v3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->getWidthE()I

    move-result v6

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v6, v9

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v6, v6

    sub-int v9, v3, v6

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 61
    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->lTimeAnimation:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    cmp-long v1, v5, v7

    if-gez v1, :cond_193

    .line 62
    const/4 v1, 0x0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->animationState:I

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction_Animated;->lTimeAnimation:J

    .line 67
    .end local v0  # "drawPerc":F
    :cond_193
    :goto_193
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 68
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 71
    :cond_19b
    return-void
.end method
