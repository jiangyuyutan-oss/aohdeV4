.class public final enum Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;
.super Ljava/lang/Enum;
.source "Buildings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

.field public static final enum FARM:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

.field public static final enum FORT:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

.field public static final enum INVEST:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

.field public static final enum PORT:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

.field public static final enum TOWN_HALL:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

.field public static final enum WATCH_TOWER:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;


# direct methods
.method private static synthetic $values()[Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;
    .registers 3

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->FORT:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->WATCH_TOWER:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->PORT:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->TOWN_HALL:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->FARM:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->INVEST:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 10
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    const-string v1, "FORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->FORT:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    .line 11
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    const-string v1, "WATCH_TOWER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->WATCH_TOWER:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    .line 12
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    const-string v1, "PORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->PORT:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    .line 13
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    const-string v1, "TOWN_HALL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->TOWN_HALL:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    .line 14
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    const-string v1, "FARM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->FARM:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    .line 15
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    const-string v1, "INVEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->INVEST:Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    .line 9
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->$values()[Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 9
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    return-object v0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;
    .registers 1

    .line 9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/MapA/Buildings;

    return-object v0
.end method
