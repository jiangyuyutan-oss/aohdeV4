.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;
.super Ljava/lang/Object;
.source "GV_RevolutionaryRisk.java"


# instance fields
.field public REVOLT_RISK_BANKRUPTCY_THRESHOLD:I

.field public REVOLT_RISK_DECAY_DIVISOR:F

.field public REVOLT_RISK_DECAY_MAX:F

.field public REVOLT_RISK_DECAY_THRESHOLD:F

.field public REVOLT_RISK_HAPPINESS_DIVISOR:F

.field public REVOLT_RISK_TAXATION_BASE:F

.field public REV_RISK_MAX:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3bf5c28f  # 0.0075f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REVOLT_RISK_DECAY_THRESHOLD:F

    .line 6
    const/high16 v0, 0x41200000  # 10.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REVOLT_RISK_DECAY_DIVISOR:F

    .line 7
    const v0, 0x3c4bc48f  # 0.012437f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REVOLT_RISK_DECAY_MAX:F

    .line 9
    const v0, 0x3d947ae1  # 0.0725f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REVOLT_RISK_TAXATION_BASE:F

    .line 10
    const/high16 v0, 0x41600000  # 14.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REVOLT_RISK_HAPPINESS_DIVISOR:F

    .line 12
    const/16 v0, -0x3e8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REVOLT_RISK_BANKRUPTCY_THRESHOLD:I

    .line 14
    const v0, 0x3f7d70a4  # 0.99f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REV_RISK_MAX:F

    return-void
.end method
