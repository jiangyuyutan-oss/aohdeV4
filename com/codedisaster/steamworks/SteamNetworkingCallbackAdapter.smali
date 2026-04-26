.class Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamNetworkingCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamNetworkingCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamNetworkingCallback;)V
    .registers 2
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamNetworkingCallback;

    .line 7
    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    .line 8
    return-void
.end method


# virtual methods
.method onP2PSessionConnectFail(JI)V
    .registers 7
    .param p1, "steamIDRemote"  # J
    .param p3, "sessionError"  # I

    .line 11
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    .line 12
    .local v0, "id":Lcom/codedisaster/steamworks/SteamID;
    iget-object v1, p0, Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v1, Lcom/codedisaster/steamworks/SteamNetworkingCallback;

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/codedisaster/steamworks/SteamNetworkingCallback;->onP2PSessionConnectFail(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;)V

    .line 13
    return-void
.end method

.method onP2PSessionRequest(J)V
    .registers 5
    .param p1, "steamIDRemote"  # J

    .line 16
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    .line 17
    .local v0, "id":Lcom/codedisaster/steamworks/SteamID;
    iget-object v1, p0, Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v1, Lcom/codedisaster/steamworks/SteamNetworkingCallback;

    invoke-interface {v1, v0}, Lcom/codedisaster/steamworks/SteamNetworkingCallback;->onP2PSessionRequest(Lcom/codedisaster/steamworks/SteamID;)V

    .line 18
    return-void
.end method
