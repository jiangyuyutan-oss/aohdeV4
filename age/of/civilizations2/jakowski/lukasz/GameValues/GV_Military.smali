.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;
.super Ljava/lang/Object;
.source "GV_Military.java"


# instance fields
.field public AI_MILITARY_EXPERTISE_ATTACK_CHANCE_100:I

.field public ARMY_EXPERIENCE_BASE:I

.field public ARMY_EXPERIENCE_MILITARY_SPENDING_MAX_VALUE:F

.field public ARMY_EXPERIENCE_MILITARY_SPENDING_MODIFIER:F

.field public ARMY_EXPERIENCE_PER_CONQUERED_PROVINCE:F

.field public ARMY_EXPERIENCE_PER_LEVEL:I

.field public MILITARY_EXPERTISE_ATTACK_PER_POINT:F

.field public MILITARY_EXPERTISE_DEFENSE_PER_POINT:F

.field public MILITARY_EXPERTISE_MAX_ATTACK:I

.field public MILITARY_EXPERTISE_MAX_DEFENSE:I

.field public MILITARY_EXPERTISE_MAX_LEVEL:I

.field public UPKEEP_CIV_PROVINCES_SHARE_PERC_OF_ALL:F

.field public UPKEEP_DEVELOPMENT:F

.field public UPKEEP_MIN:F

.field public UPKEEP_TECHNOLOGY_LEVEL:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3f847ae1  # 1.035f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->UPKEEP_MIN:F

    .line 7
    const v0, -0x41f851ec  # -0.1325f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->UPKEEP_DEVELOPMENT:F

    .line 8
    const v0, -0x422963dc  # -0.10479f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->UPKEEP_TECHNOLOGY_LEVEL:F

    .line 10
    const v0, 0x3ed9999a  # 0.425f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->UPKEEP_CIV_PROVINCES_SHARE_PERC_OF_ALL:F

    .line 12
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_MAX_LEVEL:I

    .line 13
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_MAX_ATTACK:I

    .line 14
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_MAX_DEFENSE:I

    .line 16
    const/high16 v0, 0x3fc00000  # 1.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_ATTACK_PER_POINT:F

    .line 17
    const/high16 v0, 0x3fa00000  # 1.25f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_DEFENSE_PER_POINT:F

    .line 19
    const/16 v0, 0x5a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->ARMY_EXPERIENCE_BASE:I

    .line 20
    const/16 v0, 0x19

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->ARMY_EXPERIENCE_PER_LEVEL:I

    .line 22
    const v0, 0x3d6978d5  # 0.057f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->ARMY_EXPERIENCE_MILITARY_SPENDING_MODIFIER:F

    .line 23
    const/high16 v0, 0x42160000  # 37.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->ARMY_EXPERIENCE_MILITARY_SPENDING_MAX_VALUE:F

    .line 25
    const v0, 0x3f11eb85  # 0.57f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->ARMY_EXPERIENCE_PER_CONQUERED_PROVINCE:F

    .line 27
    const/16 v0, 0x3c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->AI_MILITARY_EXPERTISE_ATTACK_CHANCE_100:I

    return-void
.end method
