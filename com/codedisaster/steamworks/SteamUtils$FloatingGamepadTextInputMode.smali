.class public final enum Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;
.super Ljava/lang/Enum;
.source "SteamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FloatingGamepadTextInputMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

.field public static final enum ModeEmail:Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

.field public static final enum ModeMultipleLines:Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

.field public static final enum ModeNumeric:Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

.field public static final enum ModeSingleLine:Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 40
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    const-string v1, "ModeSingleLine"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->ModeSingleLine:Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    .line 41
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    const-string v1, "ModeMultipleLines"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->ModeMultipleLines:Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    .line 42
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    const-string v1, "ModeEmail"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->ModeEmail:Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    .line 43
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    const-string v1, "ModeNumeric"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->ModeNumeric:Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    .line 39
    sget-object v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->ModeSingleLine:Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    sget-object v1, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->ModeMultipleLines:Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    sget-object v2, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->ModeEmail:Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    sget-object v3, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->ModeNumeric:Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->$VALUES:[Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 39
    const-class v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;
    .registers 1

    .line 39
    sget-object v0, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->$VALUES:[Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;

    return-object v0
.end method
