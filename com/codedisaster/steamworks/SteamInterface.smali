.class abstract Lcom/codedisaster/steamworks/SteamInterface;
.super Ljava/lang/Object;
.source "SteamInterface.java"


# instance fields
.field protected callback:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 10
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 11
    return-void
.end method

.method constructor <init>(J)V
    .registers 3
    .param p1, "callback"  # J

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/codedisaster/steamworks/SteamInterface;->callback:J

    .line 15
    return-void
.end method

.method protected static native deleteCallback(J)V
.end method


# virtual methods
.method checkArray([BI)V
    .registers 6
    .param p1, "array"  # [B
    .param p2, "length"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 32
    array-length v0, p1

    if-lt v0, p2, :cond_4

    .line 35
    return-void

    .line 33
    :cond_4
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array too small, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkBuffer(Ljava/nio/Buffer;)V
    .registers 4
    .param p1, "buffer"  # Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Ljava/nio/Buffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    return-void

    .line 27
    :cond_7
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Direct buffer required."

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .registers 3

    .line 22
    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamInterface;->callback:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;->deleteCallback(J)V

    .line 23
    return-void
.end method

.method setCallback(J)V
    .registers 3
    .param p1, "callback"  # J

    .line 18
    iput-wide p1, p0, Lcom/codedisaster/steamworks/SteamInterface;->callback:J

    .line 19
    return-void
.end method
