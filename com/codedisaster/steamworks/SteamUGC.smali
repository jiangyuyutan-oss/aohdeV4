.class public Lcom/codedisaster/steamworks/SteamUGC;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamUGC$ItemAdditionalPreview;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemDownloadInfo;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemState;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;,
        Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;,
        Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;,
        Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;,
        Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamUGCCallback;)V
    .registers 4
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamUGCCallback;

    .line 227
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamUGCCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUGCNative;->createCallback(Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 228
    return-void
.end method


# virtual methods
.method public addExcludedTag(Lcom/codedisaster/steamworks/SteamUGCQuery;Ljava/lang/String;)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "tagName"  # Ljava/lang/String;

    .line 310
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->addExcludedTag(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addItemKeyValueTag(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "update"  # Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "value"  # Ljava/lang/String;

    .line 425
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamUGCNative;->addItemKeyValueTag(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addItemToFavorites(ILcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 8
    .param p1, "appID"  # I
    .param p2, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 456
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p2, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, p1, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->addItemToFavorites(JIJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public addRequiredKeyValueTag(Lcom/codedisaster/steamworks/SteamUGCQuery;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "value"  # Ljava/lang/String;

    .line 370
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamUGCNative;->addRequiredKeyValueTag(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addRequiredTag(Lcom/codedisaster/steamworks/SteamUGCQuery;Ljava/lang/String;)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "tagName"  # Ljava/lang/String;

    .line 306
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->addRequiredTag(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createItem(ILcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "consumerAppID"  # I
    .param p2, "fileType"  # Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 379
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->ordinal()I

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/codedisaster/steamworks/SteamUGCNative;->createItem(JII)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public createQueryAllUGCRequest(Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;III)Lcom/codedisaster/steamworks/SteamUGCQuery;
    .registers 9
    .param p1, "queryType"  # Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;
    .param p2, "matchingType"  # Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;
    .param p3, "creatorAppID"  # I
    .param p4, "consumerAppID"  # I
    .param p5, "page"  # I

    .line 241
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCQuery;

    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->ordinal()I

    move-result v1

    invoke-static {p2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->access$000(Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;)I

    move-result v2

    invoke-static {v1, v2, p3, p4, p5}, Lcom/codedisaster/steamworks/SteamUGCNative;->createQueryAllUGCRequest(IIIII)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCQuery;-><init>(J)V

    return-object v0
.end method

.method public createQueryUGCDetailsRequest(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamUGCQuery;
    .registers 7
    .param p1, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 246
    const/4 v0, 0x1

    new-array v1, v0, [J

    .line 247
    .local v1, "fileIDs":[J
    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    aput-wide v3, v1, v2

    .line 248
    new-instance v2, Lcom/codedisaster/steamworks/SteamUGCQuery;

    invoke-static {v1, v0}, Lcom/codedisaster/steamworks/SteamUGCNative;->createQueryUGCDetailsRequest([JI)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCQuery;-><init>(J)V

    return-object v2
.end method

.method public createQueryUGCDetailsRequest(Ljava/util/Collection;)Lcom/codedisaster/steamworks/SteamUGCQuery;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/codedisaster/steamworks/SteamPublishedFileID;",
            ">;)",
            "Lcom/codedisaster/steamworks/SteamUGCQuery;"
        }
    .end annotation

    .line 252
    .local p1, "publishedFileIDs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/codedisaster/steamworks/SteamPublishedFileID;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 253
    .local v0, "size":I
    new-array v1, v0, [J

    .line 255
    .local v1, "fileIDs":[J
    const/4 v2, 0x0

    .line 256
    .local v2, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 257
    .local v4, "fileID":Lcom/codedisaster/steamworks/SteamPublishedFileID;
    add-int/lit8 v5, v2, 0x1

    .end local v2  # "index":I
    .local v5, "index":I
    iget-wide v6, v4, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    aput-wide v6, v1, v2

    .line 258
    .end local v4  # "fileID":Lcom/codedisaster/steamworks/SteamPublishedFileID;
    move v2, v5

    goto :goto_b

    .line 260
    .end local v5  # "index":I
    .restart local v2  # "index":I
    :cond_1f
    new-instance v3, Lcom/codedisaster/steamworks/SteamUGCQuery;

    invoke-static {v1, v0}, Lcom/codedisaster/steamworks/SteamUGCNative;->createQueryUGCDetailsRequest([JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamUGCQuery;-><init>(J)V

    return-object v3
.end method

.method public createQueryUserUGCRequest(ILcom/codedisaster/steamworks/SteamUGC$UserUGCList;Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;III)Lcom/codedisaster/steamworks/SteamUGCQuery;
    .registers 16
    .param p1, "accountID"  # I
    .param p2, "listType"  # Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;
    .param p3, "matchingType"  # Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;
    .param p4, "sortOrder"  # Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;
    .param p5, "creatorAppID"  # I
    .param p6, "consumerAppID"  # I
    .param p7, "page"  # I

    .line 234
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCQuery;

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->ordinal()I

    move-result v2

    .line 235
    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->access$000(Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;)I

    move-result v3

    invoke-virtual {p4}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->ordinal()I

    move-result v4

    .line 234
    move v1, p1

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamUGCNative;->createQueryUserUGCRequest(IIIIIII)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCQuery;-><init>(J)V

    return-object v0
.end method

.method public deleteItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 505
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->deleteItem(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic dispose()V
    .registers 1

    .line 6
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public downloadItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Z)Z
    .registers 5
    .param p1, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "highPriority"  # Z

    .line 509
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->downloadItem(JZ)Z

    move-result v0

    return v0
.end method

.method public getItemDownloadInfo(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamUGC$ItemDownloadInfo;)Z
    .registers 7
    .param p1, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "downloadInfo"  # Lcom/codedisaster/steamworks/SteamUGC$ItemDownloadInfo;

    .line 495
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 496
    .local v0, "values":[J
    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v0}, Lcom/codedisaster/steamworks/SteamUGCNative;->getItemDownloadInfo(J[J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 497
    aget-wide v1, v0, v2

    iput-wide v1, p2, Lcom/codedisaster/steamworks/SteamUGC$ItemDownloadInfo;->bytesDownloaded:J

    .line 498
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    iput-wide v2, p2, Lcom/codedisaster/steamworks/SteamUGC$ItemDownloadInfo;->bytesTotal:J

    .line 499
    return v1

    .line 501
    :cond_16
    return v2
.end method

.method public getItemInstallInfo(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;)Z
    .registers 5
    .param p1, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "installInfo"  # Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    .line 491
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->getItemInstallInfo(JLcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;)Z

    move-result v0

    return v0
.end method

.method public getItemState(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Ljava/util/Collection;
    .registers 4
    .param p1, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codedisaster/steamworks/SteamPublishedFileID;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/codedisaster/steamworks/SteamUGC$ItemState;",
            ">;"
        }
    .end annotation

    .line 487
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUGCNative;->getItemState(J)I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->fromBits(I)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getItemUpdateProgress(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;)Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;
    .registers 7
    .param p1, "update"  # Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .param p2, "updateInfo"  # Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;

    .line 440
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 441
    .local v0, "values":[J
    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v1, v2, v0}, Lcom/codedisaster/steamworks/SteamUGCNative;->getItemUpdateProgress(J[J)I

    move-result v1

    invoke-static {v1}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    move-result-object v1

    .line 442
    .local v1, "status":Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p2, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;->bytesProcessed:J

    .line 443
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p2, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;->bytesTotal:J

    .line 444
    return-object v1
.end method

.method public getNumSubscribedItems()I
    .registers 2

    .line 472
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUGCNative;->getNumSubscribedItems()I

    move-result v0

    return v0
.end method

.method public getQueryUGCAdditionalPreview(Lcom/codedisaster/steamworks/SteamUGCQuery;IILcom/codedisaster/steamworks/SteamUGC$ItemAdditionalPreview;)Z
    .registers 7
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "index"  # I
    .param p3, "previewIndex"  # I
    .param p4, "previewInfo"  # Lcom/codedisaster/steamworks/SteamUGC$ItemAdditionalPreview;

    .line 290
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2, p3, p4}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCAdditionalPreview(JIILcom/codedisaster/steamworks/SteamUGC$ItemAdditionalPreview;)Z

    move-result v0

    return v0
.end method

.method public getQueryUGCKeyValueTag(Lcom/codedisaster/steamworks/SteamUGCQuery;II[Ljava/lang/String;)Z
    .registers 7
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "index"  # I
    .param p3, "keyValueTagIndex"  # I
    .param p4, "keyAndValue"  # [Ljava/lang/String;

    .line 298
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2, p3, p4}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCKeyValueTag(JII[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getQueryUGCMetadata(Lcom/codedisaster/steamworks/SteamUGCQuery;I)Ljava/lang/String;
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "index"  # I

    .line 276
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCMetadata(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryUGCNumAdditionalPreviews(Lcom/codedisaster/steamworks/SteamUGCQuery;I)I
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "index"  # I

    .line 284
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCNumAdditionalPreviews(JI)I

    move-result v0

    return v0
.end method

.method public getQueryUGCNumKeyValueTags(Lcom/codedisaster/steamworks/SteamUGCQuery;I)I
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "index"  # I

    .line 294
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCNumKeyValueTags(JI)I

    move-result v0

    return v0
.end method

.method public getQueryUGCPreviewURL(Lcom/codedisaster/steamworks/SteamUGCQuery;I)Ljava/lang/String;
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "index"  # I

    .line 272
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCPreviewURL(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryUGCResult(Lcom/codedisaster/steamworks/SteamUGCQuery;ILcom/codedisaster/steamworks/SteamUGCDetails;)Z
    .registers 6
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "index"  # I
    .param p3, "details"  # Lcom/codedisaster/steamworks/SteamUGCDetails;

    .line 268
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCResult(JILcom/codedisaster/steamworks/SteamUGCDetails;)Z

    move-result v0

    return v0
.end method

.method public getQueryUGCStatistic(Lcom/codedisaster/steamworks/SteamUGCQuery;ILcom/codedisaster/steamworks/SteamUGC$ItemStatistic;)J
    .registers 7
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "index"  # I
    .param p3, "statType"  # Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    .line 280
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-virtual {p3}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->ordinal()I

    move-result v2

    invoke-static {v0, v1, p2, v2}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCStatistic(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSubscribedItems([Lcom/codedisaster/steamworks/SteamPublishedFileID;)I
    .registers 8
    .param p1, "publishedFileIds"  # [Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 476
    array-length v0, p1

    new-array v0, v0, [J

    .line 477
    .local v0, "ids":[J
    array-length v1, p1

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUGCNative;->getSubscribedItems([JI)I

    move-result v1

    .line 479
    .local v1, "nb":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 480
    new-instance v3, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    aget-wide v4, v0, v2

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    aput-object v3, p1, v2

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 483
    .end local v2  # "i":I
    :cond_17
    return v1
.end method

.method public getUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 452
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->getUserItemVote(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public initWorkshopForGameServer(ILjava/lang/String;)Z
    .registers 4
    .param p1, "workshopDepotID"  # I
    .param p2, "folder"  # Ljava/lang/String;

    .line 513
    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->initWorkshopForGameServer(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public releaseQueryUserUGCRequest(Lcom/codedisaster/steamworks/SteamUGCQuery;)Z
    .registers 4
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;

    .line 302
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUGCNative;->releaseQueryUserUGCRequest(J)Z

    move-result v0

    return v0
.end method

.method public removeItemFromFavorites(ILcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 8
    .param p1, "appID"  # I
    .param p2, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 460
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p2, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, p1, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->removeItemFromFavorites(JIJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public removeItemKeyValueTags(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "update"  # Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .param p2, "key"  # Ljava/lang/String;

    .line 421
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->removeItemKeyValueTags(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestUGCDetails(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 8
    .param p1, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "maxAgeSeconds"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v3, v4, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->requestUGCDetails(JJI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public sendQueryUGCRequest(Lcom/codedisaster/steamworks/SteamUGCQuery;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;

    .line 264
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->sendQueryUGCRequest(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public setAllowCachedResponse(Lcom/codedisaster/steamworks/SteamUGCQuery;I)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "maxAgeSeconds"  # I

    .line 350
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setAllowCachedResponse(JI)Z

    move-result v0

    return v0
.end method

.method public setCloudFileNameFilter(Lcom/codedisaster/steamworks/SteamUGCQuery;Ljava/lang/String;)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "matchCloudFileName"  # Ljava/lang/String;

    .line 354
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setCloudFileNameFilter(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setItemContent(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "update"  # Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .param p2, "contentFolder"  # Ljava/lang/String;

    .line 413
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemContent(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setItemDescription(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "update"  # Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .param p2, "description"  # Ljava/lang/String;

    .line 391
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemDescription(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setItemMetadata(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "update"  # Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .param p2, "metaData"  # Ljava/lang/String;

    .line 399
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemMetadata(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setItemPreview(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "update"  # Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .param p2, "previewFile"  # Ljava/lang/String;

    .line 417
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemPreview(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setItemTags(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;[Ljava/lang/String;)Z
    .registers 6
    .param p1, "update"  # Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .param p2, "tags"  # [Ljava/lang/String;

    .line 409
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    array-length v2, p2

    invoke-static {v0, v1, p2, v2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemTags(J[Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setItemTitle(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "update"  # Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .param p2, "title"  # Ljava/lang/String;

    .line 387
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemTitle(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setItemUpdateLanguage(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "update"  # Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .param p2, "language"  # Ljava/lang/String;

    .line 395
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemUpdateLanguage(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setItemVisibility(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;)Z
    .registers 6
    .param p1, "update"  # Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .param p2, "visibility"  # Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    .line 405
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemVisibility(JI)Z

    move-result v0

    return v0
.end method

.method public setLanguage(Lcom/codedisaster/steamworks/SteamUGCQuery;Ljava/lang/String;)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "language"  # Ljava/lang/String;

    .line 346
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setLanguage(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMatchAnyTag(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "matchAnyTag"  # Z

    .line 358
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setMatchAnyTag(JZ)Z

    move-result v0

    return v0
.end method

.method public setRankedByTrendDays(Lcom/codedisaster/steamworks/SteamUGCQuery;I)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "days"  # I

    .line 366
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setRankedByTrendDays(JI)Z

    move-result v0

    return v0
.end method

.method public setReturnAdditionalPreviews(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "returnAdditionalPreviews"  # Z

    .line 334
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnAdditionalPreviews(JZ)Z

    move-result v0

    return v0
.end method

.method public setReturnChildren(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "returnChildren"  # Z

    .line 330
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnChildren(JZ)Z

    move-result v0

    return v0
.end method

.method public setReturnKeyValueTags(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "returnKeyValueTags"  # Z

    .line 318
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnKeyValueTags(JZ)Z

    move-result v0

    return v0
.end method

.method public setReturnLongDescription(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "returnLongDescription"  # Z

    .line 322
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnLongDescription(JZ)Z

    move-result v0

    return v0
.end method

.method public setReturnMetadata(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "returnMetadata"  # Z

    .line 326
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnMetadata(JZ)Z

    move-result v0

    return v0
.end method

.method public setReturnOnlyIDs(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "returnOnlyIDs"  # Z

    .line 314
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnOnlyIDs(JZ)Z

    move-result v0

    return v0
.end method

.method public setReturnPlaytimeStats(Lcom/codedisaster/steamworks/SteamUGCQuery;I)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "days"  # I

    .line 342
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnPlaytimeStats(JI)Z

    move-result v0

    return v0
.end method

.method public setReturnTotalOnly(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "returnTotalOnly"  # Z

    .line 338
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnTotalOnly(JZ)Z

    move-result v0

    return v0
.end method

.method public setSearchText(Lcom/codedisaster/steamworks/SteamUGCQuery;Ljava/lang/String;)Z
    .registers 5
    .param p1, "query"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "searchText"  # Ljava/lang/String;

    .line 362
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setSearchText(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;Z)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 8
    .param p1, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "voteUp"  # Z

    .line 448
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v3, v4, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setUserItemVote(JJZ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public startItemUpdate(ILcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .registers 6
    .param p1, "consumerAppID"  # I
    .param p2, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 383
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;

    iget-wide v1, p2, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {p1, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCNative;->startItemUpdate(IJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;-><init>(J)V

    return-object v0
.end method

.method public startPlaytimeTracking([Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "publishedFileIDs"  # [Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 521
    array-length v0, p1

    new-array v0, v0, [J

    .line 523
    .local v0, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_10

    .line 524
    aget-object v2, p1, v1

    iget-wide v2, v2, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    aput-wide v2, v0, v1

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 527
    .end local v1  # "i":I
    :cond_10
    new-instance v1, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v2, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    array-length v4, v0

    invoke-static {v2, v3, v0, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->startPlaytimeTracking(J[JI)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v1
.end method

.method public stopPlaytimeTracking([Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "publishedFileIDs"  # [Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 531
    array-length v0, p1

    new-array v0, v0, [J

    .line 533
    .local v0, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_10

    .line 534
    aget-object v2, p1, v1

    iget-wide v2, v2, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    aput-wide v2, v0, v1

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 537
    .end local v1  # "i":I
    :cond_10
    new-instance v1, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v2, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    array-length v4, v0

    invoke-static {v2, v3, v0, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->stopPlaytimeTracking(J[JI)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v1
.end method

.method public stopPlaytimeTrackingForAllItems()Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 4

    .line 541
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamUGCNative;->stopPlaytimeTrackingForAllItems(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public submitItemUpdate(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 8
    .param p1, "update"  # Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .param p2, "changeNote"  # Ljava/lang/String;

    .line 429
    if-nez p2, :cond_4

    .line 434
    const-string p2, ""

    .line 436
    :cond_4
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v1, v2, v3, v4, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->submitItemUpdate(JJLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public subscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 464
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->subscribeItem(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public suspendDownloads(Z)V
    .registers 2
    .param p1, "suspend"  # Z

    .line 517
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUGCNative;->suspendDownloads(Z)V

    .line 518
    return-void
.end method

.method public unsubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 468
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->unsubscribeItem(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method
