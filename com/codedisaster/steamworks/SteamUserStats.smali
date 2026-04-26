.class public Lcom/codedisaster/steamworks/SteamUserStats;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamUserStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;,
        Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;,
        Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;,
        Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamUserStatsCallback;)V
    .registers 4
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    .line 33
    new-instance v0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamUserStatsCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->createCallback(Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 34
    return-void
.end method


# virtual methods
.method public clearAchievement(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->clearAchievement(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispose()V
    .registers 1

    .line 3
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public downloadLeaderboardEntries(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;II)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 13
    .param p1, "leaderboard"  # Lcom/codedisaster/steamworks/SteamLeaderboardHandle;
    .param p2, "leaderboardDataRequest"  # Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;
    .param p3, "rangeStart"  # I
    .param p4, "rangeEnd"  # I

    .line 133
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    .line 134
    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->ordinal()I

    move-result v5

    .line 133
    move v6, p3

    move v7, p4

    invoke-static/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->downloadLeaderboardEntries(JJIII)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public downloadLeaderboardEntriesForUsers(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;[Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 12
    .param p1, "leaderboard"  # Lcom/codedisaster/steamworks/SteamLeaderboardHandle;
    .param p2, "users"  # [Lcom/codedisaster/steamworks/SteamID;

    .line 140
    array-length v6, p2

    .line 141
    .local v6, "count":I
    new-array v7, v6, [J

    .line 143
    .local v7, "handles":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v6, :cond_f

    .line 144
    aget-object v1, p2, v0

    iget-wide v1, v1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    aput-wide v1, v7, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 147
    .end local v0  # "i":I
    :cond_f
    new-instance v8, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    move-object v4, v7

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->downloadLeaderboardEntriesForUsers(JJ[JI)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v8
.end method

.method public findLeaderboard(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 5
    .param p1, "leaderboardName"  # Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    invoke-static {v1, v2, p1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->findLeaderboard(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public findOrCreateLeaderboard(Ljava/lang/String;Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 9
    .param p1, "leaderboardName"  # Ljava/lang/String;
    .param p2, "leaderboardSortMethod"  # Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;
    .param p3, "leaderboardDisplayType"  # Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    .line 104
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    .line 105
    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;->ordinal()I

    move-result v3

    invoke-virtual {p3}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;->ordinal()I

    move-result v4

    .line 104
    invoke-static {v1, v2, p1, v3, v4}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->findOrCreateLeaderboard(JLjava/lang/String;II)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public getAchievementName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"  # I

    .line 93
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getAchievementName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedLeaderboardEntry(Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;ILcom/codedisaster/steamworks/SteamLeaderboardEntry;[I)Z
    .registers 12
    .param p1, "leaderboardEntries"  # Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;
    .param p2, "index"  # I
    .param p3, "entry"  # Lcom/codedisaster/steamworks/SteamLeaderboardEntry;
    .param p4, "details"  # [I

    .line 158
    if-nez p4, :cond_9

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;->handle:J

    .line 159
    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getDownloadedLeaderboardEntry(JILcom/codedisaster/steamworks/SteamLeaderboardEntry;)Z

    move-result v0

    goto :goto_13

    :cond_9
    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;->handle:J

    array-length v6, p4

    .line 160
    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getDownloadedLeaderboardEntry(JILcom/codedisaster/steamworks/SteamLeaderboardEntry;[II)Z

    move-result v0

    .line 158
    :goto_13
    return v0
.end method

.method public getGlobalStat(Ljava/lang/String;D)D
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # D

    .line 192
    const/4 v0, 0x1

    new-array v0, v0, [D

    .line 193
    .local v0, "values":[D
    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getGlobalStat(Ljava/lang/String;[D)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 194
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1

    .line 196
    :cond_d
    return-wide p2
.end method

.method public getGlobalStat(Ljava/lang/String;J)J
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # J

    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 185
    .local v0, "values":[J
    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getGlobalStat(Ljava/lang/String;[J)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 186
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1

    .line 188
    :cond_d
    return-wide p2
.end method

.method public getGlobalStatHistory(Ljava/lang/String;[D)I
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "data"  # [D

    .line 204
    array-length v0, p2

    invoke-static {p1, p2, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getGlobalStatHistory(Ljava/lang/String;[DI)I

    move-result v0

    return v0
.end method

.method public getGlobalStatHistory(Ljava/lang/String;[J)I
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "data"  # [J

    .line 200
    array-length v0, p2

    invoke-static {p1, p2, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getGlobalStatHistory(Ljava/lang/String;[JI)I

    move-result v0

    return v0
.end method

.method public getLeaderboardDisplayType(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;)Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;
    .registers 5
    .param p1, "leaderboard"  # Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    .line 125
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;->values()[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    move-result-object v0

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getLeaderboardDisplayType(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLeaderboardEntryCount(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;)I
    .registers 4
    .param p1, "leaderboard"  # Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    .line 117
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getLeaderboardEntryCount(J)I

    move-result v0

    return v0
.end method

.method public getLeaderboardName(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;)Ljava/lang/String;
    .registers 4
    .param p1, "leaderboard"  # Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    .line 113
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getLeaderboardName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeaderboardSortMethod(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;)Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;
    .registers 5
    .param p1, "leaderboard"  # Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    .line 121
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;->values()[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    move-result-object v0

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getLeaderboardSortMethod(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNumAchievements()I
    .registers 2

    .line 89
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getNumAchievements()I

    move-result v0

    return v0
.end method

.method public getNumberOfCurrentPlayers()Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 4

    .line 176
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getNumberOfCurrentPlayers(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public getStatF(Ljava/lang/String;F)F
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # F

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 54
    .local v0, "values":[F
    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getStat(Ljava/lang/String;[F)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 55
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 57
    :cond_d
    return p2
.end method

.method public getStatI(Ljava/lang/String;I)I
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # I

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 42
    .local v0, "values":[I
    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getStat(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 43
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 45
    :cond_d
    return p2
.end method

.method public indicateAchievementProgress(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "curProgress"  # I
    .param p3, "maxProgress"  # I

    .line 85
    invoke-static {p1, p2, p3}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->indicateAchievementProgress(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public isAchieved(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # Z

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 66
    .local v0, "achieved":[Z
    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getAchievement(Ljava/lang/String;[Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 67
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    return v1

    .line 69
    :cond_d
    return p2
.end method

.method public requestCurrentStats()Z
    .registers 2

    .line 37
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->requestCurrentStats()Z

    move-result v0

    return v0
.end method

.method public requestGlobalStats(I)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 5
    .param p1, "historyDays"  # I

    .line 180
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    invoke-static {v1, v2, p1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->requestGlobalStats(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public resetAllStats(Z)Z
    .registers 3
    .param p1, "achievementsToo"  # Z

    .line 97
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->resetAllStats(Z)Z

    move-result v0

    return v0
.end method

.method public setAchievement(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->setAchievement(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setStatF(Ljava/lang/String;F)Z
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # F

    .line 61
    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->setStat(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public setStatI(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # I

    .line 49
    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->setStat(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public storeStats()Z
    .registers 2

    .line 81
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->storeStats()Z

    move-result v0

    return v0
.end method

.method public uploadLeaderboardScore(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;I[I)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 16
    .param p1, "leaderboard"  # Lcom/codedisaster/steamworks/SteamLeaderboardHandle;
    .param p2, "method"  # Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;
    .param p3, "score"  # I
    .param p4, "scoreDetails"  # [I

    .line 170
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    if-nez p4, :cond_12

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    .line 171
    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->ordinal()I

    move-result v5

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->uploadLeaderboardScore(JJII)J

    move-result-wide v1

    goto :goto_21

    :cond_12
    iget-wide v3, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    iget-wide v5, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    .line 172
    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->ordinal()I

    move-result v7

    array-length v10, p4

    move v8, p3

    move-object v9, p4

    invoke-static/range {v3 .. v10}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->uploadLeaderboardScore(JJII[II)J

    move-result-wide v1

    :goto_21
    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    .line 170
    return-object v0
.end method
