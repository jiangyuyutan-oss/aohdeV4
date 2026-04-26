.class public final enum Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;
.super Ljava/lang/Enum;
.source "CivBonus_Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

.field public static final enum BONUS:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

.field public static final enum GOLDEN_AGE_MILITARY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

.field public static final enum GOLDEN_AGE_PROSPERITY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

.field public static final enum GOLDEN_AGE_SCIENCE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;


# direct methods
.method private static synthetic $values()[Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;
    .registers 3

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->BONUS:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_PROSPERITY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_SCIENCE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_MILITARY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 8
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const-string v1, "BONUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->BONUS:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    .line 9
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const-string v1, "GOLDEN_AGE_PROSPERITY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_PROSPERITY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    .line 10
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const-string v1, "GOLDEN_AGE_SCIENCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_SCIENCE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    .line 11
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const-string v1, "GOLDEN_AGE_MILITARY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_MILITARY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    .line 7
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->$values()[Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 7
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    return-object v0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;
    .registers 1

    .line 7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    return-object v0
.end method
