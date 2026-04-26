.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_CreateScenario_Cores_AddCiv_List.java"


# instance fields
.field private lCivsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field private lLoadedFlags_TagsIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 36

    .line 44
    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 47
    .local v12, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    const-string v0, "game/civilizations/Age_of_Civilizations"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    .line 48
    .local v13, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v13}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v14

    .line 49
    .local v14, "tempT":Ljava/lang/String;
    const-string v0, ";"

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 51
    .local v15, "tagsSPLITED":[Ljava/lang/String;
    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/String;

    .line 54
    .local v1, "tagsSPLITED_ED":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 56
    .local v2, "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_30
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v3
    :try_end_34
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_30 .. :try_end_34} :catch_4f

    const-string v4, "game/civilizations_editor/Age_of_Civilizations"

    if-eqz v3, :cond_40

    .line 57
    :try_start_38
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v2, v3

    goto :goto_45

    .line 60
    :cond_40
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v2, v3

    .line 63
    :goto_45
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "tempT_ED":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_4d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_38 .. :try_end_4d} :catch_4f

    move-object v1, v0

    .line 67
    .end local v2  # "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "tempT_ED":Ljava/lang/String;
    goto :goto_51

    .line 65
    :catch_4f
    move-exception v0

    move-object v0, v1

    .line 69
    .end local v1  # "tagsSPLITED_ED":[Ljava/lang/String;
    .local v0, "tagsSPLITED_ED":[Ljava/lang/String;
    :goto_51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 72
    .local v9, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 74
    .local v8, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List$1;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "PercentageOfPopulation"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v1, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v17, 0x1

    const/16 v18, 0x63

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v20, v7

    move/from16 v7, v16

    move-object/from16 v21, v8

    .end local v8  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v21, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v8, v17

    move-object/from16 v22, v9

    .end local v9  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v9, v18

    move-object/from16 v16, v13

    const/4 v13, 0x0

    .end local v13  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    move/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;Ljava/lang/String;IIIIIII)V

    move-object/from16 v1, v20

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    const/high16 v9, 0x42480000  # 50.0f

    const-string v10, "]"

    const-string v8, " ["

    if-eqz v1, :cond_225

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_225

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v15

    .local v2, "iSize":I
    :goto_ad
    if-ge v1, v2, :cond_ef

    .line 83
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v15, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_e4

    aget-object v3, v15, v1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheCivGameTag(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e4

    .line 84
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v15, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v13, v22

    .end local v22  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    aget-object v3, v15, v1

    move-object/from16 v7, v21

    .end local v21  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    .line 83
    .end local v7  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e4
    move-object/from16 v7, v21

    move-object/from16 v13, v22

    .line 82
    .end local v21  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_e8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v21, v7

    move-object/from16 v22, v13

    goto :goto_ad

    .end local v7  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ef
    move-object/from16 v7, v21

    move-object/from16 v13, v22

    .line 89
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    .end local v21  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .restart local v1  # "i":I
    array-length v2, v0

    .restart local v2  # "iSize":I
    :goto_f5
    if-ge v1, v2, :cond_12a

    .line 90
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_127

    aget-object v3, v0, v1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheCivGameTag(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_127

    .line 91
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    aget-object v3, v0, v1

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_127
    add-int/lit8 v1, v1, 0x1

    goto :goto_f5

    .line 96
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_12a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->menuCreateScenario_Cores_AddCiv_UpdateTitle(I)V

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "nPosY":I
    const/4 v2, 0x0

    move/from16 v17, v1

    move v3, v2

    .line 101
    .end local v1  # "nPosY":I
    .local v3, "tID":I
    .local v17, "nPosY":I
    :goto_138
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_21f

    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, "toAddID":I
    const/4 v2, 0x1

    move v6, v1

    .end local v1  # "toAddID":I
    .local v2, "i":I
    .local v6, "toAddID":I
    :goto_141
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_15e

    .line 105
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 106
    move v1, v2

    move v6, v1

    .line 104
    :cond_15b
    add-int/lit8 v2, v2, 0x1

    goto :goto_141

    .line 110
    .end local v2  # "i":I
    :cond_15e
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v2, v2, v9

    float-to-int v2, v2

    const/16 v21, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v5, v17, 0x1

    mul-int v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v18, v17, 0x3

    mul-int v5, v5, v18

    add-int v22, v4, v5

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v18, v18, 0x2

    add-int v5, v5, v18

    sub-int v23, v4, v5

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v25, 0x1

    move-object/from16 v18, v1

    move/from16 v20, v2

    invoke-direct/range {v18 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List$2;

    add-int/lit8 v18, v3, 0x1

    .end local v3  # "tID":I
    .local v18, "tID":I
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sub-int v4, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v2, v17, 0x1

    mul-int v1, v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v19, v17, 0x3

    mul-int v2, v2, v19

    add-int v19, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v2, v2, 0x2

    add-int v20, v1, v2

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v22, 0x1

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v9, v5

    move/from16 v5, v19

    move/from16 v26, v6

    .end local v6  # "toAddID":I
    .local v26, "toAddID":I
    move/from16 v6, v20

    move-object/from16 v19, v14

    move-object v14, v7

    .end local v7  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "tempT":Ljava/lang/String;
    move/from16 v7, v21

    move-object/from16 v20, v10

    move-object v10, v8

    move/from16 v8, v22

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;IIIIIZ)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, v11, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    move/from16 v6, v26

    .end local v26  # "toAddID":I
    .restart local v6  # "toAddID":I
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v13, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    invoke-interface {v14, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    nop

    .end local v6  # "toAddID":I
    add-int/lit8 v17, v17, 0x1

    .line 136
    move-object v8, v10

    move-object v7, v14

    move/from16 v3, v18

    move-object/from16 v14, v19

    move-object/from16 v10, v20

    const/high16 v9, 0x42480000  # 50.0f

    goto/16 :goto_138

    .line 101
    .end local v18  # "tID":I
    .end local v19  # "tempT":Ljava/lang/String;
    .restart local v3  # "tID":I
    .restart local v7  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "tempT":Ljava/lang/String;
    :cond_21f
    move-object/from16 v19, v14

    move-object v14, v7

    .line 137
    .end local v3  # "tID":I
    .end local v7  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17  # "nPosY":I
    .local v14, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19  # "tempT":Ljava/lang/String;
    move-object v9, v13

    goto/16 :goto_4bb

    .line 81
    .end local v13  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19  # "tempT":Ljava/lang/String;
    .local v14, "tempT":Ljava/lang/String;
    .restart local v21  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_225
    move-object/from16 v20, v10

    move-object/from16 v19, v14

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-object v10, v8

    .line 138
    .end local v21  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19  # "tempT":Ljava/lang/String;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    if-nez v1, :cond_361

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v15

    .local v2, "iSize":I
    :goto_234
    if-ge v1, v2, :cond_251

    .line 140
    aget-object v3, v15, v1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheCivGameTag(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24e

    .line 141
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v15, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    aget-object v3, v15, v1

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_24e
    add-int/lit8 v1, v1, 0x1

    goto :goto_234

    .line 146
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_251
    const/4 v1, 0x0

    .restart local v1  # "i":I
    array-length v2, v0

    .restart local v2  # "iSize":I
    :goto_253
    if-ge v1, v2, :cond_270

    .line 147
    aget-object v3, v0, v1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheCivGameTag(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26d

    .line 148
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    aget-object v3, v0, v1

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_26d
    add-int/lit8 v1, v1, 0x1

    goto :goto_253

    .line 153
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_270
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->menuCreateScenario_Cores_AddCiv_UpdateTitle(I)V

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "nPosY":I
    const/4 v2, 0x0

    move v13, v1

    move v3, v2

    .line 158
    .end local v1  # "nPosY":I
    .restart local v3  # "tID":I
    .local v13, "nPosY":I
    :goto_27d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_35f

    .line 159
    const/4 v1, 0x0

    .line 161
    .local v1, "toAddID":I
    const/4 v2, 0x1

    move v8, v1

    .end local v1  # "toAddID":I
    .local v2, "i":I
    .local v8, "toAddID":I
    :goto_286
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2a3

    .line 162
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a0

    .line 163
    move v1, v2

    move v8, v1

    .line 161
    :cond_2a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_286

    .line 167
    .end local v2  # "i":I
    :cond_2a3
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v7, v20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v4, 0x42480000  # 50.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    const/16 v27, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v5, v13, 0x1

    mul-int v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v6, v13, 0x3

    mul-int v5, v5, v6

    add-int v28, v4, v5

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int v29, v4, v5

    sget v30, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v31, 0x1

    move-object/from16 v24, v1

    move/from16 v26, v2

    invoke-direct/range {v24 .. v31}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List$3;

    add-int/lit8 v17, v3, 0x1

    .end local v3  # "tID":I
    .local v17, "tID":I
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sub-int v4, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v2, v13, 0x1

    mul-int v1, v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v5, v13, 0x3

    mul-int v2, v2, v5

    add-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v2, v2, 0x2

    add-int v18, v1, v2

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v21, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v32, v6

    move/from16 v6, v18

    move-object/from16 v33, v7

    move/from16 v7, v20

    move-object/from16 v18, v10

    move v10, v8

    .end local v8  # "toAddID":I
    .local v10, "toAddID":I
    move/from16 v8, v21

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;IIIIIZ)V

    move-object/from16 v1, v32

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, v11, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 190
    invoke-interface {v14, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 192
    nop

    .end local v10  # "toAddID":I
    add-int/lit8 v13, v13, 0x1

    .line 193
    move/from16 v3, v17

    move-object/from16 v10, v18

    move-object/from16 v20, v33

    goto/16 :goto_27d

    .line 196
    .end local v13  # "nPosY":I
    .end local v17  # "tID":I
    :cond_35f
    goto/16 :goto_4bb

    .line 198
    :cond_361
    move-object/from16 v18, v10

    move-object/from16 v33, v20

    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v15

    .local v2, "iSize":I
    :goto_367
    if-ge v1, v2, :cond_398

    .line 199
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v15, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_395

    aget-object v3, v15, v1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheCivGameTag(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_395

    .line 200
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v15, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    aget-object v3, v15, v1

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_395
    add-int/lit8 v1, v1, 0x1

    goto :goto_367

    .line 205
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_398
    const/4 v1, 0x0

    .restart local v1  # "i":I
    array-length v2, v0

    .restart local v2  # "iSize":I
    :goto_39a
    if-ge v1, v2, :cond_3cb

    .line 206
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_3c8

    aget-object v3, v0, v1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheCivGameTag(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c8

    .line 207
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    aget-object v3, v0, v1

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_3c8
    add-int/lit8 v1, v1, 0x1

    goto :goto_39a

    .line 212
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_3cb
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->menuCreateScenario_Cores_AddCiv_UpdateTitle(I)V

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, "nPosY":I
    const/4 v2, 0x0

    move v10, v1

    move v3, v2

    .line 217
    .end local v1  # "nPosY":I
    .restart local v3  # "tID":I
    .local v10, "nPosY":I
    :goto_3d8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4bb

    .line 218
    const/4 v1, 0x0

    .line 220
    .local v1, "toAddID":I
    const/4 v2, 0x1

    move v13, v1

    .end local v1  # "toAddID":I
    .local v2, "i":I
    .local v13, "toAddID":I
    :goto_3e1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3fe

    .line 221
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3fb

    .line 222
    move v1, v2

    move v13, v1

    .line 220
    :cond_3fb
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e1

    .line 226
    .end local v2  # "i":I
    :cond_3fe
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v8, v18

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v7, v33

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v17, 0x42480000  # 50.0f

    mul-float v2, v2, v17

    float-to-int v2, v2

    const/16 v27, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v5, v10, 0x1

    mul-int v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v6, v10, 0x3

    mul-int v5, v5, v6

    add-int v28, v4, v5

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int v29, v4, v5

    sget v30, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v31, 0x1

    move-object/from16 v24, v1

    move/from16 v26, v2

    invoke-direct/range {v24 .. v31}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List$4;

    add-int/lit8 v18, v3, 0x1

    .end local v3  # "tID":I
    .restart local v18  # "tID":I
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sub-int v4, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v2, v10, 0x1

    mul-int v1, v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v5, v10, 0x3

    mul-int v2, v2, v5

    add-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v2, v2, 0x2

    add-int v20, v1, v2

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v22, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v34, v6

    move/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v7, v21

    move-object/from16 v21, v8

    move/from16 v8, v22

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;IIIIIZ)V

    move-object/from16 v1, v34

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v1, v11, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {v9, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 249
    invoke-interface {v14, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 251
    nop

    .end local v13  # "toAddID":I
    add-int/lit8 v10, v10, 0x1

    .line 252
    move/from16 v3, v18

    move-object/from16 v33, v20

    move-object/from16 v18, v21

    goto/16 :goto_3d8

    .line 255
    .end local v10  # "nPosY":I
    .end local v18  # "tID":I
    :cond_4bb
    :goto_4bb
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

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

    sub-int/2addr v1, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object v7, v12

    move-object v13, v9

    .end local v9  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v9, v10

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->updateLang()V

    .line 258
    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;

    .line 35
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    return-object v0
.end method

.method private final getFlagID(I)I
    .registers 4
    .param p1, "nCivTagID"  # I

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 314
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 315
    return v0

    .line 313
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    .end local v0  # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private final getIsLoaded(Ljava/lang/String;)I
    .registers 5
    .param p1, "nCivTag"  # Ljava/lang/String;

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 304
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 305
    return v0

    .line 303
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 309
    .end local v0  # "i":I
    :cond_27
    const/4 v0, -0x1

    return v0
.end method

.method private final loadFlag(I)V
    .registers 13
    .param p1, "nCivTagID"  # I

    .line 325
    const-string v0, ".png"

    const-string v1, "game/flags/"

    :try_start_4
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_36} :catch_38

    .line 340
    goto/16 :goto_14d

    .line 326
    :catch_38
    move-exception v2

    .line 328
    .local v2, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_39
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_39 .. :try_end_71} :catch_73

    .line 339
    goto/16 :goto_14d

    .line 329
    :catch_73
    move-exception v0

    .line 330
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_74
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v1
    :try_end_78
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_74 .. :try_end_78} :catch_14e

    const-string v3, "_FL.png"

    const-string v4, "/"

    const-string v5, "game/civilizations_editor/"

    if-eqz v1, :cond_10b

    .line 332
    :try_start_80
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_80 .. :try_end_c4} :catch_c6

    .line 335
    goto/16 :goto_14d

    .line 333
    :catch_c6
    move-exception v1

    .line 334
    .local v1, "erq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_c7
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v7, v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    nop

    .end local v1  # "erq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    goto :goto_14d

    .line 337
    :cond_10b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v6, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_c7 .. :try_end_14d} :catch_14e

    .line 343
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v2  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_14d
    goto :goto_166

    .line 341
    :catch_14e
    move-exception v0

    .line 342
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    const-string v4, "game/flagsXH/ran.png"

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v0  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_166
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method private final onBack()V
    .registers 3

    .line 416
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_CORES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 417
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 7
    .param p1, "iID"  # I

    .line 378
    packed-switch p1, :pswitch_data_ec

    .line 384
    const/4 v0, -0x1

    add-int/2addr p1, v0

    .line 386
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_da

    .line 387
    const/4 v1, 0x0

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    .line 388
    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    .line 390
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v3, p1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->createScenarioAddCivilization(Ljava/lang/String;IZ)Z

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    goto :goto_2b

    .line 380
    .end local v0  # "i":I
    :pswitch_20  #0x0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    .line 381
    return-void

    .line 392
    .restart local v0  # "i":I
    :goto_2b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->getProvSize()I

    move-result v1

    if-ge v0, v1, :cond_8f

    .line 393
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->getProv(I)I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->getProv(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->addCore(III)V

    .line 395
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 396
    .local v1, "tID":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->getProv(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V

    .line 397
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->getProv(I)I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    invoke-virtual {v2, v3, v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->addCore(III)V

    .line 392
    .end local v1  # "tID":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 400
    .end local v0  # "i":I
    :cond_8f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->clearSelectedProvinces()V

    .line 402
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v0

    if-ltz v0, :cond_d3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v0

    if-nez v0, :cond_d3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v0

    if-gez v0, :cond_d3

    .line 403
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvSelected()Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ProvincesDrag;->addProv(I)Z

    .line 406
    :cond_d3
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->onBack()V

    .line 407
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->onBackPressed()V

    goto :goto_eb

    .line 410
    :cond_da
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    .line 411
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->GO_TO_WIKI:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;)V

    .line 413
    :goto_eb
    return-void

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_20  #00000000
    .end packed-switch
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 351
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->beginClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 352
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawMenuM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 354
    const/4 v0, 0x1

    .line 357
    .local v0, "tempRandomButton":I
    move v1, v0

    .local v1, "i":I
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElemsSize()I

    move-result v2

    if-ge v1, v2, :cond_c3

    .line 358
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getIsInView()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 359
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getFlagID(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextPosElem()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v5, v2, p2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    sub-int v6, v1, v0

    div-int/lit8 v6, v6, 0x2

    invoke-direct {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getFlagID(I)I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v6, v2, p3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 360
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextPosElem()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuPosY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v4, p3

    invoke-virtual {v2, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_bf
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_bf} :catch_c6
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_bf} :catch_c4

    .line 357
    :cond_bf
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_8

    .end local v1  # "i":I
    :cond_c3
    goto :goto_c7

    .line 365
    :catch_c4
    move-exception v1

    goto :goto_c8

    .line 363
    :catch_c6
    move-exception v1

    .line 367
    :goto_c7
    nop

    .line 371
    :goto_c8
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 372
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 423
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 426
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 428
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 429
    return-void
.end method

.method public updateLang()V
    .registers 4

    .line 262
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    if-nez v0, :cond_18

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "RandomCivilization"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 265
    :cond_18
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .registers 6

    .line 278
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuElements_IsInView()V

    .line 280
    const/4 v0, 0x1

    .line 283
    .local v0, "tempRandomButton":I
    move v1, v0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElemsSize()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 284
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lCivsTags:Ljava/util/List;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getIsLoaded(Ljava/lang/String;)I

    move-result v2

    .line 286
    .local v2, "tempTagID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 287
    if-gez v2, :cond_50

    .line 288
    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->loadFlag(I)V

    goto :goto_50

    .line 292
    :cond_2f
    if-ltz v2, :cond_50

    .line 293
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 294
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 296
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 283
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 300
    .end local v1  # "i":I
    .end local v2  # "tempTagID":I
    :cond_53
    return-void
.end method
