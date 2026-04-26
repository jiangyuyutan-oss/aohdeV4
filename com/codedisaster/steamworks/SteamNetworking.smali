.class public Lcom/codedisaster/steamworks/SteamNetworking;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamNetworking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;,
        Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;,
        Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;
    }
.end annotation


# instance fields
.field private final isServer:Z

.field private final tmpIntResult:[I

.field private final tmpLongResult:[J


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamNetworkingCallback;)V
    .registers 5
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamNetworkingCallback;

    .line 78
    new-instance v0, Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamNetworkingCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->createCallback(Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/codedisaster/steamworks/SteamNetworking;-><init>(ZJ)V

    .line 79
    return-void
.end method

.method constructor <init>(ZJ)V
    .registers 6
    .param p1, "isServer"  # Z
    .param p2, "callback"  # J

    .line 82
    invoke-direct {p0, p2, p3}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 74
    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/codedisaster/steamworks/SteamNetworking;->tmpIntResult:[I

    .line 75
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->tmpLongResult:[J

    .line 83
    iput-boolean p1, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    .line 84
    return-void
.end method


# virtual methods
.method public acceptP2PSessionWithUser(Lcom/codedisaster/steamworks/SteamID;)Z
    .registers 5
    .param p1, "steamIDRemote"  # Lcom/codedisaster/steamworks/SteamID;

    .line 122
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->acceptP2PSessionWithUser(ZJ)Z

    move-result v0

    return v0
.end method

.method public allowP2PPacketRelay(Z)Z
    .registers 3
    .param p1, "allow"  # Z

    .line 138
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    invoke-static {v0, p1}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->allowP2PPacketRelay(ZZ)Z

    move-result v0

    return v0
.end method

.method public closeP2PChannelWithUser(Lcom/codedisaster/steamworks/SteamID;I)Z
    .registers 6
    .param p1, "steamIDRemote"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "channel"  # I

    .line 130
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2, p2}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->closeP2PChannelWithUser(ZJI)Z

    move-result v0

    return v0
.end method

.method public closeP2PSessionWithUser(Lcom/codedisaster/steamworks/SteamID;)Z
    .registers 5
    .param p1, "steamIDRemote"  # Lcom/codedisaster/steamworks/SteamID;

    .line 126
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->closeP2PSessionWithUser(ZJ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispose()V
    .registers 1

    .line 5
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getP2PSessionState(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;)Z
    .registers 6
    .param p1, "steamIDRemote"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "connectionState"  # Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;

    .line 134
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2, p2}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->getP2PSessionState(ZJLcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;)Z

    move-result v0

    return v0
.end method

.method public isP2PPacketAvailable(I[I)Z
    .registers 4
    .param p1, "channel"  # I
    .param p2, "msgSize"  # [I

    .line 98
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    invoke-static {v0, p2, p1}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->isP2PPacketAvailable(Z[II)Z

    move-result v0

    return v0
.end method

.method public readP2PPacket(Lcom/codedisaster/steamworks/SteamID;Ljava/nio/ByteBuffer;I)I
    .registers 12
    .param p1, "steamIDRemote"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "dest"  # Ljava/nio/ByteBuffer;
    .param p3, "channel"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 109
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 113
    iget-boolean v1, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v5, p0, Lcom/codedisaster/steamworks/SteamNetworking;->tmpIntResult:[I

    iget-object v6, p0, Lcom/codedisaster/steamworks/SteamNetworking;->tmpLongResult:[J

    move-object v2, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->readP2PPacket(ZLjava/nio/ByteBuffer;II[I[JI)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 114
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->tmpLongResult:[J

    aget-wide v2, v0, v1

    iput-wide v2, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    .line 115
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->tmpIntResult:[I

    aget v0, v0, v1

    return v0

    .line 118
    :cond_28
    return v1

    .line 110
    :cond_29
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendP2PPacket(Lcom/codedisaster/steamworks/SteamID;Ljava/nio/ByteBuffer;Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;I)Z
    .registers 14
    .param p1, "steamIDRemote"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "data"  # Ljava/nio/ByteBuffer;
    .param p3, "sendType"  # Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;
    .param p4, "channel"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 89
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 93
    iget-boolean v1, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    .line 94
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {p3}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->ordinal()I

    move-result v7

    .line 93
    move-object v4, p2

    move v8, p4

    invoke-static/range {v1 .. v8}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->sendP2PPacket(ZJLjava/nio/ByteBuffer;IIII)Z

    move-result v0

    return v0

    .line 90
    :cond_1d
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
