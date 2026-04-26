.class public Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_MapEditor_FormableCivs_SelectFormable_List.java"


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

    .line 38
    move-object/from16 v10, p0

    const-string v1, ";"

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 41
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    const/4 v2, 0x0

    .line 42
    .local v2, "tempTADDED":Ljava/lang/String;
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 43
    .local v4, "tagsSPLITED_ADDED":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 48
    .local v5, "tagsSPLITED_ADDEDLength":I
    :try_start_23
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v0
    :try_end_27
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_23 .. :try_end_27} :catch_88

    const-string v6, "Age_of_Civilizations"

    const-string v7, "formable_civs/"

    const-string v8, "map/"

    if-eqz v0, :cond_55

    .line 49
    :try_start_2f
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "tempFileTADDED":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_78

    .line 51
    .end local v0  # "tempFileTADDED":Lcom/badlogic/gdx/files/FileHandle;
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 54
    .restart local v0  # "tempFileTADDED":Lcom/badlogic/gdx/files/FileHandle;
    :goto_78
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 56
    array-length v6, v4
    :try_end_83
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2f .. :try_end_83} :catch_88

    move v5, v6

    .line 59
    .end local v0  # "tempFileTADDED":Lcom/badlogic/gdx/files/FileHandle;
    move-object v12, v2

    move-object v13, v4

    move v14, v5

    goto :goto_8c

    .line 57
    :catch_88
    move-exception v0

    move-object v12, v2

    move-object v13, v4

    move v14, v5

    .line 63
    .end local v2  # "tempTADDED":Ljava/lang/String;
    .end local v4  # "tagsSPLITED_ADDED":[Ljava/lang/String;
    .end local v5  # "tagsSPLITED_ADDEDLength":I
    .local v12, "tempTADDED":Ljava/lang/String;
    .local v13, "tagsSPLITED_ADDED":[Ljava/lang/String;
    .local v14, "tagsSPLITED_ADDEDLength":I
    :goto_8c
    const-string v0, "game/civilizations/Age_of_Civilizations"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v15

    .line 64
    .local v15, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v15}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "tempT":Ljava/lang/String;
    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "tagsSPLITED":[Ljava/lang/String;
    new-array v2, v3, [Ljava/lang/String;

    .line 70
    .local v2, "tagsSPLITED_ED":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 72
    .local v0, "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_9d
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v4
    :try_end_a1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9d .. :try_end_a1} :catch_bd

    const-string v5, "game/civilizations_editor/Age_of_Civilizations"

    if-eqz v4, :cond_ad

    .line 73
    :try_start_a5
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    move-object v0, v4

    goto :goto_b2

    .line 76
    :cond_ad
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    move-object v0, v4

    .line 79
    :goto_b2
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "tempT_ED":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_ba
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a5 .. :try_end_ba} :catch_bd

    move-object v2, v1

    .line 83
    .end local v0  # "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "tempT_ED":Ljava/lang/String;
    move-object v0, v2

    goto :goto_bf

    .line 81
    :catch_bd
    move-exception v0

    move-object v0, v2

    .line 85
    .end local v2  # "tagsSPLITED_ED":[Ljava/lang/String;
    .local v0, "tagsSPLITED_ED":[Ljava/lang/String;
    :goto_bf
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 88
    .local v7, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 91
    .local v6, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    const-string v4, "]"

    const-string v5, " ["

    if-eqz v1, :cond_280

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_280

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v8

    .local v3, "iSize":I
    :goto_e4
    if-ge v1, v3, :cond_143

    .line 93
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move/from16 v17, v3

    .end local v3  # "iSize":I
    .local v17, "iSize":I
    aget-object v3, v8, v1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_13a

    aget-object v2, v8, v1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInFormableCivs(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13a

    .line 94
    const/4 v2, 0x1

    .line 96
    .local v2, "add":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_10a
    if-ge v3, v14, :cond_123

    .line 97
    move/from16 v18, v2

    .end local v2  # "add":Z
    .local v18, "add":Z
    aget-object v2, v13, v3

    move-object/from16 v19, v9

    .end local v9  # "tempT":Ljava/lang/String;
    .local v19, "tempT":Ljava/lang/String;
    aget-object v9, v8, v1

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 98
    const/4 v2, 0x0

    .line 99
    .end local v18  # "add":Z
    .restart local v2  # "add":Z
    goto :goto_127

    .line 96
    .end local v2  # "add":Z
    .restart local v18  # "add":Z
    :cond_11c
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v18

    move-object/from16 v9, v19

    goto :goto_10a

    .end local v18  # "add":Z
    .end local v19  # "tempT":Ljava/lang/String;
    .restart local v2  # "add":Z
    .restart local v9  # "tempT":Ljava/lang/String;
    :cond_123
    move/from16 v18, v2

    move-object/from16 v19, v9

    .line 103
    .end local v3  # "j":I
    .end local v9  # "tempT":Ljava/lang/String;
    .restart local v19  # "tempT":Ljava/lang/String;
    :goto_127
    if-eqz v2, :cond_13c

    .line 104
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v9, v8, v1

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    aget-object v3, v8, v1

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13c

    .line 93
    .end local v2  # "add":Z
    .end local v19  # "tempT":Ljava/lang/String;
    .restart local v9  # "tempT":Ljava/lang/String;
    :cond_13a
    move-object/from16 v19, v9

    .line 92
    .end local v9  # "tempT":Ljava/lang/String;
    .restart local v19  # "tempT":Ljava/lang/String;
    :cond_13c
    :goto_13c
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v17

    move-object/from16 v9, v19

    goto :goto_e4

    .end local v17  # "iSize":I
    .end local v19  # "tempT":Ljava/lang/String;
    .local v3, "iSize":I
    .restart local v9  # "tempT":Ljava/lang/String;
    :cond_143
    move/from16 v17, v3

    move-object/from16 v19, v9

    .line 110
    .end local v1  # "i":I
    .end local v3  # "iSize":I
    .end local v9  # "tempT":Ljava/lang/String;
    .restart local v19  # "tempT":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1  # "i":I
    array-length v2, v0

    .local v2, "iSize":I
    :goto_149
    if-ge v1, v2, :cond_1a4

    .line 111
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v9, v0, v1

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_19d

    aget-object v3, v0, v1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInFormableCivs(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19d

    .line 112
    const/4 v3, 0x1

    .line 114
    .local v3, "add":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_16d
    if-ge v9, v14, :cond_186

    .line 115
    move/from16 v17, v2

    .end local v2  # "iSize":I
    .restart local v17  # "iSize":I
    aget-object v2, v13, v9

    move/from16 v18, v3

    .end local v3  # "add":Z
    .restart local v18  # "add":Z
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17f

    .line 116
    const/4 v3, 0x0

    .line 117
    .end local v18  # "add":Z
    .restart local v3  # "add":Z
    goto :goto_18a

    .line 114
    .end local v3  # "add":Z
    .restart local v18  # "add":Z
    :cond_17f
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v17

    move/from16 v3, v18

    goto :goto_16d

    .end local v17  # "iSize":I
    .end local v18  # "add":Z
    .restart local v2  # "iSize":I
    .restart local v3  # "add":Z
    :cond_186
    move/from16 v17, v2

    move/from16 v18, v3

    .line 121
    .end local v2  # "iSize":I
    .end local v9  # "j":I
    .restart local v17  # "iSize":I
    :goto_18a
    if-eqz v3, :cond_19f

    .line 122
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v9, v0, v1

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    aget-object v2, v0, v1

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19f

    .line 111
    .end local v3  # "add":Z
    .end local v17  # "iSize":I
    .restart local v2  # "iSize":I
    :cond_19d
    move/from16 v17, v2

    .line 110
    .end local v2  # "iSize":I
    .restart local v17  # "iSize":I
    :cond_19f
    :goto_19f
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v17

    goto :goto_149

    .end local v17  # "iSize":I
    .restart local v2  # "iSize":I
    :cond_1a4
    move/from16 v17, v2

    .line 128
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    const/4 v1, 0x0

    .line 130
    .local v1, "nPosY":I
    :goto_1a7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_27a

    .line 131
    const/4 v2, 0x0

    .line 133
    .local v2, "toAddID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1af
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_1d1

    .line 134
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v12

    .end local v12  # "tempTADDED":Ljava/lang/String;
    .local v18, "tempTADDED":Ljava/lang/String;
    move-object/from16 v12, v17

    check-cast v12, Ljava/lang/String;

    invoke-static {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1cc

    .line 135
    move v2, v3

    .line 133
    :cond_1cc
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v12, v18

    goto :goto_1af

    .end local v18  # "tempTADDED":Ljava/lang/String;
    .restart local v12  # "tempTADDED":Ljava/lang/String;
    :cond_1d1
    move-object/from16 v18, v12

    .line 139
    .end local v3  # "i":I
    .end local v12  # "tempTADDED":Ljava/lang/String;
    .restart local v18  # "tempTADDED":Ljava/lang/String;
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v28, v15

    .end local v15  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v28, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    move-object/from16 v15, v17

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v12, 0x42480000  # 50.0f

    mul-float v9, v9, v12

    float-to-int v9, v9

    const/16 v23, 0x0

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int v12, v12, v1

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v17, v1, 0x1

    mul-int v15, v15, v17

    add-int v24, v12, v15

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v17, v17, 0x2

    add-int v15, v15, v17

    sub-int v25, v12, v15

    sget v26, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v27, 0x1

    move-object/from16 v20, v3

    move/from16 v22, v9

    invoke-direct/range {v20 .. v27}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_Wiki;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v12, v15

    sub-int v30, v9, v12

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int v9, v9, v1

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v15, v1, 0x1

    mul-int v12, v12, v15

    add-int v31, v9, v12

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v12, v12, 0x2

    add-int v32, v9, v12

    sget v33, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v34, 0x1

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v34}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v3, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 145
    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 147
    nop

    .end local v2  # "toAddID":I
    add-int/lit8 v1, v1, 0x1

    .line 148
    move-object/from16 v12, v18

    move-object/from16 v15, v28

    goto/16 :goto_1a7

    .line 130
    .end local v18  # "tempTADDED":Ljava/lang/String;
    .end local v28  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v12  # "tempTADDED":Ljava/lang/String;
    .restart local v15  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_27a
    move-object/from16 v18, v12

    move-object/from16 v28, v15

    .line 149
    .end local v1  # "nPosY":I
    .end local v12  # "tempTADDED":Ljava/lang/String;
    .end local v15  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18  # "tempTADDED":Ljava/lang/String;
    .restart local v28  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_511

    .line 91
    .end local v18  # "tempTADDED":Ljava/lang/String;
    .end local v19  # "tempT":Ljava/lang/String;
    .end local v28  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v9, "tempT":Ljava/lang/String;
    .restart local v12  # "tempTADDED":Ljava/lang/String;
    .restart local v15  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_280
    move-object/from16 v19, v9

    move-object/from16 v18, v12

    move-object/from16 v28, v15

    .line 150
    .end local v9  # "tempT":Ljava/lang/String;
    .end local v12  # "tempTADDED":Ljava/lang/String;
    .end local v15  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18  # "tempTADDED":Ljava/lang/String;
    .restart local v19  # "tempT":Ljava/lang/String;
    .restart local v28  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    if-nez v1, :cond_3b8

    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v8

    .local v2, "iSize":I
    :goto_28c
    if-ge v1, v2, :cond_2be

    .line 152
    aget-object v3, v8, v1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInFormableCivs(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2bb

    .line 153
    const/4 v3, 0x1

    .line 155
    .local v3, "add":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_298
    if-ge v9, v14, :cond_2a9

    .line 156
    aget-object v12, v13, v9

    aget-object v15, v8, v1

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a6

    .line 157
    const/4 v3, 0x0

    .line 158
    goto :goto_2a9

    .line 155
    :cond_2a6
    add-int/lit8 v9, v9, 0x1

    goto :goto_298

    .line 162
    .end local v9  # "j":I
    :cond_2a9
    :goto_2a9
    if-eqz v3, :cond_2bb

    .line 163
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v12, v8, v1

    invoke-virtual {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    aget-object v9, v8, v1

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v3  # "add":Z
    :cond_2bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_28c

    .line 169
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_2be
    const/4 v1, 0x0

    .restart local v1  # "i":I
    array-length v2, v0

    .restart local v2  # "iSize":I
    :goto_2c0
    if-ge v1, v2, :cond_2f2

    .line 170
    aget-object v3, v0, v1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInFormableCivs(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2ef

    .line 171
    const/4 v3, 0x1

    .line 173
    .restart local v3  # "add":Z
    const/4 v9, 0x0

    .restart local v9  # "j":I
    :goto_2cc
    if-ge v9, v14, :cond_2dd

    .line 174
    aget-object v12, v13, v9

    aget-object v15, v0, v1

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2da

    .line 175
    const/4 v3, 0x0

    .line 176
    goto :goto_2dd

    .line 173
    :cond_2da
    add-int/lit8 v9, v9, 0x1

    goto :goto_2cc

    .line 180
    .end local v9  # "j":I
    :cond_2dd
    :goto_2dd
    if-eqz v3, :cond_2ef

    .line 181
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v12, v0, v1

    invoke-virtual {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    aget-object v9, v0, v1

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v3  # "add":Z
    :cond_2ef
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c0

    .line 187
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_2f2
    const/4 v1, 0x0

    .line 189
    .local v1, "nPosY":I
    :goto_2f3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3b6

    .line 190
    const/4 v2, 0x0

    .line 192
    .local v2, "toAddID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2fb
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_317

    .line 193
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_314

    .line 194
    move v2, v3

    .line 192
    :cond_314
    add-int/lit8 v3, v3, 0x1

    goto :goto_2fb

    .line 198
    .end local v3  # "i":I
    :cond_317
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v12, 0x42480000  # 50.0f

    mul-float v9, v9, v12

    float-to-int v9, v9

    const/16 v23, 0x0

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int v12, v12, v1

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v17, v1, 0x1

    mul-int v15, v15, v17

    add-int v24, v12, v15

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v17, v17, 0x2

    add-int v15, v15, v17

    sub-int v25, v12, v15

    sget v26, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v27, 0x1

    move-object/from16 v20, v3

    move/from16 v22, v9

    invoke-direct/range {v20 .. v27}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_Wiki;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v12, v15

    sub-int v30, v9, v12

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int v9, v9, v1

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v15, v1, 0x1

    mul-int v12, v12, v15

    add-int v31, v9, v12

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v12, v12, 0x2

    add-int v32, v9, v12

    sget v33, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v34, 0x1

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v34}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v3, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 204
    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 206
    nop

    .end local v2  # "toAddID":I
    add-int/lit8 v1, v1, 0x1

    .line 207
    goto/16 :goto_2f3

    .line 208
    .end local v1  # "nPosY":I
    :cond_3b6
    goto/16 :goto_511

    .line 210
    :cond_3b8
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v8

    .local v2, "iSize":I
    :goto_3ba
    if-ge v1, v2, :cond_402

    .line 211
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v12, v8, v1

    invoke-virtual {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v9, v12, :cond_3fe

    aget-object v9, v8, v1

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInFormableCivs(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3fe

    .line 212
    const/4 v9, 0x1

    .line 214
    .local v9, "add":Z
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3da
    if-ge v12, v14, :cond_3ec

    .line 215
    aget-object v15, v13, v12

    aget-object v3, v8, v1

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e8

    .line 216
    const/4 v9, 0x0

    .line 217
    goto :goto_3ec

    .line 214
    :cond_3e8
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_3da

    .line 221
    .end local v12  # "j":I
    :cond_3ec
    :goto_3ec
    if-eqz v9, :cond_3fe

    .line 222
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v12, v8, v1

    invoke-virtual {v3, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    aget-object v3, v8, v1

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v9  # "add":Z
    :cond_3fe
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    goto :goto_3ba

    .line 228
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_402
    const/4 v1, 0x0

    .restart local v1  # "i":I
    array-length v2, v0

    .restart local v2  # "iSize":I
    :goto_404
    if-ge v1, v2, :cond_44c

    .line 229
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v9, v0, v1

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v3, v12, :cond_449

    aget-object v3, v0, v1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInFormableCivs(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_449

    .line 230
    const/4 v3, 0x1

    .line 232
    .local v3, "add":Z
    const/4 v12, 0x0

    .restart local v12  # "j":I
    :goto_425
    if-ge v12, v14, :cond_437

    .line 233
    aget-object v15, v13, v12

    aget-object v9, v0, v1

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_433

    .line 234
    const/4 v3, 0x0

    .line 235
    goto :goto_437

    .line 232
    :cond_433
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto :goto_425

    .line 239
    .end local v12  # "j":I
    :cond_437
    :goto_437
    if-eqz v3, :cond_449

    .line 240
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v12, v0, v1

    invoke-virtual {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    aget-object v9, v0, v1

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v3  # "add":Z
    :cond_449
    add-int/lit8 v1, v1, 0x1

    goto :goto_404

    .line 246
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_44c
    const/4 v1, 0x0

    .line 248
    .local v1, "nPosY":I
    :goto_44d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_511

    .line 249
    const/4 v2, 0x0

    .line 251
    .local v2, "toAddID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_455
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_471

    .line 252
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_46e

    .line 253
    move v2, v3

    .line 251
    :cond_46e
    add-int/lit8 v3, v3, 0x1

    goto :goto_455

    .line 257
    .end local v3  # "i":I
    :cond_471
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v12, 0x42480000  # 50.0f

    mul-float v9, v9, v12

    float-to-int v9, v9

    const/16 v23, 0x0

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int v15, v15, v1

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v17, v1, 0x1

    mul-int v16, v16, v17

    add-int v24, v15, v16

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    sub-int v25, v15, v16

    sget v26, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v27, 0x1

    move-object/from16 v20, v3

    move/from16 v22, v9

    invoke-direct/range {v20 .. v27}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_Wiki;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    sub-int v30, v9, v15

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int v9, v9, v1

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v16, v1, 0x1

    mul-int v15, v15, v16

    add-int v31, v9, v15

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v15, v15, 0x2

    add-int v32, v9, v15

    sget v33, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v34, 0x1

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v34}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v3, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 263
    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 265
    nop

    .end local v2  # "toAddID":I
    add-int/lit8 v1, v1, 0x1

    .line 266
    goto/16 :goto_44d

    .line 269
    .end local v1  # "nPosY":I
    :cond_511
    :goto_511
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

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x4

    sub-int/2addr v1, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v1, v9

    const/4 v12, 0x1

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v16, v6

    .end local v6  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v6, v9

    move-object/from16 v17, v7

    .end local v7  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v17, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v7, v11

    move-object/from16 v20, v8

    .end local v8  # "tagsSPLITED":[Ljava/lang/String;
    .local v20, "tagsSPLITED":[Ljava/lang/String;
    move v8, v12

    move-object/from16 v12, v19

    .end local v19  # "tempT":Ljava/lang/String;
    .local v12, "tempT":Ljava/lang/String;
    move v9, v15

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->updateLang()V

    .line 272
    return-void
.end method

.method private final getFlagID(I)I
    .registers 4
    .param p1, "nCivTagID"  # I

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 326
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 327
    return v0

    .line 325
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    .end local v0  # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private final getIsLoaded(Ljava/lang/String;)I
    .registers 5
    .param p1, "nCivTag"  # Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 316
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

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

    .line 317
    return v0

    .line 315
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 321
    .end local v0  # "i":I
    :cond_27
    const/4 v0, -0x1

    return v0
.end method

.method private final loadFlag(I)V
    .registers 13
    .param p1, "nCivTagID"  # I

    .line 337
    const-string v0, ".png"

    const-string v1, "game/flags/"

    :try_start_4
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

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

    .line 352
    goto/16 :goto_14d

    .line 338
    :catch_38
    move-exception v2

    .line 340
    .local v2, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_39
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

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

    .line 351
    goto/16 :goto_14d

    .line 341
    :catch_73
    move-exception v0

    .line 342
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

    .line 344
    :try_start_80
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

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

    .line 347
    goto/16 :goto_14d

    .line 345
    :catch_c6
    move-exception v1

    .line 346
    .local v1, "erq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_c7
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

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

    .line 347
    nop

    .end local v1  # "erq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    goto :goto_14d

    .line 349
    :cond_10b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

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

    .line 355
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v2  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_14d
    goto :goto_166

    .line 353
    :catch_14e
    move-exception v0

    .line 354
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    const-string v4, "game/flagsXH/ran.png"

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    .end local v0  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_166
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method private final onBack()V
    .registers 3

    .line 403
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_FORMABLE_CIVS_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 404
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 388
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1f

    .line 389
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v2, p1, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->setFormableCivTag(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->onBack()V

    .line 393
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    .line 394
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    .line 395
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->onBackPressed()V

    goto :goto_2c

    .line 398
    :cond_1f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->wikiInforLink(Ljava/lang/String;)V

    .line 400
    :goto_2c
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 363
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->beginClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 364
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawMenuM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    :try_start_7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuElemsSize()I

    move-result v1

    if-ge v0, v1, :cond_be

    .line 368
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 369
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    div-int/lit8 v2, v0, 0x2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getFlagID(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextPosElem()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    div-int/lit8 v5, v0, 0x2

    invoke-direct {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getFlagID(I)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v5, v1, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 370
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextPosElem()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_ba} :catch_c1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_ba} :catch_bf

    .line 367
    :cond_ba
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_7

    .end local v0  # "i":I
    :cond_be
    goto :goto_c2

    .line 375
    :catch_bf
    move-exception v0

    goto :goto_c3

    .line 373
    :catch_c1
    move-exception v0

    .line 377
    :goto_c2
    nop

    .line 381
    :goto_c3
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 382
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 410
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 413
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 414
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 415
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 416
    return-void
.end method

.method public updateLang()V
    .registers 1

    .line 277
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .registers 6

    .line 290
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuElements_IsInView()V

    .line 292
    const/4 v0, 0x0

    .line 295
    .local v0, "tempRandomButton":I
    move v1, v0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuElemsSize()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 296
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lCivsTags:Ljava/util/List;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getIsLoaded(Ljava/lang/String;)I

    move-result v2

    .line 298
    .local v2, "tempTagID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 299
    if-gez v2, :cond_50

    .line 300
    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->loadFlag(I)V

    goto :goto_50

    .line 304
    :cond_2f
    if-ltz v2, :cond_50

    .line 305
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 306
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 308
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 295
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 312
    .end local v1  # "i":I
    .end local v2  # "tempTagID":I
    :cond_53
    return-void
.end method
