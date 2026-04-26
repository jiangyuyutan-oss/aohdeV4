.class public Lcom/codedisaster/steamworks/SteamRemoteStorage;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamRemoteStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;,
        Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;,
        Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;,
        Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;)V
    .registers 4
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    .line 80
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->createCallback(Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 81
    return-void
.end method


# virtual methods
.method public commitPublishedFileUpdate(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "updateHandle"  # Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;

    .line 249
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->commitPublishedFileUpdate(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public createPublishedFileUpdateRequest(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;
    .registers 5
    .param p1, "publishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 217
    new-instance v0, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    .line 218
    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->createPublishedFileUpdateRequest(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;-><init>(J)V

    .line 217
    return-object v0
.end method

.method public bridge synthetic dispose()V
    .registers 1

    .line 5
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public fileDelete(Ljava/lang/String;)Z
    .registers 3
    .param p1, "file"  # Ljava/lang/String;

    .line 112
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileDelete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fileExists(Ljava/lang/String;)Z
    .registers 3
    .param p1, "file"  # Ljava/lang/String;

    .line 141
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fileForget(Ljava/lang/String;)Z
    .registers 3
    .param p1, "file"  # Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileForget(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public filePersisted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "file"  # Ljava/lang/String;

    .line 145
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->filePersisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fileRead(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "file"  # Ljava/lang/String;
    .param p2, "buffer"  # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->checkBuffer(Ljava/nio/Buffer;)V

    .line 90
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileRead(Ljava/lang/String;Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public fileReadAsync(Ljava/lang/String;II)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 7
    .param p1, "file"  # Ljava/lang/String;
    .param p2, "offset"  # I
    .param p3, "toRead"  # I

    .line 100
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage;->callback:J

    invoke-static {v1, v2, p1, p2, p3}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileReadAsync(JLjava/lang/String;II)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public fileReadAsyncComplete(Lcom/codedisaster/steamworks/SteamAPICall;Ljava/nio/ByteBuffer;I)Z
    .registers 10
    .param p1, "readCall"  # Lcom/codedisaster/steamworks/SteamAPICall;
    .param p2, "buffer"  # Ljava/nio/ByteBuffer;
    .param p3, "toRead"  # I

    .line 104
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamAPICall;->handle:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v3, v2

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileReadAsyncComplete(JLjava/nio/ByteBuffer;JI)Z

    move-result v0

    return v0
.end method

.method public fileShare(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 5
    .param p1, "file"  # Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage;->callback:J

    invoke-static {v1, v2, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileShare(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public fileWrite(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    .registers 5
    .param p1, "file"  # Ljava/lang/String;
    .param p2, "data"  # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->checkBuffer(Ljava/nio/Buffer;)V

    .line 85
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileWrite(Ljava/lang/String;Ljava/nio/ByteBuffer;II)Z

    move-result v0

    return v0
.end method

.method public fileWriteAsync(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 10
    .param p1, "file"  # Ljava/lang/String;
    .param p2, "data"  # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->checkBuffer(Ljava/nio/Buffer;)V

    .line 95
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage;->callback:J

    .line 96
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 95
    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileWriteAsync(JLjava/lang/String;Ljava/nio/ByteBuffer;II)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public fileWriteStreamCancel(Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;)Z
    .registers 4
    .param p1, "stream"  # Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;

    .line 137
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileWriteStreamCancel(J)Z

    move-result v0

    return v0
.end method

.method public fileWriteStreamClose(Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;)Z
    .registers 4
    .param p1, "stream"  # Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;

    .line 133
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileWriteStreamClose(J)Z

    move-result v0

    return v0
.end method

.method public fileWriteStreamOpen(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileWriteStreamOpen(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;-><init>(J)V

    return-object v0
.end method

.method public fileWriteStreamWriteChunk(Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;Ljava/nio/ByteBuffer;)Z
    .registers 7
    .param p1, "stream"  # Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;
    .param p2, "data"  # Ljava/nio/ByteBuffer;

    .line 128
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;->handle:J

    .line 129
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 128
    invoke-static {v0, v1, p2, v2, v3}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileWriteStreamWriteChunk(JLjava/nio/ByteBuffer;II)Z

    move-result v0

    return v0
.end method

.method public getCachedUGCCount()I
    .registers 2

    .line 199
    invoke-static {}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getCachedUGCCount()I

    move-result v0

    return v0
.end method

.method public getCachedUGCHandle(I)Lcom/codedisaster/steamworks/SteamUGCHandle;
    .registers 5
    .param p1, "cachedContent"  # I

    .line 203
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCHandle;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getCachedUGCHandle(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCHandle;-><init>(J)V

    return-object v0
.end method

.method public getFileCount()I
    .registers 2

    .line 162
    invoke-static {}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getFileCount()I

    move-result v0

    return v0
.end method

.method public getFileNameAndSize(I[I)Ljava/lang/String;
    .registers 4
    .param p1, "index"  # I
    .param p2, "sizes"  # [I

    .line 166
    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getFileNameAndSize(I[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize(Ljava/lang/String;)I
    .registers 3
    .param p1, "file"  # Ljava/lang/String;

    .line 149
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getFileSize(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFileTimestamp(Ljava/lang/String;)J
    .registers 4
    .param p1, "file"  # Ljava/lang/String;

    .line 153
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getFileTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuota([J[J)Z
    .registers 4
    .param p1, "totalBytes"  # [J
    .param p2, "availableBytes"  # [J

    .line 170
    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getQuota([J[J)Z

    move-result v0

    return v0
.end method

.method public getSyncPlatforms(Ljava/lang/String;)[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    .registers 4
    .param p1, "file"  # Ljava/lang/String;

    .line 157
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getSyncPlatforms(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "mask":I
    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->byMask(I)[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    move-result-object v1

    return-object v1
.end method

.method public getUGCDownloadProgress(Lcom/codedisaster/steamworks/SteamUGCHandle;[I[I)Z
    .registers 6
    .param p1, "fileHandle"  # Lcom/codedisaster/steamworks/SteamUGCHandle;
    .param p2, "bytesDownloaded"  # [I
    .param p3, "bytesExpected"  # [I

    .line 190
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCHandle;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getUGCDownloadProgress(J[I[I)Z

    move-result v0

    return v0
.end method

.method public isCloudEnabledForAccount()Z
    .registers 2

    .line 174
    invoke-static {}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->isCloudEnabledForAccount()Z

    move-result v0

    return v0
.end method

.method public isCloudEnabledForApp()Z
    .registers 2

    .line 178
    invoke-static {}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->isCloudEnabledForApp()Z

    move-result v0

    return v0
.end method

.method public publishWorkshopFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;[Ljava/lang/String;Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 23
    .param p1, "file"  # Ljava/lang/String;
    .param p2, "previewFile"  # Ljava/lang/String;
    .param p3, "consumerAppID"  # I
    .param p4, "title"  # Ljava/lang/String;
    .param p5, "description"  # Ljava/lang/String;
    .param p6, "visibility"  # Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;
    .param p7, "tags"  # [Ljava/lang/String;
    .param p8, "workshopFileType"  # Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 211
    move-object/from16 v11, p7

    new-instance v12, Lcom/codedisaster/steamworks/SteamAPICall;

    move-object v13, p0

    iget-wide v0, v13, Lcom/codedisaster/steamworks/SteamRemoteStorage;->callback:J

    .line 213
    invoke-virtual/range {p6 .. p6}, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->ordinal()I

    move-result v7

    if-eqz v11, :cond_f

    array-length v2, v11

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    move v9, v2

    invoke-virtual/range {p8 .. p8}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->ordinal()I

    move-result v10

    .line 211
    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v10}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->publishWorkshopFile(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;II)J

    move-result-wide v0

    invoke-direct {v12, v0, v1}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v12
.end method

.method public setCloudEnabledForApp(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 182
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->setCloudEnabledForApp(Z)V

    .line 183
    return-void
.end method

.method public setSyncPlatforms(Ljava/lang/String;Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;)Z
    .registers 4
    .param p1, "file"  # Ljava/lang/String;
    .param p2, "remoteStoragePlatform"  # Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 120
    invoke-static {p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->access$000(Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->setSyncPlatforms(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public ugcDownload(Lcom/codedisaster/steamworks/SteamUGCHandle;I)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 8
    .param p1, "fileHandle"  # Lcom/codedisaster/steamworks/SteamUGCHandle;
    .param p2, "priority"  # I

    .line 186
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamUGCHandle;->handle:J

    invoke-static {v1, v2, v3, v4, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->ugcDownload(JJI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public ugcRead(Lcom/codedisaster/steamworks/SteamUGCHandle;Ljava/nio/ByteBuffer;IILcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;)I
    .registers 13
    .param p1, "fileHandle"  # Lcom/codedisaster/steamworks/SteamUGCHandle;
    .param p2, "buffer"  # Ljava/nio/ByteBuffer;
    .param p3, "dataToRead"  # I
    .param p4, "offset"  # I
    .param p5, "action"  # Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

    .line 194
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCHandle;->handle:J

    .line 195
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p5}, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;->ordinal()I

    move-result v6

    .line 194
    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->ugcRead(JLjava/nio/ByteBuffer;IIII)I

    move-result v0

    return v0
.end method

.method public updatePublishedFileDescription(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "updateHandle"  # Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;
    .param p2, "description"  # Ljava/lang/String;

    .line 234
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->updatePublishedFileDescription(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updatePublishedFileFile(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "updateHandle"  # Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;
    .param p2, "file"  # Ljava/lang/String;

    .line 222
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->updatePublishedFileFile(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updatePublishedFilePreviewFile(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "updateHandle"  # Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;
    .param p2, "previewFile"  # Ljava/lang/String;

    .line 226
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->updatePublishedFilePreviewFile(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updatePublishedFileTags(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;[Ljava/lang/String;)Z
    .registers 6
    .param p1, "updateHandle"  # Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;
    .param p2, "tags"  # [Ljava/lang/String;

    .line 244
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    if-eqz p2, :cond_6

    array-length v2, p2

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v0, v1, p2, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->updatePublishedFileTags(J[Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updatePublishedFileTitle(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "updateHandle"  # Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;
    .param p2, "title"  # Ljava/lang/String;

    .line 230
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->updatePublishedFileTitle(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updatePublishedFileVisibility(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;)Z
    .registers 6
    .param p1, "updateHandle"  # Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;
    .param p2, "visibility"  # Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    .line 240
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->updatePublishedFileVisibility(JI)Z

    move-result v0

    return v0
.end method
