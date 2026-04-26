.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;
.super Ljava/lang/Object;
.source "GV_ArmyRecruit.java"


# instance fields
.field public COST_OF_RECRUIT_ARMY_GOLD_PER_UNIT:I

.field public COST_OF_RECRUIT_ARMY_GOLD_PER_UNIT_CONSCRIPT_EXTRA:F

.field public COST_OF_RECRUIT_ARMY_GOLD_PER_UNIT_MERCENARIES_EXTRA:F

.field public NUM_OF_MERCENARIES_ARMIES:I

.field public RECRUIT_ARMY_DEFAULT_SLIDER_PERC_OF_MAX:F

.field public RECRUIT_ARMY_PROVINCE_LOST_RETURN_PERC_GOLD:F

.field public RECRUIT_DEVELOPMENT_CHANGE_CAPITAL_MODIFIER:F

.field public RECRUIT_DEVELOPMENT_CHANGE_MODIFIER:F

.field public RECRUIT_DEVELOPMENT_CHANGE_RANDOM_1000:I

.field public RECRUIT_ECONOMY_CHANGE_CAPITAL_MODIFIER:F

.field public RECRUIT_ECONOMY_CHANGE_MODIFIER:F

.field public RECRUIT_ECONOMY_CHANGE_RANDOM_1000:I

.field public RECRUIT_HAPPINESS_CHANGE_MODIFIER:F

.field public VOLUNTEER_ARMY_SEND_RESET_AFTER_X_TURNS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->COST_OF_RECRUIT_ARMY_GOLD_PER_UNIT:I

    .line 6
    const/high16 v0, 0x40000000  # 2.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->COST_OF_RECRUIT_ARMY_GOLD_PER_UNIT_CONSCRIPT_EXTRA:F

    .line 7
    const/high16 v0, 0x40400000  # 3.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->COST_OF_RECRUIT_ARMY_GOLD_PER_UNIT_MERCENARIES_EXTRA:F

    .line 9
    const/4 v0, 0x6

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->NUM_OF_MERCENARIES_ARMIES:I

    .line 11
    const v0, 0x3e0ccccd  # 0.1375f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->RECRUIT_HAPPINESS_CHANGE_MODIFIER:F

    .line 13
    const/high16 v0, 0x3e000000  # 0.125f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->RECRUIT_ECONOMY_CHANGE_MODIFIER:F

    .line 14
    const v0, 0x3de147ae  # 0.11f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->RECRUIT_ECONOMY_CHANGE_CAPITAL_MODIFIER:F

    .line 15
    const/16 v0, 0x4b

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->RECRUIT_ECONOMY_CHANGE_RANDOM_1000:I

    .line 17
    const v0, 0x3d2e147b  # 0.0425f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->RECRUIT_DEVELOPMENT_CHANGE_MODIFIER:F

    .line 18
    const v0, 0x3d051eb8  # 0.0325f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->RECRUIT_DEVELOPMENT_CHANGE_CAPITAL_MODIFIER:F

    .line 19
    const/16 v0, 0x2a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->RECRUIT_DEVELOPMENT_CHANGE_RANDOM_1000:I

    .line 21
    const v0, 0x3f39999a  # 0.725f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->RECRUIT_ARMY_PROVINCE_LOST_RETURN_PERC_GOLD:F

    .line 23
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->RECRUIT_ARMY_DEFAULT_SLIDER_PERC_OF_MAX:F

    .line 25
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->VOLUNTEER_ARMY_SEND_RESET_AFTER_X_TURNS:I

    return-void
.end method
