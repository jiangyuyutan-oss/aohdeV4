.class Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamUGCCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamUGCCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamUGCCallback;)V
    .registers 2
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamUGCCallback;

    .line 7
    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    .line 8
    return-void
.end method


# virtual methods
.method onCreateItem(JZI)V
    .registers 8
    .param p1, "publishedFileID"  # J
    .param p3, "needsToAcceptWLA"  # Z
    .param p4, "result"  # I

    .line 48
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    invoke-interface {v0, v1, p3, v2}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onCreateItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V

    .line 49
    return-void
.end method

.method onDeleteItem(JI)V
    .registers 7
    .param p1, "publishedFileID"  # J
    .param p3, "result"  # I

    .line 87
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onDeleteItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V

    .line 88
    return-void
.end method

.method onDownloadItemResult(IJI)V
    .registers 8
    .param p1, "appID"  # I
    .param p2, "publishedFileID"  # J
    .param p4, "result"  # I

    .line 57
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p2, p3}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onDownloadItemResult(ILcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V

    .line 58
    return-void
.end method

.method onGetUserItemVote(JZZZI)V
    .registers 14
    .param p1, "publishedFileID"  # J
    .param p3, "votedUp"  # Z
    .param p4, "votedDown"  # Z
    .param p5, "voteSkipped"  # Z
    .param p6, "result"  # I

    .line 70
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v2, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v2, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    .line 71
    invoke-static {p6}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v6

    .line 70
    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v1 .. v6}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onGetUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZZZLcom/codedisaster/steamworks/SteamResult;)V

    .line 72
    return-void
.end method

.method onRequestUGCDetails(JILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZIIJII)V
    .registers 34
    .param p1, "publishedFileID"  # J
    .param p3, "result"  # I
    .param p4, "title"  # Ljava/lang/String;
    .param p5, "description"  # Ljava/lang/String;
    .param p6, "fileHandle"  # J
    .param p8, "previewFileHandle"  # J
    .param p10, "fileName"  # Ljava/lang/String;
    .param p11, "cachedData"  # Z
    .param p12, "votesUp"  # I
    .param p13, "votesDown"  # I
    .param p14, "ownerID"  # J
    .param p16, "timeCreated"  # I
    .param p17, "timeUpdated"  # I

    .line 30
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCDetails;

    invoke-direct {v0}, Lcom/codedisaster/steamworks/SteamUGCDetails;-><init>()V

    .line 31
    .local v0, "details":Lcom/codedisaster/steamworks/SteamUGCDetails;
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->publishedFileID:J

    .line 32
    move/from16 v3, p3

    iput v3, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->result:I

    .line 33
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->title:Ljava/lang/String;

    .line 34
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->description:Ljava/lang/String;

    .line 35
    move-wide/from16 v6, p6

    iput-wide v6, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->fileHandle:J

    .line 36
    move-wide/from16 v8, p8

    iput-wide v8, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->previewFileHandle:J

    .line 37
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->fileName:Ljava/lang/String;

    .line 38
    move/from16 v11, p12

    iput v11, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->votesUp:I

    .line 39
    move/from16 v12, p13

    iput v12, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->votesDown:I

    .line 40
    move-wide/from16 v13, p14

    iput-wide v13, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->ownerID:J

    .line 41
    move/from16 v15, p16

    iput v15, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->timeCreated:I

    .line 42
    move/from16 v1, p17

    iput v1, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->timeUpdated:I

    .line 44
    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v1, Lcom/codedisaster/steamworks/SteamUGCCallback;

    invoke-static/range {p3 .. p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onRequestUGCDetails(Lcom/codedisaster/steamworks/SteamUGCDetails;Lcom/codedisaster/steamworks/SteamResult;)V

    .line 45
    return-void
.end method

.method onSetUserItemVote(JZI)V
    .registers 8
    .param p1, "publishedFileID"  # J
    .param p3, "voteUp"  # Z
    .param p4, "result"  # I

    .line 66
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    invoke-interface {v0, v1, p3, v2}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onSetUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V

    .line 67
    return-void
.end method

.method onStartPlaytimeTracking(I)V
    .registers 4
    .param p1, "result"  # I

    .line 75
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onStartPlaytimeTracking(Lcom/codedisaster/steamworks/SteamResult;)V

    .line 76
    return-void
.end method

.method onStopPlaytimeTracking(I)V
    .registers 4
    .param p1, "result"  # I

    .line 79
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onStopPlaytimeTracking(Lcom/codedisaster/steamworks/SteamResult;)V

    .line 80
    return-void
.end method

.method onStopPlaytimeTrackingForAllItems(I)V
    .registers 4
    .param p1, "result"  # I

    .line 83
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onStopPlaytimeTrackingForAllItems(Lcom/codedisaster/steamworks/SteamResult;)V

    .line 84
    return-void
.end method

.method onSubmitItemUpdate(JZI)V
    .registers 8
    .param p1, "publishedFileID"  # J
    .param p3, "needsToAcceptWLA"  # Z
    .param p4, "result"  # I

    .line 52
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    .line 53
    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    .line 52
    invoke-interface {v0, v1, p3, v2}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onSubmitItemUpdate(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V

    .line 54
    return-void
.end method

.method onSubscribeItem(JI)V
    .registers 7
    .param p1, "publishedFileID"  # J
    .param p3, "result"  # I

    .line 18
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onSubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V

    .line 19
    return-void
.end method

.method onUGCQueryCompleted(JIIZI)V
    .registers 14
    .param p1, "handle"  # J
    .param p3, "numResultsReturned"  # I
    .param p4, "totalMatchingResults"  # I
    .param p5, "isCachedData"  # Z
    .param p6, "result"  # I

    .line 13
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUGCQuery;

    invoke-direct {v2, p1, p2}, Lcom/codedisaster/steamworks/SteamUGCQuery;-><init>(J)V

    .line 14
    invoke-static {p6}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v6

    .line 13
    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v1 .. v6}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onUGCQueryCompleted(Lcom/codedisaster/steamworks/SteamUGCQuery;IIZLcom/codedisaster/steamworks/SteamResult;)V

    .line 15
    return-void
.end method

.method onUnsubscribeItem(JI)V
    .registers 7
    .param p1, "publishedFileID"  # J
    .param p3, "result"  # I

    .line 22
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onUnsubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V

    .line 23
    return-void
.end method

.method onUserFavoriteItemsListChanged(JZI)V
    .registers 8
    .param p1, "publishedFileID"  # J
    .param p3, "wasAddRequest"  # Z
    .param p4, "result"  # I

    .line 61
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    .line 62
    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v2

    .line 61
    invoke-interface {v0, v1, p3, v2}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onUserFavoriteItemsListChanged(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V

    .line 63
    return-void
.end method
