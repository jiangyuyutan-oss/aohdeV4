.class public Lage/of/civilizations2/jakowski/lukasz/SteamGame;
.super Ljava/lang/Object;
.source "SteamGame.java"


# instance fields
.field public steamInit:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SteamGame;->steamInit:Z

    return-void
.end method


# virtual methods
.method public clearAchievement(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"  # Ljava/lang/String;

    .line 57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->getStatI(Ljava/lang/String;I)I

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public getAchievement(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "achieved"  # Z

    .line 51
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->getStatF(Ljava/lang/String;F)F

    .line 52
    const/4 p2, 0x0

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public getStatF(Ljava/lang/String;)F
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 24
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getStatI(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 19
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method requestCurrentStats()Z
    .registers 2

    .line 41
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public resetAllStats(Z)Z
    .registers 3
    .param p1, "achievementsToo"  # Z

    .line 67
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->requestCurrentStats()Z

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public setAchievement(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"  # Ljava/lang/String;

    .line 46
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->getStatI(Ljava/lang/String;I)I

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public setStatF(Ljava/lang/String;F)Z
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # F

    .line 62
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->getStatF(Ljava/lang/String;F)F

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public setStatI(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # I

    .line 29
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->getStatI(Ljava/lang/String;I)I

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public storeStats()V
    .registers 2

    .line 34
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    if-nez v0, :cond_5

    .line 35
    return-void

    .line 37
    :cond_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    .line 38
    return-void
.end method

.method public unlockAchSt(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"  # Ljava/lang/String;

    .line 11
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    .line 12
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 15
    goto :goto_c

    .line 13
    :catch_b
    move-exception v0

    .line 16
    :goto_c
    return-void
.end method
