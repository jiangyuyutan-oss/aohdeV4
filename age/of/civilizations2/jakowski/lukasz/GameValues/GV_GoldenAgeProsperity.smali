.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeProsperity;
.super Ljava/lang/Object;
.source "GV_GoldenAgeProsperity.java"


# instance fields
.field public ECO_GROWTH_BASE:F

.field public ECO_GROWTH_RANDOM_100:I

.field public INCOME_TAXATION_BASE:F

.field public INCOME_TAXATION_RANDOM_100:I

.field public NUM_OF_TURNS:I

.field public POP_GROWTH_BASE:F

.field public POP_GROWTH_RANDOM_100:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeProsperity;->NUM_OF_TURNS:I

    .line 7
    const v0, 0x3dcccccd  # 0.1f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeProsperity;->POP_GROWTH_BASE:F

    .line 8
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeProsperity;->POP_GROWTH_RANDOM_100:I

    .line 10
    const v0, 0x3da3d70a  # 0.08f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeProsperity;->ECO_GROWTH_BASE:F

    .line 11
    const/4 v0, 0x6

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeProsperity;->ECO_GROWTH_RANDOM_100:I

    .line 13
    const v1, 0x3d75c28f  # 0.06f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeProsperity;->INCOME_TAXATION_BASE:F

    .line 14
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeProsperity;->INCOME_TAXATION_RANDOM_100:I

    return-void
.end method
