.class public Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sSAM;
.super Ljava/lang/Object;
.source "sSAM.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unlockAchievement(Ljava/lang/String;)V
    .registers 2
    .param p0, "key"  # Ljava/lang/String;

    .line 10
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0, p0}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    .line 11
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 14
    goto :goto_c

    .line 12
    :catch_b
    move-exception v0

    .line 15
    :goto_c
    return-void
.end method
