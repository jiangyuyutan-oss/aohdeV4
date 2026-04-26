.class Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamFriendsCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamFriendsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final personaChangeValues:[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->values()[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->personaChangeValues:[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    return-void
.end method

.method constructor <init>(Lcom/codedisaster/steamworks/SteamFriendsCallback;)V
    .registers 2
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamFriendsCallback;

    .line 9
    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    .line 10
    return-void
.end method


# virtual methods
.method onAvatarImageLoaded(JIII)V
    .registers 8
    .param p1, "steamID"  # J
    .param p3, "image"  # I
    .param p4, "width"  # I
    .param p5, "height"  # I

    .line 34
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, p3, p4, p5}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onAvatarImageLoaded(Lcom/codedisaster/steamworks/SteamID;III)V

    .line 35
    return-void
.end method

.method onFriendRichPresenceUpdate(JI)V
    .registers 6
    .param p1, "steamIDFriend"  # J
    .param p3, "appID"  # I

    .line 38
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, p3}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onFriendRichPresenceUpdate(Lcom/codedisaster/steamworks/SteamID;I)V

    .line 39
    return-void
.end method

.method onGameLobbyJoinRequested(JJ)V
    .registers 8
    .param p1, "steamIDLobby"  # J
    .param p3, "steamIDFriend"  # J

    .line 30
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance v2, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v2, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onGameLobbyJoinRequested(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;)V

    .line 31
    return-void
.end method

.method onGameOverlayActivated(Z)V
    .registers 3
    .param p1, "active"  # Z

    .line 26
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    invoke-interface {v0, p1}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onGameOverlayActivated(Z)V

    .line 27
    return-void
.end method

.method onGameRichPresenceJoinRequested(JLjava/lang/String;)V
    .registers 6
    .param p1, "steamIDFriend"  # J
    .param p3, "connect"  # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, p3}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onGameRichPresenceJoinRequested(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method onGameServerChangeRequested(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "server"  # Ljava/lang/String;
    .param p2, "password"  # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    invoke-interface {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onGameServerChangeRequested(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method onPersonaStateChange(JI)V
    .registers 10
    .param p1, "steamID"  # J
    .param p3, "changeFlags"  # I

    .line 17
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    .line 18
    .local v0, "id":Lcom/codedisaster/steamworks/SteamID;
    sget-object v1, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->personaChangeValues:[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    .line 19
    .local v4, "value":Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;
    invoke-static {v4, p3}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->isSet(Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 20
    iget-object v5, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v5, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    invoke-interface {v5, v0, v4}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onPersonaStateChange(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;)V

    .line 18
    .end local v4  # "value":Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 23
    :cond_1d
    return-void
.end method

.method onSetPersonaNameResponse(ZZI)V
    .registers 6
    .param p1, "success"  # Z
    .param p2, "localSuccess"  # Z
    .param p3, "result"  # I

    .line 13
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onSetPersonaNameResponse(ZZLcom/codedisaster/steamworks/SteamResult;)V

    .line 14
    return-void
.end method
