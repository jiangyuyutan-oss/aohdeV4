.class public Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_MapEditor_FormableCivs_SelectFormable_Alphabet.java"


# instance fields
.field private lCharacters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private nSearch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 34

    .line 29
    move-object/from16 v10, p0

    const-string v11, ";"

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->nSearch:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 32
    .local v12, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v1, "Search"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->nSearch:Ljava/lang/String;

    .line 34
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet$1;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v1, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const-string v3, ""

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    if-nez v0, :cond_52

    .line 54
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet$2;

    const/4 v3, 0x0

    const/4 v4, -0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v5, v1, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v9, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 68
    :cond_52
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet$3;

    const/4 v3, 0x0

    const/4 v4, -0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v5, v1, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v9, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_6a
    const/4 v1, 0x0

    .line 84
    .local v1, "tempTADDED":Ljava/lang/String;
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 85
    .local v3, "tagsSPLITED_ADDED":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 90
    .local v4, "tagsSPLITED_ADDEDLength":I
    :try_start_6f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v0
    :try_end_73
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6f .. :try_end_73} :catch_d4

    const-string v5, "Age_of_Civilizations"

    const-string v6, "formable_civs/"

    const-string v7, "map/"

    if-eqz v0, :cond_a1

    .line 91
    :try_start_7b
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "tempFileTADDED":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_c4

    .line 93
    .end local v0  # "tempFileTADDED":Lcom/badlogic/gdx/files/FileHandle;
    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 96
    .restart local v0  # "tempFileTADDED":Lcom/badlogic/gdx/files/FileHandle;
    :goto_c4
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 97
    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 98
    array-length v5, v3
    :try_end_cf
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7b .. :try_end_cf} :catch_d4

    move v4, v5

    .line 101
    .end local v0  # "tempFileTADDED":Lcom/badlogic/gdx/files/FileHandle;
    move-object v13, v1

    move-object v14, v3

    move v15, v4

    goto :goto_d8

    .line 99
    :catch_d4
    move-exception v0

    move-object v13, v1

    move-object v14, v3

    move v15, v4

    .line 105
    .end local v1  # "tempTADDED":Ljava/lang/String;
    .end local v3  # "tagsSPLITED_ADDED":[Ljava/lang/String;
    .end local v4  # "tagsSPLITED_ADDEDLength":I
    .local v13, "tempTADDED":Ljava/lang/String;
    .local v14, "tagsSPLITED_ADDED":[Ljava/lang/String;
    .local v15, "tagsSPLITED_ADDEDLength":I
    :goto_d8
    const-string v0, "game/civilizations/Age_of_Civilizations"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v16

    .line 106
    .local v16, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "tempT":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "tagsSPLITED":[Ljava/lang/String;
    new-array v1, v2, [Ljava/lang/String;

    .line 112
    .local v1, "tagsSPLITED_ED":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 114
    .local v0, "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_e9
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v3
    :try_end_ed
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_e9 .. :try_end_ed} :catch_109

    const-string v4, "game/civilizations_editor/Age_of_Civilizations"

    if-eqz v3, :cond_f9

    .line 115
    :try_start_f1
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v0, v3

    goto :goto_fe

    .line 118
    :cond_f9
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v0, v3

    .line 121
    :goto_fe
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "tempT_ED":Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_106
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_f1 .. :try_end_106} :catch_109

    move-object v1, v4

    .line 125
    .end local v0  # "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "tempT_ED":Ljava/lang/String;
    move-object v0, v1

    goto :goto_10b

    .line 123
    :catch_109
    move-exception v0

    move-object v0, v1

    .line 127
    .end local v1  # "tagsSPLITED_ED":[Ljava/lang/String;
    .local v0, "tagsSPLITED_ED":[Ljava/lang/String;
    :goto_10b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v8

    .local v3, "iSize":I
    :goto_114
    if-ge v1, v3, :cond_184

    .line 130
    aget-object v4, v8, v1

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInFormableCivs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 131
    move/from16 v17, v3

    goto :goto_17f

    .line 134
    :cond_121
    const/4 v4, 0x1

    .line 136
    .local v4, "add":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_123
    if-ge v5, v15, :cond_134

    .line 137
    aget-object v6, v14, v5

    aget-object v7, v8, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_131

    .line 138
    const/4 v4, 0x0

    .line 139
    goto :goto_134

    .line 136
    :cond_131
    add-int/lit8 v5, v5, 0x1

    goto :goto_123

    .line 143
    .end local v5  # "j":I
    :cond_134
    :goto_134
    if-nez v4, :cond_139

    .line 144
    move/from16 v17, v3

    goto :goto_17f

    .line 147
    :cond_139
    const/4 v5, 0x1

    .line 149
    .local v5, "addChar":Z
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_13b
    iget-object v7, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_166

    .line 150
    iget-object v7, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move/from16 v17, v3

    .end local v3  # "iSize":I
    .local v17, "iSize":I
    aget-object v3, v8, v1

    invoke-virtual {v11, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v7, v3, :cond_161

    .line 151
    const/4 v5, 0x0

    .line 152
    goto :goto_168

    .line 149
    :cond_161
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v17

    goto :goto_13b

    .end local v17  # "iSize":I
    .restart local v3  # "iSize":I
    :cond_166
    move/from16 v17, v3

    .line 156
    .end local v3  # "iSize":I
    .end local v6  # "a":I
    .restart local v17  # "iSize":I
    :goto_168
    if-eqz v5, :cond_17f

    .line 157
    iget-object v3, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v7, v8, v1

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v4  # "add":Z
    .end local v5  # "addChar":Z
    :cond_17f
    :goto_17f
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v17

    goto :goto_114

    .end local v17  # "iSize":I
    .restart local v3  # "iSize":I
    :cond_184
    move/from16 v17, v3

    .line 161
    .end local v1  # "i":I
    .end local v3  # "iSize":I
    const/4 v1, 0x0

    .restart local v1  # "i":I
    array-length v3, v0

    .restart local v3  # "iSize":I
    :goto_188
    if-ge v1, v3, :cond_1f8

    .line 162
    aget-object v4, v0, v1

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInFormableCivs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_195

    .line 163
    move/from16 v17, v3

    goto :goto_1f3

    .line 166
    :cond_195
    const/4 v4, 0x1

    .line 168
    .restart local v4  # "add":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_197
    if-ge v5, v15, :cond_1a8

    .line 169
    aget-object v6, v14, v5

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a5

    .line 170
    const/4 v4, 0x0

    .line 171
    goto :goto_1a8

    .line 168
    :cond_1a5
    add-int/lit8 v5, v5, 0x1

    goto :goto_197

    .line 175
    .end local v5  # "j":I
    :cond_1a8
    :goto_1a8
    if-nez v4, :cond_1ad

    .line 176
    move/from16 v17, v3

    goto :goto_1f3

    .line 179
    :cond_1ad
    const/4 v5, 0x1

    .line 181
    .local v5, "addChar":Z
    const/4 v6, 0x0

    .restart local v6  # "a":I
    :goto_1af
    iget-object v7, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1da

    .line 182
    iget-object v7, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move/from16 v17, v3

    .end local v3  # "iSize":I
    .restart local v17  # "iSize":I
    aget-object v3, v0, v1

    invoke-virtual {v11, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v7, v3, :cond_1d5

    .line 183
    const/4 v5, 0x0

    .line 184
    goto :goto_1dc

    .line 181
    :cond_1d5
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v17

    goto :goto_1af

    .end local v17  # "iSize":I
    .restart local v3  # "iSize":I
    :cond_1da
    move/from16 v17, v3

    .line 188
    .end local v3  # "iSize":I
    .end local v6  # "a":I
    .restart local v17  # "iSize":I
    :goto_1dc
    if-eqz v5, :cond_1f3

    .line 189
    iget-object v3, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v4  # "add":Z
    .end local v5  # "addChar":Z
    :cond_1f3
    :goto_1f3
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v17

    goto :goto_188

    .end local v17  # "iSize":I
    .restart local v3  # "iSize":I
    :cond_1f8
    move/from16 v17, v3

    .line 193
    .end local v1  # "i":I
    .end local v3  # "iSize":I
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_1fb
    iget-object v3, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_24f

    .line 194
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_207
    iget-object v4, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_24c

    .line 195
    iget-object v4, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v5, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    if-le v4, v5, :cond_249

    .line 196
    iget-object v4, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    .line 197
    .local v4, "temp":C
    iget-object v5, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-interface {v5, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v5, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v4  # "temp":C
    :cond_249
    add-int/lit8 v3, v3, 0x1

    goto :goto_207

    .line 193
    .end local v3  # "j":I
    :cond_24c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1fb

    .line 203
    .end local v1  # "i":I
    :cond_24f
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_250
    iget-object v3, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2ef

    .line 204
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    const-string v4, "]"

    const-string v5, "["

    if-eqz v3, :cond_2b0

    iget-object v3, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v3, v6, :cond_2b0

    .line 205
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Active;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v5, v1, 0x1

    mul-int v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v5, v5, 0x2

    add-int v20, v4, v5

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v24, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Active;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2eb

    .line 207
    :cond_2b0
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v5, v1, 0x1

    mul-int v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v5, v5, 0x2

    add-int v28, v4, v5

    sget v29, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v30, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v31, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v32, 0x1

    move-object/from16 v25, v3

    invoke-direct/range {v25 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :goto_2eb
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_250

    .line 211
    .end local v1  # "i":I
    :cond_2ef
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    if-ge v1, v2, :cond_391

    .line 212
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    .line 213
    .local v1, "tempElementWidth":I
    const/4 v2, 0x0

    .line 215
    .local v2, "tempPosX":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_324
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_370

    .line 216
    if-nez v3, :cond_350

    .line 217
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosX(I)V

    .line 218
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setWidthE(I)V

    .line 220
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_36d

    .line 223
    :cond_350
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosX(I)V

    .line 224
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setWidthE(I)V

    .line 226
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v4

    add-int/2addr v2, v4

    .line 215
    :goto_36d
    add-int/lit8 v3, v3, 0x1

    goto :goto_324

    .line 230
    .end local v3  # "i":I
    :cond_370
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosX(I)V

    .line 231
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setWidthE(I)V

    .line 234
    .end local v1  # "tempElementWidth":I
    .end local v2  # "tempPosX":I
    :cond_391
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v4, v1, 0x4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    const/4 v11, 0x1

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v7, v12

    move-object/from16 v18, v8

    .end local v8  # "tagsSPLITED":[Ljava/lang/String;
    .local v18, "tagsSPLITED":[Ljava/lang/String;
    move v8, v11

    move-object v11, v9

    .end local v9  # "tempT":Ljava/lang/String;
    .local v11, "tempT":Ljava/lang/String;
    move/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->updateLang()V

    .line 237
    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;

    .line 24
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->nSearch:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 6
    .param p1, "iID"  # I

    .line 251
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_64

    .line 264
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    if-eqz v1, :cond_3c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-nez v1, :cond_3c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 v3, p1, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-eq v1, v2, :cond_62

    goto :goto_3c

    .line 256
    :pswitch_24  #0x1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    if-nez v1, :cond_2c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 257
    :cond_2c
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    .line 258
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    .line 259
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_FORMABLE_CIVS_SELECT_FORMABLE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 261
    :cond_37
    return-void

    .line 253
    :pswitch_38  #0x0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    .line 254
    return-void

    .line 265
    :cond_3c
    :goto_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 v3, p1, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    .line 266
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    .line 267
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_FORMABLE_CIVS_SELECT_FORMABLE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 269
    :cond_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_24  #00000001
    .end packed-switch
.end method

.method public updateLang()V
    .registers 5

    .line 241
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 244
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 245
    return-void
.end method
