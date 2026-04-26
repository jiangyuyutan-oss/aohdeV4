.class Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamMatchmakingCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamMatchmakingCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final stateChangeValues:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    invoke-static {}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->values()[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->stateChangeValues:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    .line 6
    return-void
.end method

.method constructor <init>(Lcom/codedisaster/steamworks/SteamMatchmakingCallback;)V
    .registers 2
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    .line 10
    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    .line 11
    return-void
.end method


# virtual methods
.method onFavoritesListAccountsUpdated(I)V
    .registers 4
    .param p1, "result"  # I

    .line 63
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onFavoritesListAccountsUpdated(Lcom/codedisaster/steamworks/SteamResult;)V

    .line 64
    return-void
.end method

.method onFavoritesListChanged(IIIIIZI)V
    .registers 18
    .param p1, "ip"  # I
    .param p2, "queryPort"  # I
    .param p3, "connPort"  # I
    .param p4, "appID"  # I
    .param p5, "flags"  # I
    .param p6, "add"  # Z
    .param p7, "accountID"  # I

    .line 14
    move-object v0, p0

    iget-object v1, v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onFavoritesListChanged(IIIIIZI)V

    .line 15
    return-void
.end method

.method onLobbyChatMessage(JJII)V
    .registers 11
    .param p1, "steamIDLobby"  # J
    .param p3, "steamIDUser"  # J
    .param p5, "entryType"  # I
    .param p6, "chatID"  # I

    .line 42
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance v2, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v2, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    .line 43
    invoke-static {p5}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->byValue(I)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    move-result-object v3

    .line 42
    invoke-interface {v0, v1, v2, v3, p6}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyChatMessage(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;I)V

    .line 44
    return-void
.end method

.method onLobbyChatUpdate(JJJI)V
    .registers 16
    .param p1, "steamIDLobby"  # J
    .param p3, "steamIDUserChanged"  # J
    .param p5, "steamIDMakingChange"  # J
    .param p7, "stateChange"  # I

    .line 31
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    .line 32
    .local v0, "lobby":Lcom/codedisaster/steamworks/SteamID;
    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    .line 33
    .local v1, "userChanged":Lcom/codedisaster/steamworks/SteamID;
    new-instance v2, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v2, p5, p6}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    .line 34
    .local v2, "makingChange":Lcom/codedisaster/steamworks/SteamID;
    sget-object v3, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->stateChangeValues:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_27

    aget-object v6, v3, v5

    .line 35
    .local v6, "value":Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;
    invoke-static {v6, p7}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->isSet(Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;I)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 36
    iget-object v7, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v7, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    invoke-interface {v7, v0, v1, v2, v6}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyChatUpdate(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;)V

    .line 34
    .end local v6  # "value":Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;
    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 39
    :cond_27
    return-void
.end method

.method onLobbyCreated(IJ)V
    .registers 7
    .param p1, "result"  # I
    .param p2, "steamIDLobby"  # J

    .line 59
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v1

    new-instance v2, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v2, p2, p3}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyCreated(Lcom/codedisaster/steamworks/SteamResult;Lcom/codedisaster/steamworks/SteamID;)V

    .line 60
    return-void
.end method

.method onLobbyDataUpdate(JJZ)V
    .registers 9
    .param p1, "steamIDLobby"  # J
    .param p3, "steamIDMember"  # J
    .param p5, "success"  # Z

    .line 27
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance v2, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v2, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, v2, p5}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyDataUpdate(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Z)V

    .line 28
    return-void
.end method

.method onLobbyEnter(JIZI)V
    .registers 9
    .param p1, "steamIDLobby"  # J
    .param p3, "chatPermissions"  # I
    .param p4, "blocked"  # Z
    .param p5, "response"  # I

    .line 22
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    .line 23
    invoke-static {p5}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->byValue(I)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    move-result-object v2

    .line 22
    invoke-interface {v0, v1, p3, p4, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyEnter(Lcom/codedisaster/steamworks/SteamID;IZLcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;)V

    .line 24
    return-void
.end method

.method onLobbyGameCreated(JJIS)V
    .registers 10
    .param p1, "steamIDLobby"  # J
    .param p3, "steamIDGameServer"  # J
    .param p5, "ip"  # I
    .param p6, "port"  # S

    .line 47
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance v2, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v2, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, v2, p5, p6}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyGameCreated(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;IS)V

    .line 48
    return-void
.end method

.method onLobbyInvite(JJJ)V
    .registers 10
    .param p1, "steamIDUser"  # J
    .param p3, "steamIDLobby"  # J
    .param p5, "gameID"  # J

    .line 18
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance v2, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v2, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, v2, p5, p6}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyInvite(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;J)V

    .line 19
    return-void
.end method

.method onLobbyKicked(JJZ)V
    .registers 9
    .param p1, "steamIDLobby"  # J
    .param p3, "steamIDAdmin"  # J
    .param p5, "kickedDueToDisconnect"  # Z

    .line 55
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance v2, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v2, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, v2, p5}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyKicked(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Z)V

    .line 56
    return-void
.end method

.method onLobbyMatchList(I)V
    .registers 3
    .param p1, "lobbiesMatching"  # I

    .line 51
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    invoke-interface {v0, p1}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyMatchList(I)V

    .line 52
    return-void
.end method
