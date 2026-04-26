.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;
.super Ljava/lang/Object;
.source "GV_RebelsIndependence.java"


# instance fields
.field public INDEPENDENCE_MAX_TURNS_BEFORE_FORCED_INDEPENDENCE:I

.field public INDEPENDENCE_MIN_TURNS_SINCE_LAST_PROVINCE_LOST:I

.field public INDEPENDENCE_MIN_TURNS_SINCE_REVOLT_BASE:I

.field public INDEPENDENCE_MIN_TURNS_SINCE_REVOLT_RANDOM:I

.field public NEW_CIV_CAPITAL_DEVELOPMENT_GROWTH:F

.field public NEW_CIV_CAPITAL_ECONOMY_GROWTH:F

.field public NEW_CIV_CAPITAL_MIN_ASSIMILATED_POP:I

.field public NEW_CIV_CAPITAL_MIN_HAPPINESS:F

.field public NEW_CIV_CAPITAL_POP_ASSIMILATE_BASE:F

.field public NEW_CIV_CAPITAL_POP_ASSIMILATE_RANDOM_1000:I

.field public NEW_CIV_INDEPENDENCE_CHOOSE_HIGHEST_POP_CHANCE_100:I

.field public NEW_CIV_MIN_GOLD:I

.field public NEW_CIV_MIN_GOLD_RANDOM:I

.field public NEW_CIV_PROVINCE_HAPPINESS_MIN:F

.field public NEW_CIV_PROVINCE_HAPPINESS_MODIFIER:F

.field public NEW_CIV_PROVINCE_HAPPINESS_RANDOM_100:I

.field public NEW_CIV_PROVINCE_POP_ASSIMILATE_ALREADY_EXISTING_CIV_BASE:F

.field public NEW_CIV_PROVINCE_POP_ASSIMILATE_ALREADY_EXISTING_CIV_RANDOM_1000:I

.field public NEW_CIV_PROVINCE_POP_ASSIMILATE_BASE:F

.field public NEW_CIV_PROVINCE_POP_ASSIMILATE_RANDOM_1000:I

.field public NEW_CIV_TECH_BASE_MODIFIER:F

.field public NEW_CIV_TECH_RANDOM_MODIFIER_1000:I

.field public UPDATE_EVERY_X_TURNS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->UPDATE_EVERY_X_TURNS:I

    .line 7
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->INDEPENDENCE_MIN_TURNS_SINCE_REVOLT_BASE:I

    .line 8
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->INDEPENDENCE_MIN_TURNS_SINCE_REVOLT_RANDOM:I

    .line 10
    const/4 v0, 0x3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->INDEPENDENCE_MIN_TURNS_SINCE_LAST_PROVINCE_LOST:I

    .line 12
    const/16 v0, 0x31

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->INDEPENDENCE_MAX_TURNS_BEFORE_FORCED_INDEPENDENCE:I

    .line 14
    const/16 v0, 0x50

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_INDEPENDENCE_CHOOSE_HIGHEST_POP_CHANCE_100:I

    .line 16
    const v0, 0x3f533333  # 0.825f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_TECH_BASE_MODIFIER:F

    .line 17
    const/16 v0, 0x23

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_TECH_RANDOM_MODIFIER_1000:I

    .line 19
    const v0, 0x3f6b851f  # 0.92f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_CAPITAL_MIN_HAPPINESS:F

    .line 21
    const v0, 0x3f428f5c  # 0.76f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_CAPITAL_POP_ASSIMILATE_BASE:F

    .line 22
    const/16 v0, 0xf0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_CAPITAL_POP_ASSIMILATE_RANDOM_1000:I

    .line 23
    const/16 v0, 0xfa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_CAPITAL_MIN_ASSIMILATED_POP:I

    .line 25
    const/high16 v0, 0x3fa00000  # 1.25f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_CAPITAL_ECONOMY_GROWTH:F

    .line 26
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_CAPITAL_DEVELOPMENT_GROWTH:F

    .line 28
    const v0, 0x3f96b852  # 1.1775f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_PROVINCE_HAPPINESS_MODIFIER:F

    .line 29
    const v0, 0x3f51eb85  # 0.82f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_PROVINCE_HAPPINESS_MIN:F

    .line 30
    const/16 v0, 0x12

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_PROVINCE_HAPPINESS_RANDOM_100:I

    .line 32
    const v0, 0x3f2b851f  # 0.67f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_PROVINCE_POP_ASSIMILATE_BASE:F

    .line 33
    const/16 v0, 0x12c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_PROVINCE_POP_ASSIMILATE_RANDOM_1000:I

    .line 35
    const v0, 0x3f1eb852  # 0.62f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_PROVINCE_POP_ASSIMILATE_ALREADY_EXISTING_CIV_BASE:F

    .line 36
    const/16 v0, 0x136

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_PROVINCE_POP_ASSIMILATE_ALREADY_EXISTING_CIV_RANDOM_1000:I

    .line 38
    const/16 v0, 0x1f4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_MIN_GOLD:I

    .line 39
    const/16 v0, 0x1194

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsIndependence;->NEW_CIV_MIN_GOLD_RANDOM:I

    return-void
.end method
