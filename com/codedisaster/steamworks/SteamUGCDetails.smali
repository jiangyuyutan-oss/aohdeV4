.class public Lcom/codedisaster/steamworks/SteamUGCDetails;
.super Ljava/lang/Object;
.source "SteamUGCDetails.java"


# instance fields
.field description:Ljava/lang/String;

.field fileHandle:J

.field fileName:Ljava/lang/String;

.field fileSize:I

.field fileType:I

.field ownerID:J

.field previewFileHandle:J

.field previewFileSize:I

.field publishedFileID:J

.field result:I

.field tags:Ljava/lang/String;

.field tagsTruncated:Z

.field timeCreated:I

.field timeUpdated:I

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;

.field votesDown:I

.field votesUp:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areTagsTruncated()Z
    .registers 2

    .line 68
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->tagsTruncated:Z

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileHandle()Lcom/codedisaster/steamworks/SteamUGCHandle;
    .registers 4

    .line 76
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCHandle;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->fileHandle:J

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCHandle;-><init>(J)V

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->fileSize:I

    return v0
.end method

.method public getFileType()Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;
    .registers 2

    .line 44
    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->fileType:I

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerID()Lcom/codedisaster/steamworks/SteamID;
    .registers 4

    .line 56
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->ownerID:J

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getPreviewFileHandle()Lcom/codedisaster/steamworks/SteamUGCHandle;
    .registers 4

    .line 80
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCHandle;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->previewFileHandle:J

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCHandle;-><init>(J)V

    return-object v0
.end method

.method public getPreviewFileSize()I
    .registers 2

    .line 92
    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->previewFileSize:I

    return v0
.end method

.method public getPublishedFileID()Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .registers 4

    .line 36
    new-instance v0, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->publishedFileID:J

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    return-object v0
.end method

.method public getResult()Lcom/codedisaster/steamworks/SteamResult;
    .registers 2

    .line 40
    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->result:I

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeCreated()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->timeCreated:I

    return v0
.end method

.method public getTimeUpdated()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->timeUpdated:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVotesDown()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->votesDown:I

    return v0
.end method

.method public getVotesUp()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->votesUp:I

    return v0
.end method
