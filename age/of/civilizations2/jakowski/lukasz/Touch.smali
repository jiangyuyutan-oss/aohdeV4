.class public Lage/of/civilizations2/jakowski/lukasz/Touch;
.super Ljava/lang/Object;
.source "Touch.java"


# static fields
.field private static mousePosX:I

.field private static mousePosY:I

.field public static sAMD:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Touch;->mousePosX:I

    .line 12
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Touch;->mousePosY:I

    .line 34
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Touch;->sAMD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMousePosX()I
    .registers 1

    .line 24
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Touch;->mousePosX:I

    return v0
.end method

.method public static final getMousePosY()I
    .registers 1

    .line 28
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Touch;->mousePosY:I

    return v0
.end method

.method public static final resetAllModes()V
    .registers 2

    .line 105
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setActiveMenuID(I)V

    .line 106
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setActiveMenuElemeID(I)V

    .line 107
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setSliderMenuMode(Z)V

    .line 108
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setSliderMenuTitleMode(Z)V

    .line 109
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setSliderMenuResizeMode(Z)V

    .line 110
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setSliderMode(Z)V

    .line 111
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setSlideMapMode(Z)V

    .line 112
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setTextSliderMode(Z)V

    .line 113
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setSliderMenuCloseMode(Z)V

    .line 114
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setKeyboardMode(Z)V

    .line 115
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setFlagEditorMode(Z)V

    .line 116
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setGraphMode(Z)V

    .line 117
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setGraphButtonMode(Z)V

    .line 118
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setGraphButtonModeX(Z)V

    .line 119
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setGraphButtonMode2(Z)V

    .line 120
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setColorPickerMode(Z)V

    .line 122
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->setActionMap(Z)V

    .line 124
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->resetScaleInfo()V

    .line 125
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpSl()Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->resetScrollInfo()V

    .line 126
    return-void
.end method

.method public static final setMousePosXY(II)V
    .registers 3
    .param p0, "nMousePosX"  # I
    .param p1, "nMousePosY"  # I

    .line 15
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->isSomethingHovered()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 16
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 19
    :cond_c
    sput p0, Lage/of/civilizations2/jakowski/lukasz/Touch;->mousePosX:I

    .line 20
    sput p1, Lage/of/civilizations2/jakowski/lukasz/Touch;->mousePosY:I

    .line 21
    return-void
.end method


# virtual methods
.method public final actionDown(IIII)V
    .registers 7
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nPointer"  # I
    .param p4, "button"  # I

    .line 37
    if-nez p3, :cond_4a

    .line 39
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->resetMobileHover()V

    .line 41
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->actionDown(II)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 42
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Touch;->sAMD:Z

    if-eqz v0, :cond_41

    .line 43
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXX:I

    .line 44
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    iput p2, v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXY:I

    .line 46
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXW:I

    .line 47
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->iSBXH:I

    .line 49
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->bSMD:Z

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushMode:Z

    .line 53
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Touch;->sAMD:Z

    goto :goto_4a

    .line 56
    :cond_41
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionDown(IIII)V

    .line 63
    :cond_4a
    :goto_4a
    return-void
.end method

.method public final actionMove(III)V
    .registers 5
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nPointer"  # I

    .line 70
    if-nez p3, :cond_1f

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getScaleMode()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 71
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->actionMove(II)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 72
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionMove(II)V

    .line 75
    :cond_1f
    return-void
.end method

.method public final actionMove(IIII)V
    .registers 6
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nPosX2"  # I
    .param p4, "nPosY2"  # I

    .line 66
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionMove(IIII)V

    .line 67
    return-void
.end method

.method public final actionMove_Hover(II)V
    .registers 4
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I

    .line 90
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getFromViewID()I

    move-result v0

    if-gez v0, :cond_23

    .line 91
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->actionMove_Hover(II)Z

    .line 92
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateHoveredMenuElement_Hover(II)V

    .line 94
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateHoveredProvince_Hover(II)V

    .line 96
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->get_MenuElementHover_IsInView()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 97
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 100
    :cond_23
    return-void
.end method

.method public final actionUp(IIII)V
    .registers 6
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nPointer"  # I
    .param p4, "button"  # I

    .line 78
    if-nez p3, :cond_17

    .line 79
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->actionUp(IIII)Z

    move-result v0

    if-nez v0, :cond_13

    .line 80
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionUp(IIII)V

    .line 83
    :cond_13
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->resetAllModes()V

    goto :goto_26

    .line 84
    :cond_17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getScaleMode()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 85
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->resetAllModes()V

    .line 87
    :cond_26
    :goto_26
    return-void
.end method
