.class public Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamScreenshotsCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamScreenshotsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamScreenshotsCallback;)V
    .registers 2
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamScreenshotsCallback;

    .line 7
    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    .line 8
    return-void
.end method


# virtual methods
.method onScreenshotReady(II)V
    .registers 6
    .param p1, "local"  # I
    .param p2, "result"  # I

    .line 11
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamScreenshotsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamScreenshotHandle;

    invoke-direct {v1, p1}, Lcom/codedisaster/steamworks/SteamScreenshotHandle;-><init>(I)V

    invoke-static {p2}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamScreenshotsCallback;->onScreenshotReady(Lcom/codedisaster/steamworks/SteamScreenshotHandle;Lcom/codedisaster/steamworks/SteamResult;)V

    .line 12
    return-void
.end method

.method onScreenshotRequested()V
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamScreenshotsCallback;

    invoke-interface {v0}, Lcom/codedisaster/steamworks/SteamScreenshotsCallback;->onScreenshotRequested()V

    .line 16
    return-void
.end method
