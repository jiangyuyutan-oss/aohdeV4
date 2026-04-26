.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_CreateScenario_Leaders_Options.java"


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
    .registers 25

    .line 35
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lTags:Ljava/util/List;

    .line 30
    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lCivsTags:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lFlags:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lCivsTags:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lTags:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 41
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "tagsSPLITED":[Ljava/lang/String;
    :try_start_40
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v1
    :try_end_44
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_40 .. :try_end_44} :catch_455

    const-string v2, "game/leaders/"

    if-eqz v1, :cond_83

    .line 47
    :try_start_48
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFileNames_O(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, "tempFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "iSize":I
    :goto_51
    if-ge v3, v4, :cond_68

    .line 50
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "Age_of_Civilizations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 51
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 52
    goto :goto_68

    .line 49
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 56
    .end local v3  # "i":I
    .end local v4  # "iSize":I
    :cond_68
    :goto_68
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    .line 58
    const/4 v3, 0x0

    .restart local v3  # "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4  # "iSize":I
    :goto_74
    if-ge v3, v4, :cond_81

    .line 59
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v3

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 61
    .end local v1  # "tempFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3  # "i":I
    .end local v4  # "iSize":I
    :cond_81
    move-object v1, v0

    goto :goto_95

    .line 63
    :cond_83
    const-string v1, "game/leaders/Age_of_Civilizations"

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 64
    .local v1, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "tempT":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object v1, v0

    .line 68
    .end local v0  # "tagsSPLITED":[Ljava/lang/String;
    .end local v3  # "tempT":Ljava/lang/String;
    .local v1, "tagsSPLITED":[Ljava/lang/String;
    :goto_95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 69
    .local v3, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 70
    .local v4, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 72
    .local v5, "lTempCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    const/high16 v6, 0x42480000  # 50.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_1f2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f2

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v10, v1
    :try_end_b8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_48 .. :try_end_b8} :catch_455

    move v11, v0

    .end local v0  # "i":I
    .local v10, "iSize":I
    .local v11, "i":I
    :goto_b9
    if-ge v11, v10, :cond_145

    .line 78
    :try_start_bb
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v1, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 79
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_e0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_bb .. :try_end_e0} :catch_e5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_bb .. :try_end_e0} :catch_e3
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_e0} :catch_e1

    .line 83
    goto :goto_10a

    .line 86
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_e1
    move-exception v0

    goto :goto_10c

    .line 84
    :catch_e3
    move-exception v0

    goto :goto_10b

    .line 80
    :catch_e5
    move-exception v0

    .line 81
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_e6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v1, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    .line 82
    .local v12, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v13

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_109
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e6 .. :try_end_109} :catch_e3
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_109} :catch_e1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_e6 .. :try_end_109} :catch_455

    move-object v0, v12

    .line 88
    .end local v12  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_10a
    goto :goto_10c

    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_10b
    nop

    .line 90
    :goto_10c
    :try_start_10c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_141

    .line 91
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    aget-object v0, v1, v11

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getCiv(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_141
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b9

    .line 97
    .end local v10  # "iSize":I
    .end local v11  # "i":I
    :cond_145
    const/4 v0, 0x0

    .line 99
    .local v0, "nPosY":I
    :goto_146
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1f0

    .line 100
    const/4 v2, 0x0

    .line 102
    .local v2, "toAddID":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_14e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_16a

    .line 103
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_167

    .line 104
    move v2, v7

    .line 102
    :cond_167
    add-int/lit8 v7, v7, 0x1

    goto :goto_14e

    .line 108
    .end local v7  # "i":I
    :cond_16a
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v10, v10, v6

    float-to-int v12, v10

    const/4 v13, 0x0

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v14, v0, 0x1

    mul-int v10, v10, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v15, v0, 0x2

    mul-int v14, v14, v15

    add-int/2addr v14, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    sub-int v15, v10, v15

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v17, 0x1

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_Wiki;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    sub-int v19, v10, v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v11, v0, 0x1

    mul-int v10, v10, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v12, v0, 0x2

    mul-int v11, v11, v12

    add-int v20, v10, v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v11, v11, 0x2

    add-int v21, v10, v11

    sget v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v23, 0x1

    move-object/from16 v18, v7

    invoke-direct/range {v18 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v7, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lCivsTags:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v7, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lTags:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 115
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 116
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 118
    nop

    .end local v2  # "toAddID":I
    add-int/lit8 v0, v0, 0x1

    .line 119
    goto/16 :goto_146

    .line 120
    .end local v0  # "nPosY":I
    :cond_1f0
    goto/16 :goto_454

    .line 121
    :cond_1f2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    if-nez v0, :cond_31e

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v10, v1
    :try_end_1f8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_10c .. :try_end_1f8} :catch_455

    move v11, v0

    .end local v0  # "i":I
    .restart local v10  # "iSize":I
    .restart local v11  # "i":I
    :goto_1f9
    if-ge v11, v10, :cond_271

    .line 127
    :try_start_1fb
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v1, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 128
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_220
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1fb .. :try_end_220} :catch_225
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1fb .. :try_end_220} :catch_223
    .catch Ljava/io/IOException; {:try_start_1fb .. :try_end_220} :catch_221

    .line 132
    goto :goto_24a

    .line 135
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_221
    move-exception v0

    goto :goto_24b

    .line 133
    :catch_223
    move-exception v0

    goto :goto_24f

    .line 129
    :catch_225
    move-exception v0

    .line 130
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_226
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v1, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    .line 131
    .restart local v12  # "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v13

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_249
    .catch Ljava/lang/ClassNotFoundException; {:try_start_226 .. :try_end_249} :catch_223
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_249} :catch_221
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_226 .. :try_end_249} :catch_455

    move-object v0, v12

    .line 137
    .end local v12  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_24a
    goto :goto_253

    .line 136
    .local v0, "e":Ljava/io/IOException;
    :goto_24b
    :try_start_24b
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_253

    .line 134
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_24f
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 137
    .end local v0  # "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 139
    :goto_253
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    aget-object v0, v1, v11

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getCiv(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f9

    .line 144
    .end local v10  # "iSize":I
    .end local v11  # "i":I
    :cond_271
    const/4 v0, 0x0

    .line 146
    .local v0, "nPosY":I
    :goto_272
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_31c

    .line 147
    const/4 v2, 0x0

    .line 149
    .restart local v2  # "toAddID":I
    const/4 v7, 0x1

    .restart local v7  # "i":I
    :goto_27a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_296

    .line 150
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_293

    .line 151
    move v2, v7

    .line 149
    :cond_293
    add-int/lit8 v7, v7, 0x1

    goto :goto_27a

    .line 155
    .end local v7  # "i":I
    :cond_296
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v10, v10, v6

    float-to-int v12, v10

    const/4 v13, 0x0

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v14, v0, 0x1

    mul-int v10, v10, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v15, v0, 0x2

    mul-int v14, v14, v15

    add-int/2addr v14, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    sub-int v15, v10, v15

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v17, 0x1

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_Wiki;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    sub-int v19, v10, v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v11, v0, 0x1

    mul-int v10, v10, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v12, v0, 0x2

    mul-int v11, v11, v12

    add-int v20, v10, v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v11, v11, 0x2

    add-int v21, v10, v11

    sget v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v23, 0x1

    move-object/from16 v18, v7

    invoke-direct/range {v18 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v7, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lCivsTags:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v7, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lTags:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 162
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    nop

    .end local v2  # "toAddID":I
    add-int/lit8 v0, v0, 0x1

    .line 166
    goto/16 :goto_272

    .line 167
    .end local v0  # "nPosY":I
    :cond_31c
    goto/16 :goto_454

    .line 169
    :cond_31e
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v10, v1
    :try_end_320
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_24b .. :try_end_320} :catch_455

    move v11, v0

    .end local v0  # "i":I
    .restart local v10  # "iSize":I
    .restart local v11  # "i":I
    :goto_321
    if-ge v11, v10, :cond_3a9

    .line 174
    :try_start_323
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v1, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 175
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_348
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_323 .. :try_end_348} :catch_34d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_323 .. :try_end_348} :catch_34b
    .catch Ljava/io/IOException; {:try_start_323 .. :try_end_348} :catch_349

    .line 179
    goto :goto_372

    .line 182
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_349
    move-exception v0

    goto :goto_374

    .line 180
    :catch_34b
    move-exception v0

    goto :goto_373

    .line 176
    :catch_34d
    move-exception v0

    .line 177
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_34e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v1, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    .line 178
    .restart local v12  # "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v13

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_371
    .catch Ljava/lang/ClassNotFoundException; {:try_start_34e .. :try_end_371} :catch_34b
    .catch Ljava/io/IOException; {:try_start_34e .. :try_end_371} :catch_349
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_34e .. :try_end_371} :catch_455

    move-object v0, v12

    .line 184
    .end local v12  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_372
    goto :goto_374

    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_373
    nop

    .line 186
    :goto_374
    :try_start_374
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenAlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v0, v12, :cond_3a5

    .line 187
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    aget-object v0, v1, v11

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getCiv(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_3a5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_321

    .line 193
    .end local v10  # "iSize":I
    .end local v11  # "i":I
    :cond_3a9
    const/4 v0, 0x0

    .line 195
    .local v0, "nPosY":I
    :goto_3aa
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_454

    .line 196
    const/4 v2, 0x0

    .line 198
    .restart local v2  # "toAddID":I
    const/4 v7, 0x1

    .restart local v7  # "i":I
    :goto_3b2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_3ce

    .line 199
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3cb

    .line 200
    move v2, v7

    .line 198
    :cond_3cb
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b2

    .line 204
    .end local v7  # "i":I
    :cond_3ce
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v10, v10, v6

    float-to-int v12, v10

    const/4 v13, 0x0

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v14, v0, 0x1

    mul-int v10, v10, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v15, v0, 0x2

    mul-int v14, v14, v15

    add-int/2addr v14, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    sub-int v15, v10, v15

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v17, 0x1

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_Wiki;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    sub-int v19, v10, v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v11, v0, 0x1

    mul-int v10, v10, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v12, v0, 0x2

    mul-int v11, v11, v12

    add-int v20, v10, v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v11, v11, 0x2

    add-int v21, v10, v11

    sget v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v23, 0x1

    move-object/from16 v18, v7

    invoke-direct/range {v18 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v7, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lCivsTags:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v7, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lTags:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 211
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 212
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_44f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_374 .. :try_end_44f} :catch_455

    .line 214
    nop

    .end local v2  # "toAddID":I
    add-int/lit8 v0, v0, 0x1

    .line 215
    goto/16 :goto_3aa

    .line 219
    .end local v0  # "nPosY":I
    .end local v1  # "tagsSPLITED":[Ljava/lang/String;
    .end local v3  # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4  # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5  # "lTempCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_454
    :goto_454
    goto :goto_456

    .line 217
    :catch_455
    move-exception v0

    .line 221
    :goto_456
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

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v6

    sub-int v6, v0, v1

    move-object/from16 v1, p0

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->updateLang()V

    .line 223
    return-void
.end method

.method private final getFlagID(I)I
    .registers 4
    .param p1, "nCivTagID"  # I

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 269
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 270
    return v0

    .line 268
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    .end local v0  # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private final getIsLoaded(Ljava/lang/String;)I
    .registers 5
    .param p1, "nCivTag"  # Ljava/lang/String;

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 259
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

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

    .line 260
    return v0

    .line 258
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    .end local v0  # "i":I
    :cond_27
    const/4 v0, -0x1

    return v0
.end method

.method private final loadFlag(I)V
    .registers 10
    .param p1, "nCivTagID"  # I

    .line 280
    const-string v0, ".png"

    const-string v1, "game/flags/"

    :try_start_4
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lFlags:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lCivsTags:Ljava/util/List;

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
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_36} :catch_37

    .line 283
    goto :goto_70

    .line 281
    :catch_37
    move-exception v2

    .line 282
    .local v2, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_38
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lFlags:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lCivsTags:Ljava/util/List;

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
    :try_end_70
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_38 .. :try_end_70} :catch_71

    .line 286
    .end local v2  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_70
    goto :goto_89

    .line 284
    :catch_71
    move-exception v0

    .line 285
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lFlags:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    const-string v4, "game/flagsXH/ran.png"

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v0  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_89
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 7
    .param p1, "iID"  # I

    .line 319
    packed-switch p1, :pswitch_data_124

    .line 326
    rem-int/lit8 v0, p1, 0x2

    const-string v1, "game/leaders/"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7a

    .line 327
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders;->backTo:Lage/of/civilizations2/jakowski/lukasz/View;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_LEADER:Lage/of/civilizations2/jakowski/lukasz/View;

    if-ne v0, v2, :cond_35

    .line 328
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->createScenarioEvents:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->createEvent_EditTriggerID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->createEvent_EditConditionID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->setText(Ljava/lang/String;)V

    goto :goto_71

    .line 322
    :pswitch_34  #0x0
    return-void

    .line 331
    :cond_35
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->createScenarioEvents:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->createEvent_EditTriggerID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->createEvent_EditConditionID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lTags:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setText(Ljava/lang/String;)V

    .line 334
    :goto_71
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders;->backTo:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    goto/16 :goto_123

    .line 341
    :cond_7a
    :try_start_7a
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lTags:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    div-int/lit8 v4, v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 342
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_a9
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7a .. :try_end_a9} :catch_ae
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7a .. :try_end_a9} :catch_ac
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_a9} :catch_aa

    .line 346
    goto :goto_dd

    .line 349
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_aa
    move-exception v0

    goto :goto_df

    .line 347
    :catch_ac
    move-exception v0

    goto :goto_de

    .line 343
    :catch_ae
    move-exception v0

    .line 344
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_af
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lTags:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 345
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_dc
    .catch Ljava/lang/ClassNotFoundException; {:try_start_af .. :try_end_dc} :catch_ac
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_dc} :catch_aa

    move-object v0, v1

    .line 351
    .end local v1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_dd
    goto :goto_df

    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_de
    nop

    .line 353
    :goto_df
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getWiki()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_114

    .line 355
    :try_start_ef
    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://en.wikipedia.org/wiki/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->leaderGameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getWiki()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z
    :try_end_111
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_ef .. :try_end_111} :catch_112

    goto :goto_113

    .line 356
    :catch_112
    move-exception v0

    .line 358
    :goto_113
    goto :goto_123

    .line 361
    :cond_114
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Error"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 364
    :goto_123
    return-void

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_34  #00000000
    .end packed-switch
.end method

.method public disposeData()V
    .registers 3

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 392
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 396
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 397
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 398
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 294
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->beginClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawMenuM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 297
    const/4 v0, 0x1

    .line 300
    .local v0, "tempRandomButton":I
    move v1, v0

    .local v1, "i":I
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElemsSize()I

    move-result v2

    if-ge v1, v2, :cond_c3

    .line 301
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getIsInView()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 302
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lFlags:Ljava/util/List;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getFlagID(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextPosElem()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v5, v2, p2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuPosY()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lFlags:Ljava/util/List;

    sub-int v6, v1, v0

    div-int/lit8 v6, v6, 0x2

    invoke-direct {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getFlagID(I)I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v6, v2, p3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 303
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getTextPosElem()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuPosY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

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

    .line 300
    :cond_bf
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_8

    .end local v1  # "i":I
    :cond_c3
    goto :goto_c7

    .line 308
    :catch_c4
    move-exception v1

    goto :goto_c8

    .line 306
    :catch_c6
    move-exception v1

    .line 310
    :goto_c7
    nop

    .line 312
    :goto_c8
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 313
    return-void
.end method

.method public getImageHeight(I)I
    .registers 3
    .param p1, "image"  # I

    .line 371
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageHeight(I)I

    move-result v0

    return v0
.end method

.method public getImageWidth(I)I
    .registers 3
    .param p1, "image"  # I

    .line 367
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageWidth(I)I

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .registers 3

    .line 376
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 378
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->disposeData()V

    .line 379
    return-void
.end method

.method public setVisibleM(Z)V
    .registers 2
    .param p1, "visible"  # Z

    .line 383
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    .line 385
    if-nez p1, :cond_8

    .line 386
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->disposeData()V

    .line 388
    :cond_8
    return-void
.end method

.method public updateLang()V
    .registers 4

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Leaders"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .registers 5

    .line 234
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->updateMenuElements_IsInView()V

    .line 238
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElemsSize()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 239
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lCivsTags:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getIsLoaded(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "tempTagID":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getIsInView()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 242
    if-gez v1, :cond_4f

    .line 243
    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->loadFlag(I)V

    goto :goto_4f

    .line 247
    :cond_2e
    if-ltz v1, :cond_4f

    .line 248
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lFlags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 249
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lFlags:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lFlags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 251
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Leaders/Menu_CreateScenario_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 238
    :cond_4f
    :goto_4f
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 255
    .end local v0  # "i":I
    .end local v1  # "tempTagID":I
    :cond_52
    return-void
.end method
