.class public Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;
.super Ljava/lang/Object;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemInstallInfo"
.end annotation


# instance fields
.field private folder:Ljava/lang/String;

.field private sizeOnDisk:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFolder()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeOnDisk()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->sizeOnDisk:I

    return v0
.end method
