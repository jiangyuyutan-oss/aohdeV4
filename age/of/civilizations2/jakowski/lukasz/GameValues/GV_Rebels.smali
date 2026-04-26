.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;
.super Ljava/lang/Object;
.source "GV_Rebels.java"


# instance fields
.field public CIV_PROVINCES_REST_HAPPINESS_INCREASE_BASE:F

.field public CIV_PROVINCES_REST_HAPPINESS_INCREASE_MODIFIER:F

.field public CIV_PROVINCES_REST_HAPPINESS_MIN:F

.field public CIV_PROVINCES_REST_HAPPINESS_MIN_IN_PROVINCE_MODIFIER:F

.field public CIV_PROVINCES_REST_REV_RISK_CHANGE_BASE:F

.field public CIV_PROVINCES_REST_REV_RISK_CHANGE_RANDOM_1000:I

.field public PROVINCE_REVOLT_RISK_ARMY_PER_POP_REDUCTION:F

.field public PROVINCE_REVOLT_RISK_PER_CORE_MODIFIER:F

.field public RISE_REVOLT_RISK_IN_PROVINCE_IF_HAPPINESS_BELOW:F

.field public RISE_REVOLT_RISK_IN_PROVINCE_IF_STABILITY_BELOW:F

.field public SPAWN_REVOLUTIONARY_ARMY_BASE:I

.field public SPAWN_REVOLUTIONARY_ARMY_POP_SUPPORT_AT_WAR_WITH_CIV_ID:F

.field public SPAWN_REVOLUTIONARY_ARMY_POP_SUPPORT_CIV_0_PROVINCES:F

.field public SPAWN_REVOLUTIONARY_ARMY_POP_SUPPORT_ELSE:F

.field public SPAWN_REVOLUTIONARY_ARMY_POP_SUPPORT_FROM_CIV_ID:F

.field public SPAWN_REVOLUTIONARY_ARMY_POP_SUPPORT_REBELS_CIV_ID:F

.field public SPAWN_REVOLUTIONARY_ARMY_RANDOM:I

.field public START_UPRAISE_IGNITE_RANDOM_CHANCE_100:I

.field public START_UPRAISE_IGNITE_REV_RISK_NOTIFY_CIV_BEFORE_IGNITE_MODIFIER:F

.field public START_UPRAISE_IGNITE_REV_RISK_PROVINCE_STABILITY_BASE:F

.field public START_UPRAISE_IGNITE_REV_RISK_PROVINCE_STABILITY_MODIFIER:F

.field public START_UPRAISE_IGNITE_REV_RISK_VALUE:F

.field public START_UPRAISE_MIN_REV_RISK_IN_PROVINCE_TO_JOIN:F

.field public UPDATE_IGNITE_EVERY_X_TURNS:I

.field public UPRAISE_DESTROY_LIBRARY_IN_PROVINCE_CHANCE:I

.field public UPRAISE_GOLD_MIN:I

.field public UPRAISE_PERC_OF_PROVINCES_TO_UPRAISE_BASE:F

.field public UPRAISE_PERC_OF_PROVINCES_TO_UPRAISE_RANDOM_100:I

.field public UPRAISE_REBELS_PROVINCES_HAPPINESS_MIN:F

.field public UPRAISE_REBELS_PROVINCES_HAPPINESS_RANDOM_1O0:I

.field public UPRAISE_REBELS_PROVINCES_REV_RISK:F

.field public UPRAISE_REBELS_PROVINCE_DEVELOPMENT_BASE:F

.field public UPRAISE_REBELS_PROVINCE_DEVELOPMENT_RANDOM_1000_MINUS:I

.field public UPRAISE_REBELS_PROVINCE_ECONOMY_BASE:F

.field public UPRAISE_REBELS_PROVINCE_ECONOMY_RANDOM_1000_MINUS:I

.field public UPRAISE_REBELS_PROVINCE_HAPPINESS_BASE:F

.field public UPRAISE_REBELS_PROVINCE_HAPPINESS_RANDOM_1000:I

.field public UPRAISE_TECH_LEVEL_BASE:F

.field public UPRAISE_TECH_LEVEL_RANDOM_1000:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPDATE_IGNITE_EVERY_X_TURNS:I

    .line 7
    const/16 v0, 0x32

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->SPAWN_REVOLUTIONARY_ARMY_BASE:I

    .line 8
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->SPAWN_REVOLUTIONARY_ARMY_RANDOM:I

    .line 10
    const v1, 0x3aa3d70a  # 0.00125f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->SPAWN_REVOLUTIONARY_ARMY_POP_SUPPORT_FROM_CIV_ID:F

    .line 11
    const v1, 0x3c6147ae  # 0.01375f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->SPAWN_REVOLUTIONARY_ARMY_POP_SUPPORT_REBELS_CIV_ID:F

    .line 12
    const v1, 0x3c4ccccd  # 0.0125f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->SPAWN_REVOLUTIONARY_ARMY_POP_SUPPORT_CIV_0_PROVINCES:F

    .line 13
    const v1, 0x3c6d9168  # 0.0145f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->SPAWN_REVOLUTIONARY_ARMY_POP_SUPPORT_AT_WAR_WITH_CIV_ID:F

    .line 14
    const v1, 0x3b87fcb9  # 0.00415f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->SPAWN_REVOLUTIONARY_ARMY_POP_SUPPORT_ELSE:F

    .line 16
    const v1, 0x3f0f5c29  # 0.56f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->RISE_REVOLT_RISK_IN_PROVINCE_IF_HAPPINESS_BELOW:F

    .line 17
    const v1, 0x3f1eb852  # 0.62f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->RISE_REVOLT_RISK_IN_PROVINCE_IF_STABILITY_BELOW:F

    .line 19
    const v1, 0x3f23d70a  # 0.64f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->START_UPRAISE_IGNITE_REV_RISK_VALUE:F

    .line 20
    const v1, 0x3ecccccd  # 0.4f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->START_UPRAISE_IGNITE_REV_RISK_PROVINCE_STABILITY_BASE:F

    .line 21
    const v1, 0x3f19999a  # 0.6f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->START_UPRAISE_IGNITE_REV_RISK_PROVINCE_STABILITY_MODIFIER:F

    .line 23
    const/16 v1, 0x28

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->START_UPRAISE_IGNITE_RANDOM_CHANCE_100:I

    .line 25
    const v1, 0x3e23d70a  # 0.16f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->START_UPRAISE_MIN_REV_RISK_IN_PROVINCE_TO_JOIN:F

    .line 27
    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->START_UPRAISE_IGNITE_REV_RISK_NOTIFY_CIV_BEFORE_IGNITE_MODIFIER:F

    .line 29
    const/high16 v1, 0x42480000  # 50.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->PROVINCE_REVOLT_RISK_ARMY_PER_POP_REDUCTION:F

    .line 30
    const v1, 0x3dcccccd  # 0.1f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->PROVINCE_REVOLT_RISK_PER_CORE_MODIFIER:F

    .line 32
    const v2, 0x3eb33333  # 0.35f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_PERC_OF_PROVINCES_TO_UPRAISE_BASE:F

    .line 33
    const/16 v2, 0x1e

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_PERC_OF_PROVINCES_TO_UPRAISE_RANDOM_100:I

    .line 35
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_GOLD_MIN:I

    .line 37
    const v0, 0x3f5851ec  # 0.845f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_TECH_LEVEL_BASE:F

    .line 38
    const/16 v0, 0x7d

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_TECH_LEVEL_RANDOM_1000:I

    .line 40
    const/high16 v0, 0x3ec00000  # 0.375f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->CIV_PROVINCES_REST_REV_RISK_CHANGE_BASE:F

    .line 41
    const/16 v0, 0x177

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->CIV_PROVINCES_REST_REV_RISK_CHANGE_RANDOM_1000:I

    .line 43
    const v0, 0x3da3d70a  # 0.08f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->CIV_PROVINCES_REST_HAPPINESS_INCREASE_BASE:F

    .line 44
    const v0, 0x3f8fdf3b  # 1.124f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->CIV_PROVINCES_REST_HAPPINESS_INCREASE_MODIFIER:F

    .line 46
    const v0, 0x3eae147b  # 0.34f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->CIV_PROVINCES_REST_HAPPINESS_MIN:F

    .line 47
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->CIV_PROVINCES_REST_HAPPINESS_MIN_IN_PROVINCE_MODIFIER:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_REBELS_PROVINCES_REV_RISK:F

    .line 51
    const v0, 0x3f28f5c3  # 0.66f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_REBELS_PROVINCES_HAPPINESS_MIN:F

    .line 52
    const/16 v0, 0x145

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_REBELS_PROVINCES_HAPPINESS_RANDOM_1O0:I

    .line 54
    const/16 v0, 0x40

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_DESTROY_LIBRARY_IN_PROVINCE_CHANCE:I

    .line 56
    const v0, 0x3f7b8130  # 0.98244f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_REBELS_PROVINCE_ECONOMY_BASE:F

    .line 57
    const/16 v0, 0x4e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_REBELS_PROVINCE_ECONOMY_RANDOM_1000_MINUS:I

    .line 59
    const v0, 0x3f6eb463

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_REBELS_PROVINCE_DEVELOPMENT_BASE:F

    .line 60
    const/16 v0, 0xb8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_REBELS_PROVINCE_DEVELOPMENT_RANDOM_1000_MINUS:I

    .line 62
    const v0, 0x3f89999a  # 1.075f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_REBELS_PROVINCE_HAPPINESS_BASE:F

    .line 63
    const/16 v0, 0x208

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->UPRAISE_REBELS_PROVINCE_HAPPINESS_RANDOM_1000:I

    return-void
.end method
