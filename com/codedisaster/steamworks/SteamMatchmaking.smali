.class public Lcom/codedisaster/steamworks/SteamMatchmaking;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamMatchmaking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntry;,
        Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;,
        Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;,
        Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;,
        Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;,
        Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;,
        Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamMatchmakingCallback;)V
    .registers 4
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    .line 135
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamMatchmakingCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->createCallback(Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 136
    return-void
.end method


# virtual methods
.method public addFavoriteGame(IISSII)I
    .registers 8
    .param p1, "appID"  # I
    .param p2, "ip"  # I
    .param p3, "connPort"  # S
    .param p4, "queryPort"  # S
    .param p5, "flags"  # I
    .param p6, "lastPlayedOnServer"  # I

    .line 148
    invoke-static/range {p1 .. p6}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addFavoriteGame(IISSII)I

    move-result v0

    return v0
.end method

.method public addRequestLobbyListCompatibleMembersFilter(Lcom/codedisaster/steamworks/SteamID;)V
    .registers 4
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;

    .line 188
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListCompatibleMembersFilter(J)V

    .line 189
    return-void
.end method

.method public addRequestLobbyListDistanceFilter(Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;)V
    .registers 3
    .param p1, "lobbyDistanceFilter"  # Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    .line 180
    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListDistanceFilter(I)V

    .line 181
    return-void
.end method

.method public addRequestLobbyListFilterSlotsAvailable(I)V
    .registers 2
    .param p1, "slotsAvailable"  # I

    .line 176
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListFilterSlotsAvailable(I)V

    .line 177
    return-void
.end method

.method public addRequestLobbyListNearValueFilter(Ljava/lang/String;I)V
    .registers 3
    .param p1, "keyToMatch"  # Ljava/lang/String;
    .param p2, "valueToBeCloseTo"  # I

    .line 172
    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListNearValueFilter(Ljava/lang/String;I)V

    .line 173
    return-void
.end method

.method public addRequestLobbyListNumericalFilter(Ljava/lang/String;ILcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;)V
    .registers 5
    .param p1, "keyToMatch"  # Ljava/lang/String;
    .param p2, "valueToMatch"  # I
    .param p3, "comparisonType"  # Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    .line 168
    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->access$000(Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListNumericalFilter(Ljava/lang/String;II)V

    .line 169
    return-void
.end method

.method public addRequestLobbyListResultCountFilter(I)V
    .registers 2
    .param p1, "maxResults"  # I

    .line 184
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListResultCountFilter(I)V

    .line 185
    return-void
.end method

.method public addRequestLobbyListStringFilter(Ljava/lang/String;Ljava/lang/String;Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;)V
    .registers 5
    .param p1, "keyToMatch"  # Ljava/lang/String;
    .param p2, "valueToMatch"  # Ljava/lang/String;
    .param p3, "comparisonType"  # Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    .line 162
    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->access$000(Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListStringFilter(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    return-void
.end method

.method public createLobby(Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;I)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "lobbyType"  # Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;
    .param p2, "maxMembers"  # I

    .line 196
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamMatchmaking;->callback:J

    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->createLobby(JII)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public deleteLobbyData(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)Z
    .registers 5
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "key"  # Ljava/lang/String;

    .line 253
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->deleteLobbyData(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispose()V
    .registers 1

    .line 5
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getFavoriteGame(I[I[I[S[S[I[I)Z
    .registers 9
    .param p1, "game"  # I
    .param p2, "appID"  # [I
    .param p3, "ip"  # [I
    .param p4, "connPort"  # [S
    .param p5, "queryPort"  # [S
    .param p6, "flags"  # [I
    .param p7, "lastPlayedOnServer"  # [I

    .line 144
    invoke-static/range {p1 .. p7}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getFavoriteGame(I[I[I[S[S[I[I)Z

    move-result v0

    return v0
.end method

.method public getFavoriteGameCount()I
    .registers 2

    .line 139
    invoke-static {}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getFavoriteGameCount()I

    move-result v0

    return v0
.end method

.method public getLobbyByIndex(I)Lcom/codedisaster/steamworks/SteamID;
    .registers 5
    .param p1, "lobby"  # I

    .line 192
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyByIndex(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getLobbyChatEntry(Lcom/codedisaster/steamworks/SteamID;ILcom/codedisaster/steamworks/SteamMatchmaking$ChatEntry;Ljava/nio/ByteBuffer;)I
    .registers 13
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "chatID"  # I
    .param p3, "chatEntry"  # Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntry;
    .param p4, "dest"  # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 279
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 283
    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    .line 284
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 283
    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyChatEntry(JILcom/codedisaster/steamworks/SteamMatchmaking$ChatEntry;Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 280
    :cond_18
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLobbyData(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "key"  # Ljava/lang/String;

    .line 220
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyData(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLobbyDataByIndex(Lcom/codedisaster/steamworks/SteamID;ILcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;)Z
    .registers 6
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "lobbyDataIndex"  # I
    .param p3, "keyValuePair"  # Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;

    .line 249
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyDataByIndex(JILcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;)Z

    move-result v0

    return v0
.end method

.method public getLobbyDataCount(Lcom/codedisaster/steamworks/SteamID;)I
    .registers 4
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;

    .line 244
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyDataCount(J)I

    move-result v0

    return v0
.end method

.method public getLobbyGameServer(Lcom/codedisaster/steamworks/SteamID;[I[SLcom/codedisaster/steamworks/SteamID;)Z
    .registers 9
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "gameServerIP"  # [I
    .param p3, "gameServerPort"  # [S
    .param p4, "steamIDGameServer"  # Lcom/codedisaster/steamworks/SteamID;

    .line 298
    const/4 v0, 0x1

    new-array v1, v0, [J

    .line 300
    .local v1, "id":[J
    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v2, v3, p2, p3, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyGameServer(J[I[S[J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    .line 301
    aget-wide v2, v1, v3

    iput-wide v2, p4, Lcom/codedisaster/steamworks/SteamID;->handle:J

    .line 302
    return v0

    .line 305
    :cond_11
    return v3
.end method

.method public getLobbyMemberByIndex(Lcom/codedisaster/steamworks/SteamID;I)Lcom/codedisaster/steamworks/SteamID;
    .registers 6
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "memberIndex"  # I

    .line 216
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v1, v2, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyMemberByIndex(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getLobbyMemberData(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "steamIDUser"  # Lcom/codedisaster/steamworks/SteamID;
    .param p3, "key"  # Ljava/lang/String;

    .line 232
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    iget-wide v2, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2, v3, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyMemberData(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLobbyMemberLimit(Lcom/codedisaster/steamworks/SteamID;)I
    .registers 4
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;

    .line 313
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyMemberLimit(J)I

    move-result v0

    return v0
.end method

.method public getLobbyOwner(Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamID;
    .registers 5
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;

    .line 325
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyOwner(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getNumLobbyMembers(Lcom/codedisaster/steamworks/SteamID;)I
    .registers 4
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;

    .line 212
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getNumLobbyMembers(J)I

    move-result v0

    return v0
.end method

.method public inviteUserToLobby(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;)Z
    .registers 7
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "steamIDInvitee"  # Lcom/codedisaster/steamworks/SteamID;

    .line 208
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    iget-wide v2, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->inviteUserToLobby(JJ)Z

    move-result v0

    return v0
.end method

.method public joinLobby(Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;

    .line 200
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamMatchmaking;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->joinLobby(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public leaveLobby(Lcom/codedisaster/steamworks/SteamID;)V
    .registers 4
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;

    .line 204
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->leaveLobby(J)V

    .line 205
    return-void
.end method

.method public removeFavoriteGame(IISSI)Z
    .registers 7
    .param p1, "appID"  # I
    .param p2, "ip"  # I
    .param p3, "connPort"  # S
    .param p4, "queryPort"  # S
    .param p5, "flags"  # I

    .line 152
    invoke-static {p1, p2, p3, p4, p5}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->removeFavoriteGame(IISSI)Z

    move-result v0

    return v0
.end method

.method public requestLobbyData(Lcom/codedisaster/steamworks/SteamID;)Z
    .registers 4
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;

    .line 288
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->requestLobbyData(J)Z

    move-result v0

    return v0
.end method

.method public requestLobbyList()Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 4

    .line 156
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamMatchmaking;->callback:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->requestLobbyList(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public sendLobbyChatMsg(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)Z
    .registers 5
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "data"  # Ljava/lang/String;

    .line 269
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->sendLobbyChatMsg(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendLobbyChatMsg(Lcom/codedisaster/steamworks/SteamID;Ljava/nio/ByteBuffer;)Z
    .registers 7
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "data"  # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 261
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 265
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v0, v1, p2, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->sendLobbyChatMsg(JLjava/nio/ByteBuffer;II)Z

    move-result v0

    return v0

    .line 262
    :cond_15
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLinkedLobby(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;)Z
    .registers 7
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "steamIDLobbyDependent"  # Lcom/codedisaster/steamworks/SteamID;

    .line 333
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    iget-wide v2, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLinkedLobby(JJ)Z

    move-result v0

    return v0
.end method

.method public setLobbyData(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;)Z
    .registers 7
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "keyValuePair"  # Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;

    .line 228
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyData(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLobbyData(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "value"  # Ljava/lang/String;

    .line 224
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyData(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLobbyGameServer(Lcom/codedisaster/steamworks/SteamID;ISLcom/codedisaster/steamworks/SteamID;)V
    .registers 11
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "gameServerIP"  # I
    .param p3, "gameServerPort"  # S
    .param p4, "steamIDGameServer"  # Lcom/codedisaster/steamworks/SteamID;

    .line 293
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    iget-wide v4, p4, Lcom/codedisaster/steamworks/SteamID;->handle:J

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyGameServer(JISJ)V

    .line 294
    return-void
.end method

.method public setLobbyJoinable(Lcom/codedisaster/steamworks/SteamID;Z)Z
    .registers 5
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "joinable"  # Z

    .line 321
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyJoinable(JZ)Z

    move-result v0

    return v0
.end method

.method public setLobbyMemberData(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;)V
    .registers 7
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "keyValuePair"  # Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;

    .line 240
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyMemberData(JLjava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public setLobbyMemberData(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "value"  # Ljava/lang/String;

    .line 236
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyMemberData(JLjava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setLobbyMemberLimit(Lcom/codedisaster/steamworks/SteamID;I)Z
    .registers 5
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "maxMembers"  # I

    .line 309
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyMemberLimit(JI)Z

    move-result v0

    return v0
.end method

.method public setLobbyOwner(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;)Z
    .registers 7
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "steamIDNewOwner"  # Lcom/codedisaster/steamworks/SteamID;

    .line 329
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    iget-wide v2, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyOwner(JJ)Z

    move-result v0

    return v0
.end method

.method public setLobbyType(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;)Z
    .registers 6
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "lobbyType"  # Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    .line 317
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyType(JI)Z

    move-result v0

    return v0
.end method
