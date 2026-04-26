.class public Lcom/codedisaster/steamworks/SteamServerListRequest;
.super Lcom/codedisaster/steamworks/SteamNativeHandle;
.source "SteamServerListRequest.java"


# direct methods
.method constructor <init>(J)V
    .registers 3
    .param p1, "handle"  # J

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/codedisaster/steamworks/SteamNativeHandle;-><init>(J)V

    .line 7
    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 5

    .line 10
    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
