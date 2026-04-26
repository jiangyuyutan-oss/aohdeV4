.class public final enum Lcom/codedisaster/steamworks/SteamFriends$PersonaState;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersonaState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$PersonaState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum Away:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum Busy:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum Invisible:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum LookingToPlay:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum LookingToTrade:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum Offline:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum Online:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum Snooze:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field private static final values:[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 27
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v1, "Offline"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Offline:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    .line 28
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v1, "Online"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Online:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    .line 29
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v1, "Busy"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Busy:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    .line 30
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v1, "Away"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Away:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    .line 31
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v1, "Snooze"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Snooze:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    .line 32
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v1, "LookingToTrade"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->LookingToTrade:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    .line 33
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v1, "LookingToPlay"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->LookingToPlay:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    .line 34
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v1, "Invisible"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Invisible:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    .line 26
    sget-object v3, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Offline:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    sget-object v4, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Online:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    sget-object v5, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Busy:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    sget-object v6, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Away:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    sget-object v7, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Snooze:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    sget-object v8, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->LookingToTrade:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    sget-object v9, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->LookingToPlay:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    sget-object v10, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Invisible:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    filled-new-array/range {v3 .. v10}, [Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    .line 36
    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->values()[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->values:[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamFriends$PersonaState;
    .registers 2
    .param p0, "personaState"  # I

    .line 39
    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->values:[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$PersonaState;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;
    .registers 1

    .line 26
    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    return-object v0
.end method
