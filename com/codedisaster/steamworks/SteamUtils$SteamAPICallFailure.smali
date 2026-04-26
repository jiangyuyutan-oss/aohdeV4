.class public final enum Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;
.super Ljava/lang/Enum;
.source "SteamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SteamAPICallFailure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

.field public static final enum InvalidHandle:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

.field public static final enum MismatchedCallback:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

.field public static final enum NetworkFailure:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

.field public static final enum SteamGone:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

.field private static final values:[Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 9
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    const/4 v1, -0x1

    const-string v2, "None"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->None:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    .line 10
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    const-string v1, "SteamGone"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->SteamGone:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    .line 11
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    const-string v1, "NetworkFailure"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->NetworkFailure:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    .line 12
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    const-string v1, "InvalidHandle"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->InvalidHandle:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    .line 13
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    const-string v1, "MismatchedCallback"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->MismatchedCallback:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->None:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    sget-object v1, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->SteamGone:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    sget-object v2, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->NetworkFailure:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    sget-object v3, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->InvalidHandle:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    sget-object v4, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->MismatchedCallback:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->$VALUES:[Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    .line 16
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->values()[Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->values:[Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "code"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->code:I

    .line 20
    return-void
.end method

.method static byValue(I)Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;
    .registers 6
    .param p0, "code"  # I

    .line 23
    sget-object v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->values:[Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 24
    .local v3, "value":Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;
    iget v4, v3, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->code:I

    if-ne v4, p0, :cond_d

    .line 25
    return-object v3

    .line 23
    .end local v3  # "value":Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 28
    :cond_10
    sget-object v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->None:Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;
    .registers 1

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->$VALUES:[Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    return-object v0
.end method
