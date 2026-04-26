.class public final enum Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;
.super Ljava/lang/Enum;
.source "SteamMatchmaking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamMatchmaking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatMemberStateChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

.field public static final enum Banned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

.field public static final enum Disconnected:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

.field public static final enum Entered:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

.field public static final enum Kicked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

.field public static final enum Left:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 70
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    const-string v1, "Entered"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Entered:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    .line 71
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    const-string v1, "Left"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Left:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    .line 72
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    const-string v1, "Disconnected"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Disconnected:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    .line 73
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v4, "Kicked"

    invoke-direct {v0, v4, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Kicked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    .line 74
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    const-string v1, "Banned"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Banned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    .line 69
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Entered:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    sget-object v1, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Left:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    sget-object v2, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Disconnected:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    sget-object v3, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Kicked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    sget-object v4, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Banned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "bits"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->bits:I

    .line 80
    return-void
.end method

.method static isSet(Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;I)Z
    .registers 4
    .param p0, "value"  # Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;
    .param p1, "bitMask"  # I

    .line 83
    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->bits:I

    and-int/2addr v0, p1

    iget v1, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->bits:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 69
    const-class v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;
    .registers 1

    .line 69
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    return-object v0
.end method
