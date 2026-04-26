.class Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamUserStatsCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamUserStatsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamUserStatsCallback;)V
    .registers 2
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    .line 7
    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    .line 8
    return-void
.end method


# virtual methods
.method onGlobalStatsReceived(JI)V
    .registers 6
    .param p1, "gameId"  # J
    .param p3, "result"  # I

    .line 47
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onGlobalStatsReceived(JLcom/codedisaster/steamworks/SteamResult;)V

    .line 48
    return-void
.end method

.method onLeaderboardFindResult(JZ)V
    .registers 6
    .param p1, "handle"  # J
    .param p3, "found"  # Z

    .line 28
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;-><init>(J)V

    invoke-interface {v0, v1, p3}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onLeaderboardFindResult(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Z)V

    .line 29
    return-void
.end method

.method onLeaderboardScoreUploaded(ZJIZII)V
    .registers 16
    .param p1, "success"  # Z
    .param p2, "handle"  # J
    .param p4, "score"  # I
    .param p5, "changed"  # Z
    .param p6, "globalRankNew"  # I
    .param p7, "globalRankPrevious"  # I

    .line 38
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    new-instance v3, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    invoke-direct {v3, p2, p3}, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;-><init>(J)V

    move v2, p1

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onLeaderboardScoreUploaded(ZLcom/codedisaster/steamworks/SteamLeaderboardHandle;IZII)V

    .line 40
    return-void
.end method

.method onLeaderboardScoresDownloaded(JJI)V
    .registers 9
    .param p1, "handle"  # J
    .param p3, "entries"  # J
    .param p5, "numEntries"  # I

    .line 32
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;-><init>(J)V

    new-instance v2, Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;

    invoke-direct {v2, p3, p4}, Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;-><init>(J)V

    invoke-interface {v0, v1, v2, p5}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onLeaderboardScoresDownloaded(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;I)V

    .line 34
    return-void
.end method

.method onNumberOfCurrentPlayersReceived(ZI)V
    .registers 4
    .param p1, "success"  # Z
    .param p2, "players"  # I

    .line 43
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    invoke-interface {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onNumberOfCurrentPlayersReceived(ZI)V

    .line 44
    return-void
.end method

.method onUserAchievementStored(JZLjava/lang/String;II)V
    .registers 15
    .param p1, "gameId"  # J
    .param p3, "isGroupAchievement"  # Z
    .param p4, "achievementName"  # Ljava/lang/String;
    .param p5, "curProgress"  # I
    .param p6, "maxProgress"  # I

    .line 24
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onUserAchievementStored(JZLjava/lang/String;II)V

    .line 25
    return-void
.end method

.method onUserStatsReceived(JJI)V
    .registers 9
    .param p1, "gameId"  # J
    .param p3, "steamIDUser"  # J
    .param p5, "result"  # I

    .line 11
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-static {p5}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onUserStatsReceived(JLcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamResult;)V

    .line 12
    return-void
.end method

.method onUserStatsStored(JI)V
    .registers 6
    .param p1, "gameId"  # J
    .param p3, "result"  # I

    .line 15
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onUserStatsStored(JLcom/codedisaster/steamworks/SteamResult;)V

    .line 16
    return-void
.end method

.method onUserStatsUnloaded(J)V
    .registers 5
    .param p1, "steamIDUser"  # J

    .line 19
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onUserStatsUnloaded(Lcom/codedisaster/steamworks/SteamID;)V

    .line 20
    return-void
.end method
