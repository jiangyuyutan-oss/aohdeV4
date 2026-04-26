.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_Achievements_Options.java"


# direct methods
.method public constructor <init>()V
    .registers 28

    .line 39
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 42
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    .line 44
    .local v7, "tY":I
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v18, v0, v1

    .line 47
    .local v18, "tempMenuWidth":I
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLogo;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    add-int v6, v0, v1

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move v4, v7

    move/from16 v5, v18

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLogo;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v2

    add-int/2addr v7, v0

    .line 51
    :try_start_47
    const-string v0, "saves/stats/civ/Age_of_Civilizations"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v3, v0

    .line 52
    .local v3, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 54
    .local v4, "tempTags":Ljava/lang/String;
    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 56
    .local v5, "tData":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 57
    .local v6, "sortedIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 58
    .local v15, "sortedStatsDataIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 60
    .local v14, "sortedStatsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_6e
    array-length v0, v5
    :try_end_6f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_47 .. :try_end_6f} :catch_311

    const-string v13, "saves/stats/civ/"

    if-ge v9, v0, :cond_ab

    .line 62
    :try_start_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v10, v5, v9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    .line 64
    .local v0, "tempData":Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getTurns()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_a6} :catch_a7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_73 .. :try_end_a6} :catch_311

    .line 68
    .end local v0  # "tempData":Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;
    goto :goto_a8

    .line 66
    :catch_a7
    move-exception v0

    .line 60
    :goto_a8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6e

    .line 71
    .end local v9  # "i":I
    :cond_ab
    :goto_ab
    :try_start_ab
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e5

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "tBest":I
    add-int/lit8 v9, v0, 0x1

    .restart local v9  # "i":I
    :goto_b4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_d4

    .line 75
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v10, v11, :cond_d1

    .line 76
    move v0, v9

    .line 74
    :cond_d1
    add-int/lit8 v9, v9, 0x1

    goto :goto_b4

    .line 80
    .end local v9  # "i":I
    :cond_d4
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v14, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_e3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_ab .. :try_end_e3} :catch_311

    .line 83
    nop

    .end local v0  # "tBest":I
    goto :goto_ab

    .line 85
    :cond_e5
    const/4 v0, 0x0

    move/from16 v16, v7

    move v7, v0

    .local v7, "i":I
    .local v16, "tY":I
    :goto_e9
    :try_start_e9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0
    :try_end_ed
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_e9 .. :try_end_ed} :catch_30d

    if-ge v7, v0, :cond_308

    .line 87
    :try_start_ef
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v5, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    .line 89
    .local v0, "tempData":Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getConqueredProvs()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces_Level(I)I

    move-result v9
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_124} :catch_2f6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_ef .. :try_end_124} :catch_30d

    sub-int/2addr v9, v1

    if-gez v9, :cond_153

    :try_start_127
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getTurns()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns_Level(I)I

    move-result v9

    sub-int/2addr v9, v1

    if-gez v9, :cond_153

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getRecruitedArmy()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy_Level(I)I

    move-result v9
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_13e} :catch_14a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_127 .. :try_end_13e} :catch_30d

    sub-int/2addr v9, v1

    if-ltz v9, :cond_142

    goto :goto_153

    :cond_142
    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v19, v15

    goto/16 :goto_2ec

    .line 114
    .end local v0  # "tempData":Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;
    :catch_14a
    move-exception v0

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v19, v15

    goto/16 :goto_2fd

    .line 90
    .restart local v0  # "tempData":Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;
    :cond_153
    :goto_153
    :try_start_153
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextAchievementCiv;

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getGamesWon()I

    move-result v17
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_15e} :catch_2f6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_153 .. :try_end_15e} :catch_30d

    if-lez v17, :cond_163

    const/16 v17, 0x1

    goto :goto_165

    :cond_163
    const/16 v17, 0x0

    :goto_165
    move-object/from16 v19, v9

    move-object v9, v12

    move-object v2, v12

    move/from16 v12, v16

    move-object/from16 v20, v13

    move/from16 v13, v18

    move-object/from16 v21, v14

    .end local v14  # "sortedStatsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v21, "sortedStatsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v14, v19

    move-object/from16 v19, v15

    .end local v15  # "sortedStatsDataIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v19, "sortedStatsDataIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v15, v17

    :try_start_177
    invoke-direct/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextAchievementCiv;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_18e} :catch_2f4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_177 .. :try_end_18e} :catch_30d

    add-int/2addr v2, v9

    add-int v2, v16, v2

    .line 93
    .end local v16  # "tY":I
    .local v2, "tY":I
    :try_start_191
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getConqueredProvs()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces_Level(I)I

    move-result v9
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_19b} :catch_2f0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_191 .. :try_end_19b} :catch_2ed

    add-int/lit8 v15, v9, -0x1

    .line 95
    .local v15, "tempLevel":I
    move v9, v15

    move v14, v9

    .local v14, "j":I
    :goto_19f
    const-string v13, ": "

    if-ltz v14, :cond_201

    .line 96
    :try_start_1a3
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextServiceRibbon;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v11, "ConqueredProvinces"

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    if-ne v14, v15, :cond_1c8

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getConqueredProvs()I

    move-result v9

    goto :goto_1ce

    :cond_1c8
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v9, v14}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v9

    :goto_1ce
    move/from16 v16, v9

    const/16 v17, 0x0

    move-object v9, v12

    move-object v1, v12

    move v12, v2

    move-object/from16 v22, v13

    move/from16 v13, v18

    move/from16 v23, v14

    .end local v14  # "j":I
    .local v23, "j":I
    move-object/from16 v14, v22

    move/from16 v22, v15

    .end local v15  # "tempLevel":I
    .local v22, "tempLevel":I
    move/from16 v15, v23

    invoke-direct/range {v9 .. v17}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextServiceRibbon;-><init>(Ljava/lang/String;IIILjava/lang/String;III)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v9

    add-int/2addr v2, v1

    .line 95
    add-int/lit8 v14, v23, -0x1

    move/from16 v15, v22

    const/4 v1, 0x1

    .end local v23  # "j":I
    .restart local v14  # "j":I
    goto :goto_19f

    .end local v22  # "tempLevel":I
    .restart local v15  # "tempLevel":I
    :cond_201
    move/from16 v23, v14

    move/from16 v22, v15

    .line 100
    .end local v14  # "j":I
    .end local v15  # "tempLevel":I
    .restart local v22  # "tempLevel":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getRecruitedArmy()I

    move-result v9

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy_Level(I)I

    move-result v1

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    .line 102
    .end local v22  # "tempLevel":I
    .local v1, "tempLevel":I
    move v9, v1

    move v15, v9

    .local v15, "j":I
    :goto_213
    if-ltz v15, :cond_273

    .line 103
    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextServiceRibbon;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v11, "RecruitedArmy"

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    if-ne v15, v1, :cond_23a

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getRecruitedArmy()I

    move-result v9

    goto :goto_240

    :cond_23a
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v9, v15}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy(I)I

    move-result v9

    :goto_240
    move/from16 v16, v9

    const/16 v17, 0x1

    move-object v9, v14

    move-object/from16 v22, v12

    move v12, v2

    move-object/from16 v24, v13

    move/from16 v13, v18

    move-object/from16 v25, v14

    move-object/from16 v14, v22

    move/from16 v22, v15

    .end local v15  # "j":I
    .local v22, "j":I
    invoke-direct/range {v9 .. v17}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextServiceRibbon;-><init>(Ljava/lang/String;IIILjava/lang/String;III)V

    move-object/from16 v9, v25

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v9

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    .line 102
    add-int/lit8 v15, v22, -0x1

    move-object/from16 v13, v24

    .end local v22  # "j":I
    .restart local v15  # "j":I
    goto :goto_213

    :cond_273
    move-object/from16 v24, v13

    move/from16 v22, v15

    .line 107
    .end local v15  # "j":I
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getTurns()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns_Level(I)I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v1, v9, -0x1

    .line 109
    move v9, v1

    move v15, v9

    .restart local v15  # "j":I
    :goto_286
    if-ltz v15, :cond_2e8

    .line 110
    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextServiceRibbon;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v11, "Turns"

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v13, v24

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    if-ne v15, v1, :cond_2af

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getTurns()I

    move-result v9

    goto :goto_2b5

    :cond_2af
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v9, v15}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v9

    :goto_2b5
    move/from16 v16, v9

    const/16 v17, 0x2

    move-object v9, v14

    move-object/from16 v22, v12

    move v12, v2

    move-object/from16 v23, v13

    move/from16 v13, v18

    move-object/from16 v26, v14

    move-object/from16 v14, v22

    move/from16 v22, v15

    .end local v15  # "j":I
    .restart local v22  # "j":I
    invoke-direct/range {v9 .. v17}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextServiceRibbon;-><init>(Ljava/lang/String;IIILjava/lang/String;III)V

    move-object/from16 v9, v26

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v9

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I
    :try_end_2e1
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_2e1} :catch_2f0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1a3 .. :try_end_2e1} :catch_2ed

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    .line 109
    add-int/lit8 v15, v22, -0x1

    move-object/from16 v24, v23

    .end local v22  # "j":I
    .restart local v15  # "j":I
    goto :goto_286

    :cond_2e8
    move/from16 v22, v15

    .end local v15  # "j":I
    .restart local v22  # "j":I
    move/from16 v16, v2

    .line 116
    .end local v0  # "tempData":Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;
    .end local v1  # "tempLevel":I
    .end local v2  # "tY":I
    .end local v22  # "j":I
    .restart local v16  # "tY":I
    :goto_2ec
    goto :goto_2fd

    .line 118
    .end local v3  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "tempTags":Ljava/lang/String;
    .end local v5  # "tData":[Ljava/lang/String;
    .end local v6  # "sortedIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7  # "i":I
    .end local v16  # "tY":I
    .end local v19  # "sortedStatsDataIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21  # "sortedStatsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2  # "tY":I
    :catch_2ed
    move-exception v0

    move v7, v2

    goto :goto_312

    .line 114
    .restart local v3  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4  # "tempTags":Ljava/lang/String;
    .restart local v5  # "tData":[Ljava/lang/String;
    .restart local v6  # "sortedIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7  # "i":I
    .restart local v19  # "sortedStatsDataIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21  # "sortedStatsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_2f0
    move-exception v0

    move/from16 v16, v2

    goto :goto_2fd

    .end local v2  # "tY":I
    .restart local v16  # "tY":I
    :catch_2f4
    move-exception v0

    goto :goto_2fd

    .end local v19  # "sortedStatsDataIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21  # "sortedStatsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "sortedStatsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "sortedStatsDataIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_2f6
    move-exception v0

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v19, v15

    .line 85
    .end local v14  # "sortedStatsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15  # "sortedStatsDataIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19  # "sortedStatsDataIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21  # "sortedStatsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_2fd
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v15, v19

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    const/4 v1, 0x1

    goto/16 :goto_e9

    .end local v19  # "sortedStatsDataIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21  # "sortedStatsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v14  # "sortedStatsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15  # "sortedStatsDataIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_308
    move-object/from16 v21, v14

    move-object/from16 v19, v15

    .line 123
    .end local v3  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "tempTags":Ljava/lang/String;
    .end local v5  # "tData":[Ljava/lang/String;
    .end local v6  # "sortedIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7  # "i":I
    .end local v14  # "sortedStatsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15  # "sortedStatsDataIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_33e

    .line 118
    :catch_30d
    move-exception v0

    move/from16 v7, v16

    goto :goto_312

    .end local v16  # "tY":I
    .local v7, "tY":I
    :catch_311
    move-exception v0

    .line 121
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_312
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "-----"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/high16 v16, 0x3f400000  # 0.75f

    move-object v9, v1

    move v13, v7

    move/from16 v14, v18

    invoke-direct/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;-><init>(Ljava/lang/String;IIIIIF)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V

    move/from16 v16, v7

    .line 125
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v7  # "tY":I
    .restart local v16  # "tY":I
    :goto_33e
    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v6, v0, v1

    move-object/from16 v1, p0

    move/from16 v5, v18

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;->updateLang()V

    .line 127
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 159
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->actionElem(I)V

    .line 160
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 139
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;->getPosX()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;->getWidthM()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;->getHeightM()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxEDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 141
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3d99999a  # 0.075f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 142
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;->getWidthM()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;->getHeightM()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 143
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 146
    return-void
.end method

.method public drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 150
    if-eqz p4, :cond_5

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 153
    :cond_5
    return-void
.end method

.method public getImageHeight(I)I
    .registers 3
    .param p1, "image"  # I

    .line 36
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageHeight(I)I

    move-result v0

    return v0
.end method

.method public getImageWidth(I)I
    .registers 3
    .param p1, "image"  # I

    .line 32
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageWidth(I)I

    move-result v0

    return v0
.end method

.method public updateLang()V
    .registers 4

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Achievements/Menu_Achievements_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "MapType"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 132
    return-void
.end method
