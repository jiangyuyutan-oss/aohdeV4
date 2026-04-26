.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;
.super Ljava/lang/Object;
.source "GV_Vassal.java"


# instance fields
.field public CREATE_VASSAL_STARTING_RELATION_MIN:I

.field public ENABLE_VASSAL_LORD_FLAG:Z

.field public PERCENTAGE_OF_INCOME_FOR_LORD_DEFAULT:I

.field public PERCENTAGE_OF_INCOME_FOR_LORD_MAX:I

.field public PERCENTAGE_OF_INCOME_FOR_LORD_MIN:I

.field public RELEASED_VASSAL_ARMY_IN_CAPITAL:I

.field public RELEASED_VASSAL_MIN_GOLD:I

.field public RELEASED_VASSAL_MIN_OPINION:F

.field public RELEASED_VASSAL_REV_RISK_MODIFIER:F

.field public RELEASE_VASSAL_PERC_OF_TECH_BASE:F

.field public RELEASE_VASSAL_PERC_OF_TECH_RANDOM_100:I

.field public TRANSFER_VASSAL_RELATION:F

.field public VASSAL_COLOR_LORD_PERC:F

.field public VASSAL_COLOR_VASSAL_PERC:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->ENABLE_VASSAL_LORD_FLAG:Z

    .line 7
    const/4 v0, 0x6

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->PERCENTAGE_OF_INCOME_FOR_LORD_DEFAULT:I

    .line 8
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->PERCENTAGE_OF_INCOME_FOR_LORD_MAX:I

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->PERCENTAGE_OF_INCOME_FOR_LORD_MIN:I

    .line 11
    const/16 v0, 0x41

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->CREATE_VASSAL_STARTING_RELATION_MIN:I

    .line 13
    const v0, 0x3f3851ec  # 0.72f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->RELEASE_VASSAL_PERC_OF_TECH_BASE:F

    .line 14
    const/16 v0, 0x16

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->RELEASE_VASSAL_PERC_OF_TECH_RANDOM_100:I

    .line 16
    const/high16 v0, 0x41c80000  # 25.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->RELEASED_VASSAL_MIN_OPINION:F

    .line 17
    const/16 v0, 0x3e8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->RELEASED_VASSAL_MIN_GOLD:I

    .line 18
    const v0, 0x3da3d70a  # 0.08f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->RELEASED_VASSAL_REV_RISK_MODIFIER:F

    .line 19
    const/16 v0, 0x145

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->RELEASED_VASSAL_ARMY_IN_CAPITAL:I

    .line 21
    const v0, 0x3f570a3d  # 0.84f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->VASSAL_COLOR_LORD_PERC:F

    .line 22
    const v0, 0x3e23d70a  # 0.16f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->VASSAL_COLOR_VASSAL_PERC:F

    .line 24
    const/high16 v0, 0x41700000  # 15.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->TRANSFER_VASSAL_RELATION:F

    return-void
.end method
