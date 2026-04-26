.class public final enum Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
.super Ljava/lang/Enum;
.source "SteamUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoiceResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUser$VoiceResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum BufferTooSmall:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum DataCorrupted:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum NoData:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum NotInitialized:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum NotRecording:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum OK:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum ReceiverDidNotAnswer:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum ReceiverOutOfDate:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum Restricted:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum UnsupportedCodec:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field private static final values:[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 9
    new-instance v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->OK:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    .line 10
    new-instance v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v1, "NotInitialized"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->NotInitialized:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    .line 11
    new-instance v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v1, "NotRecording"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->NotRecording:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    .line 12
    new-instance v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v1, "NoData"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->NoData:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    .line 13
    new-instance v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v1, "BufferTooSmall"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->BufferTooSmall:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    .line 14
    new-instance v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v1, "DataCorrupted"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->DataCorrupted:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    .line 15
    new-instance v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v1, "Restricted"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->Restricted:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    .line 16
    new-instance v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v1, "UnsupportedCodec"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->UnsupportedCodec:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    .line 17
    new-instance v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v1, "ReceiverOutOfDate"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->ReceiverOutOfDate:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    .line 18
    new-instance v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v1, "ReceiverDidNotAnswer"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->ReceiverDidNotAnswer:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    .line 8
    sget-object v3, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->OK:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    sget-object v4, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->NotInitialized:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    sget-object v5, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->NotRecording:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    sget-object v6, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->NoData:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    sget-object v7, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->BufferTooSmall:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    sget-object v8, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->DataCorrupted:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    sget-object v9, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->Restricted:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    sget-object v10, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->UnsupportedCodec:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    sget-object v11, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->ReceiverOutOfDate:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    sget-object v12, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->ReceiverDidNotAnswer:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    filled-new-array/range {v3 .. v12}, [Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->$VALUES:[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    .line 20
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->values()[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->values:[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

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

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    .registers 2
    .param p0, "voiceResult"  # I

    .line 23
    sget-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->values:[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    .registers 1

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->$VALUES:[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    return-object v0
.end method
