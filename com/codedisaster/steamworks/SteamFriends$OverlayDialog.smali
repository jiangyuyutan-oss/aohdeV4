.class public final enum Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverlayDialog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum Achievements:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum Community:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum Friends:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum OfficialGameGroup:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum Players:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum Settings:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum Stats:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 136
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v1, "Friends"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Friends:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    .line 137
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v1, "Community"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Community:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    .line 138
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v1, "Players"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Players:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    .line 139
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v1, "Settings"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Settings:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    .line 140
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v1, "OfficialGameGroup"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->OfficialGameGroup:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    .line 141
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v1, "Stats"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Stats:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    .line 142
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v1, "Achievements"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Achievements:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    .line 134
    sget-object v3, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Friends:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    sget-object v4, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Community:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    sget-object v5, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Players:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    sget-object v6, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Settings:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    sget-object v7, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->OfficialGameGroup:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    sget-object v8, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Stats:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    sget-object v9, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Achievements:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    filled-new-array/range {v3 .. v9}, [Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

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

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput-object p3, p0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->id:Ljava/lang/String;

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    .line 134
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->id:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 134
    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;
    .registers 1

    .line 134
    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    return-object v0
.end method
