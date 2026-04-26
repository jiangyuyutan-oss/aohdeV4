.class public Lcom/codedisaster/steamworks/SteamUGC$ItemAdditionalPreview;
.super Ljava/lang/Object;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemAdditionalPreview"
.end annotation


# instance fields
.field private originalFileName:Ljava/lang/String;

.field private previewType:I

.field private urlOrVideoID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOriginalFileName()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemAdditionalPreview;->originalFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewType()Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;
    .registers 2

    .line 222
    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemAdditionalPreview;->previewType:I

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->byValue(I)Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    move-result-object v0

    return-object v0
.end method

.method public getUrlOrVideoID()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemAdditionalPreview;->urlOrVideoID:Ljava/lang/String;

    return-object v0
.end method
