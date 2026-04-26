.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;
.super Ljava/lang/Object;
.source "GV_DiplomacyPoints.java"


# instance fields
.field public DIPLOMACY_COST_PER_ALLIANCE:I

.field public DIPLOMACY_COST_PER_DEFENSIVE_PACT:I

.field public DIPLOMACY_COST_PER_FRIENDLY_CIV:I

.field public DIPLOMACY_COST_PER_GUARANTEE:I

.field public DIPLOMACY_COST_PER_MILITARY_ACCESS:I

.field public DIPLOMACY_COST_PER_NONAGGRESSION:I

.field public DIPLOMACY_COST_PER_VASSAL:I

.field public DIPLOMACY_POINTS_BASE_MODIFIER:F

.field public DIPLOMACY_POINTS_BASE_VALUE:I

.field public DIPLOMACY_POINTS_FROM_ENEMIES_BASE_VALUE:I

.field public DIPLOMACY_POINTS_FROM_RANK_MODIFIER:F

.field public DIPLOMACY_POINTS_FROM_TECHNOLOGY_MODIFIER:F

.field public DIPLOMACY_POINTS_PER_ENEMY:F

.field public DIPLOMACY_POINTS_START_GAME_MAX:I

.field public DIPLOMACY_POINTS_START_GAME_MODIFIER:F

.field public MAX_DIPLOMACY_POINTS:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x55

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->MAX_DIPLOMACY_POINTS:I

    .line 7
    const v0, 0x4029999a  # 2.65f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_POINTS_START_GAME_MODIFIER:F

    .line 8
    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_POINTS_START_GAME_MAX:I

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_POINTS_BASE_VALUE:I

    .line 11
    const/high16 v1, 0x3ec00000  # 0.375f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_POINTS_BASE_MODIFIER:F

    .line 12
    const/high16 v1, 0x40300000  # 2.75f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_POINTS_FROM_TECHNOLOGY_MODIFIER:F

    .line 13
    const v1, 0x3f466666  # 0.775f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_POINTS_FROM_RANK_MODIFIER:F

    .line 14
    const/4 v1, -0x6

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_POINTS_FROM_ENEMIES_BASE_VALUE:I

    .line 15
    const/high16 v1, 0x40c00000  # 6.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_POINTS_PER_ENEMY:F

    .line 17
    const/4 v1, 0x6

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_ALLIANCE:I

    .line 18
    const/4 v1, 0x2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_NONAGGRESSION:I

    .line 19
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_GUARANTEE:I

    .line 20
    const/4 v1, 0x3

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_DEFENSIVE_PACT:I

    .line 21
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_FRIENDLY_CIV:I

    .line 22
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_MILITARY_ACCESS:I

    .line 23
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_VASSAL:I

    return-void
.end method
