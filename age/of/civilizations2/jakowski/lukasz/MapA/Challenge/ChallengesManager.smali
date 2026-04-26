.class public Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;
.super Ljava/lang/Object;
.source "ChallengesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;,
        Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;
    }
.end annotation


# static fields
.field public static STARTED_CHALLENGE_ID:I

.field public static START_CHALLENGE_ID:I

.field public static challengeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;",
            ">;"
        }
    .end annotation
.end field

.field public static challengesCompleted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    .line 19
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->STARTED_CHALLENGE_ID:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengesCompleted:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChallengeCompleted(Ljava/lang/String;)V
    .registers 11
    .param p0, "tag"  # Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, "added":Z
    const/4 v1, 0x0

    .line 264
    .local v1, "fileCC":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_a9

    const-string v3, "ChallengesCompleted.txt"

    const-string v4, "saves/games/"

    if-eqz v2, :cond_2f

    .line 265
    :try_start_c
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    move-object v1, v2

    goto :goto_4f

    .line 267
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    move-object v1, v2

    .line 270
    :goto_4f
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_53} :catch_a9

    const/4 v5, 0x1

    const-string v6, ";"

    if-eqz v2, :cond_70

    .line 271
    :try_start_58
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "tempT":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, "tagsSPLITED":[Ljava/lang/String;
    array-length v8, v7

    sub-int/2addr v8, v5

    .local v8, "i":I
    :goto_62
    if-ltz v8, :cond_70

    .line 275
    aget-object v9, v7, v8

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 276
    const/4 v0, 0x1

    .line 274
    :cond_6d
    add-int/lit8 v8, v8, -0x1

    goto :goto_62

    .line 281
    .end local v2  # "tempT":Ljava/lang/String;
    .end local v7  # "tagsSPLITED":[Ljava/lang/String;
    .end local v8  # "i":I
    :cond_70
    if-nez v0, :cond_a5

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 283
    .local v2, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 286
    .end local v2  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :cond_a5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->readChallengesCompleted()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_a8} :catch_a9

    .line 289
    .end local v0  # "added":Z
    .end local v1  # "fileCC":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_aa

    .line 287
    :catch_a9
    move-exception v0

    .line 290
    :goto_aa
    return-void
.end method

.method public static addCivilization()V
    .registers 14

    .line 344
    const-string v0, "rebuildRegionsCivs"

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    if-eqz v1, :cond_316

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    array-length v1, v1

    if-nez v1, :cond_21

    goto/16 :goto_316

    .line 349
    :cond_21
    :try_start_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v1, "rebuildRegionsCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PLAY_AS:Ljava/lang/String;

    .line 352
    .local v2, "civTag":Ljava/lang/String;
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    const/4 v9, 0x0

    aget v3, v3, v9

    move v10, v3

    .line 354
    .local v10, "provinceID":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    if-lez v3, :cond_5f

    .line 355
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_5f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, v2

    move v5, v10

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->createScenarioAddCivilization(Ljava/lang/String;IZZZ)Z

    move-result v3

    if-eqz v3, :cond_310

    .line 359
    const/4 v3, -0x1

    .line 361
    .local v3, "civID":I
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "a":I
    :goto_75
    if-ltz v4, :cond_8c

    .line 362
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 363
    move v3, v4

    .line 364
    goto :goto_8c

    .line 361
    :cond_89
    add-int/lit8 v4, v4, -0x1

    goto :goto_75

    .line 368
    .end local v4  # "a":I
    :cond_8c
    :goto_8c
    if-ltz v3, :cond_310

    .line 369
    const/4 v4, 0x0

    .line 370
    .local v4, "averageTech":F
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_90
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v6

    if-ge v5, v6, :cond_a6

    .line 371
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v6

    add-float/2addr v4, v6

    .line 370
    add-int/lit8 v5, v5, 0x1

    goto :goto_90

    .line 373
    .end local v5  # "i":I
    :cond_a6
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 374
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    const v6, 0x3dcccccd  # 0.1f

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechLevel(F)V

    .line 376
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingMoney()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 379
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeArmies()V

    .line 380
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNatsSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "a":I
    :goto_ed
    if-ltz v5, :cond_147

    .line 381
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 383
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v6

    if-eq v6, v3, :cond_144

    .line 384
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v7

    invoke-virtual {v6, v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_144} :catch_311

    .line 380
    :cond_144
    add-int/lit8 v5, v5, -0x1

    goto :goto_ed

    .line 389
    .end local v5  # "a":I
    :cond_147
    :try_start_147
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_156
    if-ltz v5, :cond_28b

    .line 390
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setTrueOwnerOfProv(I)V

    .line 391
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v3, v9, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId(IZZ)V

    .line 392
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    invoke-virtual {v6, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V

    .line 394
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeArmies()V

    .line 395
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNatsSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "a":I
    :goto_1d8
    if-ltz v6, :cond_287

    .line 396
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    aget v11, v11, v5

    invoke-virtual {v8, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v8

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    aget v12, v12, v5

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v11

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v11

    add-int/2addr v8, v11

    invoke-virtual {v7, v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 398
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v7

    if-eq v7, v3, :cond_283

    .line 399
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    aget v11, v11, v5

    invoke-virtual {v8, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v8

    invoke-virtual {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_283} :catch_28c

    .line 395
    :cond_283
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1d8

    .line 389
    .end local v6  # "a":I
    :cond_287
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_156

    .line 405
    .end local v5  # "i":I
    :cond_28b
    goto :goto_290

    .line 403
    :catch_28c
    move-exception v5

    .line 404
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_28d
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_290
    .catch Ljava/lang/Exception; {:try_start_28d .. :try_end_290} :catch_311

    .line 409
    .end local v5  # "ex":Ljava/lang/Exception;
    :goto_290
    :try_start_290
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$1;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V

    .line 416
    const/4 v5, 0x0

    .local v5, "a":I
    :goto_2aa
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2d6

    .line 417
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$2;-><init>(Ljava/lang/String;I)V

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V
    :try_end_2d3
    .catch Ljava/lang/Exception; {:try_start_290 .. :try_end_2d3} :catch_2d7

    .line 416
    add-int/lit8 v5, v5, 0x1

    goto :goto_2aa

    .line 426
    .end local v5  # "a":I
    :cond_2d6
    goto :goto_2d8

    .line 424
    :catch_2d7
    move-exception v0

    .line 428
    :goto_2d8
    :try_start_2d8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v7, "Added"

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V
    :try_end_310
    .catch Ljava/lang/Exception; {:try_start_2d8 .. :try_end_310} :catch_311

    .line 432
    .end local v3  # "civID":I
    .end local v4  # "averageTech":F
    :cond_310
    return-void

    .line 433
    .end local v1  # "rebuildRegionsCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2  # "civTag":Ljava/lang/String;
    .end local v10  # "provinceID":I
    :catch_311
    move-exception v0

    .line 434
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 436
    .end local v0  # "ex":Ljava/lang/Exception;
    return-void

    .line 345
    :cond_316
    :goto_316
    return-void
.end method

.method public static clearChallenges()V
    .registers 1

    .line 293
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 294
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengesCompleted:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 295
    return-void
.end method

.method public static getChallengeCivID()I
    .registers 5

    .line 318
    const/4 v0, 0x0

    .line 320
    .local v0, "challengeCivID":I
    const/4 v1, 0x1

    .local v1, "a":I
    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 321
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PLAY_AS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 322
    move v0, v1

    .line 323
    goto :goto_2b

    .line 320
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 327
    .end local v1  # "a":I
    :cond_2b
    :goto_2b
    if-nez v0, :cond_5d

    .line 328
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->START_CHALLENGE_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PLAY_AS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "tReal":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "a":I
    :goto_40
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 331
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 332
    move v0, v2

    .line 333
    goto :goto_5d

    .line 330
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 338
    .end local v1  # "tReal":Ljava/lang/String;
    .end local v2  # "a":I
    :cond_5d
    :goto_5d
    return v0
.end method

.method public static loadChallenges()V
    .registers 21

    .line 26
    const-string v1, "/"

    const-string v2, " ### NOT ADDED!"

    const-string v3, ", FORM_TAG: "

    const-string v4, ", PLAY_AS: "

    const-string v5, ": ID: "

    const-string v6, "Challenge"

    const-string v7, "Challenges.json"

    const-string v8, "map/"

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v9, "game/ChallengesD.txt"

    invoke-interface {v0, v9}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 27
    return-void

    .line 31
    :cond_1f
    :try_start_1f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->clearChallenges()V

    .line 33
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 34
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 36
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 37
    .local v9, "fileContent":Ljava/lang/String;
    new-instance v10, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 39
    .local v10, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    const-class v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;

    invoke-virtual {v10, v11, v6, v12}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 40
    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    invoke-direct {v11}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;-><init>()V

    .line 41
    .local v11, "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    const-class v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    invoke-virtual {v10, v12, v9}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    move-object v11, v12

    .line 43
    iget-object v12, v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;->Challenge:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_116

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 44
    .local v13, "e":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;

    .line 46
    .local v14, "tempData":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;
    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    invoke-direct {v15}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;-><init>()V

    .line 48
    .local v15, "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    move-object/from16 v16, v0

    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "file":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v0, v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->ID:Ljava/lang/String;

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ID:Ljava/lang/String;

    .line 49
    iget-object v0, v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->PLAY_AS:Ljava/lang/String;

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PLAY_AS:Ljava/lang/String;

    .line 50
    iget-object v0, v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->FORM_TAG:Ljava/lang/String;

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    .line 51
    iget-object v0, v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->DESC:Ljava/lang/String;

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->DESC:Ljava/lang/String;

    .line 52
    iget-object v0, v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->SCENARIO_TAG:Ljava/lang/String;

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->SCENARIO_TAG:Ljava/lang/String;

    .line 53
    iget v0, v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->PROVINCES:I

    iput v0, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PROVINCES:I

    .line 54
    iget v0, v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->PROVINCES_FORM:I

    iput v0, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PROVINCES_FORM:I

    .line 55
    iget-object v0, v14, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->ADD_CIV_PROVINCES:[I

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    .line 57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    move-object/from16 v17, v9

    .end local v9  # "fileContent":Ljava/lang/String;
    .local v17, "fileContent":Ljava/lang/String;
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->SCENARIO_TAG:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioIDbyTag(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d8

    .line 58
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_110

    .line 61
    :cond_d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v6}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ID:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PLAY_AS:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOG(Ljava/lang/String;)V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_110} :catch_11b

    .line 63
    .end local v13  # "e":Ljava/lang/Object;
    .end local v14  # "tempData":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;
    .end local v15  # "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    :goto_110
    move-object/from16 v0, v16

    move-object/from16 v9, v17

    goto/16 :goto_8e

    .line 43
    .end local v16  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "fileContent":Ljava/lang/String;
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v9  # "fileContent":Ljava/lang/String;
    :cond_116
    move-object/from16 v16, v0

    move-object/from16 v17, v9

    .line 67
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "fileContent":Ljava/lang/String;
    .end local v10  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v11  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    :cond_11a
    goto :goto_11f

    .line 65
    :catch_11b
    move-exception v0

    .line 66
    .local v0, "exr":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 73
    .end local v0  # "exr":Ljava/lang/Exception;
    :goto_11f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_120
    :try_start_120
    sget v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFS:I

    if-ge v0, v9, :cond_3d8

    .line 74
    sget-boolean v9, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-eqz v9, :cond_27f

    .line 75
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v9

    if-eqz v9, :cond_3d4

    .line 76
    const/4 v9, 0x0

    .line 77
    .local v9, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v10, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    move-object v9, v10

    .line 79
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, "fileContent":Ljava/lang/String;
    new-instance v11, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v11}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 82
    .local v11, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    const-class v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;

    invoke-virtual {v11, v12, v6, v13}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 83
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    invoke-direct {v12}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;-><init>()V

    .line 84
    .local v12, "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    const-class v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    invoke-virtual {v11, v13, v10}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    move-object v12, v13

    .line 86
    iget-object v13, v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;->Challenge:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1ae
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_275

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 87
    .local v14, "e":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;

    .line 89
    .local v15, "tempData":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;
    new-instance v16, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    invoke-direct/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;-><init>()V

    move-object/from16 v17, v16

    .line 91
    .local v17, "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    move-object/from16 v16, v9

    .end local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->ID:Ljava/lang/String;

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    .end local v17  # "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    .local v10, "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    .local v18, "fileContent":Ljava/lang/String;
    iput-object v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ID:Ljava/lang/String;

    .line 92
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->PLAY_AS:Ljava/lang/String;

    iput-object v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PLAY_AS:Ljava/lang/String;

    .line 93
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->FORM_TAG:Ljava/lang/String;

    iput-object v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    .line 94
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->DESC:Ljava/lang/String;

    iput-object v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->DESC:Ljava/lang/String;

    .line 95
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->SCENARIO_TAG:Ljava/lang/String;

    iput-object v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->SCENARIO_TAG:Ljava/lang/String;

    .line 96
    iget v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->PROVINCES:I

    iput v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PROVINCES:I

    .line 97
    iget v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->PROVINCES_FORM:I

    iput v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PROVINCES_FORM:I

    .line 98
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->ADD_CIV_PROVINCES:[I

    iput-object v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    .line 100
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v9

    move-object/from16 v17, v11

    .end local v11  # "json":Lcom/badlogic/gdx/utils/Json;
    .local v17, "json":Lcom/badlogic/gdx/utils/Json;
    iget-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->SCENARIO_TAG:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioIDbyTag(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_22d

    .line 101
    const/4 v9, 0x1

    .line 103
    .local v9, "addC":Z
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .local v11, "z":I
    :goto_201
    if-ltz v11, :cond_221

    .line 104
    move-object/from16 v19, v12

    .end local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .local v19, "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    move-object/from16 v20, v13

    iget-object v13, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21a

    .line 105
    const/4 v9, 0x0

    .line 103
    :cond_21a
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    goto :goto_201

    .end local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .restart local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    :cond_221
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    .line 109
    .end local v11  # "z":I
    .end local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .restart local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    if-eqz v9, :cond_22c

    .line 110
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v9  # "addC":Z
    :cond_22c
    goto :goto_269

    .line 114
    .end local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .restart local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    :cond_22d
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    .end local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .restart local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ID:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PLAY_AS:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOG(Ljava/lang/String;)V

    .line 116
    .end local v10  # "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    .end local v14  # "e":Ljava/lang/Object;
    .end local v15  # "tempData":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;
    :goto_269
    move-object/from16 v9, v16

    move-object/from16 v11, v17

    move-object/from16 v10, v18

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    goto/16 :goto_1ae

    .line 86
    .end local v16  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v18  # "fileContent":Ljava/lang/String;
    .end local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .local v9, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v10, "fileContent":Ljava/lang/String;
    .local v11, "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    :cond_275
    move-object/from16 v16, v9

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    .line 117
    .end local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10  # "fileContent":Ljava/lang/String;
    .end local v11  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    goto/16 :goto_3d4

    .line 120
    :cond_27f
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v9

    if-eqz v9, :cond_3d4

    .line 121
    const/4 v9, 0x0

    .line 122
    .restart local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v10, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    move-object v9, v10

    .line 124
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v10

    .line 125
    .restart local v10  # "fileContent":Ljava/lang/String;
    new-instance v11, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v11}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 127
    .restart local v11  # "json":Lcom/badlogic/gdx/utils/Json;
    const-class v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    const-class v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;

    invoke-virtual {v11, v12, v6, v13}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 128
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    invoke-direct {v12}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;-><init>()V

    .line 129
    .restart local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    const-class v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    invoke-virtual {v11, v13, v10}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    move-object v12, v13

    .line 131
    iget-object v13, v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;->Challenge:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_305
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3cc

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 132
    .restart local v14  # "e":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;

    .line 134
    .restart local v15  # "tempData":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;
    new-instance v16, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    invoke-direct/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;-><init>()V

    move-object/from16 v17, v16

    .line 136
    .local v17, "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    move-object/from16 v16, v9

    .end local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->ID:Ljava/lang/String;

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    .end local v17  # "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    .local v10, "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    .restart local v18  # "fileContent":Ljava/lang/String;
    iput-object v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ID:Ljava/lang/String;

    .line 137
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->PLAY_AS:Ljava/lang/String;

    iput-object v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PLAY_AS:Ljava/lang/String;

    .line 138
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->FORM_TAG:Ljava/lang/String;

    iput-object v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    .line 139
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->DESC:Ljava/lang/String;

    iput-object v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->DESC:Ljava/lang/String;

    .line 140
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->SCENARIO_TAG:Ljava/lang/String;

    iput-object v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->SCENARIO_TAG:Ljava/lang/String;

    .line 141
    iget v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->PROVINCES:I

    iput v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PROVINCES:I

    .line 142
    iget v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->PROVINCES_FORM:I

    iput v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PROVINCES_FORM:I

    .line 143
    iget-object v9, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->ADD_CIV_PROVINCES:[I

    iput-object v9, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    .line 145
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v9

    move-object/from16 v17, v11

    .end local v11  # "json":Lcom/badlogic/gdx/utils/Json;
    .local v17, "json":Lcom/badlogic/gdx/utils/Json;
    iget-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->SCENARIO_TAG:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioIDbyTag(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_384

    .line 146
    const/4 v9, 0x1

    .line 148
    .local v9, "addC":Z
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .local v11, "z":I
    :goto_358
    if-ltz v11, :cond_378

    .line 149
    move-object/from16 v19, v12

    .end local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .restart local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    move-object/from16 v20, v13

    iget-object v13, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_371

    .line 150
    const/4 v9, 0x0

    .line 148
    :cond_371
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    goto :goto_358

    .end local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .restart local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    :cond_378
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    .line 154
    .end local v11  # "z":I
    .end local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .restart local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    if-eqz v9, :cond_383

    .line 155
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v9  # "addC":Z
    :cond_383
    goto :goto_3c0

    .line 159
    .end local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .restart local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    :cond_384
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    .end local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .restart local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ID:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PLAY_AS:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOG(Ljava/lang/String;)V
    :try_end_3c0
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_3c0} :catch_3d9

    .line 161
    .end local v10  # "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    .end local v14  # "e":Ljava/lang/Object;
    .end local v15  # "tempData":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;
    :goto_3c0
    move-object/from16 v9, v16

    move-object/from16 v11, v17

    move-object/from16 v10, v18

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    goto/16 :goto_305

    .line 131
    .end local v16  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v18  # "fileContent":Ljava/lang/String;
    .end local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .local v9, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v10, "fileContent":Ljava/lang/String;
    .local v11, "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    :cond_3cc
    move-object/from16 v16, v9

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    .line 73
    .end local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10  # "fileContent":Ljava/lang/String;
    .end local v11  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    :cond_3d4
    :goto_3d4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_120

    .line 167
    .end local v0  # "i":I
    :cond_3d8
    goto :goto_3dd

    .line 165
    :catch_3d9
    move-exception v0

    .line 166
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3da
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3dd
    .catch Ljava/lang/Exception; {:try_start_3da .. :try_end_3dd} :catch_564

    .line 170
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_3dd
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3de
    :try_start_3de
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_55e

    .line 171
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v11}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v9

    if-eqz v9, :cond_54e

    .line 172
    const/4 v9, 0x0

    .line 173
    .restart local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v10, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v12}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    move-object v9, v10

    .line 175
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v10

    .line 176
    .restart local v10  # "fileContent":Ljava/lang/String;
    new-instance v11, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v11}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 178
    .restart local v11  # "json":Lcom/badlogic/gdx/utils/Json;
    const-class v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    const-class v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;

    invoke-virtual {v11, v12, v6, v13}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 179
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    invoke-direct {v12}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;-><init>()V

    .line 180
    .restart local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    const-class v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    invoke-virtual {v11, v13, v10}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;

    move-object v12, v13

    .line 182
    iget-object v13, v12, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;->Challenge:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_47c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_543

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 183
    .restart local v14  # "e":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;

    .line 185
    .restart local v15  # "tempData":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;
    new-instance v16, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    invoke-direct/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;-><init>()V

    move-object/from16 v17, v16

    .line 187
    .local v17, "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    move-object/from16 v16, v1

    iget-object v1, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->ID:Ljava/lang/String;

    move-object/from16 v18, v7

    move-object/from16 v7, v17

    .end local v17  # "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    .local v7, "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ID:Ljava/lang/String;

    .line 188
    iget-object v1, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->PLAY_AS:Ljava/lang/String;

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PLAY_AS:Ljava/lang/String;

    .line 189
    iget-object v1, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->FORM_TAG:Ljava/lang/String;

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    .line 190
    iget-object v1, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->DESC:Ljava/lang/String;

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->DESC:Ljava/lang/String;

    .line 191
    iget-object v1, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->SCENARIO_TAG:Ljava/lang/String;

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->SCENARIO_TAG:Ljava/lang/String;

    .line 192
    iget v1, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->PROVINCES:I

    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PROVINCES:I

    .line 193
    iget v1, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->PROVINCES_FORM:I

    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PROVINCES_FORM:I

    .line 194
    iget-object v1, v15, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;->ADD_CIV_PROVINCES:[I

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    .line 196
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v1

    move-object/from16 v17, v8

    iget-object v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->SCENARIO_TAG:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioIDbyTag(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4fb

    .line 197
    const/4 v1, 0x1

    .line 199
    .local v1, "addC":Z
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .local v8, "z":I
    :goto_4cf
    if-ltz v8, :cond_4ef

    .line 200
    move-object/from16 v19, v9

    .end local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v19, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    move-object/from16 v20, v10

    .end local v10  # "fileContent":Ljava/lang/String;
    .local v20, "fileContent":Ljava/lang/String;
    iget-object v10, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4e8

    .line 201
    const/4 v1, 0x0

    .line 199
    :cond_4e8
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto :goto_4cf

    .end local v19  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v20  # "fileContent":Ljava/lang/String;
    .restart local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v10  # "fileContent":Ljava/lang/String;
    :cond_4ef
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    .line 205
    .end local v8  # "z":I
    .end local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10  # "fileContent":Ljava/lang/String;
    .restart local v19  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v20  # "fileContent":Ljava/lang/String;
    if-eqz v1, :cond_4fa

    .line 206
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v1  # "addC":Z
    :cond_4fa
    goto :goto_537

    .line 210
    .end local v19  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v20  # "fileContent":Ljava/lang/String;
    .restart local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v10  # "fileContent":Ljava/lang/String;
    :cond_4fb
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    .end local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10  # "fileContent":Ljava/lang/String;
    .restart local v19  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v20  # "fileContent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ID:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PLAY_AS:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOG(Ljava/lang/String;)V
    :try_end_537
    .catch Ljava/lang/Exception; {:try_start_3de .. :try_end_537} :catch_55f

    .line 212
    .end local v7  # "nChallenge":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
    .end local v14  # "e":Ljava/lang/Object;
    .end local v15  # "tempData":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$Data_Challenges;
    :goto_537
    move-object/from16 v1, v16

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto/16 :goto_47c

    .line 182
    .end local v19  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v20  # "fileContent":Ljava/lang/String;
    .restart local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v10  # "fileContent":Ljava/lang/String;
    :cond_543
    move-object/from16 v16, v1

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    .end local v9  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10  # "fileContent":Ljava/lang/String;
    .restart local v19  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v20  # "fileContent":Ljava/lang/String;
    goto :goto_554

    .line 171
    .end local v11  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v12  # "data":Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager$ConfigChallengesData;
    .end local v19  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v20  # "fileContent":Ljava/lang/String;
    :cond_54e
    move-object/from16 v16, v1

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    .line 170
    :goto_554
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v16

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    goto/16 :goto_3de

    .line 217
    .end local v0  # "i":I
    :cond_55e
    goto :goto_563

    .line 215
    :catch_55f
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_560
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_563
    .catch Ljava/lang/Exception; {:try_start_560 .. :try_end_563} :catch_564

    .line 220
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_563
    goto :goto_565

    .line 218
    :catch_564
    move-exception v0

    .line 222
    :goto_565
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->readChallengesCompleted()V

    .line 223
    return-void
.end method

.method public static readChallengesCompleted()V
    .registers 8

    .line 227
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengesCompleted:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "fileCC":Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_ae

    const-string v2, "ChallengesCompleted.txt"

    const-string v3, "saves/games/"

    if-eqz v1, :cond_33

    .line 232
    :try_start_10
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    move-object v0, v1

    goto :goto_53

    .line 234
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    move-object v0, v1

    .line 237
    :goto_53
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 238
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "tempT":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "tagsSPLITED":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_66
    if-ltz v3, :cond_72

    .line 242
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengesCompleted:Ljava/util/List;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v3, v3, -0x1

    goto :goto_66

    .line 245
    .end local v3  # "i":I
    :cond_72
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengesCompleted:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .restart local v3  # "i":I
    :goto_79
    if-ltz v3, :cond_ad

    .line 246
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "j":I
    :goto_82
    if-ltz v5, :cond_aa

    .line 247
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengesCompleted:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 248
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iput-boolean v4, v6, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->COMPLETED:Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_a6} :catch_ae

    .line 249
    goto :goto_aa

    .line 246
    :cond_a7
    add-int/lit8 v5, v5, -0x1

    goto :goto_82

    .line 245
    .end local v5  # "j":I
    :cond_aa
    :goto_aa
    add-int/lit8 v3, v3, -0x1

    goto :goto_79

    .line 256
    .end local v0  # "fileCC":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "tempT":Ljava/lang/String;
    .end local v2  # "tagsSPLITED":[Ljava/lang/String;
    .end local v3  # "i":I
    :cond_ad
    goto :goto_af

    .line 254
    :catch_ae
    move-exception v0

    .line 257
    :goto_af
    return-void
.end method
