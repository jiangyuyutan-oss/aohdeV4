.class public Lcom/codedisaster/steamworks/SteamMatchmakingServers;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamMatchmakingServers.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 7
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 8
    return-void
.end method


# virtual methods
.method public cancelQuery(Lcom/codedisaster/steamworks/SteamServerListRequest;)V
    .registers 4
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamServerListRequest;

    .line 60
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->cancelQuery(J)V

    .line 61
    return-void
.end method

.method public cancelServerQuery(Lcom/codedisaster/steamworks/SteamServerQuery;)V
    .registers 3
    .param p1, "serverQuery"  # Lcom/codedisaster/steamworks/SteamServerQuery;

    .line 92
    iget v0, p1, Lcom/codedisaster/steamworks/SteamServerQuery;->handle:I

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->cancelServerQuery(I)V

    .line 93
    return-void
.end method

.method public bridge synthetic dispose()V
    .registers 1

    .line 3
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getServerCount(Lcom/codedisaster/steamworks/SteamServerListRequest;)I
    .registers 4
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamServerListRequest;

    .line 72
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->getServerCount(J)I

    move-result v0

    return v0
.end method

.method public getServerDetails(Lcom/codedisaster/steamworks/SteamServerListRequest;ILcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;)Z
    .registers 6
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamServerListRequest;
    .param p2, "server"  # I
    .param p3, "details"  # Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;

    .line 56
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->getServerDetails(JILcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;)Z

    move-result v0

    return v0
.end method

.method public isRefreshing(Lcom/codedisaster/steamworks/SteamServerListRequest;)Z
    .registers 4
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamServerListRequest;

    .line 68
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->isRefreshing(J)Z

    move-result v0

    return v0
.end method

.method public pingServer(ISLcom/codedisaster/steamworks/SteamMatchmakingPingResponse;)Lcom/codedisaster/steamworks/SteamServerQuery;
    .registers 7
    .param p1, "ip"  # I
    .param p2, "port"  # S
    .param p3, "requestServersResponse"  # Lcom/codedisaster/steamworks/SteamMatchmakingPingResponse;

    .line 80
    new-instance v0, Lcom/codedisaster/steamworks/SteamServerQuery;

    iget-wide v1, p3, Lcom/codedisaster/steamworks/SteamMatchmakingPingResponse;->callback:J

    invoke-static {p1, p2, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->pingServer(ISJ)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamServerQuery;-><init>(I)V

    return-object v0
.end method

.method public playerDetails(ISLcom/codedisaster/steamworks/SteamMatchmakingPlayersResponse;)Lcom/codedisaster/steamworks/SteamServerQuery;
    .registers 7
    .param p1, "ip"  # I
    .param p2, "port"  # S
    .param p3, "requestServersResponse"  # Lcom/codedisaster/steamworks/SteamMatchmakingPlayersResponse;

    .line 84
    new-instance v0, Lcom/codedisaster/steamworks/SteamServerQuery;

    iget-wide v1, p3, Lcom/codedisaster/steamworks/SteamMatchmakingPlayersResponse;->callback:J

    invoke-static {p1, p2, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->playerDetails(ISJ)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamServerQuery;-><init>(I)V

    return-object v0
.end method

.method public refreshQuery(Lcom/codedisaster/steamworks/SteamServerListRequest;)V
    .registers 4
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamServerListRequest;

    .line 64
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->refreshQuery(J)V

    .line 65
    return-void
.end method

.method public refreshServer(Lcom/codedisaster/steamworks/SteamServerListRequest;I)V
    .registers 5
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamServerListRequest;
    .param p2, "server"  # I

    .line 76
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->refreshServer(JI)V

    .line 77
    return-void
.end method

.method public releaseRequest(Lcom/codedisaster/steamworks/SteamServerListRequest;)V
    .registers 4
    .param p1, "request"  # Lcom/codedisaster/steamworks/SteamServerListRequest;

    .line 52
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->releaseRequest(J)V

    .line 53
    return-void
.end method

.method public requestFavoritesServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)Lcom/codedisaster/steamworks/SteamServerListRequest;
    .registers 8
    .param p1, "appID"  # I
    .param p2, "filters"  # [Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;
    .param p3, "requestServersResponse"  # Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;

    .line 33
    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    array-length v1, p2

    iget-wide v2, p3, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    invoke-static {p1, p2, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->requestFavoritesServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    return-object v0
.end method

.method public requestFriendsServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)Lcom/codedisaster/steamworks/SteamServerListRequest;
    .registers 8
    .param p1, "appID"  # I
    .param p2, "filters"  # [Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;
    .param p3, "requestServersResponse"  # Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;

    .line 26
    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    array-length v1, p2

    iget-wide v2, p3, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    invoke-static {p1, p2, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->requestFriendsServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    return-object v0
.end method

.method public requestHistoryServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)Lcom/codedisaster/steamworks/SteamServerListRequest;
    .registers 8
    .param p1, "appID"  # I
    .param p2, "filters"  # [Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;
    .param p3, "requestServersResponse"  # Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;

    .line 40
    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    array-length v1, p2

    iget-wide v2, p3, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    invoke-static {p1, p2, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->requestHistoryServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    return-object v0
.end method

.method public requestInternetServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)Lcom/codedisaster/steamworks/SteamServerListRequest;
    .registers 8
    .param p1, "appID"  # I
    .param p2, "filters"  # [Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;
    .param p3, "requestServersResponse"  # Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;

    .line 13
    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    array-length v1, p2

    iget-wide v2, p3, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    invoke-static {p1, p2, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->requestInternetServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    return-object v0
.end method

.method public requestLANServerList(ILcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)Lcom/codedisaster/steamworks/SteamServerListRequest;
    .registers 6
    .param p1, "appID"  # I
    .param p2, "requestServersResponse"  # Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;

    .line 20
    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    iget-wide v1, p2, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    invoke-static {p1, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->requestLANServerList(IJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    return-object v0
.end method

.method public requestSpectatorServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)Lcom/codedisaster/steamworks/SteamServerListRequest;
    .registers 8
    .param p1, "appID"  # I
    .param p2, "filters"  # [Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;
    .param p3, "requestServersResponse"  # Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;

    .line 47
    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    array-length v1, p2

    iget-wide v2, p3, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    invoke-static {p1, p2, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->requestSpectatorServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    return-object v0
.end method

.method public serverRules(ISLcom/codedisaster/steamworks/SteamMatchmakingRulesResponse;)Lcom/codedisaster/steamworks/SteamServerQuery;
    .registers 7
    .param p1, "ip"  # I
    .param p2, "port"  # S
    .param p3, "requestServersResponse"  # Lcom/codedisaster/steamworks/SteamMatchmakingRulesResponse;

    .line 88
    new-instance v0, Lcom/codedisaster/steamworks/SteamServerQuery;

    iget-wide v1, p3, Lcom/codedisaster/steamworks/SteamMatchmakingRulesResponse;->callback:J

    invoke-static {p1, p2, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->serverRules(ISJ)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamServerQuery;-><init>(I)V

    return-object v0
.end method
