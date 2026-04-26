.class public final enum Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendRelationship"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum Blocked:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum Friend:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum Ignored:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum IgnoredFriend:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum Max:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum Recipient:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum RequestInitiator:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum Suggested_DEPRECATED:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field private static final values:[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 9
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->None:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    .line 10
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v1, "Blocked"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Blocked:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    .line 11
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v1, "Recipient"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Recipient:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    .line 12
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v1, "Friend"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Friend:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    .line 13
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v1, "RequestInitiator"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->RequestInitiator:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    .line 14
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v1, "Ignored"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Ignored:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    .line 15
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v1, "IgnoredFriend"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->IgnoredFriend:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    .line 16
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v1, "Suggested_DEPRECATED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Suggested_DEPRECATED:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    .line 17
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v1, "Max"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Max:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    .line 8
    sget-object v3, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->None:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    sget-object v4, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Blocked:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    sget-object v5, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Recipient:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    sget-object v6, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Friend:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    sget-object v7, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->RequestInitiator:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    sget-object v8, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Ignored:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    sget-object v9, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->IgnoredFriend:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    sget-object v10, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Suggested_DEPRECATED:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    sget-object v11, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Max:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    filled-new-array/range {v3 .. v11}, [Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    .line 19
    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->values()[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->values:[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;
    .registers 2
    .param p0, "friendRelationship"  # I

    .line 22
    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->values:[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;
    .registers 1

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    return-object v0
.end method
