.class public final enum Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;
.super Ljava/lang/Enum;
.source "SteamMatchmaking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamMatchmaking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LobbyDistanceFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

.field public static final enum Close:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

.field public static final enum Default:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

.field public static final enum Far:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

.field public static final enum Worldwide:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 32
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    const-string v1, "Close"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->Close:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    .line 33
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    const-string v1, "Default"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->Default:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    .line 34
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    const-string v1, "Far"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->Far:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    .line 35
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    const-string v1, "Worldwide"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->Worldwide:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    .line 31
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->Close:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    sget-object v1, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->Default:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    sget-object v2, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->Far:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    sget-object v3, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->Worldwide:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    filled-new-array {v0, v1, v2, v3}, [Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;
    .registers 1

    .line 31
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;

    return-object v0
.end method
