.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_InGame_ActionInfo_RegroupArmy_Confirm.java"


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 21
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_Decline;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_Decline;-><init>(IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo_Move;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo_Move;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMinimapHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v1, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 29
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->updateLang()V

    .line 31
    const/high16 v1, 0x40a00000  # 5.0f

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lMOVE_MENU_TIME:J

    .line 33
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 70
    packed-switch p1, :pswitch_data_22

    goto :goto_21

    .line 78
    :pswitch_4  #0x1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    goto :goto_21

    .line 72
    :pswitch_13  #0x0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->cMABX()V

    .line 74
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->resetRegroupArmy_Data()V

    .line 75
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->checkProvinceActionMenu()V

    .line 76
    nop

    .line 81
    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_13  #00000000
        :pswitch_4  #00000001
    .end packed-switch
.end method

.method public beginClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 64
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 19
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 44
    move-object v0, p0

    move/from16 v1, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->lMOVE_MENU_TIME:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x43960000  # 300.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x42be0000  # 95.0f

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    sput v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    .line 46
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    const/4 v3, 0x1

    const/high16 v4, 0x42c80000  # 100.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_23

    .line 47
    sput v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    goto :goto_26

    .line 49
    :cond_23
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 52
    :goto_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->lMOVE_MENU_TIME:J

    .line 55
    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getPosX()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getPosY()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    sub-int v6, v6, p3

    int-to-float v6, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getWidthM()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getHeightM()I

    move-result v8

    neg-int v8, v8

    sub-int/2addr v8, v3

    int-to-float v8, v8

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 56
    .local v2, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 57
    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 59
    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->bgGameAction:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getPosX()I

    move-result v5

    add-int v8, v5, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getPosY()I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->bgGameAction:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getHeightM()I

    move-result v7

    int-to-float v7, v7

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    sub-float v9, v4, v9

    mul-float v7, v7, v9

    div-float/2addr v7, v4

    float-to-int v7, v7

    add-int/2addr v5, v7

    sub-int/2addr v5, v3

    add-int v9, v5, p3

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v7

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v5

    add-int/2addr v7, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v7, v5

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getHeightM()I

    move-result v5

    add-int/lit8 v11, v5, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 61
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getHeightM()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    sub-float v5, v4, v5

    mul-float v3, v3, v5

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    move-object v4, p1

    move/from16 v5, p4

    invoke-super {p0, p1, v1, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 62
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 85
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame_Recruit()V

    .line 86
    return-void
.end method

.method public updateLang()V
    .registers 4

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Regroup/Menu_InGame_ActionInfo_RegroupArmy_Confirm;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Confirm"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 38
    return-void
.end method
