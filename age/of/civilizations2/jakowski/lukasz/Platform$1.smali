.class Lage/of/civilizations2/jakowski/lukasz/Platform$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Platform;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadUGCResult(Lcom/codedisaster/steamworks/SteamUGCHandle;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 3
    .param p1, "steamUGCHandle"  # Lcom/codedisaster/steamworks/SteamUGCHandle;
    .param p2, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 64
    return-void
.end method

.method public onFileReadAsyncComplete(Lcom/codedisaster/steamworks/SteamAPICall;Lcom/codedisaster/steamworks/SteamResult;II)V
    .registers 5
    .param p1, "steamAPICall"  # Lcom/codedisaster/steamworks/SteamAPICall;
    .param p2, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;
    .param p3, "i"  # I
    .param p4, "i1"  # I

    .line 101
    return-void
.end method

.method public onFileShareResult(Lcom/codedisaster/steamworks/SteamUGCHandle;Ljava/lang/String;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "steamUGCHandle"  # Lcom/codedisaster/steamworks/SteamUGCHandle;
    .param p2, "s"  # Ljava/lang/String;
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 59
    return-void
.end method

.method public onFileWriteAsyncComplete(Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 2
    .param p1, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 94
    return-void
.end method

.method public onPublishFileResult(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"  # Z
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 69
    return-void
.end method

.method public onPublishedFileDeleted(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V
    .registers 3
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "i"  # I

    .line 89
    return-void
.end method

.method public onPublishedFileSubscribed(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V
    .registers 3
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "i"  # I

    .line 79
    return-void
.end method

.method public onPublishedFileUnsubscribed(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V
    .registers 3
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "i"  # I

    .line 84
    return-void
.end method

.method public onUpdatePublishedFileResult(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"  # Z
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 74
    return-void
.end method
