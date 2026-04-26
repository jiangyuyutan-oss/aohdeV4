.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;
.super Ljava/lang/Object;
.source "GV_ProvinceNotSupplied.java"


# instance fields
.field public NOT_SUPPLIED_PROVINCE_DEFENSE_BONUS_DECAY_LIMIT:F

.field public NOT_SUPPLIED_PROVINCE_DEFENSE_BONUS_DECAY_PER_TURN:F

.field public NOT_SUPPLIED_PROVINCE_LOSE_CONTROL_AFTER_TURNS:I

.field public NOT_SUPPLIED_PROVINCE_STARVATION_PENALTY_PER_TURN:F

.field public NOT_SUPPLIED_PROVINCE_STARVATION_START_TURN_THRESHOLD:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3dcccccd  # 0.1f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;->NOT_SUPPLIED_PROVINCE_DEFENSE_BONUS_DECAY_PER_TURN:F

    .line 6
    const v0, 0x3f59999a  # 0.85f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;->NOT_SUPPLIED_PROVINCE_DEFENSE_BONUS_DECAY_LIMIT:F

    .line 8
    const/4 v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;->NOT_SUPPLIED_PROVINCE_STARVATION_START_TURN_THRESHOLD:I

    .line 9
    const v0, 0x3d23d70a  # 0.04f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;->NOT_SUPPLIED_PROVINCE_STARVATION_PENALTY_PER_TURN:F

    .line 11
    const/16 v0, 0xd

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;->NOT_SUPPLIED_PROVINCE_LOSE_CONTROL_AFTER_TURNS:I

    return-void
.end method
