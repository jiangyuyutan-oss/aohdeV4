.class public abstract Lcom/codedisaster/steamworks/SteamMatchmakingRulesResponse;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamMatchmakingRulesResponse.java"


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 6
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 7
    invoke-static {p0}, Lcom/codedisaster/steamworks/SteamMatchmakingRulesResponse;->createProxy(Lcom/codedisaster/steamworks/SteamMatchmakingRulesResponse;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingRulesResponse;->callback:J

    .line 8
    return-void
.end method

.method private static native createProxy(Lcom/codedisaster/steamworks/SteamMatchmakingRulesResponse;)J
.end method


# virtual methods
.method public bridge synthetic dispose()V
    .registers 1

    .line 3
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public abstract rulesFailedToRespond()V
.end method

.method public abstract rulesRefreshComplete()V
.end method

.method public abstract rulesResponded(Ljava/lang/String;Ljava/lang/String;)V
.end method
