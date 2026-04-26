.class public final enum Lcom/codedisaster/steamworks/SteamController$Source;
.super Ljava/lang/Enum;
.source "SteamController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamController$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum ABXY:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum CenterTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum DPad:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum Gyro:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum Joystick:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum Key:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum LeftBumper:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum LeftGyro:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum LeftTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum LeftTrigger:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum Mouse:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum RightBumper:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum RightJoystick:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum RightTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum RightTrigger:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum Switch:Lcom/codedisaster/steamworks/SteamController$Source;


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 12
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->None:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 13
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "LeftTrackpad"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->LeftTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 14
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "RightTrackpad"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->RightTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 15
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "Joystick"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->Joystick:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 16
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "ABXY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->ABXY:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 17
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "Switch"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->Switch:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 18
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "LeftTrigger"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->LeftTrigger:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 19
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "RightTrigger"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->RightTrigger:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 20
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "LeftBumper"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->LeftBumper:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 21
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "RightBumper"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->RightBumper:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 22
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "Gyro"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->Gyro:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 23
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "CenterTrackpad"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->CenterTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 24
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "RightJoystick"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->RightJoystick:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 25
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "DPad"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->DPad:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 26
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "Key"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->Key:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 27
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "Mouse"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->Mouse:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 28
    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    const-string v1, "LeftGyro"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->LeftGyro:Lcom/codedisaster/steamworks/SteamController$Source;

    .line 11
    sget-object v3, Lcom/codedisaster/steamworks/SteamController$Source;->None:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v4, Lcom/codedisaster/steamworks/SteamController$Source;->LeftTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v5, Lcom/codedisaster/steamworks/SteamController$Source;->RightTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v6, Lcom/codedisaster/steamworks/SteamController$Source;->Joystick:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v7, Lcom/codedisaster/steamworks/SteamController$Source;->ABXY:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v8, Lcom/codedisaster/steamworks/SteamController$Source;->Switch:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v9, Lcom/codedisaster/steamworks/SteamController$Source;->LeftTrigger:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v10, Lcom/codedisaster/steamworks/SteamController$Source;->RightTrigger:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v11, Lcom/codedisaster/steamworks/SteamController$Source;->LeftBumper:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v12, Lcom/codedisaster/steamworks/SteamController$Source;->RightBumper:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v13, Lcom/codedisaster/steamworks/SteamController$Source;->Gyro:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v14, Lcom/codedisaster/steamworks/SteamController$Source;->CenterTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v15, Lcom/codedisaster/steamworks/SteamController$Source;->RightJoystick:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v16, Lcom/codedisaster/steamworks/SteamController$Source;->DPad:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v17, Lcom/codedisaster/steamworks/SteamController$Source;->Key:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v18, Lcom/codedisaster/steamworks/SteamController$Source;->Mouse:Lcom/codedisaster/steamworks/SteamController$Source;

    sget-object v19, Lcom/codedisaster/steamworks/SteamController$Source;->LeftGyro:Lcom/codedisaster/steamworks/SteamController$Source;

    filled-new-array/range {v3 .. v19}, [Lcom/codedisaster/steamworks/SteamController$Source;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamController$Source;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/codedisaster/steamworks/SteamController$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamController$Source;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamController$Source;
    .registers 1

    .line 11
    sget-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$Source;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamController$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamController$Source;

    return-object v0
.end method
