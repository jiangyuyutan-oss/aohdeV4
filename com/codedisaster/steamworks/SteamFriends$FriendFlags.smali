.class public final enum Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum All:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum Blocked:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum ChatMember:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum ClanMember:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum FriendshipRequested:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum Ignored:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum IgnoredFriend:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum Immediate:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum OnGameServer:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum RequestingFriendship:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum RequestingInfo:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 45
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->None:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 46
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const-string v1, "Blocked"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->Blocked:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 47
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const-string v1, "FriendshipRequested"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->FriendshipRequested:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 48
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const-string v1, "Immediate"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->Immediate:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 49
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const-string v1, "ClanMember"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->ClanMember:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 50
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/4 v1, 0x5

    const/16 v3, 0x10

    const-string v4, "OnGameServer"

    invoke-direct {v0, v4, v1, v3}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->OnGameServer:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 53
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/4 v1, 0x6

    const/16 v3, 0x80

    const-string v4, "RequestingFriendship"

    invoke-direct {v0, v4, v1, v3}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->RequestingFriendship:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 54
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/4 v1, 0x7

    const/16 v3, 0x100

    const-string v4, "RequestingInfo"

    invoke-direct {v0, v4, v1, v3}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->RequestingInfo:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 55
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const-string v1, "Ignored"

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->Ignored:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 56
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/16 v1, 0x9

    const/16 v2, 0x400

    const-string v3, "IgnoredFriend"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->IgnoredFriend:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 58
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/16 v1, 0xa

    const/16 v2, 0x1000

    const-string v3, "ChatMember"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->ChatMember:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 59
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/16 v1, 0xb

    const v2, 0xffff

    const-string v3, "All"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->All:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 43
    sget-object v4, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->None:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    sget-object v5, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->Blocked:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    sget-object v6, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->FriendshipRequested:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    sget-object v7, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->Immediate:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    sget-object v8, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->ClanMember:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    sget-object v9, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->OnGameServer:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    sget-object v10, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->RequestingFriendship:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    sget-object v11, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->RequestingInfo:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    sget-object v12, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->Ignored:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    sget-object v13, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->IgnoredFriend:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    sget-object v14, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->ChatMember:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    sget-object v15, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->All:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    filled-new-array/range {v4 .. v15}, [Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "bits"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->bits:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;)I
    .registers 2
    .param p0, "x0"  # Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 43
    iget v0, p0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->bits:I

    return v0
.end method

.method static asBits(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;",
            ">;)I"
        }
    .end annotation

    .line 68
    .local p0, "friendFlags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;>;"
    const/4 v0, 0x0

    .line 69
    .local v0, "bits":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 70
    .local v2, "flags":Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;
    iget v3, v2, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->bits:I

    or-int/2addr v0, v3

    .line 71
    .end local v2  # "flags":Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;
    goto :goto_5

    .line 72
    :cond_15
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 43
    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;
    .registers 1

    .line 43
    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    return-object v0
.end method
