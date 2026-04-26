.class public final enum Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;
.super Ljava/lang/Enum;
.source "SteamMatchmakingServerListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

.field public static final enum NoServersListedOnMasterServer:Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

.field public static final enum ServerFailedToRespond:Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

.field public static final enum ServerResponded:Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

.field private static final values:[Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    const-string v1, "ServerResponded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->ServerResponded:Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    .line 7
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    const-string v1, "ServerFailedToRespond"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->ServerFailedToRespond:Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    .line 8
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    const-string v1, "NoServersListedOnMasterServer"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->NoServersListedOnMasterServer:Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    .line 5
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->ServerResponded:Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    sget-object v1, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->ServerFailedToRespond:Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    sget-object v2, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->NoServersListedOnMasterServer:Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    filled-new-array {v0, v1, v2}, [Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    .line 10
    invoke-static {}, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->values()[Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->values:[Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;
    .registers 2
    .param p0, "ordinal"  # I

    .line 13
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->values:[Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 5
    const-class v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;
    .registers 1

    .line 5
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    return-object v0
.end method
