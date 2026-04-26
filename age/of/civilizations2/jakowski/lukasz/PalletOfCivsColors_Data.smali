.class public Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;
.super Ljava/lang/Object;
.source "PalletOfCivsColors_Data.java"


# instance fields
.field private UPDATE_KEY:Ljava/lang/String;

.field private iDataSize:I

.field private lCivsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->iDataSize:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->UPDATE_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDataSize()I
    .registers 2

    .line 187
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->iDataSize:I

    return v0
.end method

.method public final getUPDATE_KEY()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->UPDATE_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public final readData(Z)V
    .registers 10
    .param p1, "isInternal"  # Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->iDataSize:I

    .line 52
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_12
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_109

    .line 53
    const/4 v2, 0x0

    .line 56
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-string v3, "/"

    const-string v4, "game/pallets_of_civs_colors/"

    if-eqz p1, :cond_4c

    .line 57
    :try_start_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3
    :try_end_4a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_21 .. :try_end_4a} :catch_79

    move-object v2, v3

    goto :goto_a7

    .line 60
    :cond_4c
    :try_start_4c
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_77} :catch_7c
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4c .. :try_end_77} :catch_79

    move-object v2, v3

    .line 63
    goto :goto_a7

    .line 78
    :catch_79
    move-exception v3

    goto/16 :goto_ff

    .line 61
    :catch_7c
    move-exception v5

    .line 62
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_7d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3
    :try_end_a6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7d .. :try_end_a6} :catch_79

    move-object v2, v3

    .line 66
    .end local v5  # "ex":Ljava/lang/Exception;
    :goto_a7
    :try_start_a7
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    .line 67
    .local v3, "nCivColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v5

    const/high16 v6, 0x437f0000  # 255.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 68
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v5

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 69
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v5

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_ef
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a7 .. :try_end_ef} :catch_f8
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ef} :catch_f1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a7 .. :try_end_ef} :catch_79

    .line 76
    .end local v3  # "nCivColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    nop

    .line 81
    goto :goto_105

    .line 73
    :catch_f1
    move-exception v3

    .line 74
    .local v3, "e":Ljava/io/IOException;
    :try_start_f2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V

    .line 75
    goto :goto_105

    .line 70
    .end local v3  # "e":Ljava/io/IOException;
    :catch_f8
    move-exception v3

    .line 71
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V
    :try_end_fe
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_f2 .. :try_end_fe} :catch_79

    .line 72
    goto :goto_105

    .line 79
    .local v3, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_ff
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V

    .line 80
    nop

    .line 52
    .end local v2  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_105
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    .line 83
    .end local v1  # "i":I
    :cond_109
    return-void
.end method

.method public final saveData()V
    .registers 17

    .line 86
    move-object/from16 v1, p0

    const-string v2, "game/civilizations/"

    const-string v3, "Age_of_Civilizations"

    const-string v4, "game/pallets_of_civs_colors/Age_of_Civilizations"

    const-string v5, "/"

    const-string v6, "game/pallets_of_civs_colors/"

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_d
    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->iDataSize:I

    const-string v9, ";"

    if-ge v7, v8, :cond_2eb

    .line 87
    const/4 v8, 0x0

    .line 91
    .local v8, "outputSteam":Ljava/io/OutputStream;
    const/4 v12, 0x1

    const/high16 v13, 0x437f0000  # 255.0f

    :try_start_17
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v15, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10
    :try_end_38
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_17 .. :try_end_38} :catch_ed
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_38} :catch_ea
    .catchall {:try_start_17 .. :try_end_38} :catchall_e6

    .line 94
    .local v10, "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_38
    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    .line 96
    .local v14, "temp":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v15

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v11

    mul-float v11, v11, v13

    float-to-int v11, v11

    if-ne v15, v11, :cond_8d

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v11

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v15

    mul-float v15, v15, v13

    float-to-int v15, v15

    if-ne v11, v15, :cond_8d

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v11

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v15

    mul-float v15, v15, v13

    float-to-int v15, v15

    if-eq v11, v15, :cond_cd

    :cond_8d
    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    .line 97
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v11

    mul-float v11, v11, v13

    float-to-int v11, v11

    if-nez v11, :cond_d7

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v11

    mul-float v11, v11, v13

    float-to-int v11, v11

    if-ne v11, v12, :cond_d7

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v11
    :try_end_c7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_38 .. :try_end_c7} :catch_da
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_38 .. :try_end_c7} :catch_ed
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_c7} :catch_ea
    .catchall {:try_start_38 .. :try_end_c7} :catchall_e6

    mul-float v11, v11, v13

    float-to-int v11, v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d7

    .line 154
    :cond_cd
    if-eqz v8, :cond_2e7

    .line 156
    :try_start_cf
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_d4

    .line 159
    goto/16 :goto_2e7

    .line 157
    :catch_d4
    move-exception v0

    .line 159
    goto/16 :goto_2e7

    .line 110
    .end local v14  # "temp":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :cond_d7
    nop

    .line 128
    .end local v10  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_1c5

    .line 104
    .restart local v10  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    :catch_da
    move-exception v0

    move-object v9, v0

    .line 154
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    if-eqz v8, :cond_2e7

    .line 156
    :try_start_de
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_e3

    .line 159
    goto/16 :goto_2e7

    .line 157
    :catch_e3
    move-exception v0

    .line 159
    goto/16 :goto_2e7

    .line 154
    .end local v9  # "e":Ljava/lang/ClassNotFoundException;
    .end local v10  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    :catchall_e6
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2d8

    .line 151
    :catch_ea
    move-exception v0

    goto/16 :goto_2e0

    .line 111
    :catch_ed
    move-exception v0

    move-object v10, v0

    .line 113
    .local v10, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_ef
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v15, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11
    :try_end_116
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_ef .. :try_end_116} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_116} :catch_ea
    .catchall {:try_start_ef .. :try_end_116} :catchall_e6

    .line 116
    .local v11, "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_116
    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    .line 118
    .local v12, "temp":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v14

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v15

    mul-float v15, v15, v13

    float-to-int v15, v15

    if-ne v14, v15, :cond_16b

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v14

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v15

    mul-float v15, v15, v13

    float-to-int v15, v15

    if-ne v14, v15, :cond_16b

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v14

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v15

    mul-float v15, v15, v13

    float-to-int v15, v15

    if-eq v14, v15, :cond_1ac

    :cond_16b
    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    .line 119
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v14

    mul-float v14, v14, v13

    float-to-int v14, v14

    if-nez v14, :cond_1b6

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v14

    mul-float v14, v14, v13

    float-to-int v14, v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1b6

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v14
    :try_end_1a6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_116 .. :try_end_1a6} :catch_1b8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_116 .. :try_end_1a6} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_1a6} :catch_ea
    .catchall {:try_start_116 .. :try_end_1a6} :catchall_e6

    mul-float v14, v14, v13

    float-to-int v13, v14

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1b6

    .line 154
    :cond_1ac
    if-eqz v8, :cond_2e7

    .line 156
    :try_start_1ae
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1b1} :catch_1b3

    .line 159
    goto/16 :goto_2e7

    .line 157
    :catch_1b3
    move-exception v0

    .line 159
    goto/16 :goto_2e7

    .line 124
    .end local v12  # "temp":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :cond_1b6
    nop

    .line 127
    .end local v11  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_1c5

    .line 122
    .restart local v11  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    :catch_1b8
    move-exception v0

    move-object v9, v0

    .line 154
    .restart local v9  # "e":Ljava/lang/ClassNotFoundException;
    if-eqz v8, :cond_2e7

    .line 156
    :try_start_1bc
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1bf} :catch_1c1

    .line 159
    goto/16 :goto_2e7

    .line 157
    :catch_1c1
    move-exception v0

    .line 159
    goto/16 :goto_2e7

    .line 125
    .end local v9  # "e":Ljava/lang/ClassNotFoundException;
    .end local v11  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    :catch_1c4
    move-exception v0

    .line 130
    .end local v10  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_1c5
    :try_start_1c5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    .line 131
    .local v10, "fileData":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_1fa
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1fa} :catch_ea
    .catchall {:try_start_1c5 .. :try_end_1fa} :catchall_e6

    .line 135
    :try_start_1fa
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v11

    if-eqz v11, :cond_222

    .line 136
    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    .local v11, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_241

    .line 138
    .end local v11  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_222
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    .line 141
    .restart local v11  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_241
    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v12

    .line 143
    .local v12, "tempTags":Ljava/lang/String;
    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_293

    .line 144
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    .line 145
    .local v13, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_293
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1fa .. :try_end_293} :catch_294
    .catch Ljava/io/IOException; {:try_start_1fa .. :try_end_293} :catch_ea
    .catchall {:try_start_1fa .. :try_end_293} :catchall_e6

    .line 150
    .end local v11  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12  # "tempTags":Ljava/lang/String;
    .end local v13  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :cond_293
    goto :goto_2d2

    .line 147
    :catch_294
    move-exception v0

    move-object v11, v0

    .line 148
    .local v11, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_296
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    .line 149
    .local v12, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_2d2
    .catch Ljava/io/IOException; {:try_start_296 .. :try_end_2d2} :catch_ea
    .catchall {:try_start_296 .. :try_end_2d2} :catchall_e6

    .line 154
    .end local v10  # "fileData":Lcom/badlogic/gdx/files/FileHandle;
    .end local v11  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v12  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :goto_2d2
    if-eqz v8, :cond_2e7

    .line 156
    :try_start_2d4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2d7
    .catch Ljava/lang/Exception; {:try_start_2d4 .. :try_end_2d7} :catch_2e6

    goto :goto_2e5

    .line 154
    :goto_2d8
    if-eqz v8, :cond_2df

    .line 156
    :try_start_2da
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2dd
    .catch Ljava/lang/Exception; {:try_start_2da .. :try_end_2dd} :catch_2de

    .line 159
    goto :goto_2df

    .line 157
    :catch_2de
    move-exception v0

    .line 161
    :cond_2df
    :goto_2df
    throw v2

    .line 154
    :goto_2e0
    if-eqz v8, :cond_2e7

    .line 156
    :try_start_2e2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_2e5} :catch_2e6

    .line 159
    :goto_2e5
    goto :goto_2e7

    .line 157
    :catch_2e6
    move-exception v0

    .line 86
    .end local v8  # "outputSteam":Ljava/io/OutputStream;
    :cond_2e7
    :goto_2e7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_d

    .line 166
    .end local v7  # "i":I
    :cond_2eb
    :try_start_2eb
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v2

    if-eqz v2, :cond_2f8

    .line 167
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_2fc

    .line 169
    .end local v2  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_2f8
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 172
    .restart local v2  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_2fc
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "tempTags":Ljava/lang/String;
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_327

    .line 175
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 176
    .local v5, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_327
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2eb .. :try_end_327} :catch_328

    .line 181
    .end local v2  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "tempTags":Ljava/lang/String;
    .end local v5  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :cond_327
    goto :goto_345

    .line 178
    :catch_328
    move-exception v0

    move-object v2, v0

    .line 179
    .local v2, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 180
    .local v3, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 182
    .end local v2  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v3  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :goto_345
    return-void
.end method

.method public final setCivColor(Ljava/lang/String;Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .registers 5
    .param p1, "nTag"  # Ljava/lang/String;
    .param p2, "nColor"  # Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->iDataSize:I

    if-ge v0, v1, :cond_22

    .line 34
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 35
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V

    .line 36
    return-void

    .line 33
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    .end local v0  # "i":I
    :cond_22
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-direct {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->iDataSize:I

    .line 43
    return-void
.end method

.method public final setUPDATE_KEY(Ljava/lang/String;)V
    .registers 2
    .param p1, "nUPDATE_KEY"  # Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->UPDATE_KEY:Ljava/lang/String;

    .line 196
    return-void
.end method
