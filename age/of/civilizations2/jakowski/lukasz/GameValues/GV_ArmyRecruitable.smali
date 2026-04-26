.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruitable;
.super Ljava/lang/Object;
.source "GV_ArmyRecruitable.java"


# instance fields
.field public RECRUITABLE_ARMY_NEUTRAL_POP:F

.field public RECRUITABLE_ARMY_OTHER_POP:F

.field public RECRUITABLE_ARMY_OTHER_POP_ALLIANCE:F

.field public RECRUITABLE_ARMY_OTHER_POP_AT_WAR:F

.field public RECRUITABLE_ARMY_OWN_POP:F

.field public RECRUITABLE_ARMY_OWN_POP_OCCUPIED:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3e333333  # 0.175f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruitable;->RECRUITABLE_ARMY_OWN_POP:F

    .line 6
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruitable;->RECRUITABLE_ARMY_OWN_POP_OCCUPIED:F

    .line 7
    const/high16 v0, 0x3e000000  # 0.125f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruitable;->RECRUITABLE_ARMY_OTHER_POP_ALLIANCE:F

    .line 8
    const v0, 0x3d8a3d71  # 0.0675f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruitable;->RECRUITABLE_ARMY_NEUTRAL_POP:F

    .line 9
    const v0, 0x3bed9168  # 0.00725f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruitable;->RECRUITABLE_ARMY_OTHER_POP:F

    .line 10
    const v0, 0x3b23d70a  # 0.0025f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruitable;->RECRUITABLE_ARMY_OTHER_POP_AT_WAR:F

    return-void
.end method
