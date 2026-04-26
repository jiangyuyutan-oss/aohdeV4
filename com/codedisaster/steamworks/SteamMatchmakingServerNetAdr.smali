.class public Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;
.super Ljava/lang/Object;
.source "SteamMatchmakingServerNetAdr.java"


# instance fields
.field connectionPort:S

.field ip:I

.field queryPort:S


# direct methods
.method constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(ISS)V
    .registers 4
    .param p1, "ip"  # I
    .param p2, "queryPort"  # S
    .param p3, "connectionPort"  # S

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->ip:I

    .line 15
    iput-short p2, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->queryPort:S

    .line 16
    iput-short p3, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->connectionPort:S

    .line 17
    return-void
.end method

.method private static toString(IS)Ljava/lang/String;
    .registers 7
    .param p0, "ip"  # I
    .param p1, "port"  # S

    .line 40
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    and-int/lit16 v3, p0, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 40
    const-string v1, "%d.%d.%d.%d:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConnectionAddressString()Ljava/lang/String;
    .registers 3

    .line 32
    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->ip:I

    iget-short v1, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->connectionPort:S

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->toString(IS)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPort()S
    .registers 2

    .line 20
    iget-short v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->connectionPort:S

    return v0
.end method

.method public getIP()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->ip:I

    return v0
.end method

.method public getQueryAddressString()Ljava/lang/String;
    .registers 3

    .line 36
    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->ip:I

    iget-short v1, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->queryPort:S

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->toString(IS)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryPort()S
    .registers 2

    .line 24
    iget-short v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->queryPort:S

    return v0
.end method
