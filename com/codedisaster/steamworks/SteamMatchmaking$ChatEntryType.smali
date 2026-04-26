.class public final enum Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;
.super Ljava/lang/Enum;
.source "SteamMatchmaking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamMatchmaking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatEntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum ChatMsg:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Disconnected:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Emote:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Entered:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum HistoricalChat:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Invalid:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum InviteGame:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum LeftConversation:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum LinkBlocked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Reserved1:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Reserved2:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Typing:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum WasBanned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum WasKicked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field private static final values:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 88
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Invalid:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 89
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "ChatMsg"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->ChatMsg:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 90
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "Typing"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Typing:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 91
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "InviteGame"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->InviteGame:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 92
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "Emote"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Emote:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 93
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "LeftConversation"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->LeftConversation:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 94
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "Entered"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Entered:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 95
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "WasKicked"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->WasKicked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 96
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "WasBanned"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->WasBanned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 97
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "Disconnected"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Disconnected:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 98
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "HistoricalChat"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->HistoricalChat:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 99
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "Reserved1"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Reserved1:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 100
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "Reserved2"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Reserved2:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 101
    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "LinkBlocked"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->LinkBlocked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 87
    sget-object v4, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Invalid:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v5, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->ChatMsg:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v6, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Typing:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v7, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->InviteGame:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v8, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Emote:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v9, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->LeftConversation:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v10, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Entered:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v11, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->WasKicked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v12, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->WasBanned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v13, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Disconnected:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v14, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->HistoricalChat:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v15, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Reserved1:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v16, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Reserved2:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    sget-object v17, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->LinkBlocked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    filled-new-array/range {v4 .. v17}, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    .line 104
    invoke-static {}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->values()[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->values:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

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

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->code:I

    .line 108
    return-void
.end method

.method static byValue(I)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;
    .registers 6
    .param p0, "code"  # I

    .line 111
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->values:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 112
    .local v3, "value":Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;
    iget v4, v3, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->code:I

    if-ne v4, p0, :cond_d

    .line 113
    return-object v3

    .line 111
    .end local v3  # "value":Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 116
    :cond_10
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Invalid:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 87
    const-class v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;
    .registers 1

    .line 87
    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    return-object v0
.end method
