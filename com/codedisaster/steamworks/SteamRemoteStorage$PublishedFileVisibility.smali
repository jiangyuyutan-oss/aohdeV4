.class public final enum Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;
.super Ljava/lang/Enum;
.source "SteamRemoteStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamRemoteStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PublishedFileVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

.field public static final enum FriendsOnly:Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

.field public static final enum Private:Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

.field public static final enum Public:Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    const-string v1, "Public"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->Public:Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    .line 50
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    const-string v1, "FriendsOnly"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->FriendsOnly:Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    .line 51
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    const-string v1, "Private"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->Private:Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    .line 48
    sget-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->Public:Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    sget-object v1, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->FriendsOnly:Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    sget-object v2, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->Private:Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    filled-new-array {v0, v1, v2}, [Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->$VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 48
    const-class v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;
    .registers 1

    .line 48
    sget-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->$VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    return-object v0
.end method
