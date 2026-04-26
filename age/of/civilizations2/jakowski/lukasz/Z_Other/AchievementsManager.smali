.class public Lage/of/civilizations2/jakowski/lukasz/Z_Other/AchievementsManager;
.super Ljava/lang/Object;
.source "AchievementsManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unlockAchievement(Ljava/lang/String;)V
    .registers 2
    .param p0, "key"  # Ljava/lang/String;

    .line 18
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0, p0}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    .line 19
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 22
    goto :goto_c

    .line 20
    :catch_b
    move-exception v0

    .line 23
    :goto_c
    return-void
.end method

.method public static unlockFormable(Ljava/lang/String;)V
    .registers 8
    .param p0, "tag"  # Ljava/lang/String;

    .line 27
    const-string v0, "ChallengeCompleted"

    :try_start_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "tagReal":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAchievements:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Achievements;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Achievements;->FROM_ACHIEVEMENT_TAG:[Ljava/lang/String;

    array-length v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAchievements:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Achievements;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Achievements;->FROM_CIV_TAG:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "len":I
    :goto_17
    if-ge v2, v3, :cond_3d

    .line 34
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAchievements:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Achievements;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Achievements;->FROM_CIV_TAG:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAchievements:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Achievements;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Achievements;->FROM_CIV_TAG:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 36
    :cond_31
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAchievements:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Achievements;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Achievements;->FROM_ACHIEVEMENT_TAG:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/AchievementsManager;->unlockAchievement(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3e

    .line 33
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 41
    .end local v1  # "tagReal":Ljava/lang/String;
    .end local v2  # "i":I
    .end local v3  # "len":I
    :cond_3d
    goto :goto_3f

    .line 39
    :catch_3e
    move-exception v1

    .line 44
    :goto_3f
    :try_start_3f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->playerGD:Lage/of/civilizations2/jakowski/lukasz/PlayerGD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->challengeID:I

    if-ltz v1, :cond_c1

    .line 45
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Player;->playerGD:Lage/of/civilizations2/jakowski/lukasz/PlayerGD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->challengeID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 46
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->addChallengeCompleted(Ljava/lang/String;)V

    .line 48
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/ChallengesManager;->challengeList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Player;->playerGD:Lage/of/civilizations2/jakowski/lukasz/PlayerGD;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->challengeID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 50
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/AchievementsManager$1;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/AchievementsManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V

    .line 57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Player;->playerGD:Lage/of/civilizations2/jakowski/lukasz/PlayerGD;

    const/4 v1, -0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->challengeID:I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_c1} :catch_c2

    .line 64
    :cond_c1
    goto :goto_c3

    .line 62
    :catch_c2
    move-exception v0

    .line 65
    :goto_c3
    return-void
.end method
