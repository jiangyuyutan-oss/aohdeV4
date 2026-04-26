.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;
.super Ljava/lang/Object;
.source "GV_Difficulty.java"


# instance fields
.field public ACCEPTABLE_TAXATION_NON_PLAYER_BEGINNER:F

.field public ACCEPTABLE_TAXATION_NON_PLAYER_EXTREME:F

.field public ACCEPTABLE_TAXATION_NON_PLAYER_HARD:F

.field public ACCEPTABLE_TAXATION_NON_PLAYER_LEGENDARY:F

.field public ACCEPTABLE_TAXATION_NON_PLAYER_NORMAL:F

.field public BEGINNER_NAME:Ljava/lang/String;

.field public EXTREME_NAME:Ljava/lang/String;

.field public HARD_NAME:Ljava/lang/String;

.field public LEGENDARY_NAME:Ljava/lang/String;

.field public MOVEMENT_POINTS_MODIFIER_NON_PLAYER_BEGINNER:F

.field public MOVEMENT_POINTS_MODIFIER_NON_PLAYER_EXTREME:F

.field public MOVEMENT_POINTS_MODIFIER_NON_PLAYER_HARD:F

.field public MOVEMENT_POINTS_MODIFIER_NON_PLAYER_LEGENDARY:F

.field public MOVEMENT_POINTS_MODIFIER_NON_PLAYER_NORMAL:F

.field public MOVEMENT_POINTS_MODIFIER_PLAYER_BEGINNER:F

.field public MOVEMENT_POINTS_MODIFIER_PLAYER_EXTREME:F

.field public MOVEMENT_POINTS_MODIFIER_PLAYER_HARD:F

.field public MOVEMENT_POINTS_MODIFIER_PLAYER_LEGENDARY:F

.field public MOVEMENT_POINTS_MODIFIER_PLAYER_NORMAL:F

.field public NORMAL_NAME:Ljava/lang/String;

.field public TAX_INCOME_MODIFIER_NON_PLAYER_BEGINNER:F

.field public TAX_INCOME_MODIFIER_NON_PLAYER_EXTREME:F

.field public TAX_INCOME_MODIFIER_NON_PLAYER_HARD:F

.field public TAX_INCOME_MODIFIER_NON_PLAYER_LEGENDARY:F

.field public TAX_INCOME_MODIFIER_NON_PLAYER_NORMAL:F

.field public TAX_INCOME_MODIFIER_PLAYER_BEGINNER:F

.field public TAX_INCOME_MODIFIER_PLAYER_EXTREME:F

.field public TAX_INCOME_MODIFIER_PLAYER_HARD:F

.field public TAX_INCOME_MODIFIER_PLAYER_LEGENDARY:F

.field public TAX_INCOME_MODIFIER_PLAYER_NORMAL:F


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "Beginner"

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->BEGINNER_NAME:Ljava/lang/String;

    .line 6
    const-string v0, "Normal"

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->NORMAL_NAME:Ljava/lang/String;

    .line 7
    const-string v0, "Hard"

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->HARD_NAME:Ljava/lang/String;

    .line 8
    const-string v0, "Legendary"

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->EXTREME_NAME:Ljava/lang/String;

    .line 9
    const-string v0, "Extreme"

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->LEGENDARY_NAME:Ljava/lang/String;

    .line 11
    const/high16 v0, 0x3fc00000  # 1.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->MOVEMENT_POINTS_MODIFIER_PLAYER_BEGINNER:F

    .line 12
    const v1, 0x3f8ccccd  # 1.1f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->MOVEMENT_POINTS_MODIFIER_PLAYER_NORMAL:F

    .line 13
    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->MOVEMENT_POINTS_MODIFIER_PLAYER_HARD:F

    .line 14
    const v3, 0x3f59999a  # 0.85f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->MOVEMENT_POINTS_MODIFIER_PLAYER_EXTREME:F

    .line 15
    const v4, 0x3f333333  # 0.7f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->MOVEMENT_POINTS_MODIFIER_PLAYER_LEGENDARY:F

    .line 17
    const v4, 0x3f4ccccd  # 0.8f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->MOVEMENT_POINTS_MODIFIER_NON_PLAYER_BEGINNER:F

    .line 18
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->MOVEMENT_POINTS_MODIFIER_NON_PLAYER_NORMAL:F

    .line 19
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->MOVEMENT_POINTS_MODIFIER_NON_PLAYER_HARD:F

    .line 20
    const/high16 v1, 0x3fa00000  # 1.25f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->MOVEMENT_POINTS_MODIFIER_NON_PLAYER_EXTREME:F

    .line 21
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->MOVEMENT_POINTS_MODIFIER_NON_PLAYER_LEGENDARY:F

    .line 23
    const/high16 v4, 0x3fe00000  # 1.75f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_PLAYER_BEGINNER:F

    .line 24
    const v4, 0x3f833333  # 1.025f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_PLAYER_NORMAL:F

    .line 25
    const v4, 0x3f79999a  # 0.975f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_PLAYER_HARD:F

    .line 26
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_PLAYER_EXTREME:F

    .line 27
    const v3, 0x3f266666  # 0.65f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_PLAYER_LEGENDARY:F

    .line 29
    const v3, 0x3f6ccccd  # 0.925f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_NON_PLAYER_BEGINNER:F

    .line 30
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_NON_PLAYER_NORMAL:F

    .line 31
    const v2, 0x3f866666  # 1.05f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_NON_PLAYER_HARD:F

    .line 32
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_NON_PLAYER_EXTREME:F

    .line 33
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_NON_PLAYER_LEGENDARY:F

    .line 35
    const v0, -0x42dc28f6  # -0.04f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->ACCEPTABLE_TAXATION_NON_PLAYER_BEGINNER:F

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->ACCEPTABLE_TAXATION_NON_PLAYER_NORMAL:F

    .line 37
    const v0, 0x3ca3d70a  # 0.02f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->ACCEPTABLE_TAXATION_NON_PLAYER_HARD:F

    .line 38
    const v0, 0x3d4ccccd  # 0.05f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->ACCEPTABLE_TAXATION_NON_PLAYER_EXTREME:F

    .line 39
    const v0, 0x3e19999a  # 0.15f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->ACCEPTABLE_TAXATION_NON_PLAYER_LEGENDARY:F

    return-void
.end method
