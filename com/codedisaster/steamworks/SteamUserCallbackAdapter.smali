.class Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamUserCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamUserCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamUserCallback;)V
    .registers 2
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamUserCallback;

    .line 7
    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    .line 8
    return-void
.end method


# virtual methods
.method onAuthSessionTicket(JI)V
    .registers 7
    .param p1, "authTicket"  # J
    .param p3, "result"  # I

    .line 11
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamAuthTicket;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamAuthTicket;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserCallback;->onAuthSessionTicket(Lcom/codedisaster/steamworks/SteamAuthTicket;Lcom/codedisaster/steamworks/SteamResult;)V

    .line 12
    return-void
.end method

.method onEncryptedAppTicket(I)V
    .registers 4
    .param p1, "result"  # I

    .line 24
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codedisaster/steamworks/SteamUserCallback;->onEncryptedAppTicket(Lcom/codedisaster/steamworks/SteamResult;)V

    .line 25
    return-void
.end method

.method onMicroTxnAuthorization(IJZ)V
    .registers 6
    .param p1, "appID"  # I
    .param p2, "orderID"  # J
    .param p4, "authorized"  # Z

    .line 20
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codedisaster/steamworks/SteamUserCallback;->onMicroTxnAuthorization(IJZ)V

    .line 21
    return-void
.end method

.method onValidateAuthTicket(JIJ)V
    .registers 10
    .param p1, "steamID"  # J
    .param p3, "authSessionResponse"  # I
    .param p4, "ownerSteamID"  # J

    .line 15
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    .line 16
    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    move-result-object v2

    new-instance v3, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v3, p4, p5}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    .line 15
    invoke-interface {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUserCallback;->onValidateAuthTicket(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;Lcom/codedisaster/steamworks/SteamID;)V

    .line 17
    return-void
.end method
