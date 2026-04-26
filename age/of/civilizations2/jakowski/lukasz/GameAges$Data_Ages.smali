.class public Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;
.super Ljava/lang/Object;
.source "GameAges.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/GameAges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data_Ages"
.end annotation


# instance fields
.field public AGE_BeginningYear:I

.field public AGE_EndYear:I

.field public BASE_DIPLOMACY_POINTS:I

.field public BASE_INCOME_PRODUCTION:F

.field public BASE_INCOME_TAXATION:F

.field public BASE_MILITARY_UPKEEP:F

.field public BASE_MOVEMENT_POINTS:I

.field public COLONIZATION_COST:F

.field public COLONIZE_COST_DIPLOMACY_POINTS:I

.field public COLONIZE_COST_MOVEMENT_POINTS:I

.field public DEVELOPMENT_LEVEL_INCREASE:F

.field public DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

.field public DISEASE_CHANCE:F

.field public ECONOMY_GROWTH:F

.field public EXPENSES_ADMINSTRATION_DISTANCE:F

.field public EXPENSES_ADMINSTRATION_MODIFIER:F

.field public EXPENSES_MILITARY_UPKEEP_MODIFIER:F

.field public FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

.field public GAME_DAYS_PER_TURN:I

.field public GAME_STARTING_DEVELOPMENT:F

.field public INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

.field public INCOME_PRODUCTION_MODIFIER:F

.field public INCOME_TAXATION_MODIFIER:F

.field public INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

.field public MOVEMENT_POINTS_MODIFIER:F

.field public Name:Ljava/lang/String;

.field public POPULATION_GROWTH:F

.field public REVOLUTIONARY_RISK_MODIFIER:F

.field public RIVALS_DISTANCE:F

.field public SHIP_GROUP:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->SHIP_GROUP:I

    .line 77
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->RIVALS_DISTANCE:F

    return-void
.end method
