.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;
.super Ljava/lang/Object;
.source "GV_Update.java"


# instance fields
.field public AI_TURN_ESSENTIALS_2:I

.field public GAME_UPDATE_CITIES_LEVELS_ON_MAP:I

.field public GAME_UPDATE_RESEARCH_AI:I

.field public GAME_UPDATE_RESEARCH_AI_PROVINCES:I

.field public HATED_CIVS_CHECK_INTERVAL_TURNS:I

.field public MAIN_MENU_BG_CHANGE_BG_EVERY_X_MS:I

.field public REBUILD_CIV_RANK_SCORES_EVERY_X_TURNS:I

.field public UPDATE_CIV_HAPPINESS:I

.field public UPDATE_MAX_ECONOMY_X_TURNS:I

.field public UPDATE_MAX_POPULATION_X_TURNS:I

.field public UPDATE_NEUTRAL_ARMY:I

.field public UPDATE_PROVINCE_STABILITY:I

.field public USE_OLD_CIV_HAPPINESS_UPDATE:Z

.field public USE_OLD_PROVINCE_STABILITY_UPDATE:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->GAME_UPDATE_RESEARCH_AI:I

    .line 6
    const/16 v0, 0x18

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->GAME_UPDATE_RESEARCH_AI_PROVINCES:I

    .line 8
    const/16 v1, 0x64

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->GAME_UPDATE_CITIES_LEVELS_ON_MAP:I

    .line 10
    const/4 v1, 0x3

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->AI_TURN_ESSENTIALS_2:I

    .line 12
    const/16 v2, 0x24

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->HATED_CIVS_CHECK_INTERVAL_TURNS:I

    .line 14
    const/16 v2, 0x61a8

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->MAIN_MENU_BG_CHANGE_BG_EVERY_X_MS:I

    .line 16
    const/16 v2, 0x17

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_MAX_POPULATION_X_TURNS:I

    .line 17
    const/16 v2, 0x1a

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_MAX_ECONOMY_X_TURNS:I

    .line 19
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_NEUTRAL_ARMY:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->USE_OLD_PROVINCE_STABILITY_UPDATE:Z

    .line 22
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_PROVINCE_STABILITY:I

    .line 24
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->USE_OLD_CIV_HAPPINESS_UPDATE:Z

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_CIV_HAPPINESS:I

    .line 27
    const/16 v0, 0x9

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->REBUILD_CIV_RANK_SCORES_EVERY_X_TURNS:I

    return-void
.end method
