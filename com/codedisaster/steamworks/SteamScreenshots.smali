.class public Lcom/codedisaster/steamworks/SteamScreenshots;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamScreenshots.java"


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamScreenshotsCallback;)V
    .registers 4
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamScreenshotsCallback;

    .line 9
    new-instance v0, Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamScreenshotsCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->createCallback(Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 10
    return-void
.end method


# virtual methods
.method public addScreenshotToLibrary(Ljava/lang/String;Ljava/lang/String;II)Lcom/codedisaster/steamworks/SteamScreenshotHandle;
    .registers 7
    .param p1, "file"  # Ljava/lang/String;
    .param p2, "thumbnail"  # Ljava/lang/String;
    .param p3, "width"  # I
    .param p4, "height"  # I

    .line 17
    new-instance v0, Lcom/codedisaster/steamworks/SteamScreenshotHandle;

    invoke-static {p1, p2, p3, p4}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->addScreenshotToLibrary(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamScreenshotHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic dispose()V
    .registers 1

    .line 5
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public hookScreenshots(Z)V
    .registers 2
    .param p1, "hook"  # Z

    .line 25
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->hookScreenshots(Z)V

    .line 26
    return-void
.end method

.method public isScreenshotsHooked()Z
    .registers 2

    .line 41
    invoke-static {}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->isScreenshotsHooked()Z

    move-result v0

    return v0
.end method

.method public setLocation(Lcom/codedisaster/steamworks/SteamScreenshotHandle;Ljava/lang/String;)Z
    .registers 4
    .param p1, "screenshot"  # Lcom/codedisaster/steamworks/SteamScreenshotHandle;
    .param p2, "location"  # Ljava/lang/String;

    .line 29
    iget v0, p1, Lcom/codedisaster/steamworks/SteamScreenshotHandle;->handle:I

    invoke-static {v0, p2}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->setLocation(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public tagPublishedFile(Lcom/codedisaster/steamworks/SteamScreenshotHandle;Lcom/codedisaster/steamworks/SteamPublishedFileID;)Z
    .registers 6
    .param p1, "screenshot"  # Lcom/codedisaster/steamworks/SteamScreenshotHandle;
    .param p2, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 37
    iget v0, p1, Lcom/codedisaster/steamworks/SteamScreenshotHandle;->handle:I

    iget-wide v1, p2, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->tagPublishedFile(IJ)Z

    move-result v0

    return v0
.end method

.method public tagUser(Lcom/codedisaster/steamworks/SteamScreenshotHandle;Lcom/codedisaster/steamworks/SteamID;)Z
    .registers 6
    .param p1, "screenshot"  # Lcom/codedisaster/steamworks/SteamScreenshotHandle;
    .param p2, "steamID"  # Lcom/codedisaster/steamworks/SteamID;

    .line 33
    iget v0, p1, Lcom/codedisaster/steamworks/SteamScreenshotHandle;->handle:I

    iget-wide v1, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->tagUser(IJ)Z

    move-result v0

    return v0
.end method

.method public triggerScreenshot()V
    .registers 1

    .line 21
    invoke-static {}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->triggerScreenshot()V

    .line 22
    return-void
.end method

.method public writeScreenshot(Ljava/nio/ByteBuffer;II)Lcom/codedisaster/steamworks/SteamScreenshotHandle;
    .registers 6
    .param p1, "rgb"  # Ljava/nio/ByteBuffer;
    .param p2, "width"  # I
    .param p3, "height"  # I

    .line 13
    new-instance v0, Lcom/codedisaster/steamworks/SteamScreenshotHandle;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->writeScreenshot(Ljava/nio/ByteBuffer;III)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamScreenshotHandle;-><init>(I)V

    return-object v0
.end method
