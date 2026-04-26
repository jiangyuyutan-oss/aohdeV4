.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_LoadGame.java"


# direct methods
.method public constructor <init>()V
    .registers 41

    .line 37
    const-string v1, "Error"

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 40
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main;->getMenuWidth_Default()I

    move-result v20

    .line 42
    .local v20, "tempMenuWidth":I
    const/4 v0, 0x0

    .line 44
    .local v0, "tY":I
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$1;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v17, v3, 0x4

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v10, v2

    move-object/from16 v11, p0

    move v15, v0

    move/from16 v16, v20

    invoke-direct/range {v10 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;Ljava/lang/String;IIIII)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 54
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$2;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapAuthor(I)Ljava/lang/String;

    move-result-object v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v5, "MapType"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x42480000  # 50.0f

    mul-float v3, v3, v5

    float-to-int v14, v3

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v15, 0x0

    const/16 v19, 0x1

    move-object v10, v2

    move/from16 v16, v0

    move/from16 v17, v20

    invoke-direct/range {v10 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 107
    .end local v0  # "tY":I
    .local v2, "tY":I
    :try_start_9f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v0
    :try_end_a3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9f .. :try_end_a3} :catch_2e4

    const-string v3, "Age_of_Civilizations"

    const-string v5, "saves/games/"

    if-eqz v0, :cond_cc

    .line 108
    :try_start_a9
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v3, v0

    .local v0, "file2":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_ec

    .line 111
    .end local v0  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    :cond_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v3, v0

    .line 114
    .local v3, "file2":Lcom/badlogic/gdx/files/FileHandle;
    :goto_ec
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 115
    .local v6, "tempTags":Ljava/lang/String;
    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 117
    .local v7, "tSplted":[Ljava/lang/String;
    array-length v0, v7
    :try_end_f9
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a9 .. :try_end_f9} :catch_2e4

    add-int/lit8 v0, v0, -0x1

    move v8, v2

    move v2, v0

    .local v2, "i":I
    .local v8, "tY":I
    :goto_fd
    if-ltz v2, :cond_2de

    .line 119
    :try_start_ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v10, v7, v2

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v10, v7, v2

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ".json"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object/from16 v21, v0

    .line 121
    .local v21, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 122
    .local v15, "fileContent":Ljava/lang/String;
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    move-object v14, v0

    .line 124
    .local v14, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;

    const-string v10, "Data_Save_Info"

    const-class v11, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;

    invoke-virtual {v14, v0, v10, v11}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 126
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;

    invoke-virtual {v14, v0, v15}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;

    move-object v13, v0

    .line 128
    .local v13, "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    iget-object v0, v13, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;->Data_Save_Info:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_157
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_271

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v34, v0

    .line 129
    .local v34, "e":Ljava/lang/Object;
    move-object/from16 v0, v34

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_167} :catch_27f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_ff .. :try_end_167} :catch_27c

    move-object v12, v0

    .line 132
    .local v12, "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    :try_start_168
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_ScenarioLoad;

    iget-object v11, v12, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;->PLAYER_TAG:Ljava/lang/String;

    iget v10, v12, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;->Civs:I
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_16e} :catch_206
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_168 .. :try_end_16e} :catch_27c

    move-object/from16 v35, v3

    .end local v3  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .local v35, "file2":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_175} :catch_1fa
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_170 .. :try_end_175} :catch_27c

    move-object/from16 v36, v5

    :try_start_177
    iget-object v5, v12, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;->GameDate:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_185} :catch_1f8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_177 .. :try_end_185} :catch_27c

    move-object/from16 v37, v6

    .end local v6  # "tempTags":Ljava/lang/String;
    .local v37, "tempTags":Ljava/lang/String;
    :try_start_187
    const-string v6, "Turn"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v12, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;->Turn:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sub-int v17, v20, v6

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_1a6} :catch_1f0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_187 .. :try_end_1a6} :catch_27c

    const/16 v19, 0x1

    move v6, v10

    move-object v10, v0

    move-object/from16 v16, v11

    move v11, v2

    move-object/from16 v38, v12

    .end local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .local v38, "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    move-object/from16 v12, v16

    move-object/from16 v39, v13

    .end local v13  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    .local v39, "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    move v13, v6

    move-object v6, v14

    .end local v14  # "json":Lcom/badlogic/gdx/utils/Json;
    .local v6, "json":Lcom/badlogic/gdx/utils/Json;
    move-object v14, v3

    move-object v3, v15

    .end local v15  # "fileContent":Ljava/lang/String;
    .local v3, "fileContent":Ljava/lang/String;
    move v15, v5

    move/from16 v16, v8

    :try_start_1ba
    invoke-direct/range {v10 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_ScenarioLoad;-><init>(ILjava/lang/String;ILjava/lang/String;IIIIZ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$3;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sub-int v25, v20, v5

    sget v27, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v28, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v29, 0x1

    move-object/from16 v23, v0

    move-object/from16 v24, p0

    move/from16 v26, v8

    invoke-direct/range {v23 .. v29}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;IIIIZ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1ea} :catch_1ee
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1ba .. :try_end_1ea} :catch_27c

    add-int/2addr v0, v5

    add-int/2addr v8, v0

    .line 147
    goto/16 :goto_27b

    .line 148
    :catch_1ee
    move-exception v0

    goto :goto_213

    .end local v3  # "fileContent":Ljava/lang/String;
    .end local v6  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v38  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .end local v39  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    .restart local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .restart local v13  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    .restart local v14  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v15  # "fileContent":Ljava/lang/String;
    :catch_1f0
    move-exception v0

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object v6, v14

    move-object v3, v15

    .end local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .end local v13  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    .end local v14  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v15  # "fileContent":Ljava/lang/String;
    .restart local v3  # "fileContent":Ljava/lang/String;
    .restart local v6  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v38  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .restart local v39  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    goto :goto_213

    .end local v3  # "fileContent":Ljava/lang/String;
    .end local v37  # "tempTags":Ljava/lang/String;
    .end local v38  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .end local v39  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    .local v6, "tempTags":Ljava/lang/String;
    .restart local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .restart local v13  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    .restart local v14  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v15  # "fileContent":Ljava/lang/String;
    :catch_1f8
    move-exception v0

    goto :goto_1fd

    :catch_1fa
    move-exception v0

    move-object/from16 v36, v5

    :goto_1fd
    move-object/from16 v37, v6

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object v6, v14

    move-object v3, v15

    .end local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .end local v13  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    .end local v14  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v15  # "fileContent":Ljava/lang/String;
    .restart local v3  # "fileContent":Ljava/lang/String;
    .local v6, "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v37  # "tempTags":Ljava/lang/String;
    .restart local v38  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .restart local v39  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    goto :goto_213

    .end local v35  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v37  # "tempTags":Ljava/lang/String;
    .end local v38  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .end local v39  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    .local v3, "file2":Lcom/badlogic/gdx/files/FileHandle;
    .local v6, "tempTags":Ljava/lang/String;
    .restart local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .restart local v13  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    .restart local v14  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v15  # "fileContent":Ljava/lang/String;
    :catch_206
    move-exception v0

    move-object/from16 v35, v3

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object v6, v14

    move-object v3, v15

    .line 149
    .end local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .end local v13  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    .end local v14  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v15  # "fileContent":Ljava/lang/String;
    .local v0, "exr":Ljava/lang/Exception;
    .local v3, "fileContent":Ljava/lang/String;
    .local v6, "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v35  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v37  # "tempTags":Ljava/lang/String;
    .restart local v38  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    .restart local v39  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    :goto_213
    :try_start_213
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$4;

    const/16 v25, 0x0

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const-string v28, "---"

    const/16 v29, 0x0

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sub-int v31, v20, v10

    sget v32, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v33, 0x1

    move-object/from16 v23, v5

    move-object/from16 v24, p0

    move/from16 v30, v8

    invoke-direct/range {v23 .. v33}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;ILjava/lang/String;ILjava/lang/String;IIIIZ)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$5;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sub-int v25, v20, v10

    sget v27, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v28, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v29, 0x1

    move-object/from16 v23, v5

    move-object/from16 v24, p0

    move/from16 v26, v8

    invoke-direct/range {v23 .. v29}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;IIIIZ)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v5

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I
    :try_end_261
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_261} :catch_26f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_213 .. :try_end_261} :catch_27c

    add-int/2addr v5, v10

    add-int/2addr v8, v5

    .line 170
    .end local v0  # "exr":Ljava/lang/Exception;
    .end local v34  # "e":Ljava/lang/Object;
    .end local v38  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
    move-object v15, v3

    move-object v14, v6

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v6, v37

    move-object/from16 v13, v39

    goto/16 :goto_157

    .line 171
    .end local v3  # "fileContent":Ljava/lang/String;
    .end local v6  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v21  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v39  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    :catch_26f
    move-exception v0

    goto :goto_286

    .line 128
    .end local v35  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v37  # "tempTags":Ljava/lang/String;
    .local v3, "file2":Lcom/badlogic/gdx/files/FileHandle;
    .local v6, "tempTags":Ljava/lang/String;
    .restart local v13  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    .restart local v14  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v15  # "fileContent":Ljava/lang/String;
    .restart local v21  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_271
    move-object/from16 v35, v3

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    move-object/from16 v39, v13

    move-object v6, v14

    move-object v3, v15

    .line 192
    .end local v3  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6  # "tempTags":Ljava/lang/String;
    .end local v13  # "data":Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$ConfigSaveInfo;
    .end local v14  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v15  # "fileContent":Ljava/lang/String;
    .end local v21  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v35  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v37  # "tempTags":Ljava/lang/String;
    :goto_27b
    goto :goto_2d4

    .line 194
    .end local v2  # "i":I
    .end local v7  # "tSplted":[Ljava/lang/String;
    .end local v35  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v37  # "tempTags":Ljava/lang/String;
    :catch_27c
    move-exception v0

    move v2, v8

    goto :goto_2e5

    .line 171
    .restart local v2  # "i":I
    .restart local v3  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v6  # "tempTags":Ljava/lang/String;
    .restart local v7  # "tSplted":[Ljava/lang/String;
    :catch_27f
    move-exception v0

    move-object/from16 v35, v3

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    .line 172
    .end local v3  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6  # "tempTags":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v35  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v37  # "tempTags":Ljava/lang/String;
    :goto_286
    :try_start_286
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$6;

    const/16 v23, 0x0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const-string v26, "---"

    const/16 v27, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sub-int v29, v20, v5

    sget v30, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v31, 0x1

    move-object/from16 v21, v3

    move-object/from16 v22, p0

    move/from16 v28, v8

    invoke-direct/range {v21 .. v31}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;ILjava/lang/String;ILjava/lang/String;IIIIZ)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$7;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sub-int v12, v20, v5

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v16, 0x1

    move-object v10, v3

    move-object/from16 v11, p0

    move v13, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;IIIIZ)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I
    :try_end_2d2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_286 .. :try_end_2d2} :catch_27c

    add-int/2addr v3, v5

    add-int/2addr v8, v3

    .line 117
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2d4
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v6, v37

    goto/16 :goto_fd

    .end local v35  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v37  # "tempTags":Ljava/lang/String;
    .restart local v3  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v6  # "tempTags":Ljava/lang/String;
    :cond_2de
    move-object/from16 v35, v3

    move-object/from16 v37, v6

    .line 196
    .end local v2  # "i":I
    .end local v3  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6  # "tempTags":Ljava/lang/String;
    .end local v7  # "tSplted":[Ljava/lang/String;
    move v0, v8

    goto :goto_2e6

    .line 194
    .end local v8  # "tY":I
    .local v2, "tY":I
    :catch_2e4
    move-exception v0

    :goto_2e5
    move v0, v2

    .line 198
    .end local v2  # "tY":I
    .local v0, "tY":I
    :goto_2e6
    const/4 v3, 0x0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main;->getMenuPosX_Default()I

    move-result v4

    const/4 v5, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v7, v1, v2

    move-object/from16 v2, p0

    move/from16 v6, v20

    move-object v8, v9

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;->updateLang()V

    .line 200
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 224
    if-nez p1, :cond_3

    .line 225
    return-void

    .line 227
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 228
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/View;->eLOADGAME:Lage/of/civilizations2/jakowski/lukasz/View;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->backToMenu:Lage/of/civilizations2/jakowski/lukasz/View;

    .line 229
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSELECT_MAP_TYPE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 230
    return-void

    .line 232
    :cond_12
    add-int/lit8 v1, p1, -0x2

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v0, :cond_2e

    .line 233
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;->getMenuElemsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    add-int/lit8 v0, p1, -0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    .line 234
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->DELETE_SAVED_GAME:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;)V

    goto :goto_4c

    .line 237
    :cond_2e
    const/4 v1, 0x0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID:I

    .line 238
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID_TEXT:I

    .line 239
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->pause:Z

    .line 240
    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tFileID:I

    .line 241
    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tFileID2:I

    .line 242
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameNewGame:Lage/of/civilizations2/jakowski/lukasz/NewGameManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;->getMenuElemsSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    add-int/lit8 v0, p1, -0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/NewGameManager;->loadGame(I)V

    .line 245
    :goto_4c
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->beginClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawMenuM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 215
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;->getPosX()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextPosElem()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v5, v0, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 218
    return-void
.end method

.method public getLoadGame()Ljava/lang/String;
    .registers 4

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "LoadGame"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - AoH2:DE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onHovered()V
    .registers 2

    .line 253
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_LoadGame()V

    .line 254
    return-void
.end method

.method public updateLang()V
    .registers 3

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadGame;->getLoadGame()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 205
    return-void
.end method
