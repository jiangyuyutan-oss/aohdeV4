.class public final enum Lcom/codedisaster/steamworks/SteamUniverse;
.super Ljava/lang/Enum;
.source "SteamUniverse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUniverse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUniverse;

.field public static final enum Beta:Lcom/codedisaster/steamworks/SteamUniverse;

.field public static final enum Dev:Lcom/codedisaster/steamworks/SteamUniverse;

.field public static final enum Internal:Lcom/codedisaster/steamworks/SteamUniverse;

.field public static final enum Invalid:Lcom/codedisaster/steamworks/SteamUniverse;

.field public static final enum Public:Lcom/codedisaster/steamworks/SteamUniverse;

.field private static final values:[Lcom/codedisaster/steamworks/SteamUniverse;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Lcom/codedisaster/steamworks/SteamUniverse;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUniverse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->Invalid:Lcom/codedisaster/steamworks/SteamUniverse;

    .line 5
    new-instance v0, Lcom/codedisaster/steamworks/SteamUniverse;

    const-string v1, "Public"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUniverse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->Public:Lcom/codedisaster/steamworks/SteamUniverse;

    .line 6
    new-instance v0, Lcom/codedisaster/steamworks/SteamUniverse;

    const-string v1, "Beta"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUniverse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->Beta:Lcom/codedisaster/steamworks/SteamUniverse;

    .line 7
    new-instance v0, Lcom/codedisaster/steamworks/SteamUniverse;

    const-string v1, "Internal"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUniverse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->Internal:Lcom/codedisaster/steamworks/SteamUniverse;

    .line 8
    new-instance v0, Lcom/codedisaster/steamworks/SteamUniverse;

    const-string v1, "Dev"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUniverse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->Dev:Lcom/codedisaster/steamworks/SteamUniverse;

    .line 3
    sget-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->Invalid:Lcom/codedisaster/steamworks/SteamUniverse;

    sget-object v1, Lcom/codedisaster/steamworks/SteamUniverse;->Public:Lcom/codedisaster/steamworks/SteamUniverse;

    sget-object v2, Lcom/codedisaster/steamworks/SteamUniverse;->Beta:Lcom/codedisaster/steamworks/SteamUniverse;

    sget-object v3, Lcom/codedisaster/steamworks/SteamUniverse;->Internal:Lcom/codedisaster/steamworks/SteamUniverse;

    sget-object v4, Lcom/codedisaster/steamworks/SteamUniverse;->Dev:Lcom/codedisaster/steamworks/SteamUniverse;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/codedisaster/steamworks/SteamUniverse;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->$VALUES:[Lcom/codedisaster/steamworks/SteamUniverse;

    .line 11
    invoke-static {}, Lcom/codedisaster/steamworks/SteamUniverse;->values()[Lcom/codedisaster/steamworks/SteamUniverse;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->values:[Lcom/codedisaster/steamworks/SteamUniverse;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/codedisaster/steamworks/SteamUniverse;->value:I

    .line 15
    return-void
.end method

.method static byValue(I)Lcom/codedisaster/steamworks/SteamUniverse;
    .registers 6
    .param p0, "value"  # I

    .line 18
    sget-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->values:[Lcom/codedisaster/steamworks/SteamUniverse;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 19
    .local v3, "type":Lcom/codedisaster/steamworks/SteamUniverse;
    iget v4, v3, Lcom/codedisaster/steamworks/SteamUniverse;->value:I

    if-ne v4, p0, :cond_d

    .line 20
    return-object v3

    .line 18
    .end local v3  # "type":Lcom/codedisaster/steamworks/SteamUniverse;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 23
    :cond_10
    sget-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->Invalid:Lcom/codedisaster/steamworks/SteamUniverse;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUniverse;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/codedisaster/steamworks/SteamUniverse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUniverse;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUniverse;
    .registers 1

    .line 3
    sget-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->$VALUES:[Lcom/codedisaster/steamworks/SteamUniverse;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUniverse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUniverse;

    return-object v0
.end method
