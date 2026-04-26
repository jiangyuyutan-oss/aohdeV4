.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyDisband;
.super Ljava/lang/Object;
.source "GV_ArmyDisband.java"


# instance fields
.field public DISBAND_ARMY_RETURN_AS_POPULATION_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3d99999a  # 0.075f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyDisband;->DISBAND_ARMY_RETURN_AS_POPULATION_MODIFIER:F

    return-void
.end method
