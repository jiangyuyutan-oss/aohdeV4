.class public final enum Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;
.super Ljava/lang/Enum;
.source "SteamRemoteStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamRemoteStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorkshopFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Art:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Collection:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Community:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Concept:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum ControllerBinding:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Game:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum GameManagedItem:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum IntegratedGuide:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Merch:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Microtransaction:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Screenshot:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Software:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum SteamVideo:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum SteamworksAccessInvite:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Video:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum WebGuide:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field private static final values:[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 55
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "Community"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Community:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 56
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "Microtransaction"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Microtransaction:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 57
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "Collection"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Collection:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 58
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "Art"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Art:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 59
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "Video"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Video:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 60
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "Screenshot"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Screenshot:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 61
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "Game"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Game:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 62
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "Software"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Software:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 63
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "Concept"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Concept:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 64
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "WebGuide"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->WebGuide:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 65
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "IntegratedGuide"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->IntegratedGuide:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 66
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "Merch"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Merch:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 67
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "ControllerBinding"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->ControllerBinding:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 68
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "SteamworksAccessInvite"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->SteamworksAccessInvite:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 69
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "SteamVideo"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->SteamVideo:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 70
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "GameManagedItem"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->GameManagedItem:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 54
    sget-object v3, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Community:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v4, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Microtransaction:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v5, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Collection:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v6, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Art:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v7, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Video:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v8, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Screenshot:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v9, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Game:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v10, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Software:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v11, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Concept:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v12, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->WebGuide:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v13, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->IntegratedGuide:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v14, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Merch:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v15, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->ControllerBinding:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v16, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->SteamworksAccessInvite:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v17, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->SteamVideo:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    sget-object v18, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->GameManagedItem:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    filled-new-array/range {v3 .. v18}, [Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->$VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    .line 72
    invoke-static {}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->values()[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->values:[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;
    .registers 2
    .param p0, "ordinal"  # I

    .line 75
    sget-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->values:[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 54
    const-class v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;
    .registers 1

    .line 54
    sget-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->$VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    return-object v0
.end method
