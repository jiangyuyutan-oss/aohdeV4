.class public Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;
.super Ljava/lang/Object;
.source "CivBonus_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

.field public fModifier_AttackBonus:F

.field public fModifier_DefenseBonus:F

.field public fModifier_EconomyGrowth:F

.field public fModifier_IncomeProduction:F

.field public fModifier_IncomeTaxation:F

.field public fModifier_MilitaryUpkeep:F

.field public fModifier_MovementPoints:F

.field public fModifier_PopGrowth:F

.field public fModifier_Research:F

.field public iTurnsLeft:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_PROSPERITY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_PopGrowth:F

    .line 18
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_EconomyGrowth:F

    .line 19
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_IncomeTaxation:F

    .line 20
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_IncomeProduction:F

    .line 21
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_Research:F

    .line 22
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_MilitaryUpkeep:F

    .line 23
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_AttackBonus:F

    .line 24
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_DefenseBonus:F

    .line 25
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_MovementPoints:F

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->iTurnsLeft:I

    return-void
.end method
