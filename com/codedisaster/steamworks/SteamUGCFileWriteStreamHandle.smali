.class public Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;
.super Lcom/codedisaster/steamworks/SteamNativeHandle;
.source "SteamUGCFileWriteStreamHandle.java"


# direct methods
.method constructor <init>(J)V
    .registers 3
    .param p1, "handle"  # J

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/codedisaster/steamworks/SteamNativeHandle;-><init>(J)V

    .line 7
    return-void
.end method
