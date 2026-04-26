.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;
.super Ljava/lang/Object;
.source "GV_Goods.java"


# instance fields
.field public GOODS_BELOW_MIN_ECONOMY_BASE_DEV_POP_GROWTH_MODIFIER:F

.field public GOODS_BELOW_MIN_ECONOMY_BASE_MODIFIER:F

.field public GOODS_BELOW_MIN_ECONOMY_PROVINCE_DEVELOPMENT_MODIFIER:F

.field public GOODS_BELOW_MIN_ECONOMY_PROVINCE_GROWTH_RATE_MODIFIER:F

.field public GOODS_BELOW_MIN_HAPPINESS_BASE_DEV_POP_GROWTH_MODIFIER:F

.field public GOODS_BELOW_MIN_HAPPINESS_BASE_MODIFIER:F

.field public GOODS_BELOW_MIN_HAPPINESS_PROVINCE_DEVELOPMENT_MODIFIER:F

.field public GOODS_BELOW_MIN_HAPPINESS_PROVINCE_GROWTH_RATE_MODIFIER:F

.field public GOODS_BELOW_MIN_HAPPINESS_WAR_WEARiNESS_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, -0x43b74bc7  # -0.01225f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_HAPPINESS_BASE_MODIFIER:F

    .line 6
    const v0, 0x3c23d70a  # 0.01f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_HAPPINESS_BASE_DEV_POP_GROWTH_MODIFIER:F

    .line 7
    const/high16 v1, 0x3fa00000  # 1.25f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_HAPPINESS_PROVINCE_DEVELOPMENT_MODIFIER:F

    .line 8
    const v1, 0x3e0a3d71  # 0.135f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_HAPPINESS_PROVINCE_GROWTH_RATE_MODIFIER:F

    .line 9
    const/high16 v1, -0x40e00000  # -0.625f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_HAPPINESS_WAR_WEARiNESS_MODIFIER:F

    .line 11
    const v1, -0x44333333  # -0.00625f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_ECONOMY_BASE_MODIFIER:F

    .line 12
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_ECONOMY_BASE_DEV_POP_GROWTH_MODIFIER:F

    .line 13
    const v0, 0x3f0c28f6  # 0.5475f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_ECONOMY_PROVINCE_DEVELOPMENT_MODIFIER:F

    .line 14
    const v0, 0x3e47ae14  # 0.195f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_ECONOMY_PROVINCE_GROWTH_RATE_MODIFIER:F

    return-void
.end method
