.class public Lage/of/civilizations2/jakowski/lukasz/Menu;
.super Ljava/lang/Object;
.source "Menu.java"


# instance fields
.field private closeable:Z

.field private fScrollNewMenuPosX:F

.field private fScrollNewMenuPosY:F

.field private iHeight:I

.field public iMaxSliderPosY:I

.field private iMaxSliderPositionX:I

.field public iMenuElemsSize:I

.field private iMenuPosX:I

.field private iMenuPosY:I

.field private iNewMenuPositionX:I

.field private iNewMenuPositionY:I

.field private iPosX:I

.field private iPosY:I

.field private iScrollPosX:I

.field private iScrollPosX2:I

.field private iScrollPosY:I

.field private iScrollPosY2:I

.field private iWidth:I

.field public menuElem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;",
            ">;"
        }
    .end annotation
.end field

.field private menuTitle:Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

.field private scrollModeX:Z

.field private scrollModeY:Z

.field private scrollableX:Z

.field public scrollableY:Z

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->visible:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->closeable:Z

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuTitle:Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    .line 49
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollableX:Z

    .line 57
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollableY:Z

    .line 61
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeY:Z

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosY:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosY2:I

    .line 66
    const/4 v2, 0x0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->fScrollNewMenuPosY:F

    .line 68
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeX:Z

    .line 71
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosX:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosX2:I

    .line 73
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->fScrollNewMenuPosX:F

    return-void
.end method

.method private final getMenuElementIsInView(I)Z
    .registers 5
    .param p1, "i"  # I

    .line 347
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    .line 348
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v1

    if-le v0, v1, :cond_33

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    .line 349
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_80

    :cond_33
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    .line 350
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v1

    if-le v0, v1, :cond_82

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    .line 351
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_82

    :cond_80
    const/4 v0, 0x1

    goto :goto_83

    :cond_82
    const/4 v0, 0x0

    .line 347
    :goto_83
    return v0
.end method

.method private final getMenuElementIsInView_X(I)Z
    .registers 5
    .param p1, "i"  # I

    .line 355
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    .line 356
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v1

    if-lt v0, v1, :cond_33

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    .line 357
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_80

    :cond_33
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    .line 358
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v1

    if-lt v0, v1, :cond_82

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    .line 359
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_82

    :cond_80
    const/4 v0, 0x1

    goto :goto_83

    :cond_82
    const/4 v0, 0x0

    .line 355
    :goto_83
    return v0
.end method

.method private final resetScrollINFO()V
    .registers 2

    .line 516
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosX2:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosY2:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosY:I

    .line 517
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 2

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    .line 451
    return-void
.end method

.method public actionEL(I)V
    .registers 3
    .param p1, "nMenuElementID"  # I

    .line 437
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->actionElem(I)V

    .line 438
    return-void
.end method

.method public actionELPPM(I)V
    .registers 3
    .param p1, "nMenuElementID"  # I

    .line 442
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->actionElemPPM()V

    .line 443
    return-void
.end method

.method public beginClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 10
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 220
    invoke-virtual {p0, p1, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawBackgroundMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Z)V

    .line 223
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 224
    .local v0, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 225
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 226
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 214
    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->beginClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 215
    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawMenuM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 216
    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 217
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "sliderMenuIsActive"  # Z

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 211
    return-void
.end method

.method public final drawBackgroundMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Z)V
    .registers 10
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "sliderMenuIsActive"  # Z

    .line 409
    if-eqz p2, :cond_3e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuResizeMode()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuTitleMode()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 413
    :cond_12
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000  # 0.5f

    const v2, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 414
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pattern:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    const/4 v3, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pattern:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    neg-int v4, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 415
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 417
    :cond_3e
    return-void
.end method

.method public drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 422
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getCloseButtonImage(Z)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->btnClose:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuTitle:Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->getHeightT()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 423
    return-void
.end method

.method public final drawHoverM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 10
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "nMenuElementID"  # I

    .line 252
    :try_start_0
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosY()I

    move-result v2

    add-int/2addr v2, p3

    const/4 v3, 0x1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getActiveMenuElemeID()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElementIsActive(ZI)Z

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->drawMEH2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 255
    goto :goto_1e

    .line 253
    :catch_1d
    move-exception v0

    .line 256
    :goto_1e
    return-void
.end method

.method public final drawMenuBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 384
    const v0, 0x3e48b439

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 385
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v6

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 386
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 387
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 388
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 389
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 390
    return-void
.end method

.method public drawMenuElements(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 313
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuElemsSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_46

    .line 314
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getVisibleE()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 316
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 324
    :try_start_22
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosX()I

    move-result v1

    add-int v4, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosY()I

    move-result v1

    add-int v5, v1, p3

    invoke-virtual {p0, p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElementIsActive(ZI)Z

    move-result v6

    iget-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollableY:Z

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_41} :catch_42

    .line 327
    goto :goto_43

    .line 325
    :catch_42
    move-exception v1

    .line 313
    :cond_43
    :goto_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 332
    .end local v0  # "i":I
    :cond_46
    return-void
.end method

.method public final drawMenuM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 229
    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawMenuElements(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 231
    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 232
    return-void
.end method

.method public final drawMenuResizeRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 11
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 393
    const v0, 0x3e48b439

    const v1, 0x3f733333  # 0.95f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 394
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuResizeLEFT()Z

    move-result v0

    const v1, 0x3eb33333  # 0.35f

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_82

    .line 395
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x6

    sub-int v6, v0, v4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v0, 0x6

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v8, v0, 0x6

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 397
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 398
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    goto/16 :goto_10a

    .line 400
    :cond_82
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x6

    sub-int v5, v0, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x6

    sub-int v6, v0, v4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v0, 0x6

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v8, v0, 0x6

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 402
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 403
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v3, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 405
    :goto_10a
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 406
    return-void
.end method

.method public drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 262
    :try_start_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollableY:Z

    if-eqz v0, :cond_1a2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    if-ge v0, v1, :cond_1a2

    .line 263
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a  # 0.3f

    const v2, 0x3e6147ae  # 0.22f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 264
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPosition:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPosition:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v9, v0, v1

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 265
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPosition:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

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

    .line 268
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuMode()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 269
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3da3d70a  # 0.08f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_ba

    .line 271
    :cond_ac
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e23d70a  # 0.16f

    const v2, 0x3dc8b439

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 274
    :goto_ba
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPositionActive:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    .line 275
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/2addr v0, p2

    add-int/lit8 v3, v0, 0x1

    .line 276
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    div-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v5

    mul-int v4, v4, v5

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosY()I

    move-result v5

    sub-int/2addr v4, v5

    mul-int v2, v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v2, v4

    add-int/2addr v0, v2

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

    .line 278
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    div-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v2

    mul-int v0, v0, v2

    div-int/lit8 v0, v0, 0x64

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPositionActive:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v6, v0, v2

    .line 274
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 280
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPositionActive:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    .line 281
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/2addr v0, p2

    add-int/lit8 v3, v0, 0x1

    .line 282
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    div-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v5

    mul-int v4, v4, v5

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuPosY()I

    move-result v5

    sub-int/2addr v4, v5

    mul-int v2, v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v2, v4

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    div-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v4

    mul-int v2, v2, v4

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->scrollPositionActive:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 280
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 285
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_1a2
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_1a2} :catch_1a3

    .line 307
    :cond_1a2
    goto :goto_1a4

    .line 305
    :catch_1a3
    move-exception v0

    .line 308
    :goto_1a4
    return-void
.end method

.method public drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZI)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z
    .param p5, "nPosY"  # I

    .line 369
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuTitle:Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    if-eqz v0, :cond_14

    .line 370
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v3

    add-int v4, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->drawT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 373
    :cond_14
    if-eqz p4, :cond_30

    .line 374
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuResizeMode()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 375
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawMenuBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 376
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawMenuResizeRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_30

    .line 377
    :cond_25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuTitleMode()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 378
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawMenuBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 381
    :cond_30
    :goto_30
    return-void
.end method

.method public endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 237
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 238
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7

    .line 241
    goto :goto_8

    .line 239
    :catch_7
    move-exception v0

    .line 243
    :goto_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZI)V

    .line 245
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getCloseable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 246
    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 248
    :cond_1d
    return-void
.end method

.method public extraAction()V
    .registers 1

    .line 205
    return-void
.end method

.method public final getCloseButtonImage(Z)Lage/of/civilizations2/jakowski/lukasz/Image;
    .registers 3
    .param p1, "sliderMenuIsActive"  # Z

    .line 426
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuCloseMode()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 427
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btnhClose:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    return-object v0

    .line 430
    :cond_11
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btnClose:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    return-object v0
.end method

.method public final getCloseable()Z
    .registers 2

    .line 718
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->closeable:Z

    return v0
.end method

.method public getHeightM()I
    .registers 2

    .line 648
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iHeight:I

    return v0
.end method

.method public final getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
    .registers 3
    .param p1, "iID"  # I

    .line 580
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    return-object v0
.end method

.method public getMenuElementIsActive(ZI)Z
    .registers 5
    .param p1, "sliderMenuIsActive"  # Z
    .param p2, "i"  # I

    .line 363
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getActiveMenuElemeID()I

    move-result v1

    if-ne p2, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public final getMenuElemsSize()I
    .registers 2

    .line 575
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuElemsSize:I

    return v0
.end method

.method public getMenuPosX()I
    .registers 2

    .line 706
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosX:I

    return v0
.end method

.method public getMenuPosY()I
    .registers 2

    .line 686
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosY:I

    return v0
.end method

.method public final getMinHeight()I
    .registers 3

    .line 670
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getMinWidth()I
    .registers 3

    .line 640
    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_2} :catch_5

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 642
    :catch_5
    move-exception v0

    .line 643
    .local v0, "ex":Ljava/lang/NullPointerException;
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public final getMoveable()Z
    .registers 2

    .line 722
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuTitle:Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->getMoveable()Z

    move-result v0

    :goto_a
    return v0
.end method

.method public final getNewMenuPosX()I
    .registers 2

    .line 694
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionX:I

    return v0
.end method

.method public final getNewMenuPosY()I
    .registers 2

    .line 690
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionY:I

    return v0
.end method

.method public getPosX()I
    .registers 2

    .line 590
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iPosX:I

    return v0
.end method

.method public getPosY()I
    .registers 2

    .line 607
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iPosY:I

    return v0
.end method

.method public final getResizable()Z
    .registers 2

    .line 726
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuTitle:Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->getResizable()Z

    move-result v0

    :goto_a
    return v0
.end method

.method public final getScrollModeY()Z
    .registers 2

    .line 744
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeY:Z

    return v0
.end method

.method public final getScrollPosY()I
    .registers 2

    .line 735
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosY:I

    return v0
.end method

.method public final getScrollableX()Z
    .registers 2

    .line 698
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollableX:Z

    return v0
.end method

.method public final getScrollableY()Z
    .registers 2

    .line 678
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollableY:Z

    return v0
.end method

.method public final getTitleM()Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
    .registers 2

    .line 674
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuTitle:Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    return-object v0
.end method

.method public getVisibleM()Z
    .registers 2

    .line 710
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->visible:Z

    return v0
.end method

.method public getWidthM()I
    .registers 2

    .line 617
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iWidth:I

    return v0
.end method

.method public final initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V
    .registers 17
    .param p1, "menuTitle"  # Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;",
            "IIII",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZZ)V

    .line 79
    return-void
.end method

.method public final initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V
    .registers 19
    .param p1, "menuTitle"  # Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p7, "visible"  # Z
    .param p8, "closeable"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;",
            "IIII",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;",
            ">;ZZ)V"
        }
    .end annotation

    .line 82
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZZ)V

    .line 83
    return-void
.end method

.method public final initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZZ)V
    .registers 14
    .param p1, "menuTitle"  # Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p7, "visible"  # Z
    .param p8, "backButton"  # Z
    .param p9, "closeable"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;",
            "IIII",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 102
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iPosX:I

    .line 103
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionY:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosY:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iPosY:I

    .line 104
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iWidth:I

    .line 105
    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iHeight:I

    .line 107
    iput-boolean p9, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->closeable:Z

    .line 108
    iput-boolean p7, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->visible:Z

    .line 110
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuTitle:Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    .line 111
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuElemsSize:I

    .line 113
    if-eqz p8, :cond_94

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "tempMaxY":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuElemsSize:I

    if-ge v1, v2, :cond_54

    .line 117
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v2

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v0, :cond_51

    .line 118
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v2

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    .line 116
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 122
    .end local v1  # "i":I
    :cond_54
    const/4 v1, 0x0

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosY(I)V

    .line 124
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v2, p5, v2

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_7f

    .line 125
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosY(I)V

    goto :goto_94

    .line 127
    :cond_7f
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosY(I)V

    .line 131
    .end local v0  # "tempMaxY":I
    :cond_94
    :goto_94
    iput-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    .line 133
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateScrollable()V

    .line 135
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuElements_IsInView()V

    .line 136
    return-void
.end method

.method public final initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V
    .registers 17
    .param p1, "menuTitle"  # Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;",
            "IIII",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZZ)V

    .line 89
    return-void
.end method

.method public final initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;Z)V
    .registers 18
    .param p1, "menuTitle"  # Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p7, "closeable"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;",
            "IIII",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;",
            ">;Z)V"
        }
    .end annotation

    .line 93
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZZ)V

    .line 94
    return-void
.end method

.method public final initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V
    .registers 19
    .param p1, "menuTitle"  # Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p7, "visible"  # Z
    .param p8, "closeable"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;",
            "IIII",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;",
            ">;ZZ)V"
        }
    .end annotation

    .line 97
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZZ)V

    .line 98
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 445
    return-void
.end method

.method public onHovered()V
    .registers 1

    .line 453
    return-void
.end method

.method public onMenuPressed()V
    .registers 1

    .line 447
    return-void
.end method

.method public final scrollTheMenu()V
    .registers 6

    .line 494
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollableY:Z

    const/4 v1, 0x1

    const v2, 0x3fb9999a  # 1.45f

    if-eqz v0, :cond_2c

    .line 495
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosY:I

    if-lez v0, :cond_2c

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosY2:I

    if-lez v3, :cond_2c

    .line 496
    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40400000  # 3.0f

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v4, v4, v3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2c

    .line 497
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosY:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosY2:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->fScrollNewMenuPosY:F

    .line 498
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeY:Z

    .line 503
    :cond_2c
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollableX:Z

    if-eqz v0, :cond_4c

    .line 504
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosX:I

    if-lez v0, :cond_4c

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosX2:I

    if-lez v3, :cond_4c

    .line 505
    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_4c

    .line 506
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosX:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosX2:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->fScrollNewMenuPosX:F

    .line 507
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeX:Z

    .line 512
    :cond_4c
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->resetScrollINFO()V

    .line 513
    return-void
.end method

.method public setHeight(I)V
    .registers 4
    .param p1, "iHeight"  # I

    .line 652
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iHeight:I

    .line 654
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMinHeight()I

    move-result v0

    if-ge p1, v0, :cond_e

    .line 655
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMinHeight()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iHeight:I

    .line 658
    :cond_e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v0

    add-int/2addr v0, p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    if-lt v0, v1, :cond_20

    .line 659
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iHeight:I

    .line 662
    :cond_20
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateScrollable()V

    .line 667
    return-void
.end method

.method public final setMenuElem(ILage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;)V
    .registers 5
    .param p1, "iID"  # I
    .param p2, "nMenuElement"  # Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    .line 585
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 587
    return-void
.end method

.method public final setMenuPosX(I)V
    .registers 2
    .param p1, "iMenuPosX"  # I

    .line 702
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuPosX(I)V

    .line 703
    return-void
.end method

.method public final setMenuPosY(I)V
    .registers 2
    .param p1, "iMenuPosY"  # I

    .line 682
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuPosY(I)V

    .line 683
    return-void
.end method

.method public setPosX(I)V
    .registers 2
    .param p1, "iPosX"  # I

    .line 594
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iPosX:I

    .line 595
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosX:I

    .line 596
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuPosX(I)V

    .line 597
    return-void
.end method

.method public final setPosX_Force(I)V
    .registers 4
    .param p1, "iPosX"  # I

    .line 600
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iPosX:I

    .line 601
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosX:I

    .line 602
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionX:I

    .line 603
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosX(Z)V

    .line 604
    return-void
.end method

.method public setPosY(I)V
    .registers 2
    .param p1, "iPosY"  # I

    .line 611
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iPosY:I

    .line 612
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosY:I

    .line 613
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuPosY(I)V

    .line 614
    return-void
.end method

.method public final setScrollPosX(I)V
    .registers 3
    .param p1, "iScrollPosX"  # I

    .line 739
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosX2:I

    .line 740
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosX:I

    .line 741
    return-void
.end method

.method public final setScrollPosY(I)V
    .registers 3
    .param p1, "iScrollPosY"  # I

    .line 730
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosY2:I

    .line 731
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iScrollPosY:I

    .line 732
    return-void
.end method

.method public setVisibleM(Z)V
    .registers 2
    .param p1, "visible"  # Z

    .line 714
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->visible:Z

    .line 715
    return-void
.end method

.method public setWidth(I)Z
    .registers 4
    .param p1, "iWidth"  # I

    .line 621
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_16

    .line 622
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 623
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMinWidth()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iWidth:I

    .line 635
    const/4 v0, 0x0

    return v0

    .line 625
    :cond_13
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iWidth:I

    .line 627
    return v1

    .line 631
    :cond_16
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iWidth:I

    .line 632
    return v1
.end method

.method public final stopScrolling()V
    .registers 2

    .line 520
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->resetScrollINFO()V

    .line 521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeX:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeY:Z

    .line 522
    return-void
.end method

.method public update()V
    .registers 6

    .line 168
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeY:Z

    const v1, 0x3f7851ec  # 0.97f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v0, :cond_26

    .line 169
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_24

    .line 170
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosY:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->fScrollNewMenuPosY:F

    float-to-int v4, v4

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuPosY(I)V

    .line 171
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->fScrollNewMenuPosY:F

    mul-float v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->fScrollNewMenuPosY:F

    goto :goto_26

    .line 173
    :cond_24
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeY:Z

    .line 178
    :cond_26
    :goto_26
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeX:Z

    if-eqz v0, :cond_46

    .line 179
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->fScrollNewMenuPosX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_44

    .line 180
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->fScrollNewMenuPosX:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuPosX(I)V

    .line 181
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->fScrollNewMenuPosX:F

    mul-float v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->fScrollNewMenuPosX:F

    goto :goto_46

    .line 183
    :cond_44
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeX:Z

    .line 188
    :cond_46
    :goto_46
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollableX:Z

    if-eqz v0, :cond_55

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosX:I

    if-eq v0, v1, :cond_55

    .line 189
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosX:I

    .line 191
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuElements_IsInView()V

    .line 195
    :cond_55
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionY:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosY:I

    if-eq v0, v1, :cond_60

    .line 196
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuPosY:I

    .line 198
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuElements_IsInView()V

    .line 201
    :cond_60
    return-void
.end method

.method public final updateButtonWidth(III)I
    .registers 7
    .param p1, "iButtonID"  # I
    .param p2, "iStartPosX"  # I
    .param p3, "iMinWidth"  # I

    .line 557
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextWidthU()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    if-le v0, p3, :cond_24

    .line 558
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextWidthU()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setWidthE(I)V

    goto :goto_2b

    .line 560
    :cond_24
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, p3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setWidthE(I)V

    .line 563
    :goto_2b
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosX(I)V

    .line 565
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateScrollable()V

    .line 567
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v0

    return v0
.end method

.method public updateLang()V
    .registers 1

    .line 163
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .registers 4

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuElemsSize:I

    if-ge v0, v1, :cond_17

    .line 336
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElementIsInView(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setIsInView(Z)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method public updateMenuElements_IsInView_X()V
    .registers 4

    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuElemsSize:I

    if-ge v0, v1, :cond_17

    .line 342
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElementIsInView_X(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setIsInView(Z)V

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method public final updateMenuPosX(I)V
    .registers 5
    .param p1, "nMenuPosX"  # I

    .line 459
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v0

    const/4 v1, 0x1

    if-le p1, v0, :cond_13

    .line 460
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionX:I

    .line 461
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosX(Z)V

    goto :goto_37

    .line 462
    :cond_13
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPositionX:I

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_35

    .line 463
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPositionX:I

    sub-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionX:I

    .line 464
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosX(Z)V

    goto :goto_37

    .line 466
    :cond_35
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionX:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    .line 470
    :goto_37
    goto :goto_39

    .line 468
    :catch_38
    move-exception v0

    .line 471
    :goto_39
    return-void
.end method

.method public final updateMenuPosY(I)V
    .registers 6
    .param p1, "nMenuPosY"  # I

    .line 475
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v0, :cond_16

    .line 476
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionY:I

    .line 477
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    .line 479
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeY:Z

    goto :goto_3c

    .line 480
    :cond_16
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_3a

    .line 481
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    sub-int/2addr v0, v3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionY:I

    .line 482
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    .line 484
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollModeY:Z

    goto :goto_3c

    .line 486
    :cond_3a
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iNewMenuPositionY:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 490
    :goto_3c
    goto :goto_3e

    .line 488
    :catch_3d
    move-exception v0

    .line 491
    :goto_3e
    return-void
.end method

.method public final updateScrollable()V
    .registers 5

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPositionX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMenuElemsSize:I

    if-ge v1, v2, :cond_7d

    .line 142
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    if-le v2, v3, :cond_42

    .line 143
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    .line 146
    :cond_42
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPositionX:I

    if-le v2, v3, :cond_7a

    .line 147
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->menuElem:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPositionX:I

    .line 141
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 151
    .end local v1  # "i":I
    :cond_7d
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPositionX:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_88

    const/4 v1, 0x1

    goto :goto_89

    :cond_88
    const/4 v1, 0x0

    :goto_89
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollableX:Z

    .line 152
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iMaxSliderPosY:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iHeight:I

    if-le v1, v2, :cond_92

    const/4 v0, 0x1

    :cond_92
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollableY:Z

    .line 154
    if-eqz v0, :cond_9b

    .line 155
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iPosY:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuPosY(I)V

    .line 157
    :cond_9b
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->scrollableX:Z

    if-eqz v0, :cond_a4

    .line 158
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu;->iPosX:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuPosX(I)V

    .line 160
    :cond_a4
    return-void
.end method

.method public final updatedButtonsWidth(II)V
    .registers 6
    .param p1, "iStartPosX"  # I
    .param p2, "iMinWidth"  # I

    .line 527
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElemsSize()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 528
    invoke-virtual {p0, v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateButtonWidth(III)I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 531
    .end local v0  # "i":I
    :cond_12
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateScrollable()V

    .line 532
    return-void
.end method

.method public final updatedButtonsWidthFromToID(IIII)V
    .registers 8
    .param p1, "iStartButtonID"  # I
    .param p2, "iEndButtonID"  # I
    .param p3, "iStartPosX"  # I
    .param p4, "iMinWidth"  # I

    .line 543
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_e

    .line 544
    invoke-virtual {p0, v0, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateButtonWidth(III)I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    add-int/2addr p3, v1

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 547
    .end local v0  # "i":I
    :cond_e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateScrollable()V

    .line 548
    return-void
.end method

.method public final updatedButtonsWidth_Padding(III)V
    .registers 6
    .param p1, "iStartPosX"  # I
    .param p2, "iMinWidth"  # I
    .param p3, "iPadding"  # I

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElemsSize()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 536
    invoke-virtual {p0, v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateButtonWidth(III)I

    move-result v1

    add-int/2addr v1, p3

    add-int/2addr p1, v1

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 539
    .end local v0  # "i":I
    :cond_10
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateScrollable()V

    .line 540
    return-void
.end method
