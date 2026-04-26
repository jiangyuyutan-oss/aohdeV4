.class public final enum Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;
.super Ljava/lang/Enum;
.source "SteamNetworking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamNetworking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "P2PSend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

.field public static final enum Reliable:Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

.field public static final enum ReliableWithBuffering:Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

.field public static final enum Unreliable:Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

.field public static final enum UnreliableNoDelay:Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 9
    new-instance v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    const-string v1, "Unreliable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->Unreliable:Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    .line 10
    new-instance v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    const-string v1, "UnreliableNoDelay"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->UnreliableNoDelay:Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    .line 11
    new-instance v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    const-string v1, "Reliable"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->Reliable:Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    .line 12
    new-instance v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    const-string v1, "ReliableWithBuffering"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->ReliableWithBuffering:Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->Unreliable:Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    sget-object v1, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->UnreliableNoDelay:Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    sget-object v2, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->Reliable:Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    sget-object v3, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->ReliableWithBuffering:Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    filled-new-array {v0, v1, v2, v3}, [Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->$VALUES:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;
    .registers 1

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->$VALUES:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;

    return-object v0
.end method
