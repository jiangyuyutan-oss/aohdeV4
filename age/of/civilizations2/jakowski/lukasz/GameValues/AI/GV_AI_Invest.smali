.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;
.super Ljava/lang/Object;
.source "GV_AI_Invest.java"


# instance fields
.field public INVEST_DEV_DEVELOPMENT_TO_TECH_RATIO:F

.field public INVEST_FOREIGN_FRIENDLY_CIV:I

.field public INVEST_FOREIGN_MAX_GOLD_MIN:F

.field public INVEST_FOREIGN_MAX_GOLD_RAND:F

.field public INVEST_FOREIGN_MIN_GOLD:I

.field public INVEST_FOREIGN_MIN_RELATION:I

.field public INVEST_FOREIGN_NEIGHBOURING_CIV:I

.field public INVEST_FOREIGN_RAND_CHANCE_1000:I

.field public INVEST_IN_RANDOM_PROVINCE_CHANCE_100:I

.field public INVEST_LIMIT_PER_TURN:I

.field public UPDATE_FOREIGN_INVEST:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->UPDATE_FOREIGN_INVEST:I

    .line 7
    const/16 v0, 0x28

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->INVEST_IN_RANDOM_PROVINCE_CHANCE_100:I

    .line 8
    const/16 v0, 0xc

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->INVEST_LIMIT_PER_TURN:I

    .line 10
    const/16 v0, 0x3e8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->INVEST_FOREIGN_MIN_GOLD:I

    .line 11
    const/16 v0, 0x11c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->INVEST_FOREIGN_RAND_CHANCE_1000:I

    .line 13
    const v0, 0x3f2e147b  # 0.68f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->INVEST_FOREIGN_MAX_GOLD_MIN:F

    .line 14
    const v0, 0x3ea3d70a  # 0.32f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->INVEST_FOREIGN_MAX_GOLD_RAND:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->INVEST_FOREIGN_MIN_RELATION:I

    .line 18
    const/16 v0, 0x2a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->INVEST_FOREIGN_FRIENDLY_CIV:I

    .line 19
    const/16 v0, 0x54

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->INVEST_FOREIGN_NEIGHBOURING_CIV:I

    .line 21
    const v0, 0x3f666666  # 0.9f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->INVEST_DEV_DEVELOPMENT_TO_TECH_RATIO:F

    return-void
.end method
