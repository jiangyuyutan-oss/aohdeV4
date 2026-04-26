.class public final enum Lcom/codedisaster/steamworks/SteamUGC$ItemState;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$ItemState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum DownloadPending:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum Downloading:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum Installed:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum LegacyItem:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum NeedsUpdate:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum Subscribed:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field private static final values:[Lcom/codedisaster/steamworks/SteamUGC$ItemState;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 106
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->None:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    .line 107
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const-string v1, "Subscribed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->Subscribed:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    .line 108
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const-string v1, "LegacyItem"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->LegacyItem:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    .line 109
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const-string v1, "Installed"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->Installed:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    .line 110
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const-string v1, "NeedsUpdate"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->NeedsUpdate:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    .line 111
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const/4 v1, 0x5

    const/16 v2, 0x10

    const-string v3, "Downloading"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->Downloading:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    .line 112
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const/4 v1, 0x6

    const/16 v2, 0x20

    const-string v3, "DownloadPending"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->DownloadPending:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    .line 105
    sget-object v4, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->None:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    sget-object v5, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->Subscribed:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    sget-object v6, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->LegacyItem:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    sget-object v7, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->Installed:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    sget-object v8, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->NeedsUpdate:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    sget-object v9, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->Downloading:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    sget-object v10, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->DownloadPending:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    filled-new-array/range {v4 .. v10}, [Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    .line 115
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->values()[Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->values:[Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "bits"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->bits:I

    .line 119
    return-void
.end method

.method static fromBits(I)Ljava/util/Collection;
    .registers 8
    .param p0, "bits"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/codedisaster/steamworks/SteamUGC$ItemState;",
            ">;"
        }
    .end annotation

    .line 122
    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 124
    .local v0, "itemStates":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/codedisaster/steamworks/SteamUGC$ItemState;>;"
    sget-object v1, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->values:[Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 125
    .local v4, "itemState":Lcom/codedisaster/steamworks/SteamUGC$ItemState;
    iget v5, v4, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->bits:I

    and-int/2addr v5, p0

    iget v6, v4, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->bits:I

    if-ne v5, v6, :cond_18

    .line 126
    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v4  # "itemState":Lcom/codedisaster/steamworks/SteamUGC$ItemState;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 130
    :cond_1b
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$ItemState;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 105
    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$ItemState;
    .registers 1

    .line 105
    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$ItemState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    return-object v0
.end method
