.class public final enum Lcom/badlogic/gdx/Input$Peripheral;
.super Ljava/lang/Enum;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Peripheral"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/Input$Peripheral;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum Compass:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum Gyroscope:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum Pressure:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum RotationVector:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum Vibrator:Lcom/badlogic/gdx/Input$Peripheral;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 644
    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "HardwareKeyboard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "OnscreenKeyboard"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "MultitouchScreen"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "Accelerometer"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "Compass"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "Vibrator"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Vibrator:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "Gyroscope"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Gyroscope:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "RotationVector"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->RotationVector:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "Pressure"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Pressure:Lcom/badlogic/gdx/Input$Peripheral;

    .line 643
    sget-object v3, Lcom/badlogic/gdx/Input$Peripheral;->HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    sget-object v4, Lcom/badlogic/gdx/Input$Peripheral;->OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    sget-object v5, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    sget-object v6, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    sget-object v7, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    sget-object v8, Lcom/badlogic/gdx/Input$Peripheral;->Vibrator:Lcom/badlogic/gdx/Input$Peripheral;

    sget-object v9, Lcom/badlogic/gdx/Input$Peripheral;->Gyroscope:Lcom/badlogic/gdx/Input$Peripheral;

    sget-object v10, Lcom/badlogic/gdx/Input$Peripheral;->RotationVector:Lcom/badlogic/gdx/Input$Peripheral;

    sget-object v11, Lcom/badlogic/gdx/Input$Peripheral;->Pressure:Lcom/badlogic/gdx/Input$Peripheral;

    filled-new-array/range {v3 .. v11}, [Lcom/badlogic/gdx/Input$Peripheral;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->$VALUES:[Lcom/badlogic/gdx/Input$Peripheral;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 643
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Input$Peripheral;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 643
    const-class v0, Lcom/badlogic/gdx/Input$Peripheral;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Input$Peripheral;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/Input$Peripheral;
    .registers 1

    .line 643
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->$VALUES:[Lcom/badlogic/gdx/Input$Peripheral;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Input$Peripheral;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Input$Peripheral;

    return-object v0
.end method
