.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Text;
.source "TextScrollable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$DrawText;
    }
.end annotation


# instance fields
.field private center:Z

.field private drawText:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$DrawText;

.field private fTextScale:F

.field private iScrollPosX:I

.field private lTime:J

.field private scrollRight:Z

.field private textColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;F)V
    .registers 18
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p6, "textColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "nTextScale"  # F

    .line 48
    move-object v9, p0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iScrollPosX:I

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, v9, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->scrollRight:Z

    .line 26
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v9, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->fTextScale:F

    .line 28
    iput-boolean v0, v9, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->center:Z

    .line 49
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V
    .registers 11
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p6, "textColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "nTextScale"  # F
    .param p8, "iTextPos"  # I

    .line 52
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iScrollPosX:I

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->scrollRight:Z

    .line 26
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->fTextScale:F

    .line 28
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->center:Z

    .line 53
    invoke-direct/range {p0 .. p8}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;)V
    .registers 15
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "textColor"  # Lcom/badlogic/gdx/graphics/Color;

    .line 40
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iScrollPosX:I

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->scrollRight:Z

    .line 26
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->fTextScale:F

    .line 28
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->center:Z

    .line 41
    const/4 v5, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;F)V
    .registers 17
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "textColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "nTextScale"  # F

    .line 44
    move-object v9, p0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iScrollPosX:I

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, v9, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->scrollRight:Z

    .line 26
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v9, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->fTextScale:F

    .line 28
    iput-boolean v0, v9, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->center:Z

    .line 45
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)F
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    .line 17
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->fTextScale:F

    return v0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    .line 17
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->center:Z

    return v0
.end method

.method static synthetic access$200(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    .line 17
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iScrollPosX:I

    return v0
.end method

.method static synthetic access$204(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    .line 17
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iScrollPosX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iScrollPosX:I

    return v0
.end method

.method static synthetic access$206(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    .line 17
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iScrollPosX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iScrollPosX:I

    return v0
.end method

.method static synthetic access$300(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)J
    .registers 3
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    .line 17
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->lTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;J)J
    .registers 3
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;
    .param p1, "x1"  # J

    .line 17
    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->lTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    .line 17
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->scrollRight:Z

    return v0
.end method

.method static synthetic access$402(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;Z)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;
    .param p1, "x1"  # Z

    .line 17
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->scrollRight:Z

    return p1
.end method

.method private final init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V
    .registers 11
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p6, "textColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "nTextScale"  # F
    .param p8, "iTextPos"  # I

    .line 57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 59
    iput p8, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iScrollPosX:I

    .line 60
    iput p7, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->fTextScale:F

    .line 62
    if-gez p8, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->center:Z

    .line 64
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->setPosX(I)V

    .line 65
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->setPosY(I)V

    .line 67
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->setWidthE(I)V

    .line 69
    if-lez p5, :cond_1d

    .line 70
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->setHeightE(I)V

    .line 73
    :cond_1d
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->setTextE(Ljava/lang/String;)V

    .line 75
    iput-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->textColor:Lcom/badlogic/gdx/graphics/Color;

    .line 77
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->updateTextPosition()V

    .line 79
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->fTextScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_35

    .line 80
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->drawText:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$DrawText;

    goto :goto_3c

    .line 90
    :cond_35
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->drawText:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$DrawText;

    .line 97
    :goto_3c
    return-void
.end method


# virtual methods
.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 126
    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->draw_StartClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 127
    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 128
    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->draw_EndClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 129
    return-void
.end method

.method public draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 109
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->drawText:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$DrawText;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$DrawText;->draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 110
    return-void
.end method

.method public draw_EndClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 115
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 116
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7

    .line 119
    goto :goto_8

    .line 117
    :catch_7
    move-exception v0

    .line 120
    :goto_8
    return-void
.end method

.method public draw_StartClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 103
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getPosXE()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getWidthE()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getHeightE()I

    move-result v4

    neg-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 104
    .local v0, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 105
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 106
    return-void
.end method

.method public getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 5
    .param p1, "isActive"  # Z

    .line 135
    if-eqz p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_22

    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_22

    .line 136
    :cond_e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->textColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_22

    :cond_17
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f333333  # 0.7f

    const v2, 0x3f47ae14  # 0.78f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 135
    :goto_22
    return-object v0
.end method

.method public getCurr()I
    .registers 2

    .line 221
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iScrollPosX:I

    return v0
.end method

.method public setTextE(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->sText:Ljava/lang/String;

    .line 144
    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->fontID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->fTextScale:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 145
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 147
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iTextWidth:I

    .line 148
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iTextHeight:I

    .line 150
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->updateTextPosition()V

    .line 152
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getHeightE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iTextHeight:I

    if-ge v0, v1, :cond_42

    .line 153
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iTextHeight:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->setHeightE(I)V
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_42} :catch_43

    .line 157
    :cond_42
    goto :goto_44

    .line 155
    :catch_43
    move-exception v0

    .line 160
    :goto_44
    :try_start_44
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->fontID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_57} :catch_58

    .line 163
    goto :goto_59

    .line 161
    :catch_58
    move-exception v0

    .line 164
    :goto_59
    return-void
.end method

.method public final updateTextPosition()V
    .registers 4

    .line 168
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getTextWidthU()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getWidthE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_15

    .line 169
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    goto :goto_28

    .line 197
    :cond_15
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->center:Z

    if-eqz v0, :cond_21

    .line 198
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    goto :goto_28

    .line 206
    :cond_21
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$5;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    .line 215
    :goto_28
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iScrollPosX:I

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->scrollRight:Z

    .line 217
    return-void
.end method
