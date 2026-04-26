.class public final enum Lcom/codedisaster/steamworks/SteamController$SourceMode;
.super Ljava/lang/Enum;
.source "SteamController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamController$SourceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum AbsoluteMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum Buttons:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum Dpad:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum FourButtons:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum JoystickCamera:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum JoystickMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum JoystickMove:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum MouseJoystick:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum MouseRegion:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum RadialMenu:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum RelativeMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum ScrollWheel:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum SingleButton:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum Switches:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum TouchMenu:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum Trigger:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field private static final values:[Lcom/codedisaster/steamworks/SteamController$SourceMode;


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 32
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->None:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 33
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "Dpad"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->Dpad:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 34
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "Buttons"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->Buttons:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 35
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "FourButtons"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->FourButtons:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 36
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "AbsoluteMouse"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->AbsoluteMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 37
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "RelativeMouse"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->RelativeMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 38
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "JoystickMove"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->JoystickMove:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 39
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "JoystickMouse"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->JoystickMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 40
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "JoystickCamera"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->JoystickCamera:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 41
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "ScrollWheel"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->ScrollWheel:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 42
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "Trigger"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->Trigger:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 43
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "TouchMenu"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->TouchMenu:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 44
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "MouseJoystick"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->MouseJoystick:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 45
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "MouseRegion"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->MouseRegion:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 46
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "RadialMenu"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->RadialMenu:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 47
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "SingleButton"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->SingleButton:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 48
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    const-string v1, "Switches"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->Switches:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 31
    sget-object v3, Lcom/codedisaster/steamworks/SteamController$SourceMode;->None:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v4, Lcom/codedisaster/steamworks/SteamController$SourceMode;->Dpad:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v5, Lcom/codedisaster/steamworks/SteamController$SourceMode;->Buttons:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v6, Lcom/codedisaster/steamworks/SteamController$SourceMode;->FourButtons:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v7, Lcom/codedisaster/steamworks/SteamController$SourceMode;->AbsoluteMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v8, Lcom/codedisaster/steamworks/SteamController$SourceMode;->RelativeMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v9, Lcom/codedisaster/steamworks/SteamController$SourceMode;->JoystickMove:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v10, Lcom/codedisaster/steamworks/SteamController$SourceMode;->JoystickMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v11, Lcom/codedisaster/steamworks/SteamController$SourceMode;->JoystickCamera:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v12, Lcom/codedisaster/steamworks/SteamController$SourceMode;->ScrollWheel:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v13, Lcom/codedisaster/steamworks/SteamController$SourceMode;->Trigger:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v14, Lcom/codedisaster/steamworks/SteamController$SourceMode;->TouchMenu:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v15, Lcom/codedisaster/steamworks/SteamController$SourceMode;->MouseJoystick:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v16, Lcom/codedisaster/steamworks/SteamController$SourceMode;->MouseRegion:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v17, Lcom/codedisaster/steamworks/SteamController$SourceMode;->RadialMenu:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v18, Lcom/codedisaster/steamworks/SteamController$SourceMode;->SingleButton:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    sget-object v19, Lcom/codedisaster/steamworks/SteamController$SourceMode;->Switches:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    filled-new-array/range {v3 .. v19}, [Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$SourceMode;

    .line 50
    invoke-static {}, Lcom/codedisaster/steamworks/SteamController$SourceMode;->values()[Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->values:[Lcom/codedisaster/steamworks/SteamController$SourceMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamController$SourceMode;
    .registers 2
    .param p0, "ordinal"  # I

    .line 53
    sget-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->values:[Lcom/codedisaster/steamworks/SteamController$SourceMode;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamController$SourceMode;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamController$SourceMode;
    .registers 1

    .line 31
    sget-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$SourceMode;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamController$SourceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamController$SourceMode;

    return-object v0
.end method
