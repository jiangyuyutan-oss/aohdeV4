.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;
.super Ljava/lang/Object;
.source "GV_PopRelocate.java"


# instance fields
.field public CAN_RELOCATE_TO_ONLY_OWN_PROVINCE:Z

.field public COST_RELOCATE_BASE:F

.field public COST_RELOCATE_PER_POP:F

.field public MIGRATE_ECO_MODIFIER:F

.field public MIGRATE_MIN:I

.field public MIGRATE_PERC:F

.field public MIGRATE_RELATIONS_CHANGE_PER_TURN:F

.field public MIGRATE_REV_RISK_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;->CAN_RELOCATE_TO_ONLY_OWN_PROVINCE:Z

    .line 7
    const/high16 v0, 0x437a0000  # 250.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;->COST_RELOCATE_BASE:F

    .line 8
    const/high16 v0, 0x40000000  # 2.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;->COST_RELOCATE_PER_POP:F

    .line 10
    const/16 v1, 0x205

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;->MIGRATE_MIN:I

    .line 11
    const v1, 0x3dba5e35  # 0.091f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;->MIGRATE_PERC:F

    .line 12
    const/high16 v1, 0x3fa00000  # 1.25f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;->MIGRATE_ECO_MODIFIER:F

    .line 13
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;->MIGRATE_REV_RISK_MODIFIER:F

    .line 14
    const/high16 v0, -0x3f680000  # -4.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;->MIGRATE_RELATIONS_CHANGE_PER_TURN:F

    return-void
.end method
