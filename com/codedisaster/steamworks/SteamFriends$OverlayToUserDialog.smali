.class public final enum Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverlayToUserDialog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum Achievements:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum Chat:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum FriendAdd:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum FriendRemove:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum FriendRequestAccept:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum FriendRequestIgnore:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum JoinTrade:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum Stats:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum SteamID:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 153
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v1, 0x0

    const-string v2, "steamid"

    const-string v3, "SteamID"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->SteamID:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    .line 154
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v1, 0x1

    const-string v2, "chat"

    const-string v3, "Chat"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->Chat:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    .line 155
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v1, 0x2

    const-string v2, "jointrade"

    const-string v3, "JoinTrade"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->JoinTrade:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    .line 156
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v1, 0x3

    const-string v2, "stats"

    const-string v3, "Stats"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->Stats:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    .line 157
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v1, 0x4

    const-string v2, "achievements"

    const-string v3, "Achievements"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->Achievements:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    .line 158
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v1, 0x5

    const-string v2, "friendadd"

    const-string v3, "FriendAdd"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->FriendAdd:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    .line 159
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v1, 0x6

    const-string v2, "friendremove"

    const-string v3, "FriendRemove"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->FriendRemove:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    .line 160
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v1, 0x7

    const-string v2, "friendrequestaccept"

    const-string v3, "FriendRequestAccept"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->FriendRequestAccept:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    .line 161
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/16 v1, 0x8

    const-string v2, "friendrequestignore"

    const-string v3, "FriendRequestIgnore"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->FriendRequestIgnore:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    .line 151
    sget-object v4, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->SteamID:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    sget-object v5, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->Chat:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    sget-object v6, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->JoinTrade:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    sget-object v7, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->Stats:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    sget-object v8, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->Achievements:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    sget-object v9, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->FriendAdd:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    sget-object v10, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->FriendRemove:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    sget-object v11, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->FriendRequestAccept:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    sget-object v12, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->FriendRequestIgnore:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    filled-new-array/range {v4 .. v12}, [Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "id"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 166
    iput-object p3, p0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->id:Ljava/lang/String;

    .line 167
    return-void
.end method

.method static synthetic access$200(Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    .line 151
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->id:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 151
    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;
    .registers 1

    .line 151
    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    return-object v0
.end method
