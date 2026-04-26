.class public final enum Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchingUGCType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum All:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum AllGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum Artwork:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum Collections:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum ControllerBindings:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum GameManagedItems:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum IntegratedGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum Items:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum ItemsMtx:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum ItemsReadyToUse:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum Screenshots:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum UsableInGame:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum Videos:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum WebGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 22
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "Items"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Items:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 23
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "ItemsMtx"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->ItemsMtx:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 24
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "ItemsReadyToUse"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->ItemsReadyToUse:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 25
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "Collections"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Collections:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 26
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "Artwork"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Artwork:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 27
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "Videos"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Videos:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 28
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "Screenshots"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Screenshots:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 29
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "AllGuides"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->AllGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 30
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "WebGuides"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->WebGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 31
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "IntegratedGuides"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->IntegratedGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 32
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "UsableInGame"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->UsableInGame:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 33
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "ControllerBindings"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->ControllerBindings:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 34
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "GameManagedItems"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->GameManagedItems:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 35
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const/16 v1, 0xd

    const/4 v2, -0x1

    const-string v3, "All"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->All:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 21
    sget-object v4, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Items:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v5, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->ItemsMtx:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v6, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->ItemsReadyToUse:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v7, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Collections:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v8, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Artwork:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v9, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Videos:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v10, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Screenshots:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v11, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->AllGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v12, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->WebGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v13, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->IntegratedGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v14, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->UsableInGame:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v15, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->ControllerBindings:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v16, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->GameManagedItems:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    sget-object v17, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->All:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    filled-new-array/range {v4 .. v17}, [Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->value:I

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;)I
    .registers 2
    .param p0, "x0"  # Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    .line 21
    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;
    .registers 1

    .line 21
    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    return-object v0
.end method
