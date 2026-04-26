.class public final enum Lcom/codedisaster/steamworks/SteamController$InputType;
.super Ljava/lang/Enum;
.source "SteamController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamController$InputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum AndroidController:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum AppleMFiController:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum GenericGamepad:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum MobileTouch:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum PS3Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum PS4Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum PS5Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum SteamController:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum SwitchJoyConPair:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum SwitchJoyConSingle:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum SwitchProController:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum Unknown:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum XBox360Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum XBoxOneController:Lcom/codedisaster/steamworks/SteamController$InputType;

.field private static final values:[Lcom/codedisaster/steamworks/SteamController$InputType;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 485
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->Unknown:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 486
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "SteamController"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->SteamController:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 487
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "XBox360Controller"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->XBox360Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 488
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "XBoxOneController"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->XBoxOneController:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 489
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "GenericGamepad"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->GenericGamepad:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 490
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "PS4Controller"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->PS4Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 491
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "AppleMFiController"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->AppleMFiController:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 492
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "AndroidController"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->AndroidController:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 493
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "SwitchJoyConPair"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->SwitchJoyConPair:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 494
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "SwitchJoyConSingle"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->SwitchJoyConSingle:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 495
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "SwitchProController"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->SwitchProController:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 496
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "MobileTouch"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->MobileTouch:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 497
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "PS3Controller"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->PS3Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 498
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "PS5Controller"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->PS5Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 484
    sget-object v3, Lcom/codedisaster/steamworks/SteamController$InputType;->Unknown:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v4, Lcom/codedisaster/steamworks/SteamController$InputType;->SteamController:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v5, Lcom/codedisaster/steamworks/SteamController$InputType;->XBox360Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v6, Lcom/codedisaster/steamworks/SteamController$InputType;->XBoxOneController:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v7, Lcom/codedisaster/steamworks/SteamController$InputType;->GenericGamepad:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v8, Lcom/codedisaster/steamworks/SteamController$InputType;->PS4Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v9, Lcom/codedisaster/steamworks/SteamController$InputType;->AppleMFiController:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v10, Lcom/codedisaster/steamworks/SteamController$InputType;->AndroidController:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v11, Lcom/codedisaster/steamworks/SteamController$InputType;->SwitchJoyConPair:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v12, Lcom/codedisaster/steamworks/SteamController$InputType;->SwitchJoyConSingle:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v13, Lcom/codedisaster/steamworks/SteamController$InputType;->SwitchProController:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v14, Lcom/codedisaster/steamworks/SteamController$InputType;->MobileTouch:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v15, Lcom/codedisaster/steamworks/SteamController$InputType;->PS3Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

    sget-object v16, Lcom/codedisaster/steamworks/SteamController$InputType;->PS5Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

    filled-new-array/range {v3 .. v16}, [Lcom/codedisaster/steamworks/SteamController$InputType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$InputType;

    .line 500
    invoke-static {}, Lcom/codedisaster/steamworks/SteamController$InputType;->values()[Lcom/codedisaster/steamworks/SteamController$InputType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->values:[Lcom/codedisaster/steamworks/SteamController$InputType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamController$InputType;
    .registers 2
    .param p0, "ordinal"  # I

    .line 503
    sget-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->values:[Lcom/codedisaster/steamworks/SteamController$InputType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamController$InputType;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 484
    const-class v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamController$InputType;
    .registers 1

    .line 484
    sget-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$InputType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamController$InputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamController$InputType;

    return-object v0
.end method
