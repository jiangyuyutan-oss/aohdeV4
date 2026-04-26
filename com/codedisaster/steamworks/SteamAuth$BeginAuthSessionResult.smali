.class public final enum Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;
.super Ljava/lang/Enum;
.source "SteamAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BeginAuthSessionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field public static final enum DuplicateRequest:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field public static final enum ExpiredTicket:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field public static final enum GameMismatch:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field public static final enum InvalidTicket:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field public static final enum InvalidVersion:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field public static final enum OK:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field private static final values:[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 9
    new-instance v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->OK:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    .line 10
    new-instance v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    const-string v1, "InvalidTicket"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->InvalidTicket:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    .line 11
    new-instance v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    const-string v1, "DuplicateRequest"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->DuplicateRequest:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    .line 12
    new-instance v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    const-string v1, "InvalidVersion"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->InvalidVersion:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    .line 13
    new-instance v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    const-string v1, "GameMismatch"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->GameMismatch:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    .line 14
    new-instance v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    const-string v1, "ExpiredTicket"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->ExpiredTicket:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    .line 8
    sget-object v3, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->OK:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    sget-object v4, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->InvalidTicket:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    sget-object v5, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->DuplicateRequest:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    sget-object v6, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->InvalidVersion:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    sget-object v7, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->GameMismatch:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    sget-object v8, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->ExpiredTicket:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    filled-new-array/range {v3 .. v8}, [Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->$VALUES:[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    .line 16
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->values()[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->values:[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

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

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;
    .registers 2
    .param p0, "authSessionResponse"  # I

    .line 19
    sget-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->values:[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;
    .registers 1

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->$VALUES:[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    return-object v0
.end method
