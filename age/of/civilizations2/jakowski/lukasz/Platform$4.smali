.class Lage/of/civilizations2/jakowski/lukasz/Platform$4;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lcom/codedisaster/steamworks/SteamUserStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Platform;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalStatsReceived(JLcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "gameId"  # J
    .param p3, "result"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 265
    return-void
.end method

.method public onLeaderboardFindResult(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Z)V
    .registers 3
    .param p1, "leaderboard"  # Lcom/codedisaster/steamworks/SteamLeaderboardHandle;
    .param p2, "found"  # Z

    .line 245
    return-void
.end method

.method public onLeaderboardScoreUploaded(ZLcom/codedisaster/steamworks/SteamLeaderboardHandle;IZII)V
    .registers 7
    .param p1, "success"  # Z
    .param p2, "leaderboard"  # Lcom/codedisaster/steamworks/SteamLeaderboardHandle;
    .param p3, "score"  # I
    .param p4, "scoreChanged"  # Z
    .param p5, "globalRankNew"  # I
    .param p6, "globalRankPrevious"  # I

    .line 255
    return-void
.end method

.method public onLeaderboardScoresDownloaded(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;I)V
    .registers 4
    .param p1, "leaderboard"  # Lcom/codedisaster/steamworks/SteamLeaderboardHandle;
    .param p2, "entries"  # Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;
    .param p3, "numEntries"  # I

    .line 250
    return-void
.end method

.method public onNumberOfCurrentPlayersReceived(ZI)V
    .registers 3
    .param p1, "success"  # Z
    .param p2, "players"  # I

    .line 260
    return-void
.end method

.method public onUserAchievementStored(JZLjava/lang/String;II)V
    .registers 7
    .param p1, "gameId"  # J
    .param p3, "isGroupAchievement"  # Z
    .param p4, "achievementName"  # Ljava/lang/String;
    .param p5, "curProgress"  # I
    .param p6, "maxProgress"  # I

    .line 240
    return-void
.end method

.method public onUserStatsReceived(JLcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 5
    .param p1, "gameId"  # J
    .param p3, "steamIDUser"  # Lcom/codedisaster/steamworks/SteamID;
    .param p4, "result"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 225
    return-void
.end method

.method public onUserStatsStored(JLcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "gameId"  # J
    .param p3, "result"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 230
    return-void
.end method

.method public onUserStatsUnloaded(Lcom/codedisaster/steamworks/SteamID;)V
    .registers 2
    .param p1, "steamIDUser"  # Lcom/codedisaster/steamworks/SteamID;

    .line 235
    return-void
.end method
