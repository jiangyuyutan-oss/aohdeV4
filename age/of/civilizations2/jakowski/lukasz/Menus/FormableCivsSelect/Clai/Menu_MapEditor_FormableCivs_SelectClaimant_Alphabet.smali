.class public Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet.java"


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
    .registers 32

    .line 35
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->nSearch:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 38
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v1, "Search"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->nSearch:Ljava/lang/String;

    .line 40
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet$1;

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

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    if-nez v0, :cond_50

    .line 60
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet$2;

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

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 74
    :cond_50
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet$3;

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

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_68
    const-string v0, "game/civilizations/Age_of_Civilizations"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    .line 90
    .local v12, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, "tempT":Ljava/lang/String;
    const-string v0, ";"

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 93
    .local v14, "tagsSPLITED":[Ljava/lang/String;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 96
    .local v2, "tagsSPLITED_ED":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 98
    .local v3, "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_7c
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v4
    :try_end_80
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7c .. :try_end_80} :catch_9b

    const-string v5, "game/civilizations_editor/Age_of_Civilizations"

    if-eqz v4, :cond_8c

    .line 99
    :try_start_84
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    move-object v3, v4

    goto :goto_91

    .line 102
    :cond_8c
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    move-object v3, v4

    .line 105
    :goto_91
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "tempT_ED":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_99
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_84 .. :try_end_99} :catch_9b

    move-object v2, v0

    .line 109
    .end local v3  # "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "tempT_ED":Ljava/lang/String;
    goto :goto_9d

    .line 107
    :catch_9b
    move-exception v0

    move-object v0, v2

    .line 111
    .end local v2  # "tagsSPLITED_ED":[Ljava/lang/String;
    .local v0, "tagsSPLITED_ED":[Ljava/lang/String;
    :goto_9d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    .line 113
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v14

    .local v3, "iSize":I
    :goto_a6
    if-ge v2, v3, :cond_f4

    .line 114
    aget-object v4, v14, v2

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInFormableCivs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 115
    goto :goto_f1

    .line 118
    :cond_b1
    const/4 v4, 0x1

    .line 120
    .local v4, "addChar":Z
    const/4 v5, 0x0

    .local v5, "a":I
    :goto_b3
    iget-object v6, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_da

    .line 121
    iget-object v6, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v8, v14, v2

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_d7

    .line 122
    const/4 v4, 0x0

    .line 123
    goto :goto_da

    .line 120
    :cond_d7
    add-int/lit8 v5, v5, 0x1

    goto :goto_b3

    .line 127
    .end local v5  # "a":I
    :cond_da
    :goto_da
    if-eqz v4, :cond_f1

    .line 128
    iget-object v5, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v7, v14, v2

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v4  # "addChar":Z
    :cond_f1
    :goto_f1
    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    .line 132
    .end local v2  # "i":I
    .end local v3  # "iSize":I
    :cond_f4
    const/4 v2, 0x0

    .restart local v2  # "i":I
    array-length v3, v0

    .restart local v3  # "iSize":I
    :goto_f6
    if-ge v2, v3, :cond_144

    .line 133
    aget-object v4, v0, v2

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInFormableCivs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 134
    goto :goto_141

    .line 137
    :cond_101
    const/4 v4, 0x1

    .line 139
    .restart local v4  # "addChar":Z
    const/4 v5, 0x0

    .restart local v5  # "a":I
    :goto_103
    iget-object v6, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_12a

    .line 140
    iget-object v6, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_127

    .line 141
    const/4 v4, 0x0

    .line 142
    goto :goto_12a

    .line 139
    :cond_127
    add-int/lit8 v5, v5, 0x1

    goto :goto_103

    .line 146
    .end local v5  # "a":I
    :cond_12a
    :goto_12a
    if-eqz v4, :cond_141

    .line 147
    iget-object v5, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v4  # "addChar":Z
    :cond_141
    :goto_141
    add-int/lit8 v2, v2, 0x1

    goto :goto_f6

    .line 151
    .end local v2  # "i":I
    .end local v3  # "iSize":I
    :cond_144
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_145
    iget-object v3, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_199

    .line 152
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_151
    iget-object v4, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_196

    .line 153
    iget-object v4, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v5, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    if-le v4, v5, :cond_193

    .line 154
    iget-object v4, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    .line 155
    .local v4, "temp":C
    iget-object v5, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-interface {v5, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v5, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 152
    .end local v4  # "temp":C
    :cond_193
    add-int/lit8 v3, v3, 0x1

    goto :goto_151

    .line 151
    .end local v3  # "j":I
    :cond_196
    add-int/lit8 v2, v2, 0x1

    goto :goto_145

    .line 161
    .end local v2  # "i":I
    :cond_199
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_19a
    iget-object v3, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_238

    .line 162
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    const-string v4, "]"

    const-string v5, "["

    if-eqz v3, :cond_1f9

    iget-object v3, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v3, v6, :cond_1f9

    .line 163
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Active;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v5, v2, 0x1

    mul-int v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v5, v5, 0x2

    add-int v18, v4, v5

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v22, 0x1

    move-object v15, v3

    invoke-direct/range {v15 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Active;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_234

    .line 165
    :cond_1f9
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v5, v2, 0x1

    mul-int v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v5, v5, 0x2

    add-int v26, v4, v5

    sget v27, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v28, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v29, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v30, 0x1

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v30}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :goto_234
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19a

    .line 169
    .end local v2  # "i":I
    :cond_238
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    if-ge v1, v2, :cond_2da

    .line 170
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    .line 171
    .local v1, "tempElementWidth":I
    const/4 v2, 0x0

    .line 173
    .local v2, "tempPosX":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26d
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2b9

    .line 174
    if-nez v3, :cond_299

    .line 175
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosX(I)V

    .line 176
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setWidthE(I)V

    .line 178
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2b6

    .line 181
    :cond_299
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosX(I)V

    .line 182
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setWidthE(I)V

    .line 184
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v4

    add-int/2addr v2, v4

    .line 173
    :goto_2b6
    add-int/lit8 v3, v3, 0x1

    goto :goto_26d

    .line 188
    .end local v3  # "i":I
    :cond_2b9
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosX(I)V

    .line 189
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setWidthE(I)V

    .line 192
    .end local v1  # "tempElementWidth":I
    .end local v2  # "tempPosX":I
    :cond_2da
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

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object v7, v11

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->updateLang()V

    .line 195
    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;

    .line 30
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->nSearch:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 6
    .param p1, "iID"  # I

    .line 217
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_64

    .line 230
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    if-eqz v1, :cond_3c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-nez v1, :cond_3c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 v3, p1, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-eq v1, v2, :cond_62

    goto :goto_3c

    .line 222
    :pswitch_24  #0x1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    if-nez v1, :cond_2c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 223
    :cond_2c
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    .line 224
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    .line 225
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_FORMABLE_CIVS_SELECT_CLAIMANT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 227
    :cond_37
    return-void

    .line 219
    :pswitch_38  #0x0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    .line 220
    return-void

    .line 231
    :cond_3c
    :goto_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 v3, p1, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    .line 232
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    .line 233
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_FORMABLE_CIVS_SELECT_CLAIMANT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 235
    :cond_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_24  #00000001
    .end packed-switch
.end method

.method public getImageHeight(I)I
    .registers 3
    .param p1, "image"  # I

    .line 210
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageHeight(I)I

    move-result v0

    return v0
.end method

.method public getImageWidth(I)I
    .registers 3
    .param p1, "image"  # I

    .line 206
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageWidth(I)I

    move-result v0

    return v0
.end method

.method public updateLang()V
    .registers 5

    .line 199
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 202
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/FormableCivsSelect/Clai/Menu_MapEditor_FormableCivs_SelectClaimant_Alphabet;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

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

    .line 203
    return-void
.end method
