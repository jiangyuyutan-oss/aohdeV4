.class public final enum Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
.super Ljava/lang/Enum;
.source "SteamRemoteStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamRemoteStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemoteStoragePlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum All:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum Android:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum IOS:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum Linux:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum OSX:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum PS3:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum Reserved2:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum Windows:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field private static final values:[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 9
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->None:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 10
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const-string v1, "Windows"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->Windows:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 11
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const-string v1, "OSX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->OSX:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 12
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const-string v1, "PS3"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->PS3:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 13
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const-string v1, "Linux"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->Linux:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 14
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const/4 v1, 0x5

    const/16 v3, 0x10

    const-string v4, "Reserved2"

    invoke-direct {v0, v4, v1, v3}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->Reserved2:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 15
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const/4 v1, 0x6

    const/16 v3, 0x20

    const-string v4, "Android"

    invoke-direct {v0, v4, v1, v3}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->Android:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 16
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const/4 v1, 0x7

    const/16 v3, 0x40

    const-string v4, "IOS"

    invoke-direct {v0, v4, v1, v3}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->IOS:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 18
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const-string v1, "All"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->All:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 8
    sget-object v4, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->None:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    sget-object v5, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->Windows:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    sget-object v6, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->OSX:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    sget-object v7, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->PS3:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    sget-object v8, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->Linux:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    sget-object v9, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->Reserved2:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    sget-object v10, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->Android:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    sget-object v11, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->IOS:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    sget-object v12, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->All:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    filled-new-array/range {v4 .. v12}, [Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->$VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 21
    invoke-static {}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->values()[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->values:[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "mask"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->mask:I

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;)I
    .registers 2
    .param p0, "x0"  # Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 8
    iget v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->mask:I

    return v0
.end method

.method static byMask(I)[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    .registers 9
    .param p0, "mask"  # I

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 29
    .local v0, "bits":I
    new-array v1, v0, [Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    .line 31
    .local v1, "result":[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    const/4 v2, 0x0

    .line 32
    .local v2, "idx":I
    sget-object v3, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->values:[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v4, :cond_1c

    aget-object v6, v3, v5

    .line 33
    .local v6, "value":Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    iget v7, v6, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->mask:I

    and-int/2addr v7, p0

    if-eqz v7, :cond_19

    .line 34
    add-int/lit8 v7, v2, 0x1

    .end local v2  # "idx":I
    .local v7, "idx":I
    aput-object v6, v1, v2

    move v2, v7

    .line 32
    .end local v6  # "value":Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    .end local v7  # "idx":I
    .restart local v2  # "idx":I
    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 38
    :cond_1c
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    .registers 1

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->$VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    return-object v0
.end method
