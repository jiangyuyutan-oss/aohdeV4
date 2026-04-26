.class public Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;
.super Ljava/lang/Object;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemUpdateInfo"
.end annotation


# instance fields
.field bytesProcessed:J

.field bytesTotal:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytesProcessed()J
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;->bytesProcessed:J

    return-wide v0
.end method

.method public getBytesTotal()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;->bytesTotal:J

    return-wide v0
.end method
