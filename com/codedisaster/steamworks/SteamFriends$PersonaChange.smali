.class public final enum Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersonaChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum Avatar:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum Broadcast:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum ComeOnline:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum GamePlayed:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum GameServer:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum GoneOffline:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum JoinedSource:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum LeftSource:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum Name:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum NameFirstSet:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum Nickname:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum RelationshipChanged:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum RichPresence:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum Status:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum SteamLevel:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 78
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const-string v1, "Name"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Name:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 79
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const-string v1, "Status"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Status:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 80
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const-string v1, "ComeOnline"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->ComeOnline:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 81
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const-string v1, "GoneOffline"

    const/4 v2, 0x3

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->GoneOffline:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 82
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const-string v1, "GamePlayed"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->GamePlayed:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 83
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/4 v1, 0x5

    const/16 v2, 0x20

    const-string v3, "GameServer"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->GameServer:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 84
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/4 v1, 0x6

    const/16 v2, 0x40

    const-string v3, "Avatar"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Avatar:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 85
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/4 v1, 0x7

    const/16 v2, 0x80

    const-string v3, "JoinedSource"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->JoinedSource:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 86
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const-string v1, "LeftSource"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v4, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->LeftSource:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 87
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/16 v1, 0x9

    const/16 v2, 0x200

    const-string v3, "RelationshipChanged"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->RelationshipChanged:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 88
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/16 v1, 0xa

    const/16 v2, 0x400

    const-string v3, "NameFirstSet"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->NameFirstSet:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 89
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/16 v1, 0xb

    const/16 v2, 0x800

    const-string v3, "Broadcast"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Broadcast:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 90
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/16 v1, 0xc

    const/16 v2, 0x1000

    const-string v3, "Nickname"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Nickname:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 91
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/16 v1, 0xd

    const/16 v2, 0x2000

    const-string v3, "SteamLevel"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->SteamLevel:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 92
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/16 v1, 0xe

    const/16 v2, 0x4000

    const-string v3, "RichPresence"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->RichPresence:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 76
    sget-object v4, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Name:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v5, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Status:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v6, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->ComeOnline:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v7, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->GoneOffline:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v8, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->GamePlayed:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v9, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->GameServer:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v10, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Avatar:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v11, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->JoinedSource:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v12, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->LeftSource:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v13, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->RelationshipChanged:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v14, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->NameFirstSet:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v15, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Broadcast:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v16, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Nickname:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v17, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->SteamLevel:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    sget-object v18, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->RichPresence:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    filled-new-array/range {v4 .. v18}, [Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

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

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->bits:I

    .line 98
    return-void
.end method

.method static isSet(Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;I)Z
    .registers 4
    .param p0, "value"  # Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;
    .param p1, "bitMask"  # I

    .line 101
    iget v0, p0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->bits:I

    and-int/2addr v0, p1

    iget v1, p0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->bits:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 76
    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;
    .registers 1

    .line 76
    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    return-object v0
.end method
