.class public abstract Lcom/codedisaster/steamworks/SteamNativeHandle;
.super Ljava/lang/Object;
.source "SteamNativeHandle.java"


# instance fields
.field handle:J


# direct methods
.method constructor <init>(J)V
    .registers 3
    .param p1, "handle"  # J

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/codedisaster/steamworks/SteamNativeHandle;->handle:J

    .line 9
    return-void
.end method

.method public static getNativeHandle(Lcom/codedisaster/steamworks/SteamNativeHandle;)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/codedisaster/steamworks/SteamNativeHandle;",
            ">(TT;)J"
        }
    .end annotation

    .line 18
    .local p0, "handle":Lcom/codedisaster/steamworks/SteamNativeHandle;, "TT;"
    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamNativeHandle;->handle:J

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"  # Ljava/lang/Object;

    .line 28
    instance-of v0, p1, Lcom/codedisaster/steamworks/SteamNativeHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 29
    iget-wide v2, p0, Lcom/codedisaster/steamworks/SteamNativeHandle;->handle:J

    move-object v0, p1

    check-cast v0, Lcom/codedisaster/steamworks/SteamNativeHandle;

    iget-wide v4, v0, Lcom/codedisaster/steamworks/SteamNativeHandle;->handle:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 31
    :cond_12
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamNativeHandle;->handle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 36
    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamNativeHandle;->handle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
