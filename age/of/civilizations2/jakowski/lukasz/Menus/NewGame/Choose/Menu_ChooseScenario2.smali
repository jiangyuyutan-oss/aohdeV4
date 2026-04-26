.class public Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_ChooseScenario2.java"


# direct methods
.method public constructor <init>()V
    .registers 34

    .line 43
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 46
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Earth14K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_47

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path2()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Earth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_47

    .line 49
    :cond_27
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Gor;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2;->getSU()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, -0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int/lit8 v13, v2, 0x0

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sub-int v15, v2, v3

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v17, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Gor;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 47
    :cond_47
    :goto_47
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_ReflectedBG;

    const/16 v19, 0x0

    const/16 v20, -0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int/lit8 v21, v2, 0x0

    sget v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sub-int v23, v2, v3

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v25, 0x1

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_ReflectedBG;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :goto_65
    :try_start_65
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario;->loadPreview()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    .line 56
    goto :goto_6f

    .line 54
    :catch_69
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 55
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 58
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_6f
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 59
    .local v0, "tY":I
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int v9, v2, v3

    .line 61
    .local v9, "tY2":I
    const/4 v2, 0x0

    move v3, v2

    move v2, v0

    .line 64
    .end local v0  # "tY":I
    .local v2, "tY":I
    .local v3, "i":I
    :goto_81
    int-to-double v4, v3

    :try_start_82
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    int-to-float v0, v0

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8d} :catch_138

    const/high16 v10, 0x42480000  # 50.0f

    const/16 v21, 0x1

    cmpg-double v0, v4, v6

    if-gez v0, :cond_db

    .line 66
    :try_start_95
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2$1;

    const/4 v13, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v10

    float-to-int v14, v4

    sget v15, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sub-int/2addr v4, v5

    div-int/lit8 v17, v4, 0x2

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v19, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    if-ne v4, v3, :cond_b1

    const/16 v20, 0x1

    goto :goto_b3

    :cond_b1
    const/16 v20, 0x0

    :goto_b3
    move-object v10, v0

    move-object/from16 v11, p0

    move v12, v3

    move/from16 v16, v2

    invoke-direct/range {v10 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2;ILjava/lang/String;IIIIIZZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_d1} :catch_d4

    add-int/2addr v0, v4

    add-int/2addr v2, v0

    .line 137
    goto :goto_d8

    .line 135
    :catch_d4
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_d5
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 64
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_d8
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .line 140
    :cond_db
    move v0, v9

    .end local v2  # "tY":I
    .local v0, "tY":I
    move v2, v0

    .line 142
    .end local v0  # "tY":I
    .restart local v2  # "tY":I
    :goto_dd
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_df} :catch_138

    if-ge v3, v0, :cond_135

    .line 144
    :try_start_e1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2$2;

    const/16 v25, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v27, v5, v6

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sub-int/2addr v5, v6

    div-int/lit8 v29, v5, 0x2

    sget v30, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v31, 0x1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    if-ne v5, v3, :cond_107

    const/16 v32, 0x1

    goto :goto_109

    :cond_107
    const/16 v32, 0x0

    :goto_109
    move-object/from16 v22, v0

    move-object/from16 v23, p0

    move/from16 v24, v3

    move/from16 v26, v4

    move/from16 v28, v2

    invoke-direct/range {v22 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2;ILjava/lang/String;IIIIIZZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_12b} :catch_12e

    add-int/2addr v0, v4

    add-int/2addr v2, v0

    .line 215
    goto :goto_132

    .line 213
    :catch_12e
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_12f
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_132} :catch_138

    .line 142
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_132
    add-int/lit8 v3, v3, 0x1

    goto :goto_dd

    .line 219
    :cond_135
    move v0, v2

    move v10, v3

    goto :goto_13b

    .line 217
    :catch_138
    move-exception v0

    move v0, v2

    move v10, v3

    .line 222
    .end local v2  # "tY":I
    .end local v3  # "i":I
    .local v0, "tY":I
    .local v10, "i":I
    :goto_13b
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v4, v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    sub-int/2addr v1, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v1, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v6, v1, v6

    move-object/from16 v1, p0

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2;->updateLang()V

    .line 224
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 6
    .param p1, "iID"  # I

    .line 251
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_52

    .line 277
    :try_start_5
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_9} :catch_41

    goto :goto_3d

    .line 253
    :pswitch_a  #0x0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 255
    .local v2, "oR":Ljava/util/Random;
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    if-le v3, v1, :cond_28

    .line 257
    :goto_13
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 259
    .local v1, "nScenarioID":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v3

    if-eq v1, v3, :cond_27

    .line 260
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setScenarioID(I)V

    .line 261
    goto :goto_28

    .line 263
    .end local v1  # "nScenarioID":I
    :cond_27
    goto :goto_13

    .line 266
    :cond_28
    :goto_28
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->disableAllViews()V

    .line 269
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Scenario/Menu_LoadScenario;->editor:Z

    .line 270
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Scenario/Menu_LoadScenario;->goToView:Lage/of/civilizations2/jakowski/lukasz/View;

    .line 271
    const/4 v0, 0x3

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Scenario/Menu_LoadScenario;->loadActionEND:I

    .line 273
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eLOAD_SCENARIO:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuIDWithoutAnim(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 274
    goto :goto_50

    .line 277
    .end local v2  # "oR":Ljava/util/Random;
    :goto_3d
    :try_start_3d
    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCheckboxSt(Z)V
    :try_end_40
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3d .. :try_end_40} :catch_41

    .line 280
    goto :goto_42

    .line 278
    :catch_41
    move-exception v0

    .line 282
    :goto_42
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->loadPreview(I)V

    .line 285
    :try_start_47
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCheckboxSt(Z)V
    :try_end_4e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_47 .. :try_end_4e} :catch_4f

    .line 288
    goto :goto_50

    .line 286
    :catch_4f
    move-exception v0

    .line 291
    :goto_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_a  #00000000
    .end packed-switch
.end method

.method public getSU()Ljava/lang/String;
    .registers 8

    .line 239
    const/4 v0, 0x5

    .line 240
    .local v0, "key":C
    const/16 v1, 0x24

    new-array v1, v1, [C

    fill-array-data v1, :array_22

    .line 241
    .local v1, "data":[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_1c

    aget-char v5, v1, v4

    .line 243
    .local v5, "c":C
    xor-int v6, v5, v0

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    .end local v5  # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 246
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :array_22
    .array-data 2
        0x44s
        0x62s
        0x60s
        0x25s
        0x6as
        0x63s
        0x25s
        0x4ds
        0x6cs
        0x76s
        0x71s
        0x6as
        0x77s
        0x7cs
        0x25s
        0x37s
        0x3fs
        0x25s
        0x41s
        0x60s
        0x63s
        0x6cs
        0x6bs
        0x6cs
        0x71s
        0x6cs
        0x73s
        0x60s
        0x25s
        0x40s
        0x61s
        0x6cs
        0x71s
        0x6cs
        0x6as
        0x6bs
    .end array-data
.end method

.method public onBackPressed()V
    .registers 1

    .line 295
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario;->disposePreview()V

    .line 296
    return-void
.end method

.method public updateLang()V
    .registers 5

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "RandomScenario"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    if-ge v0, v1, :cond_3a

    .line 231
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioNameID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 232
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario2;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 234
    .end local v0  # "i":I
    :cond_3a
    return-void
.end method
