.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestForeign;
.super Ljava/lang/Object;
.source "GV_InvestForeign.java"


# instance fields
.field public BUILD_EXTRA_RETURN:F

.field public BUILD_EXTRA_RETURN_DISTANCE:F

.field public BUILD_RETURN_TURNS:I

.field public INVEST_ECO_COST_MOVEMENT_POINTS:I

.field public INVEST_ECO_EXTRA_RETURN:F

.field public INVEST_ECO_EXTRA_RETURN_DISTANCE:F

.field public INVEST_ECO_RETURN_TURNS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestForeign;->INVEST_ECO_COST_MOVEMENT_POINTS:I

    .line 7
    const v0, 0x3c4ccccd  # 0.0125f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestForeign;->INVEST_ECO_EXTRA_RETURN:F

    .line 8
    const v0, 0x3d570a3d  # 0.0525f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestForeign;->INVEST_ECO_EXTRA_RETURN_DISTANCE:F

    .line 10
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestForeign;->INVEST_ECO_RETURN_TURNS:I

    .line 12
    const v0, 0x3c3c6a7f  # 0.0115f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestForeign;->BUILD_EXTRA_RETURN:F

    .line 13
    const v0, 0x3c5d2f1b  # 0.0135f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestForeign;->BUILD_EXTRA_RETURN_DISTANCE:F

    .line 15
    const/16 v0, 0xc

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestForeign;->BUILD_RETURN_TURNS:I

    return-void
.end method
