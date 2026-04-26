.class Lage/of/civilizations2/jakowski/lukasz/UGCCallback$1;
.super Ljava/lang/Object;
.source "UGCCallback.java"

# interfaces
.implements Lcom/codedisaster/steamworks/SteamUGCCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/UGCCallback;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"  # Z
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 48
    return-void
.end method

.method public onDeleteItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 3
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 98
    return-void
.end method

.method public onDownloadItemResult(ILcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "i"  # I
    .param p2, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 61
    return-void
.end method

.method public onGetUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZZZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 6
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"  # Z
    .param p3, "b1"  # Z
    .param p4, "b2"  # Z
    .param p5, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 77
    return-void
.end method

.method public onRequestUGCDetails(Lcom/codedisaster/steamworks/SteamUGCDetails;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 3
    .param p1, "steamUGCDetails"  # Lcom/codedisaster/steamworks/SteamUGCDetails;
    .param p2, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 38
    return-void
.end method

.method public onSetUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"  # Z
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 72
    return-void
.end method

.method public onStartPlaytimeTracking(Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 2
    .param p1, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 82
    return-void
.end method

.method public onStopPlaytimeTracking(Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 2
    .param p1, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 87
    return-void
.end method

.method public onStopPlaytimeTrackingForAllItems(Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 2
    .param p1, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 92
    return-void
.end method

.method public onSubmitItemUpdate(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"  # Z
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 54
    return-void
.end method

.method public onSubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 3
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 27
    return-void
.end method

.method public onUGCQueryCompleted(Lcom/codedisaster/steamworks/SteamUGCQuery;IIZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 6
    .param p1, "steamUGCQuery"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "i"  # I
    .param p3, "i1"  # I
    .param p4, "b"  # Z
    .param p5, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 21
    return-void
.end method

.method public onUnsubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 3
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 33
    return-void
.end method

.method public onUserFavoriteItemsListChanged(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"  # Z
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 67
    return-void
.end method
