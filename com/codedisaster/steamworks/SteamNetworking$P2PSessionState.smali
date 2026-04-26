.class public Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;
.super Ljava/lang/Object;
.source "SteamNetworking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamNetworking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "P2PSessionState"
.end annotation


# instance fields
.field bytesQueuedForSend:I

.field connecting:B

.field connectionActive:B

.field packetsQueuedForSend:I

.field remoteIP:I

.field remotePort:S

.field sessionError:B

.field usingRelay:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytesQueuedForSend()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->bytesQueuedForSend:I

    return v0
.end method

.method public getLastSessionError()Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;
    .registers 2

    .line 49
    iget-byte v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->sessionError:B

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    move-result-object v0

    return-object v0
.end method

.method public getPacketsQueuedForSend()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->packetsQueuedForSend:I

    return v0
.end method

.method public getRemoteIP()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->remoteIP:I

    return v0
.end method

.method public getRemotePort()S
    .registers 2

    .line 69
    iget-short v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->remotePort:S

    return v0
.end method

.method public isConnecting()Z
    .registers 2

    .line 45
    iget-byte v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->connecting:B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isConnectionActive()Z
    .registers 2

    .line 41
    iget-byte v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->connectionActive:B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isUsingRelay()Z
    .registers 2

    .line 53
    iget-byte v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->usingRelay:B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
