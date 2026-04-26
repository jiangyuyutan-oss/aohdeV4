.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_Continents_AddNewContinentToPackage.java"


# instance fields
.field private lColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 27

    .line 45
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 34
    const/4 v1, 0x0

    iput-object v1, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->lTags:Ljava/util/List;

    .line 35
    iput-object v1, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->lColors:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->lTags:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->lColors:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 51
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;

    sget v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v25, 0x1

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :try_start_49
    const-string v0, "map/data/continents/packges_data/Age_of_Civilizations"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 56
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "tempT":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "tagsSPLITED":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "tempAdded":I
    :goto_5b
    array-length v6, v3

    if-ge v4, v6, :cond_e1

    .line 60
    aget-object v6, v3, v4

    invoke-direct {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->getIsInPackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_dd

    .line 61
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    aget-object v7, v3, v4

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getContinentDataName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/high16 v7, 0x42480000  # 50.0f

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v10, v10, v7

    float-to-int v12, v10

    const/4 v13, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v10, v5, 0x1

    mul-int v7, v7, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v14, v5, 0x2

    mul-int v10, v10, v14

    add-int v14, v7, v10

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v15, v7, v10

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v17, 0x1

    move-object v10, v6

    invoke-direct/range {v10 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_ReflectedBG;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v10, "Edit"

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v21, v7, v10

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v10, v5, 0x1

    mul-int v7, v7, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v11, v5, 0x2

    mul-int v10, v10, v11

    add-int v22, v7, v10

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v23, v7, 0x2

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v25, 0x1

    move-object/from16 v18, v6

    invoke-direct/range {v18 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_ReflectedBG;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v6, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->lTags:Ljava/util/List;

    aget-object v7, v3, v4

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v5, v5, 0x1

    .line 65
    iget-object v6, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->lColors:Ljava/util/List;

    aget-object v7, v3, v4

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getContinentDataColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_dd
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_49 .. :try_end_dd} :catch_e2

    .line 59
    :cond_dd
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5b

    .line 70
    .end local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "tempT":Ljava/lang/String;
    .end local v3  # "tagsSPLITED":[Ljava/lang/String;
    .end local v4  # "i":I
    .end local v5  # "tempAdded":I
    :cond_e1
    goto :goto_e3

    .line 68
    :catch_e2
    move-exception v0

    .line 72
    :goto_e3
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3, v3}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;-><init>(Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v4, v0, 0x4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int v6, v0, v1

    move-object/from16 v1, p0

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->updateLang()V

    .line 74
    return-void
.end method

.method private final getIsInPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Package_ContinentsData:Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->getContinentsTagsSize()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 146
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Package_ContinentsData:Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->getContinentTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 147
    const/4 v1, 0x1

    return v1

    .line 145
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    .end local v0  # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private final setView_MAP_EDITOR_CREATE_NEW_CONTINENT()V
    .registers 5

    .line 128
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_CONTINENTS_ADDNEWCONTINENT_TOPACKAGE:Lage/of/civilizations2/jakowski/lukasz/View;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->backToMenu:Lage/of/civilizations2/jakowski/lukasz/View;

    .line 129
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_CREATE_NEW_CONTINENT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 130
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RenderProvince;->updateDrawProvinces()V

    .line 132
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->setPosX(I)V

    .line 133
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->setPosY(I)V

    .line 134
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Continent_GameData:Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;->getR()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Continent_GameData:Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;->getG()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Continent_GameData:Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;->getB()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    .line 135
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$PickerAction;->MAP_EDITOR_CONTINENT_COLOR:Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$PickerAction;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/Z_Other/ColorPicker/ColorPicker_AoC$PickerAction;)V

    .line 136
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 88
    packed-switch p1, :pswitch_data_a2

    .line 104
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_66

    .line 105
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Package_ContinentsData:Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->lTags:Ljava/util/List;

    add-int/lit8 v2, p1, -0x2

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->addContinentTag(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->onBackPressed()V

    goto/16 :goto_a1

    .line 93
    :pswitch_1d  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    .line 94
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Continent_GameData:Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;

    .line 96
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRandomColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 97
    .local v0, "tempColor":Lcom/badlogic/gdx/graphics/Color;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Continent_GameData:Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;->setR(F)V

    .line 98
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Continent_GameData:Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;->setG(F)V

    .line 99
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Continent_GameData:Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;->setB(F)V

    .line 101
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->setView_MAP_EDITOR_CREATE_NEW_CONTINENT()V

    .line 102
    goto :goto_a1

    .line 90
    .end local v0  # "tempColor":Lcom/badlogic/gdx/graphics/Color;
    :pswitch_62  #0x0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->onBackPressed()V

    .line 91
    goto :goto_a1

    .line 110
    :cond_66
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->lTags:Ljava/util/List;

    add-int/lit8 v1, p1, -0x2

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    .line 113
    :try_start_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/data/continents/packges_data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 114
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Continent_GameData:Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;
    :try_end_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_74 .. :try_end_99} :catch_9c
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_99} :catch_9a

    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_9d

    .line 117
    :catch_9a
    move-exception v0

    goto :goto_9e

    .line 115
    :catch_9c
    move-exception v0

    .line 119
    :goto_9d
    nop

    .line 121
    :goto_9e
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->setView_MAP_EDITOR_CREATE_NEW_CONTINENT()V

    .line 125
    :goto_a1
    return-void

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_62  #00000000
        :pswitch_1d  #00000001
    .end packed-switch
.end method

.method public getImageHeight(I)I
    .registers 3
    .param p1, "image"  # I

    .line 42
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageHeight(I)I

    move-result v0

    return v0
.end method

.method public getImageWidth(I)I
    .registers 3
    .param p1, "image"  # I

    .line 38
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageWidth(I)I

    move-result v0

    return v0
.end method

.method public final onBackPressed()V
    .registers 3

    .line 140
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_CREATE_CONTINENTS_PACKAGE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 141
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    .line 142
    return-void
.end method

.method public updateLang()V
    .registers 4

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "CreateNewContinent"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_Continents_AddNewContinentToPackage;->getTitleM()Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "AddNewContinent"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->setText(Ljava/lang/String;)V

    .line 82
    return-void
.end method
