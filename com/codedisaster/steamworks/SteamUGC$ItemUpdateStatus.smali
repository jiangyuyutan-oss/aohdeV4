.class public final enum Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemUpdateStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

.field public static final enum CommittingChanges:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

.field public static final enum Invalid:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

.field public static final enum PreparingConfig:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

.field public static final enum PreparingContent:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

.field public static final enum UploadingContent:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

.field public static final enum UploadingPreviewFile:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

.field private static final values:[Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 77
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->Invalid:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    .line 78
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    const-string v1, "PreparingConfig"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->PreparingConfig:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    .line 79
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    const-string v1, "PreparingContent"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->PreparingContent:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    .line 80
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    const-string v1, "UploadingContent"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->UploadingContent:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    .line 81
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    const-string v1, "UploadingPreviewFile"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->UploadingPreviewFile:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    .line 82
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    const-string v1, "CommittingChanges"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->CommittingChanges:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    .line 76
    sget-object v3, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->Invalid:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    sget-object v4, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->PreparingConfig:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    sget-object v5, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->PreparingContent:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    sget-object v6, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->UploadingContent:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    sget-object v7, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->UploadingPreviewFile:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    sget-object v8, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->CommittingChanges:Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    filled-new-array/range {v3 .. v8}, [Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    .line 84
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->values()[Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->values:[Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;
    .registers 2
    .param p0, "value"  # I

    .line 87
    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->values:[Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 76
    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;
    .registers 1

    .line 76
    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    return-object v0
.end method
