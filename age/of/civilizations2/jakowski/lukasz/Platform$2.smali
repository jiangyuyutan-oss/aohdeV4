.class Lage/of/civilizations2/jakowski/lukasz/Platform$2;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lcom/codedisaster/steamworks/SteamUGCCallback;


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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 8
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"  # Z
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 136
    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUCP:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 138
    sget-object v0, Lcom/codedisaster/steamworks/SteamResult;->OK:Lcom/codedisaster/steamworks/SteamResult;

    if-ne p3, v0, :cond_16

    .line 139
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "UploadedSuccessfully"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_46

    .line 142
    :cond_16
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Error"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/codedisaster/steamworks/SteamResult;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_1:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 145
    :goto_46
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->DONE:Z

    .line 147
    return-void
.end method

.method public onDeleteItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 3
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 206
    return-void
.end method

.method public onDownloadItemResult(ILcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "i"  # I
    .param p2, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 169
    return-void
.end method

.method public onGetUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZZZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 6
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"  # Z
    .param p3, "b1"  # Z
    .param p4, "b2"  # Z
    .param p5, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 185
    return-void
.end method

.method public onRequestUGCDetails(Lcom/codedisaster/steamworks/SteamUGCDetails;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 3
    .param p1, "steamUGCDetails"  # Lcom/codedisaster/steamworks/SteamUGCDetails;
    .param p2, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 127
    return-void
.end method

.method public onSetUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"  # Z
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 180
    return-void
.end method

.method public onStartPlaytimeTracking(Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 2
    .param p1, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 190
    return-void
.end method

.method public onStopPlaytimeTracking(Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 2
    .param p1, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 195
    return-void
.end method

.method public onStopPlaytimeTrackingForAllItems(Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 2
    .param p1, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 200
    return-void
.end method

.method public onSubmitItemUpdate(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 8
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"  # Z
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 153
    sget-object v0, Lcom/codedisaster/steamworks/SteamResult;->OK:Lcom/codedisaster/steamworks/SteamResult;

    if-ne p3, v0, :cond_14

    .line 154
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "UploadedSuccessfully"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_44

    .line 157
    :cond_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Error"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/codedisaster/steamworks/SteamResult;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_1:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 160
    :goto_44
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->DONE:Z

    .line 161
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Editors/GameCivs/Edit/Menu_Workshop_Load;->uploaded:Z

    .line 162
    return-void
.end method

.method public onSubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 3
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 116
    return-void
.end method

.method public onUGCQueryCompleted(Lcom/codedisaster/steamworks/SteamUGCQuery;IIZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 6
    .param p1, "steamUGCQuery"  # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "i"  # I
    .param p3, "i1"  # I
    .param p4, "b"  # Z
    .param p5, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 110
    return-void
.end method

.method public onUnsubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 3
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 122
    return-void
.end method

.method public onUserFavoriteItemsListChanged(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "steamPublishedFileID"  # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"  # Z
    .param p3, "steamResult"  # Lcom/codedisaster/steamworks/SteamResult;

    .line 175
    return-void
.end method
