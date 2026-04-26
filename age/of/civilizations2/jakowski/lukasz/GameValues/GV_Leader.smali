.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;
.super Ljava/lang/Object;
.source "GV_Leader.java"


# instance fields
.field public ADD_RANDOM_LEADER_AFTER_DEATH:Z

.field public CHANCE_OF_DEATH:[F

.field public ENABLE_JSON_LEADERS:Z

.field public LEADER_DEATH_UPDATE_CIVS_X:I

.field public LEADER_MAX_VALUE:F

.field public LEADER_MIN_VALUE:F

.field public LIFE_EXPECTANCY:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->ENABLE_JSON_LEADERS:Z

    .line 7
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    .line 8
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    .line 10
    const/16 v0, 0xc8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_DEATH_UPDATE_CIVS_X:I

    .line 12
    const/16 v0, 0x5a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LIFE_EXPECTANCY:I

    .line 14
    const/16 v0, 0x15

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->CHANCE_OF_DEATH:[F

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->ADD_RANDOM_LEADER_AFTER_DEATH:Z

    return-void

    nop

    :array_24
    .array-data 4
        0x40a00000  # 5.0f
        0x41200000  # 10.0f
        0x41700000  # 15.0f
        0x41c80000  # 25.0f
        0x42480000  # 50.0f
        0x42960000  # 75.0f
        0x42c80000  # 100.0f
        0x43480000  # 200.0f
        0x43fa0000  # 500.0f
        0x459c4000  # 5000.0f
        0x47435000  # 50000.0f
        0x47927c00  # 75000.0f
        0x47afc800  # 90000.0f
        0x47c15c00  # 99000.0f
        0x47c35000  # 100000.0f
        0x47c35000  # 100000.0f
        0x47c35000  # 100000.0f
        0x47c35000  # 100000.0f
        0x47c35000  # 100000.0f
        0x47c35000  # 100000.0f
        0x47c35000  # 100000.0f
    .end array-data
.end method
