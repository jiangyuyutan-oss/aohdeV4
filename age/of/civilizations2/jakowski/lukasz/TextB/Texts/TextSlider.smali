.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;
.super Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
.source "TextSlider.java"


# instance fields
.field private FONT_SCALE:F

.field private extraPosY:I

.field private fScrollNewMenuPosY:F

.field private iHeightOfSlider:I

.field private iMaxHeight:I

.field private iScrollPosY:I

.field private iScrollPosY2:I

.field private iSliderPosY:I

.field private lLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;",
            ">;"
        }
    .end annotation
.end field

.field private moveable:Z

.field private scrollModeY:Z


# direct methods
.method public constructor <init>(IIII)V
    .registers 13
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nWidth"  # I
    .param p4, "nHeight"  # I

    .line 49
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->lLine:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->moveable:Z

    .line 32
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->extraPosY:I

    .line 34
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->FONT_SCALE:F

    .line 36
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iMaxHeight:I

    .line 40
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->scrollModeY:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY2:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->fScrollNewMenuPosY:F

    .line 50
    const/high16 v7, 0x3f800000  # 1.0f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->init(IIIIIF)V

    .line 51
    return-void
.end method

.method public constructor <init>(IIIIF)V
    .registers 13
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nWidth"  # I
    .param p4, "nHeight"  # I
    .param p5, "nFONT_SCALE"  # F

    .line 53
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->lLine:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->moveable:Z

    .line 32
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->extraPosY:I

    .line 34
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->FONT_SCALE:F

    .line 36
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iMaxHeight:I

    .line 40
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->scrollModeY:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY2:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->fScrollNewMenuPosY:F

    .line 54
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->init(IIIIIF)V

    .line 55
    return-void
.end method

.method public constructor <init>(IIIIIF)V
    .registers 10
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nWidth"  # I
    .param p4, "nMinHeight"  # I
    .param p5, "nMaxHeight"  # I
    .param p6, "nFONT_SCALE"  # F

    .line 57
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->lLine:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->moveable:Z

    .line 32
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->extraPosY:I

    .line 34
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->FONT_SCALE:F

    .line 36
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iMaxHeight:I

    .line 40
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->scrollModeY:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY2:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->fScrollNewMenuPosY:F

    .line 58
    invoke-direct/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->init(IIIIIF)V

    .line 59
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 15
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nWidth"  # I
    .param p4, "nMinHeight"  # I
    .param p5, "nMaxHeight"  # I
    .param p6, "fontID"  # I

    .line 61
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->lLine:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->moveable:Z

    .line 32
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->extraPosY:I

    .line 34
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->FONT_SCALE:F

    .line 36
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iMaxHeight:I

    .line 40
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->scrollModeY:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY2:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->fScrollNewMenuPosY:F

    .line 62
    iput p6, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->fontID:I

    .line 63
    const/high16 v7, 0x3f800000  # 1.0f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->init(IIIIIF)V

    .line 64
    return-void
.end method

.method private final init(IIIIIF)V
    .registers 8
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nWidth"  # I
    .param p4, "nHeight"  # I
    .param p5, "nMaxHeight"  # I
    .param p6, "nFONT_SCALE"  # F

    .line 67
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT_SLIDER:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 69
    iput p6, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->FONT_SCALE:F

    .line 70
    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iMaxHeight:I

    .line 72
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->setPosX(I)V

    .line 73
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->setPosY(I)V

    .line 74
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->setWidthE(I)V

    .line 75
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->setHeightE(I)V

    .line 77
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->updateMoveable()V

    .line 78
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iSliderPosY:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->updateSlider(I)V

    .line 79
    return-void
.end method


# virtual methods
.method public final addText(Ljava/lang/String;I)V
    .registers 11
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "extraHeight"  # I

    .line 84
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->lLine:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getWidthE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;->LEFT:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->FONT_SCALE:F

    move-object v1, v7

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;-><init>(Ljava/lang/String;IILage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;F)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->updateMoveable()V

    .line 86
    return-void
.end method

.method public drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 91
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getWidthE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v6, v0, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 92
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v6, v0, v2

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 93
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getWidthE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 94
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 95
    return-void
.end method

.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 22
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 99
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 102
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosXE()I

    move-result v2

    add-int v2, v2, p2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosY()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v3, v4

    sub-int v3, v3, p3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getWidthE()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v5

    neg-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    move-object v10, v0

    .line 103
    .local v10, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 104
    invoke-static {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 106
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f5cdcdd

    const v3, 0x3f66e6e7

    const/high16 v11, 0x3f800000  # 1.0f

    invoke-direct {v0, v2, v3, v2, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 108
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->FONT_SCALE:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "tY":I
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->lLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    move v14, v2

    .end local v2  # "tY":I
    .local v13, "iSize":I
    .local v14, "tY":I
    :goto_60
    if-ge v0, v13, :cond_a1

    .line 110
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->lLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->extraPosY:I

    add-int/2addr v3, v5

    add-int/2addr v3, v14

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iSliderPosY:I

    add-int/2addr v3, v5

    add-int v5, v3, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getWidthE()I

    move-result v6

    move/from16 v15, p4

    invoke-virtual {v1, v15}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->fontID:I

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILcom/badlogic/gdx/graphics/Color;I)V

    .line 112
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->lLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->getHeight()I

    move-result v2

    add-int/2addr v14, v2

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    :cond_a1
    move/from16 v15, p4

    .line 114
    .end local v0  # "i":I
    .end local v13  # "iSize":I
    .end local v14  # "tY":I
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 116
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 120
    :try_start_b7
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 121
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_bd
    .catch Ljava/lang/IllegalStateException; {:try_start_b7 .. :try_end_bd} :catch_be

    .line 124
    goto :goto_bf

    .line 122
    :catch_be
    move-exception v0

    .line 126
    :goto_bf
    iget-boolean v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->scrollModeY:Z

    if-eqz v0, :cond_e6

    .line 127
    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_e0

    .line 128
    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iSliderPosY:I

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->fScrollNewMenuPosY:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->updateSlider(I)V

    .line 129
    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->fScrollNewMenuPosY:F

    const v2, 0x3f7851ec  # 0.97f

    mul-float v0, v0, v2

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->fScrollNewMenuPosY:F

    goto :goto_e2

    .line 131
    :cond_e0
    iput-boolean v12, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->scrollModeY:Z

    .line 134
    :goto_e2
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 137
    :cond_e6
    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 138
    return-void
.end method

.method public final drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 142
    :try_start_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->moveable:Z

    if-eqz v0, :cond_14e

    if-eqz p4, :cond_14e

    .line 143
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a  # 0.3f

    const v2, 0x3e6147ae  # 0.22f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 144
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPosition:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getWidthE()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPosition:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v7, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPosition:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPosition:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v9, v0, v1

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 145
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPosition:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getWidthE()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPosition:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v7, v0, p3

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 148
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuMode()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 149
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3da3d70a  # 0.08f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_b4

    .line 151
    :cond_a6
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e23d70a  # 0.16f

    const v2, 0x3dc8b439

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 154
    :goto_b4
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPositionActive:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/2addr v0, p2

    add-int/lit8 v3, v0, 0x1

    .line 156
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosY()I

    move-result v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iSliderPosY:I

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPositionActive:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v5, v0, -0x2

    .line 158
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iHeightOfSlider:I

    div-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v2

    mul-int v0, v0, v2

    div-int/lit8 v0, v0, 0x64

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPositionActive:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v6, v0, v2

    .line 154
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 160
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPositionActive:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/2addr v0, p2

    add-int/lit8 v3, v0, 0x1

    .line 162
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getPosY()I

    move-result v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iSliderPosY:I

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPositionActive:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iHeightOfSlider:I

    div-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v4

    mul-int v2, v2, v4

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v0, v2

    add-int v4, v0, p3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 160
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 165
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_14e
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_14e} :catch_14f

    .line 169
    :cond_14e
    goto :goto_155

    .line 167
    :catch_14f
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/lang/ArithmeticException;
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 170
    .end local v0  # "ex":Ljava/lang/ArithmeticException;
    :goto_155
    return-void
.end method

.method public getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 245
    if-eqz p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :goto_7
    return-object v0
.end method

.method public getCurr()I
    .registers 2

    .line 230
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iSliderPosY:I

    return v0
.end method

.method public getHeightE()I
    .registers 3

    .line 241
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iHeightOfSlider:I

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    if-le v0, v1, :cond_10

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iHeightOfSlider:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iMaxHeight:I

    if-le v0, v1, :cond_14

    move v0, v1

    goto :goto_14

    :cond_10
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    :cond_14
    :goto_14
    return v0
.end method

.method public isMoveable()Z
    .registers 2

    .line 225
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->moveable:Z

    return v0
.end method

.method public final scrollTheMenu()V
    .registers 4

    .line 210
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->moveable:Z

    if-eqz v0, :cond_2b

    .line 211
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY:I

    if-lez v0, :cond_2b

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY2:I

    if-lez v1, :cond_2b

    .line 212
    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000  # 3.0f

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v2, v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2b

    .line 213
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY2:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000  # 1.25f

    mul-float v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->fScrollNewMenuPosY:F

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->scrollModeY:Z

    .line 218
    :cond_2b
    return-void
.end method

.method public final setScrollPosY(I)V
    .registers 3
    .param p1, "iScrollPosY"  # I

    .line 235
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY2:I

    .line 236
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iScrollPosY:I

    .line 237
    return-void
.end method

.method public final updateMoveable()V
    .registers 5

    .line 197
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->extraPosY:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iHeightOfSlider:I

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->lLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_10
    if-ge v0, v1, :cond_26

    .line 200
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iHeightOfSlider:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->lLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iHeightOfSlider:I

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 203
    .end local v0  # "i":I
    .end local v1  # "iSize":I
    :cond_26
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iHeightOfSlider:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->moveable:Z

    .line 204
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->scrollModeY:Z

    .line 205
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iSliderPosY:I

    .line 206
    return-void
.end method

.method public updateSlider(I)V
    .registers 6
    .param p1, "nSliderPosY"  # I

    .line 181
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_e

    .line 182
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iSliderPosY:I

    .line 183
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    .line 185
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->scrollModeY:Z

    goto :goto_2a

    .line 186
    :cond_e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iHeightOfSlider:I

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_28

    .line 187
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->getHeightE()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iHeightOfSlider:I

    sub-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iSliderPosY:I

    .line 188
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    .line 190
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->scrollModeY:Z

    goto :goto_2a

    .line 192
    :cond_28
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider;->iSliderPosY:I

    .line 194
    :goto_2a
    return-void
.end method
