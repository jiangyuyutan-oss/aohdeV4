.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_Editor_Unions_AddCiv_List.java"


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
    .registers 31

    .line 43
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 46
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    const-string v0, "game/civilizations/Age_of_Civilizations"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    .line 47
    .local v12, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v13

    .line 48
    .local v13, "tempT":Ljava/lang/String;
    const-string v0, ";"

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 51
    .local v14, "tagsSPLITED":[Ljava/lang/String;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 54
    .local v2, "tagsSPLITED_ED":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 56
    .local v3, "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_30
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v4
    :try_end_34
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_30 .. :try_end_34} :catch_4f

    const-string v5, "game/civilizations_editor/Age_of_Civilizations"

    if-eqz v4, :cond_40

    .line 57
    :try_start_38
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    move-object v3, v4

    goto :goto_45

    .line 60
    :cond_40
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    move-object v3, v4

    .line 63
    :goto_45
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "tempT_ED":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_4d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_38 .. :try_end_4d} :catch_4f

    move-object v2, v0

    .line 67
    .end local v3  # "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "tempT_ED":Ljava/lang/String;
    goto :goto_51

    .line 65
    :catch_4f
    move-exception v0

    move-object v0, v2

    .line 69
    .end local v2  # "tagsSPLITED_ED":[Ljava/lang/String;
    .local v0, "tagsSPLITED_ED":[Ljava/lang/String;
    :goto_51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v2

    .line 72
    .local v15, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    .line 75
    .local v9, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    const/high16 v16, 0x42480000  # 50.0f

    if-eqz v2, :cond_193

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_193

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v14

    .local v2, "iSize":I
    :goto_74
    if-ge v1, v2, :cond_a1

    .line 77
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v14, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_9e

    .line 78
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v14, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    aget-object v3, v14, v1

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 83
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_a1
    const/4 v1, 0x0

    .restart local v1  # "i":I
    array-length v2, v0

    .restart local v2  # "iSize":I
    :goto_a3
    if-ge v1, v2, :cond_d0

    .line 84
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

    if-ltz v3, :cond_cd

    .line 85
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    aget-object v3, v0, v1

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_cd
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 90
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_d0
    const/4 v1, 0x0

    .line 91
    .local v1, "nPosY":I
    const/4 v2, 0x0

    move/from16 v17, v1

    move v3, v2

    .line 93
    .end local v1  # "nPosY":I
    .local v3, "tID":I
    .local v17, "nPosY":I
    :goto_d5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_18b

    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "toAddID":I
    const/4 v2, 0x1

    move v8, v1

    .end local v1  # "toAddID":I
    .local v2, "i":I
    .local v8, "toAddID":I
    :goto_de
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_fb

    .line 97
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 98
    move v1, v2

    move v8, v1

    .line 96
    :cond_f8
    add-int/lit8 v2, v2, 0x1

    goto :goto_de

    .line 102
    .end local v2  # "i":I
    :cond_fb
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v2, v2, v16

    float-to-int v2, v2

    const/16 v21, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int v4, v4, v17

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v6, v17, 0x1

    mul-int v5, v5, v6

    add-int v22, v4, v5

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int v23, v4, v5

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v25, 0x1

    move-object/from16 v18, v1

    move/from16 v20, v2

    invoke-direct/range {v18 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List$1;

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

    mul-int v1, v1, v17

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v5, v17, 0x1

    mul-int v2, v2, v5

    add-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v20, 0x1

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v21, v12

    move-object v12, v7

    .end local v12  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v21, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    move/from16 v7, v19

    move-object/from16 v19, v13

    move v13, v8

    .end local v8  # "toAddID":I
    .local v13, "toAddID":I
    .local v19, "tempT":Ljava/lang/String;
    move/from16 v8, v20

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;IIIIIZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v15, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 125
    invoke-interface {v9, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 127
    nop

    .end local v13  # "toAddID":I
    add-int/lit8 v17, v17, 0x1

    .line 128
    move/from16 v3, v18

    move-object/from16 v13, v19

    move-object/from16 v12, v21

    goto/16 :goto_d5

    .line 93
    .end local v18  # "tID":I
    .end local v19  # "tempT":Ljava/lang/String;
    .end local v21  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v3  # "tID":I
    .restart local v12  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v13, "tempT":Ljava/lang/String;
    :cond_18b
    move-object/from16 v21, v12

    move-object/from16 v19, v13

    .line 129
    .end local v3  # "tID":I
    .end local v12  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v13  # "tempT":Ljava/lang/String;
    .end local v17  # "nPosY":I
    .restart local v19  # "tempT":Ljava/lang/String;
    .restart local v21  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    move-object/from16 v20, v0

    goto/16 :goto_38e

    .line 75
    .end local v19  # "tempT":Ljava/lang/String;
    .end local v21  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v12  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v13  # "tempT":Ljava/lang/String;
    :cond_193
    move-object/from16 v21, v12

    move-object/from16 v19, v13

    .line 130
    .end local v12  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v13  # "tempT":Ljava/lang/String;
    .restart local v19  # "tempT":Ljava/lang/String;
    .restart local v21  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    if-nez v2, :cond_280

    .line 131
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v14

    .local v2, "iSize":I
    :goto_19d
    if-ge v1, v2, :cond_1b2

    .line 132
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v14, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    aget-object v3, v14, v1

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_19d

    .line 136
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_1b2
    const/4 v1, 0x0

    .restart local v1  # "i":I
    array-length v2, v0

    .restart local v2  # "iSize":I
    :goto_1b4
    if-ge v1, v2, :cond_1c9

    .line 137
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    aget-object v3, v0, v1

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b4

    .line 141
    .end local v1  # "i":I
    .end local v2  # "iSize":I
    :cond_1c9
    const/4 v1, 0x0

    .line 142
    .local v1, "nPosY":I
    const/4 v2, 0x0

    move v12, v1

    move v3, v2

    .line 144
    .end local v1  # "nPosY":I
    .restart local v3  # "tID":I
    .local v12, "nPosY":I
    :goto_1cd
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_27c

    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "toAddID":I
    const/4 v2, 0x1

    move v13, v1

    .end local v1  # "toAddID":I
    .local v2, "i":I
    .local v13, "toAddID":I
    :goto_1d6
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1f3

    .line 148
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f0

    .line 149
    move v1, v2

    move v13, v1

    .line 147
    :cond_1f0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d6

    .line 153
    .end local v2  # "i":I
    :cond_1f3
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v2, v2, v16

    float-to-int v2, v2

    const/16 v25, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int v4, v4, v12

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v6, v12, 0x1

    mul-int v5, v5, v6

    add-int v26, v4, v5

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int v27, v4, v5

    sget v28, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v29, 0x1

    move-object/from16 v22, v1

    move/from16 v24, v2

    invoke-direct/range {v22 .. v29}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List$2;

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

    mul-int v1, v1, v12

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v5, v12, 0x1

    mul-int v2, v2, v5

    add-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v18, 0x1

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v20, v0

    move-object v0, v8

    .end local v0  # "tagsSPLITED_ED":[Ljava/lang/String;
    .local v20, "tagsSPLITED_ED":[Ljava/lang/String;
    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v15, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 176
    invoke-interface {v9, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 178
    nop

    .end local v13  # "toAddID":I
    add-int/lit8 v12, v12, 0x1

    .line 179
    move/from16 v3, v17

    move-object/from16 v0, v20

    goto/16 :goto_1cd

    .line 144
    .end local v17  # "tID":I
    .end local v20  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v0  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v3  # "tID":I
    :cond_27c
    move-object/from16 v20, v0

    .line 181
    .end local v0  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v3  # "tID":I
    .end local v12  # "nPosY":I
    .restart local v20  # "tagsSPLITED_ED":[Ljava/lang/String;
    goto/16 :goto_38e

    .line 183
    .end local v20  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v0  # "tagsSPLITED_ED":[Ljava/lang/String;
    :cond_280
    move-object/from16 v20, v0

    .end local v0  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v20  # "tagsSPLITED_ED":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v14

    .local v2, "iSize":I
    :goto_284
    if-ge v0, v2, :cond_2ad

    .line 184
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v14, v0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2aa

    .line 185
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v14, v0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    aget-object v3, v14, v0

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_2aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_284

    .line 190
    .end local v0  # "i":I
    .end local v2  # "iSize":I
    :cond_2ad
    const/4 v0, 0x0

    move-object/from16 v12, v20

    .end local v20  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v0  # "i":I
    .local v12, "tagsSPLITED_ED":[Ljava/lang/String;
    array-length v2, v12

    .restart local v2  # "iSize":I
    :goto_2b1
    if-ge v0, v2, :cond_2da

    .line 191
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v12, v0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2d7

    .line 192
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v4, v12, v0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    aget-object v3, v12, v0

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_2d7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b1

    .line 197
    .end local v0  # "i":I
    .end local v2  # "iSize":I
    :cond_2da
    const/4 v0, 0x0

    .line 198
    .local v0, "nPosY":I
    const/4 v1, 0x0

    move v3, v1

    .line 200
    .restart local v3  # "tID":I
    :goto_2dd
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_38c

    .line 201
    const/4 v1, 0x0

    .line 203
    .restart local v1  # "toAddID":I
    const/4 v2, 0x1

    move v13, v1

    .end local v1  # "toAddID":I
    .local v2, "i":I
    .restart local v13  # "toAddID":I
    :goto_2e6
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_303

    .line 204
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_300

    .line 205
    move v1, v2

    move v13, v1

    .line 203
    :cond_300
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e6

    .line 209
    .end local v2  # "i":I
    :cond_303
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v2, v2, v16

    float-to-int v2, v2

    const/16 v25, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int v4, v4, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v6, v0, 0x1

    mul-int v5, v5, v6

    add-int v26, v4, v5

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int v27, v4, v5

    sget v28, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v29, 0x1

    move-object/from16 v22, v1

    move/from16 v24, v2

    invoke-direct/range {v22 .. v29}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List$3;

    add-int/lit8 v17, v3, 0x1

    .end local v3  # "tID":I
    .restart local v17  # "tID":I
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sub-int v4, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int v1, v1, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v5, v0, 0x1

    mul-int v2, v2, v5

    add-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v18, 0x1

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v20, v12

    move-object v12, v8

    .end local v12  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v20  # "tagsSPLITED_ED":[Ljava/lang/String;
    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;IIIIIZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v1, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-interface {v15, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 232
    invoke-interface {v9, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 234
    nop

    .end local v13  # "toAddID":I
    add-int/lit8 v0, v0, 0x1

    .line 235
    move/from16 v3, v17

    move-object/from16 v12, v20

    goto/16 :goto_2dd

    .line 200
    .end local v17  # "tID":I
    .end local v20  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v3  # "tID":I
    .restart local v12  # "tagsSPLITED_ED":[Ljava/lang/String;
    :cond_38c
    move-object/from16 v20, v12

    .line 238
    .end local v0  # "nPosY":I
    .end local v3  # "tID":I
    .end local v12  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v20  # "tagsSPLITED_ED":[Ljava/lang/String;
    :goto_38e
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v4, v0, v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v0, v1

    const/4 v8, 0x1

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v7, v11

    move-object v12, v9

    .end local v9  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v9, v0

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->updateLang()V

    .line 241
    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;

    .line 34
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    return-object v0
.end method

.method private final getFlagID(I)I
    .registers 4
    .param p1, "nCivTagID"  # I

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 288
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 289
    return v0

    .line 287
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    .end local v0  # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private final getIsLoaded(Ljava/lang/String;)I
    .registers 5
    .param p1, "nCivTag"  # Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 278
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

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

    .line 279
    return v0

    .line 277
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    .end local v0  # "i":I
    :cond_27
    const/4 v0, -0x1

    return v0
.end method

.method private final loadFlag(I)V
    .registers 13
    .param p1, "nCivTagID"  # I

    .line 299
    const-string v0, ".png"

    const-string v1, "game/flags/"

    :try_start_4
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

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

    .line 314
    goto/16 :goto_14d

    .line 300
    :catch_38
    move-exception v2

    .line 302
    .local v2, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_39
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

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

    .line 313
    goto/16 :goto_14d

    .line 303
    :catch_73
    move-exception v0

    .line 304
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

    .line 306
    :try_start_80
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

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

    .line 309
    goto/16 :goto_14d

    .line 307
    :catch_c6
    move-exception v1

    .line 308
    .local v1, "erq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_c7
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

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

    .line 309
    nop

    .end local v1  # "erq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    goto :goto_14d

    .line 311
    :cond_10b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

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

    .line 317
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v2  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_14d
    goto :goto_166

    .line 315
    :catch_14e
    move-exception v0

    .line 316
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    const-string v4, "game/flagsXH/ran.png"

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v0  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_166
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method private final onBack()V
    .registers 3

    .line 388
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR_UNIONS_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 389
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 7
    .param p1, "iID"  # I

    .line 352
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2c

    .line 353
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1a

    .line 354
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionsManager:Lage/of/civilizations2/jakowski/lukasz/UnionsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->createUnion_Data:Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v2, p1, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCreateCivTag:Ljava/lang/String;

    goto :goto_83

    .line 356
    :cond_1a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    .line 357
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->GO_TO_WIKI:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;)V

    .line 358
    return-void

    .line 361
    :cond_2c
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_61

    .line 362
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_4f

    .line 363
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionsManager:Lage/of/civilizations2/jakowski/lukasz/UnionsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->createUnion_Data:Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCivsTags:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v3, p1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 365
    :cond_4f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    .line 366
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->GO_TO_WIKI:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;)V

    .line 367
    return-void

    .line 371
    :cond_61
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_8a

    .line 373
    :try_start_65
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionsManager:Lage/of/civilizations2/jakowski/lukasz/UnionsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->createUnion_Data:Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCivsTags:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v4, p1, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_65 .. :try_end_80} :catch_81

    goto :goto_82

    .line 374
    :catch_81
    move-exception v0

    .line 376
    :goto_82
    nop

    .line 383
    :goto_83
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->onBackPressed()V

    .line 384
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->onBack()V

    .line 385
    return-void

    .line 378
    :cond_8a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    .line 379
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->GO_TO_WIKI:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;)V

    .line 380
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 11
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 325
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->beginClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 326
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawMenuM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 328
    const/4 v0, 0x0

    .line 331
    .local v0, "tempRandomButton":I
    move v1, v0

    .local v1, "i":I
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuElemsSize()I

    move-result v2

    if-ge v1, v2, :cond_a6

    .line 332
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getIsInView()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 333
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getFlagID(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextPosElem()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuPosY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

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

    .line 334
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextPosElem()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuPosY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

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
    :try_end_a2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_a2} :catch_a9
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_a2} :catch_a7

    .line 331
    :cond_a2
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_8

    .end local v1  # "i":I
    :cond_a6
    goto :goto_aa

    .line 339
    :catch_a7
    move-exception v1

    goto :goto_ab

    .line 337
    :catch_a9
    move-exception v1

    .line 341
    :goto_aa
    nop

    .line 345
    :goto_ab
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 346
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 395
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 399
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 400
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 401
    return-void
.end method

.method public updateLang()V
    .registers 1

    .line 246
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .registers 6

    .line 252
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuElements_IsInView()V

    .line 254
    const/4 v0, 0x0

    .line 257
    .local v0, "tempRandomButton":I
    move v1, v0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuElemsSize()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 258
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lCivsTags:Ljava/util/List;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getIsLoaded(Ljava/lang/String;)I

    move-result v2

    .line 260
    .local v2, "tempTagID":I
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 261
    if-gez v2, :cond_50

    .line 262
    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->loadFlag(I)V

    goto :goto_50

    .line 266
    :cond_2f
    if-ltz v2, :cond_50

    .line 267
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 268
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 270
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/Unions/AddCiv/Menu_Editor_Unions_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 257
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 274
    .end local v1  # "i":I
    .end local v2  # "tempTagID":I
    :cond_53
    return-void
.end method
