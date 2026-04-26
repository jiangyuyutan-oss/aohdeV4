.class public final enum Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;
.super Ljava/lang/Enum;
.source "SteamMatchmaking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamMatchmaking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatRoomEnterResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum Banned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum ClanDisabled:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum CommunityBan:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum DoesntExist:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum Error:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum Full:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum Limited:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum MemberBlockedYou:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum NotAllowed:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum RatelimitExceeded:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum Success:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum YouBlockedMember:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field private static final values:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 39
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "Success"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Success:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 40
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "DoesntExist"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->DoesntExist:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 41
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "NotAllowed"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->NotAllowed:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 42
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "Full"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Full:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 43
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "Error"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Error:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 44
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "Banned"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Banned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 45
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "Limited"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Limited:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 46
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "ClanDisabled"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->ClanDisabled:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 47
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "CommunityBan"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->CommunityBan:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 48
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "MemberBlockedYou"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->MemberBlockedYou:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 49
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "YouBlockedMember"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->YouBlockedMember:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 50
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "RatelimitExceeded"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->RatelimitExceeded:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 38
    sget-object v4, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Success:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    sget-object v5, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->DoesntExist:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    sget-object v6, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->NotAllowed:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    sget-object v7, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Full:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    sget-object v8, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Error:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    sget-object v9, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Banned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    sget-object v10, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Limited:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    sget-object v11, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->ClanDisabled:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    sget-object v12, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->CommunityBan:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    sget-object v13, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->MemberBlockedYou:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    sget-object v14, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->YouBlockedMember:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    sget-object v15, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->RatelimitExceeded:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    filled-new-array/range {v4 .. v15}, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    .line 53
    invoke-static {}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->values()[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->values:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "code"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->code:I

    .line 57
    return-void
.end method

.method static byValue(I)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;
    .registers 6
    .param p0, "code"  # I

    .line 60
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->values:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 61
    .local v3, "value":Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;
    iget v4, v3, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->code:I

    if-ne v4, p0, :cond_d

    .line 62
    return-object v3

    .line 60
    .end local v3  # "value":Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 65
    :cond_10
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Error:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 38
    const-class v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;
    .registers 1

    .line 38
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    return-object v0
.end method
