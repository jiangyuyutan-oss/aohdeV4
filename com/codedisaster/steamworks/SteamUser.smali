.class public Lcom/codedisaster/steamworks/SteamUser;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamUserCallback;)V
    .registers 4
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamUserCallback;

    .line 28
    new-instance v0, Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamUserCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUserNative;->createCallback(Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 29
    return-void
.end method


# virtual methods
.method public advertiseGame(Lcom/codedisaster/steamworks/SteamID;IS)V
    .registers 6
    .param p1, "steamIDGameServer"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "serverIP"  # I
    .param p3, "serverPort"  # S

    .line 170
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamUserNative;->advertiseGame(JIS)V

    .line 171
    return-void
.end method

.method public beginAuthSession(Ljava/nio/ByteBuffer;Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;
    .registers 7
    .param p1, "authTicket"  # Ljava/nio/ByteBuffer;
    .param p2, "steamID"  # Lcom/codedisaster/steamworks/SteamID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 127
    nop

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-wide v2, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    .line 127
    invoke-static {p1, v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUserNative;->beginAuthSession(Ljava/nio/ByteBuffer;IIJ)I

    move-result v0

    .line 130
    .local v0, "result":I
    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    move-result-object v1

    return-object v1

    .line 124
    .end local v0  # "result":I
    :cond_1a
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelAuthTicket(Lcom/codedisaster/steamworks/SteamAuthTicket;)V
    .registers 4
    .param p1, "authTicket"  # Lcom/codedisaster/steamworks/SteamAuthTicket;

    .line 138
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamAuthTicket;->handle:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUserNative;->cancelAuthTicket(I)V

    .line 139
    return-void
.end method

.method public decompressVoice(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[II)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    .registers 15
    .param p1, "voiceData"  # Ljava/nio/ByteBuffer;
    .param p2, "audioData"  # Ljava/nio/ByteBuffer;
    .param p3, "bytesWritten"  # [I
    .param p4, "desiredSampleRate"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    const-string v1, "Direct buffer required!"

    if-eqz v0, :cond_32

    .line 89
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 93
    nop

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 95
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 93
    move-object v2, p1

    move-object v5, p2

    move-object v8, p3

    move v9, p4

    invoke-static/range {v2 .. v9}, Lcom/codedisaster/steamworks/SteamUserNative;->decompressVoice(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[II)I

    move-result v0

    .line 98
    .local v0, "result":I
    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    move-result-object v1

    return-object v1

    .line 90
    .end local v0  # "result":I
    :cond_2c
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_32
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic dispose()V
    .registers 1

    .line 5
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public endAuthSession(Lcom/codedisaster/steamworks/SteamID;)V
    .registers 4
    .param p1, "steamID"  # Lcom/codedisaster/steamworks/SteamID;

    .line 134
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUserNative;->endAuthSession(J)V

    .line 135
    return-void
.end method

.method public getAuthSessionTicket(Ljava/nio/ByteBuffer;[I)Lcom/codedisaster/steamworks/SteamAuthTicket;
    .registers 8
    .param p1, "authTicket"  # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 111
    nop

    .line 112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 111
    invoke-static {p1, v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUserNative;->getAuthSessionTicket(Ljava/nio/ByteBuffer;II[I)I

    move-result v0

    .line 114
    .local v0, "ticket":I
    int-to-long v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_20

    .line 115
    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 118
    :cond_20
    new-instance v1, Lcom/codedisaster/steamworks/SteamAuthTicket;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamAuthTicket;-><init>(J)V

    return-object v1

    .line 108
    .end local v0  # "ticket":I
    :cond_27
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAvailableVoice([I)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    .registers 4
    .param p1, "bytesAvailable"  # [I

    .line 67
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUserNative;->getAvailableVoice([I)I

    move-result v0

    .line 69
    .local v0, "result":I
    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    move-result-object v1

    return-object v1
.end method

.method public getEncryptedAppTicket(Ljava/nio/ByteBuffer;[I)Z
    .registers 5
    .param p1, "ticket"  # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 162
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUserNative;->getEncryptedAppTicket(Ljava/nio/ByteBuffer;II[I)Z

    move-result v0

    return v0

    .line 159
    :cond_13
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSteamID()Lcom/codedisaster/steamworks/SteamID;
    .registers 4

    .line 32
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserNative;->getSteamID()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getVoice(Ljava/nio/ByteBuffer;[I)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    .registers 5
    .param p1, "voiceData"  # Ljava/nio/ByteBuffer;
    .param p2, "bytesWritten"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUserNative;->getVoice(Ljava/nio/ByteBuffer;II[I)I

    move-result v0

    .line 80
    .local v0, "result":I
    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    move-result-object v1

    return-object v1

    .line 75
    .end local v0  # "result":I
    :cond_17
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVoiceOptimalSampleRate()I
    .registers 2

    .line 102
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserNative;->getVoiceOptimalSampleRate()I

    move-result v0

    return v0
.end method

.method public initiateGameConnection(Ljava/nio/ByteBuffer;Lcom/codedisaster/steamworks/SteamID;ISZ)I
    .registers 15
    .param p1, "authBlob"  # Ljava/nio/ByteBuffer;
    .param p2, "steamIDGameServer"  # Lcom/codedisaster/steamworks/SteamID;
    .param p3, "serverIP"  # I
    .param p4, "serverPort"  # S
    .param p5, "secure"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-wide v4, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    move-object v1, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v1 .. v8}, Lcom/codedisaster/steamworks/SteamUserNative;->initiateGameConnection(Ljava/nio/ByteBuffer;IIJISZ)I

    move-result v0

    .line 46
    .local v0, "bytesWritten":I
    if-lez v0, :cond_1d

    .line 47
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 50
    :cond_1d
    return v0

    .line 40
    .end local v0  # "bytesWritten":I
    :cond_1e
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isBehindNAT()Z
    .registers 2

    .line 166
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserNative;->isBehindNAT()Z

    move-result v0

    return v0
.end method

.method public requestEncryptedAppTicket(Ljava/nio/ByteBuffer;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "dataToInclude"  # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 152
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUser;->callback:J

    .line 153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 152
    invoke-static {v1, v2, p1, v3, v4}, Lcom/codedisaster/steamworks/SteamUserNative;->requestEncryptedAppTicket(JLjava/nio/ByteBuffer;II)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0

    .line 149
    :cond_1a
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startVoiceRecording()V
    .registers 1

    .line 59
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserNative;->startVoiceRecording()V

    .line 60
    return-void
.end method

.method public stopVoiceRecording()V
    .registers 1

    .line 63
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserNative;->stopVoiceRecording()V

    .line 64
    return-void
.end method

.method public terminateGameConnection(IS)V
    .registers 3
    .param p1, "serverIP"  # I
    .param p2, "serverPort"  # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamUserNative;->terminateGameConnection(IS)V

    .line 56
    return-void
.end method

.method public userHasLicenseForApp(Lcom/codedisaster/steamworks/SteamID;I)Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;
    .registers 5
    .param p1, "steamID"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "appID"  # I

    .line 142
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    .line 143
    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUserNative;->userHasLicenseForApp(JI)I

    move-result v0

    .line 142
    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    move-result-object v0

    return-object v0
.end method
