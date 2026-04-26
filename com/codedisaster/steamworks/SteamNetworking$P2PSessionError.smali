.class public final enum Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;
.super Ljava/lang/Enum;
.source "SteamNetworking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamNetworking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "P2PSessionError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

.field public static final enum DestinationNotLoggedIn:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

.field public static final enum NoRightsToApp:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

.field public static final enum NotRunningApp:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

.field public static final enum Timeout:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

.field private static final values:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 16
    new-instance v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->None:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    .line 17
    new-instance v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    const-string v1, "NotRunningApp"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->NotRunningApp:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    .line 18
    new-instance v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    const-string v1, "NoRightsToApp"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->NoRightsToApp:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    .line 19
    new-instance v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    const-string v1, "DestinationNotLoggedIn"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->DestinationNotLoggedIn:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    .line 20
    new-instance v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    const-string v1, "Timeout"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->Timeout:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    .line 15
    sget-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->None:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    sget-object v1, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->NotRunningApp:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    sget-object v2, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->NoRightsToApp:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    sget-object v3, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->DestinationNotLoggedIn:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    sget-object v4, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->Timeout:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->$VALUES:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    .line 22
    invoke-static {}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->values()[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->values:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static byOrdinal(I)Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;
    .registers 2
    .param p0, "sessionError"  # I

    .line 25
    sget-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->values:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;
    .registers 1

    .line 15
    sget-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->$VALUES:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    return-object v0
.end method
