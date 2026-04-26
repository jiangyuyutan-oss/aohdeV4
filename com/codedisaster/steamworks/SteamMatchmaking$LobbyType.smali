.class public final enum Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;
.super Ljava/lang/Enum;
.source "SteamMatchmaking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamMatchmaking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LobbyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

.field public static final enum FriendsOnly:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

.field public static final enum Invisible:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

.field public static final enum Private:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

.field public static final enum PrivateUnique:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

.field public static final enum Public:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 9
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    const-string v1, "Private"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->Private:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    .line 10
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    const-string v1, "FriendsOnly"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->FriendsOnly:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    .line 11
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    const-string v1, "Public"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->Public:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    .line 12
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    const-string v1, "Invisible"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->Invisible:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    .line 13
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    const-string v1, "PrivateUnique"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->PrivateUnique:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->Private:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    sget-object v1, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->FriendsOnly:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    sget-object v2, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->Public:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    sget-object v3, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->Invisible:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    sget-object v4, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->PrivateUnique:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;
    .registers 1

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;

    return-object v0
.end method
