.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;
.super Ljava/lang/Object;
.source "GV_Technology.java"


# instance fields
.field public ADD_CIV_DEFAULT_TECH_LEVEL:I

.field public ADD_TECH_POINTS_PER_CLICK:I

.field public MAX_POINTS_ADMINISTRATION:I

.field public MAX_POINTS_ASSIMILATE:I

.field public MAX_POINTS_COLONIZATION:I

.field public MAX_POINTS_ECONOMY_GROWTH:I

.field public MAX_POINTS_INCOME_PRODUCTION:I

.field public MAX_POINTS_INCOME_TAXATION:I

.field public MAX_POINTS_MILITARY_UPKEEP:I

.field public MAX_POINTS_MOVEMENT:I

.field public MAX_POINTS_POP_GROWTH:I

.field public MAX_POINTS_RECRUITABLE:I

.field public MAX_POINTS_RESEARCH:I

.field public MAX_TECHNOLOGY_LEVEL:F

.field public MIN_MONEY_REQUIRED_TO_ENABLE_RESEARCH:I

.field public PER_POINT_ADMINISTRATION:F

.field public PER_POINT_ASSIMILATE:F

.field public PER_POINT_COLONIZATION:F

.field public PER_POINT_ECONOMY_GROWTH:F

.field public PER_POINT_INCOME_PRODUCTION:F

.field public PER_POINT_INCOME_TAXATION:F

.field public PER_POINT_MILITARY_UPKEEP:F

.field public PER_POINT_MOVEMENT:F

.field public PER_POINT_POP_GROWTH:F

.field public PER_POINT_RECRUITABLE:F

.field public PER_POINT_RESEARCH:F

.field public SHARE_TECHNOLOGY_DIPLOMACY_COST:I

.field public SHARE_TECHNOLOGY_RELATION_INCREASE_PER_TECH_LEVEL:F

.field public TECH_RESEARCHED_HAPPINESS_ALL_PROVINCES_BONUS:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x2d

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->ADD_CIV_DEFAULT_TECH_LEVEL:I

    .line 6
    const/16 v0, -0x7d0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MIN_MONEY_REQUIRED_TO_ENABLE_RESEARCH:I

    .line 8
    const/high16 v0, 0x40400000  # 3.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_TECHNOLOGY_LEVEL:F

    .line 10
    const/16 v0, 0x23

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_POP_GROWTH:I

    .line 11
    const/high16 v1, 0x3f400000  # 0.75f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_POP_GROWTH:F

    .line 13
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_ECONOMY_GROWTH:I

    .line 14
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_ECONOMY_GROWTH:F

    .line 16
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_INCOME_TAXATION:I

    .line 17
    const v2, 0x3e4ccccd  # 0.2f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_INCOME_TAXATION:F

    .line 19
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_INCOME_PRODUCTION:I

    .line 20
    const/high16 v2, 0x3e800000  # 0.25f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_INCOME_PRODUCTION:F

    .line 22
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_ADMINISTRATION:I

    .line 23
    const v2, 0x3e99999a  # 0.3f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_ADMINISTRATION:F

    .line 25
    const/16 v2, 0x28

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_MILITARY_UPKEEP:I

    .line 26
    const v2, 0x3eb33333  # 0.35f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_MILITARY_UPKEEP:F

    .line 28
    const/16 v2, 0x32

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_RESEARCH:I

    .line 29
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_RESEARCH:F

    .line 31
    const/16 v1, 0x19

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_COLONIZATION:I

    .line 32
    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_COLONIZATION:F

    .line 34
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_MOVEMENT:I

    .line 35
    const v0, 0x3c23d70a  # 0.01f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_MOVEMENT:F

    .line 37
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_ASSIMILATE:I

    .line 38
    const v2, -0x445c28f6  # -0.005f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_ASSIMILATE:F

    .line 40
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_RECRUITABLE:I

    .line 41
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_RECRUITABLE:F

    .line 43
    const/16 v1, 0x14

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->SHARE_TECHNOLOGY_DIPLOMACY_COST:I

    .line 44
    const/high16 v1, 0x40a00000  # 5.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->SHARE_TECHNOLOGY_RELATION_INCREASE_PER_TECH_LEVEL:F

    .line 46
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->TECH_RESEARCHED_HAPPINESS_ALL_PROVINCES_BONUS:F

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->ADD_TECH_POINTS_PER_CLICK:I

    return-void
.end method
