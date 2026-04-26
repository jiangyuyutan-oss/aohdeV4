.class public final enum Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;
.super Ljava/lang/Enum;
.source "SteamUserStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUserStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeaderboardDataRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

.field public static final enum Friends:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

.field public static final enum Global:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

.field public static final enum GlobalAroundUser:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

.field public static final enum Users:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 7
    new-instance v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    const-string v1, "Global"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->Global:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    .line 8
    new-instance v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    const-string v1, "GlobalAroundUser"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->GlobalAroundUser:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    .line 9
    new-instance v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    const-string v1, "Friends"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->Friends:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    .line 10
    new-instance v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    const-string v1, "Users"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->Users:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    .line 6
    sget-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->Global:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    sget-object v1, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->GlobalAroundUser:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    sget-object v2, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->Friends:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    sget-object v3, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->Users:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    filled-new-array {v0, v1, v2, v3}, [Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->$VALUES:[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;
    .registers 1

    .line 6
    sget-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->$VALUES:[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;

    return-object v0
.end method
