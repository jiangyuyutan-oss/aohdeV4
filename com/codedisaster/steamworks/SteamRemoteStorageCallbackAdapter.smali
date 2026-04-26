.class Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamRemoteStorageCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;)V
    .registers 2
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    .line 7
    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    .line 8
    return-void
.end method


# virtual methods
.method onDownloadUGCResult(JI)V
    .registers 7
    .param p1, "fileHandle"  # J
    .param p3, "result"  # I

    .line 16
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUGCHandle;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamUGCHandle;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onDownloadUGCResult(Lcom/codedisaster/steamworks/SteamUGCHandle;Lcom/codedisaster/steamworks/SteamResult;)V

    .line 17
    return-void
.end method

.method onFileReadAsyncComplete(JIII)V
    .registers 9
    .param p1, "fileReadAsync"  # J
    .param p3, "result"  # I
    .param p4, "offset"  # I
    .param p5, "read"  # I

    .line 46
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamAPICall;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    .line 47
    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    .line 46
    invoke-interface {v0, v1, v2, p4, p5}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onFileReadAsyncComplete(Lcom/codedisaster/steamworks/SteamAPICall;Lcom/codedisaster/steamworks/SteamResult;II)V

    .line 48
    return-void
.end method

.method onFileShareResult(JLjava/lang/String;I)V
    .registers 8
    .param p1, "fileHandle"  # J
    .param p3, "fileName"  # Ljava/lang/String;
    .param p4, "result"  # I

    .line 11
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUGCHandle;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamUGCHandle;-><init>(J)V

    .line 12
    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    .line 11
    invoke-interface {v0, v1, p3, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onFileShareResult(Lcom/codedisaster/steamworks/SteamUGCHandle;Ljava/lang/String;Lcom/codedisaster/steamworks/SteamResult;)V

    .line 13
    return-void
.end method

.method onFileWriteAsyncComplete(I)V
    .registers 4
    .param p1, "result"  # I

    .line 42
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onFileWriteAsyncComplete(Lcom/codedisaster/steamworks/SteamResult;)V

    .line 43
    return-void
.end method

.method onPublishFileResult(JZI)V
    .registers 8
    .param p1, "publishedFileID"  # J
    .param p3, "needsToAcceptWLA"  # Z
    .param p4, "result"  # I

    .line 20
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    .line 21
    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    .line 20
    invoke-interface {v0, v1, p3, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onPublishFileResult(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V

    .line 22
    return-void
.end method

.method onPublishedFileDeleted(JI)V
    .registers 6
    .param p1, "publishedFileID"  # J
    .param p3, "appID"  # I

    .line 38
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-interface {v0, v1, p3}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onPublishedFileDeleted(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V

    .line 39
    return-void
.end method

.method onPublishedFileSubscribed(JI)V
    .registers 6
    .param p1, "publishedFileID"  # J
    .param p3, "appID"  # I

    .line 30
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-interface {v0, v1, p3}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onPublishedFileSubscribed(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V

    .line 31
    return-void
.end method

.method onPublishedFileUnsubscribed(JI)V
    .registers 6
    .param p1, "publishedFileID"  # J
    .param p3, "appID"  # I

    .line 34
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-interface {v0, v1, p3}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onPublishedFileUnsubscribed(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V

    .line 35
    return-void
.end method

.method onUpdatePublishedFileResult(JZI)V
    .registers 8
    .param p1, "publishedFileID"  # J
    .param p3, "needsToAcceptWLA"  # Z
    .param p4, "result"  # I

    .line 25
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    .line 26
    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    .line 25
    invoke-interface {v0, v1, p3, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onUpdatePublishedFileResult(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V

    .line 27
    return-void
.end method
