.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Tribal;
.super Ljava/lang/Object;
.source "GV_Tribal.java"


# instance fields
.field public CIVILIZE_ECONOMY_BONUS_CAPITAL:I

.field public CIVILIZE_POPULATION_BONUS_CAPITAL:I

.field public TECH_RESEARCHED_DEVELOPMENT_CAPITAL:F

.field public TECH_RESEARCHED_ECONOMY_CAPITAL:I

.field public TECH_RESEARCHED_ECONOMY_RANDOM_CAPITAL:I

.field public TECH_RESEARCHED_HAPPINESS_CAPITAL:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x19

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Tribal;->TECH_RESEARCHED_ECONOMY_CAPITAL:I

    .line 6
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Tribal;->TECH_RESEARCHED_ECONOMY_RANDOM_CAPITAL:I

    .line 8
    const v0, 0x3c23d70a  # 0.01f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Tribal;->TECH_RESEARCHED_DEVELOPMENT_CAPITAL:F

    .line 10
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Tribal;->TECH_RESEARCHED_HAPPINESS_CAPITAL:F

    .line 12
    const/16 v0, 0x23f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Tribal;->CIVILIZE_ECONOMY_BONUS_CAPITAL:I

    .line 13
    const/16 v0, 0x1388

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Tribal;->CIVILIZE_POPULATION_BONUS_CAPITAL:I

    return-void
.end method
