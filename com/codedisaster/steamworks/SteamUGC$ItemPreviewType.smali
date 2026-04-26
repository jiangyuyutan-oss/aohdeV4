.class public final enum Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemPreviewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum EnvironmentMap_HorizontalCross:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum EnvironmentMap_LatLong:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum Image:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum ReservedMax:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum Sketchfab:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum UnknownPreviewType_NotImplementedByAPI:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum YouTubeVideo:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field private static final values:[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 151
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const-string v1, "Image"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->Image:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    .line 152
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const-string v1, "YouTubeVideo"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->YouTubeVideo:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    .line 153
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const-string v1, "Sketchfab"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->Sketchfab:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    .line 154
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const-string v1, "EnvironmentMap_HorizontalCross"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->EnvironmentMap_HorizontalCross:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    .line 155
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const-string v1, "EnvironmentMap_LatLong"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->EnvironmentMap_LatLong:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    .line 156
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const/4 v1, 0x5

    const/16 v2, 0xff

    const-string v3, "ReservedMax"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->ReservedMax:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    .line 158
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const/4 v1, 0x6

    const/4 v2, -0x1

    const-string v3, "UnknownPreviewType_NotImplementedByAPI"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->UnknownPreviewType_NotImplementedByAPI:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    .line 150
    sget-object v4, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->Image:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    sget-object v5, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->YouTubeVideo:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    sget-object v6, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->Sketchfab:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    sget-object v7, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->EnvironmentMap_HorizontalCross:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    sget-object v8, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->EnvironmentMap_LatLong:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    sget-object v9, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->ReservedMax:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    sget-object v10, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->UnknownPreviewType_NotImplementedByAPI:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    filled-new-array/range {v4 .. v10}, [Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    .line 161
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->values()[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->values:[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

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

    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    iput p3, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->value:I

    .line 165
    return-void
.end method

.method static byValue(I)Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;
    .registers 6
    .param p0, "value"  # I

    .line 168
    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->values:[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 169
    .local v3, "type":Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;
    iget v4, v3, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->value:I

    if-ne v4, p0, :cond_d

    .line 170
    return-object v3

    .line 168
    .end local v3  # "type":Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 173
    :cond_10
    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->UnknownPreviewType_NotImplementedByAPI:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 150
    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;
    .registers 1

    .line 150
    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    return-object v0
.end method
