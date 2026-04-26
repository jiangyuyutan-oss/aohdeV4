.class public Lcom/codedisaster/steamworks/SteamApps;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamApps.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codedisaster/steamworks/SteamInterface;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic dispose()V
    .registers 1

    .line 3
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getAppBuildId()I
    .registers 2

    .line 67
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->getAppBuildId()I

    move-result v0

    return v0
.end method

.method public getAppOwner()Lcom/codedisaster/steamworks/SteamID;
    .registers 4

    .line 63
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->getAppOwner()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getAvailableGameLanguages()Ljava/lang/String;
    .registers 2

    .line 31
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->getAvailableGameLanguages()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentGameLanguage()Ljava/lang/String;
    .registers 2

    .line 27
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->getCurrentGameLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDLCCount()I
    .registers 2

    .line 51
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->getDLCCount()I

    move-result v0

    return v0
.end method

.method public getEarliestPurchaseUnixTime(I)I
    .registers 3
    .param p1, "appID"  # I

    .line 43
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamAppsNative;->getEarliestPurchaseUnixTime(I)I

    move-result v0

    return v0
.end method

.method public installDLC(I)V
    .registers 2
    .param p1, "appID"  # I

    .line 55
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamAppsNative;->installDLC(I)V

    .line 56
    return-void
.end method

.method public isCybercafe()Z
    .registers 2

    .line 19
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->isCybercafe()Z

    move-result v0

    return v0
.end method

.method public isDlcInstalled(I)Z
    .registers 3
    .param p1, "appID"  # I

    .line 39
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamAppsNative;->isDlcInstalled(I)Z

    move-result v0

    return v0
.end method

.method public isLowViolence()Z
    .registers 2

    .line 15
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->isLowViolence()Z

    move-result v0

    return v0
.end method

.method public isSubscribed()Z
    .registers 2

    .line 11
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->isSubscribed()Z

    move-result v0

    return v0
.end method

.method public isSubscribedApp(I)Z
    .registers 3
    .param p1, "appID"  # I

    .line 35
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamAppsNative;->isSubscribedApp(I)Z

    move-result v0

    return v0
.end method

.method public isSubscribedFromFreeWeekend()Z
    .registers 2

    .line 47
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->isSubscribedFromFreeWeekend()Z

    move-result v0

    return v0
.end method

.method public isVACBanned()Z
    .registers 2

    .line 23
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->isVACBanned()Z

    move-result v0

    return v0
.end method

.method public uninstallDLC(I)V
    .registers 2
    .param p1, "appID"  # I

    .line 59
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamAppsNative;->uninstallDLC(I)V

    .line 60
    return-void
.end method
