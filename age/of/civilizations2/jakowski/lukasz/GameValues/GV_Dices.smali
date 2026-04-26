.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Dices;
.super Ljava/lang/Object;
.source "GV_Dices.java"


# instance fields
.field public DICE_AGGRESSOR_BASE:I

.field public DICE_AGGRESSOR_RANDOM:I

.field public DICE_DEFENDER_BASE:I

.field public DICE_DEFENDER_RANDOM:I

.field public DICE_ROLL_BONUS:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/high16 v0, 0x40200000  # 2.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Dices;->DICE_ROLL_BONUS:F

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Dices;->DICE_AGGRESSOR_BASE:I

    .line 8
    const/4 v1, 0x6

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Dices;->DICE_AGGRESSOR_RANDOM:I

    .line 10
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Dices;->DICE_DEFENDER_BASE:I

    .line 11
    const/4 v0, 0x7

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Dices;->DICE_DEFENDER_RANDOM:I

    return-void
.end method
