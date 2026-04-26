.class public final enum Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;
.super Ljava/lang/Enum;
.source "SteamHTTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamHTTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTPMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum DELETE:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum GET:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum HEAD:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum Invalid:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum OPTIONS:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum POST:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum PUT:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 9
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->Invalid:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    .line 10
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v1, "GET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->GET:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    .line 11
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v1, "HEAD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->HEAD:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    .line 12
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v1, "POST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->POST:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    .line 13
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v1, "PUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->PUT:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    .line 14
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v1, "DELETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->DELETE:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    .line 15
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v1, "OPTIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->OPTIONS:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    .line 8
    sget-object v3, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->Invalid:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    sget-object v4, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->GET:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    sget-object v5, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->HEAD:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    sget-object v6, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->POST:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    sget-object v7, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->PUT:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    sget-object v8, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->DELETE:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    sget-object v9, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->OPTIONS:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    filled-new-array/range {v3 .. v9}, [Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->$VALUES:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;
    .registers 1

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->$VALUES:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    return-object v0
.end method
