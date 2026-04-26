.class public final enum Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;
.super Ljava/lang/Enum;
.source "SteamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

.field public static final enum BottomLeft:Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

.field public static final enum BottomRight:Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

.field public static final enum TopLeft:Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

.field public static final enum TopRight:Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 33
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    const-string v1, "TopLeft"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->TopLeft:Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    .line 34
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    const-string v1, "TopRight"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->TopRight:Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    .line 35
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    const-string v1, "BottomLeft"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->BottomLeft:Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    .line 36
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    const-string v1, "BottomRight"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->BottomRight:Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    .line 32
    sget-object v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->TopLeft:Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    sget-object v1, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->TopRight:Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    sget-object v2, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->BottomLeft:Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    sget-object v3, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->BottomRight:Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    filled-new-array {v0, v1, v2, v3}, [Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->$VALUES:[Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 32
    const-class v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;
    .registers 1

    .line 32
    sget-object v0, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->$VALUES:[Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;

    return-object v0
.end method
