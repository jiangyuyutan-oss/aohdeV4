.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Wasteland/Menu_MapEditor_WastelandMaps;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_MapEditor_WastelandMaps.java"


# direct methods
.method public constructor <init>()V
    .registers 19

    .line 31
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 34
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v17, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "tagsSPLITED":[Ljava/lang/String;
    :try_start_31
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v1
    :try_end_35
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_31 .. :try_end_35} :catch_16a

    const-string v2, "Age_of_Civilizations"

    const-string v3, "wasteland_maps/"

    const-string v4, "data/"

    const-string v5, "map/"

    if-eqz v1, :cond_9b

    :try_start_3f
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-nez v1, :cond_9b

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFileNames_O(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 43
    .local v1, "tempFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_6b
    if-ge v6, v7, :cond_80

    .line 44
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 45
    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 46
    goto :goto_80

    .line 43
    :cond_7d
    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    .line 50
    .end local v6  # "i":I
    .end local v7  # "iSize":I
    :cond_80
    :goto_80
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object v0, v2

    .line 52
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "iSize":I
    :goto_8c
    if-ge v2, v6, :cond_99

    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v0, v2

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 55
    .end local v1  # "tempFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2  # "i":I
    .end local v6  # "iSize":I
    :cond_99
    move-object v1, v0

    goto :goto_ce

    .line 57
    :cond_9b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 58
    .local v1, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "tempT":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object v1, v0

    .line 62
    .end local v0  # "tagsSPLITED":[Ljava/lang/String;
    .end local v2  # "tempT":Ljava/lang/String;
    .local v1, "tagsSPLITED":[Ljava/lang/String;
    :goto_ce
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_d0
    array-length v0, v1

    if-ge v2, v0, :cond_169

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v6, v1, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_fc
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3f .. :try_end_fc} :catch_16a

    move-object v6, v0

    .line 66
    .local v6, "fileData":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_fd
    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/WastelandMap_GameData;

    .line 68
    .local v0, "tempGameData":Lage/of/civilizations2/jakowski/lukasz/WastelandMap_GameData;
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menus/Wasteland/Menu_MapEditor_WastelandMaps$1;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/WastelandMap_GameData;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/WastelandMap_GameData;->getWastelandProvincesSize()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v11, "Provinces"

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/high16 v9, 0x42480000  # 50.0f

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v10, v10, v9

    float-to-int v12, v10

    const/4 v13, 0x0

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v10, v2, 0x1

    mul-int v9, v9, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v14, v2, 0x2

    mul-int v10, v10, v14

    add-int v14, v9, v10

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v17, 0x1

    move-object v9, v7

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Menus/Wasteland/Menu_MapEditor_WastelandMaps$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Wasteland/Menu_MapEditor_WastelandMaps;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_fd .. :try_end_15f} :catch_163
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_15f} :catch_161
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_fd .. :try_end_15f} :catch_16a

    .line 80
    nop

    .end local v0  # "tempGameData":Lage/of/civilizations2/jakowski/lukasz/WastelandMap_GameData;
    goto :goto_165

    .line 78
    :catch_161
    move-exception v0

    goto :goto_165

    .line 76
    :catch_163
    move-exception v0

    .line 80
    nop

    .line 62
    .end local v6  # "fileData":Lcom/badlogic/gdx/files/FileHandle;
    :goto_165
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d0

    .line 84
    .end local v1  # "tagsSPLITED":[Ljava/lang/String;
    .end local v2  # "i":I
    :cond_169
    goto :goto_16b

    .line 82
    :catch_16a
    move-exception v0

    .line 86
    :goto_16b
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    const/4 v0, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v3}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;-><init>(Ljava/lang/String;IZZ)V

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

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Wasteland/Menu_MapEditor_WastelandMaps;->initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Wasteland/Menu_MapEditor_WastelandMaps;->updateLang()V

    .line 88
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 13
    .param p1, "iID"  # I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoWastelandProvinces:Ljava/util/List;

    .line 113
    const/4 v0, -0x1

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_19e

    .line 136
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->RELOAD_SCENARIO:Z

    .line 138
    const/4 v4, 0x0

    .local v4, "i":I
    goto :goto_63

    .line 118
    .end local v4  # "i":I
    :pswitch_13  #0x1
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->RELOAD_SCENARIO:Z

    .line 120
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_16
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v5

    if-ge v4, v5, :cond_36

    .line 121
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v5

    if-nez v5, :cond_33

    .line 122
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWastelandLvl(I)V

    .line 120
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 126
    .end local v4  # "i":I
    :cond_36
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushMode:Z

    .line 127
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->bSetWasteland_AvailableProvinces:Z

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    .line 131
    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_NAME:Ljava/lang/String;

    .line 133
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_WASTELAND_MAPS_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 134
    return-void

    .line 115
    :pswitch_5f  #0x0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Wasteland/Menu_MapEditor_WastelandMaps;->onBackPressed()V

    .line 116
    return-void

    .line 138
    .restart local v4  # "i":I
    :goto_63
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v5

    if-ge v4, v5, :cond_83

    .line 139
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v5

    if-nez v5, :cond_80

    .line 140
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWastelandLvl(I)V

    .line 138
    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 144
    .end local v4  # "i":I
    :cond_83
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushMode:Z

    .line 145
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->bSetWasteland_AvailableProvinces:Z

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "tagsSPLITED":[Ljava/lang/String;
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v3

    const-string v4, "Age_of_Civilizations"

    const-string v5, "wasteland_maps/"

    const-string v6, "data/"

    const-string v7, "map/"

    if-eqz v3, :cond_f0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-nez v3, :cond_f0

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFileNames_O(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 152
    .local v3, "tempFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "iSize":I
    :goto_c2
    if-ge v8, v9, :cond_d7

    .line 153
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d4

    .line 154
    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 155
    goto :goto_d7

    .line 152
    :cond_d4
    add-int/lit8 v8, v8, 0x1

    goto :goto_c2

    .line 159
    .end local v8  # "i":I
    .end local v9  # "iSize":I
    :cond_d7
    :goto_d7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 161
    const/4 v4, 0x0

    .restart local v4  # "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "iSize":I
    :goto_e2
    if-ge v4, v8, :cond_ef

    .line 162
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v0, v4

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_e2

    .line 164
    .end local v3  # "tempFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4  # "i":I
    .end local v8  # "iSize":I
    :cond_ef
    goto :goto_121

    .line 166
    :cond_f0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 167
    .local v3, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "tempT":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 171
    .end local v3  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "tempT":Ljava/lang/String;
    :goto_121
    add-int/lit8 v3, p1, -0x2

    aget-object v3, v0, v3

    sput-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    .line 173
    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_NAME:Ljava/lang/String;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 178
    .local v1, "fileData":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_152
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/WastelandMap_GameData;

    .line 180
    .local v3, "tempGameData":Lage/of/civilizations2/jakowski/lukasz/WastelandMap_GameData;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WastelandMap_GameData;->getWastelandProvincesSize()I

    move-result v5
    :try_end_161
    .catch Ljava/lang/ClassNotFoundException; {:try_start_152 .. :try_end_161} :catch_18e
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_161} :catch_18c

    .local v5, "iSize":I
    :goto_161
    if-ge v4, v5, :cond_185

    .line 182
    :try_start_163
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/WastelandMap_GameData;->getWastelandProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v6

    if-nez v6, :cond_180

    .line 183
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/WastelandMap_GameData;->getWastelandProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWastelandLvl(I)V
    :try_end_180
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_163 .. :try_end_180} :catch_181
    .catch Ljava/lang/ClassNotFoundException; {:try_start_163 .. :try_end_180} :catch_18e
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_180} :catch_18c

    .line 187
    :cond_180
    goto :goto_182

    .line 185
    :catch_181
    move-exception v6

    .line 180
    :goto_182
    add-int/lit8 v4, v4, 0x1

    goto :goto_161

    .line 190
    .end local v4  # "i":I
    .end local v5  # "iSize":I
    :cond_185
    :try_start_185
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WastelandMap_GameData;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_NAME:Ljava/lang/String;
    :try_end_18b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_185 .. :try_end_18b} :catch_18e
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_18b} :catch_18c

    .end local v3  # "tempGameData":Lage/of/civilizations2/jakowski/lukasz/WastelandMap_GameData;
    goto :goto_18f

    .line 193
    :catch_18c
    move-exception v2

    goto :goto_190

    .line 191
    :catch_18e
    move-exception v2

    .line 195
    :goto_18f
    nop

    .line 197
    :goto_190
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildWastelandLevels()V

    .line 199
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_WASTELAND_MAPS_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 200
    return-void

    nop

    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_5f  #00000000
        :pswitch_13  #00000001
    .end packed-switch
.end method

.method public getImageHeight(I)I
    .registers 3
    .param p1, "image"  # I

    .line 104
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageHeight(I)I

    move-result v0

    return v0
.end method

.method public getImageWidth(I)I
    .registers 3
    .param p1, "image"  # I

    .line 100
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageWidth(I)I

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .registers 4

    .line 208
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 209
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 212
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWastelandLvl(I)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 215
    .end local v0  # "i":I
    :cond_23
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoWastelandProvinces:Ljava/util/List;

    .line 216
    return-void
.end method

.method public updateLang()V
    .registers 4

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Wasteland/Menu_MapEditor_WastelandMaps;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Wasteland/Menu_MapEditor_WastelandMaps;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "AddNewWastelandMap"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Wasteland/Menu_MapEditor_WastelandMaps;->getTitleM()Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "WastelandMapsEditor"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->setText(Ljava/lang/String;)V

    .line 97
    return-void
.end method
