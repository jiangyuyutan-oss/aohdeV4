.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;
.super Ljava/lang/Object;
.source "GV_InGame.java"


# instance fields
.field public ACHIEVEMENT_SERVICE_RIBBON_SAVE_GAME:Z

.field public ARMY_CONTROLLED_BY_AI_ENABLE_BUTTON:Z

.field public BUDGET_MENU_WIDTH_PERC_OF_MAX_WIDTH:F

.field public BUDGET_MENU_WIDTH_PERC_OF_MAX_WIDTH_MOBILE:F

.field public BUILDINGS_VIEW_TOP_CIVS_LIMIT:I

.field public CIV_DECISIONS_ALLIANCE_SHOW_POSSIBLE_BUTTON:Z

.field public CIV_DECISIONS_ALLIANCE_SHOW_POSSIBLE_CIVS_NUM:Z

.field public CIV_DECISIONS_ALLIANCE_SHOW_POSSIBLE_CIVS_NUM_MOBILE:Z

.field public CIV_DECISIONS_SHOW_ALL_FORMABLE_CIVS:Z

.field public CIV_DECISIONS_UNION_SHOW_POSSIBLE_BUTTON:Z

.field public CIV_DECISIONS_UNION_SHOW_POSSIBLE_CIVS_NUM:Z

.field public CIV_DECISIONS_UNION_SHOW_POSSIBLE_CIVS_NUM_MOBILE:Z

.field public CIV_DIPLOMACY_SHOW_CONQUERED_CIVS:Z

.field public CIV_DIPLOMACY_SHOW_NEIGH_AT_WAR:Z

.field public CIV_INFO_POP_GRAPH:Z

.field public CIV_POPULATION_HOVER_LIMIT:I

.field public CIV_VIEW_DIPLOMACY_BUTTONS_LIMIT:F

.field public CIV_VIEW_DIPLOMACY_BUTTONS_LIMIT_MOBILE:F

.field public CIV_VIEW_DIPLOMACY_SCALE_DOWN_IF_TOO_BIG:F

.field public CIV_VIEW_STATS_SCALE_DOWN_IF_TOO_BIG:F

.field public DIPLOMACY_DECLARE_WAR_BUTTON_HOVER_CIVS_LIMIT:I

.field public DISABLE_DRAW_CIV_NAMES_SCALE_BASE:F

.field public DISABLE_DRAW_CIV_NAMES_SCALE_CURR_SCALE:F

.field public DRAW_OV_STOP_SCALE:F

.field public ENABLE_DIPLOMACY_NEW_TURN:Z

.field public ENABLE_PLAYER_AI_PEACE_PROPOSITION_RETRY:Z

.field public ENABLE_PLAYER_CIV_INFO_NEW_TURN:Z

.field public EVENT_ANIMATION_IMAGES_LIMIT:I

.field public FLAG_BUDGET_WIDTH:F

.field public FLAG_MENU_GRAPH_BOT_NUM_OF_CIVS_TO_LOAD:I

.field public FLAG_MENU_GRAPH_BOT_NUM_OF_CIVS_TO_LOAD_MOBILE:I

.field public HOVER_OVER_PROVINCE_SHOW_TERRAIN_TYPE:Z

.field public IMPOSE_TARIFFS_INSULT_TEXT:Z

.field public INCOME_ALL_VIEW_LIMIT_PROVINCES:I

.field public INFO_BOX_ANIMATION_TIME:I

.field public INFO_BOX_TIME_IN_VIEW:I

.field public LOAD_LEADERS_ENABLED:Z

.field public LOAD_LORD_VASSAL_SPECIAL_FLAG:Z

.field public LOAD_PROVINCE_IMG:Z

.field public LOAD_PROVINCE_IMG_MOBILE:Z

.field public LOAD_SEA_PROVINCES_IMAGES:Z

.field public MAP_LINES_LIMIT:I

.field public MAP_LINES_LIMIT_MOBILE:I

.field public MAP_MODES_DISABLE_PROVINCE_INFO_IF_ZOOM_OUT:Z

.field public MAP_MODES_MENUS_TO_PROVINCE_INFO:Z

.field public MENUS_ANIMATION_TIME:I

.field public MENUS_ANIMATION_TIME_TOP_DOWN:I

.field public MENUS_LEFT_WIDTH:I

.field public MORE_ALL_ARMY_BUTTONS:Z

.field public MORE_ALL_RECRUIT_MERCENARIES_BUTTON:Z

.field public MORE_ALL_SEND_VOLUNTEER_ARMY_BUTTON:Z

.field public NEW_GAME_CIV_VIEW_DIPLOMACY_BUTTONS_LIMIT:F

.field public NEW_GAME_CIV_VIEW_DIPLOMACY_BUTTONS_LIMIT_MOBILE:F

.field public NEW_GAME_CIV_VIEW_DIPLOMACY_SCALE_DOWN_IF_TOO_BIG:F

.field public NEW_GAME_CIV_VIEW_STATS_SCALE_DOWN_IF_TOO_BIG:F

.field public PLAYER_AI_PEACE_PROPOSITION_RETRY_TURNS:I

.field public POP_CHANGE_VIEW_LIMIT:I

.field public POP_CHANGE_VIEW_LIMIT_PROVINCES:I

.field public RANDOM_GAME_TECHNOLOGY_MIN:I

.field public RANDOM_GAME_TECHNOLOGY_PER_AGE:I

.field public RANDOM_GAME_TECHNOLOGY_PER_AGE_MAX:I

.field public RANDOM_GAME_TECHNOLOGY_RANDOM:I

.field public REBUILD_MINIMAP_EVERY_X_TURNS:I

.field public REBUILD_MINIMAP_EVERY_X_TURNS_MOBILE:I

.field public RECRUIT_AND_COUNTERATTACK_ENABLE_BUTTON:Z

.field public SAVE_CHANGED_CIV_NAMES:Z

.field public SAVE_CHANGED_PROVINCE_NAMES:Z

.field public SHORT_TREASURY_BALANCE_IF_OVER:I

.field public SHORT_TREASURY_IF_OVER:I

.field public SHOW_ALL_ACTIONS_IN_CIV_DECISIONS:Z

.field public SHOW_UNION_RESPONSE_IN_DIPLOMACY_MENU:Z

.field public TOP_PROVINCES_LIMIT:I

.field public TOTAL_DEATHS_CIV_VIEW_LIMIT:I

.field public USE_IN_GAME_OLD_STATS_MENU:Z

.field public USE_NEW_TREAD_TURN_ACTION:Z

.field public USE_REGROUP_BUILD_PATH_2:Z

.field public USE_SMALL_PROVINCE_INFO:Z

.field public USE_SMALL_PROVINCE_INFO_MOBILE:Z

.field public VASSALS_TRIBUTE_MENU_SHOWS_CIVS_STATS:Z

.field public VIEW_ARMY_ADD_GRAPH:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x140

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MENUS_LEFT_WIDTH:I

    .line 6
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->TOP_PROVINCES_LIMIT:I

    .line 8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->LOAD_LEADERS_ENABLED:Z

    .line 10
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->LOAD_SEA_PROVINCES_IMAGES:Z

    .line 12
    const/4 v2, 0x0

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->USE_NEW_TREAD_TURN_ACTION:Z

    .line 14
    const v3, 0x186a0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->SHORT_TREASURY_IF_OVER:I

    .line 15
    const/16 v3, 0x2710

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->SHORT_TREASURY_BALANCE_IF_OVER:I

    .line 17
    const/16 v3, 0xa

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_POPULATION_HOVER_LIMIT:I

    .line 19
    const/4 v4, 0x4

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->BUILDINGS_VIEW_TOP_CIVS_LIMIT:I

    .line 21
    const/16 v5, 0x3e8

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->POP_CHANGE_VIEW_LIMIT:I

    .line 22
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->POP_CHANGE_VIEW_LIMIT_PROVINCES:I

    .line 24
    const/16 v5, 0xfa

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->TOTAL_DEATHS_CIV_VIEW_LIMIT:I

    .line 26
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->INCOME_ALL_VIEW_LIMIT_PROVINCES:I

    .line 28
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->LOAD_PROVINCE_IMG:Z

    .line 29
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->LOAD_PROVINCE_IMG_MOBILE:Z

    .line 31
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->SHOW_ALL_ACTIONS_IN_CIV_DECISIONS:Z

    .line 32
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->SHOW_UNION_RESPONSE_IN_DIPLOMACY_MENU:Z

    .line 34
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->IMPOSE_TARIFFS_INSULT_TEXT:Z

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RANDOM_GAME_TECHNOLOGY_MIN:I

    .line 37
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RANDOM_GAME_TECHNOLOGY_RANDOM:I

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RANDOM_GAME_TECHNOLOGY_PER_AGE:I

    .line 40
    const/16 v5, 0x1e

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RANDOM_GAME_TECHNOLOGY_PER_AGE_MAX:I

    .line 42
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->REBUILD_MINIMAP_EVERY_X_TURNS:I

    .line 43
    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->REBUILD_MINIMAP_EVERY_X_TURNS_MOBILE:I

    .line 45
    const/16 v5, 0xff

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->EVENT_ANIMATION_IMAGES_LIMIT:I

    .line 47
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->ACHIEVEMENT_SERVICE_RIBBON_SAVE_GAME:Z

    .line 49
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MORE_ALL_ARMY_BUTTONS:Z

    .line 51
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MORE_ALL_RECRUIT_MERCENARIES_BUTTON:Z

    .line 52
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MORE_ALL_SEND_VOLUNTEER_ARMY_BUTTON:Z

    .line 54
    const/16 v5, 0x96

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MENUS_ANIMATION_TIME:I

    .line 55
    const/16 v5, 0xc8

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MENUS_ANIMATION_TIME_TOP_DOWN:I

    .line 56
    const/16 v5, 0xe1

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->INFO_BOX_ANIMATION_TIME:I

    .line 57
    const/16 v5, 0xdac

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->INFO_BOX_TIME_IN_VIEW:I

    .line 59
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->ENABLE_PLAYER_AI_PEACE_PROPOSITION_RETRY:Z

    .line 60
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->PLAYER_AI_PEACE_PROPOSITION_RETRY_TURNS:I

    .line 62
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_DECISIONS_SHOW_ALL_FORMABLE_CIVS:Z

    .line 64
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MAP_MODES_DISABLE_PROVINCE_INFO_IF_ZOOM_OUT:Z

    .line 66
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->VASSALS_TRIBUTE_MENU_SHOWS_CIVS_STATS:Z

    .line 68
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->DIPLOMACY_DECLARE_WAR_BUTTON_HOVER_CIVS_LIMIT:I

    .line 70
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->USE_IN_GAME_OLD_STATS_MENU:Z

    .line 72
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->SAVE_CHANGED_PROVINCE_NAMES:Z

    .line 73
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->SAVE_CHANGED_CIV_NAMES:Z

    .line 75
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_INFO_POP_GRAPH:Z

    .line 77
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->ARMY_CONTROLLED_BY_AI_ENABLE_BUTTON:Z

    .line 78
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RECRUIT_AND_COUNTERATTACK_ENABLE_BUTTON:Z

    .line 80
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->VIEW_ARMY_ADD_GRAPH:Z

    .line 82
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->HOVER_OVER_PROVINCE_SHOW_TERRAIN_TYPE:Z

    .line 84
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MAP_MODES_MENUS_TO_PROVINCE_INFO:Z

    .line 86
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->USE_SMALL_PROVINCE_INFO:Z

    .line 87
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->USE_SMALL_PROVINCE_INFO_MOBILE:Z

    .line 89
    const v4, 0x3f19999a  # 0.6f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_VIEW_STATS_SCALE_DOWN_IF_TOO_BIG:F

    .line 90
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_VIEW_DIPLOMACY_SCALE_DOWN_IF_TOO_BIG:F

    .line 91
    const/high16 v4, 0x40800000  # 4.0f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_VIEW_DIPLOMACY_BUTTONS_LIMIT:F

    .line 92
    const v5, 0x402ccccd  # 2.7f

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_VIEW_DIPLOMACY_BUTTONS_LIMIT_MOBILE:F

    .line 94
    const/high16 v5, 0x3f400000  # 0.75f

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->NEW_GAME_CIV_VIEW_STATS_SCALE_DOWN_IF_TOO_BIG:F

    .line 95
    const v5, 0x3ecccccd  # 0.4f

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->NEW_GAME_CIV_VIEW_DIPLOMACY_SCALE_DOWN_IF_TOO_BIG:F

    .line 96
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->NEW_GAME_CIV_VIEW_DIPLOMACY_BUTTONS_LIMIT:F

    .line 97
    const/high16 v4, 0x40100000  # 2.25f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->NEW_GAME_CIV_VIEW_DIPLOMACY_BUTTONS_LIMIT_MOBILE:F

    .line 98
    const v4, 0x3f0ccccd  # 0.55f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->FLAG_BUDGET_WIDTH:F

    .line 99
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->LOAD_LORD_VASSAL_SPECIAL_FLAG:Z

    .line 101
    const/16 v5, 0x19

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MAP_LINES_LIMIT:I

    .line 102
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->MAP_LINES_LIMIT_MOBILE:I

    .line 104
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_DECISIONS_ALLIANCE_SHOW_POSSIBLE_BUTTON:Z

    .line 105
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_DECISIONS_UNION_SHOW_POSSIBLE_BUTTON:Z

    .line 107
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_DECISIONS_ALLIANCE_SHOW_POSSIBLE_CIVS_NUM:Z

    .line 108
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_DECISIONS_ALLIANCE_SHOW_POSSIBLE_CIVS_NUM_MOBILE:Z

    .line 109
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_DECISIONS_UNION_SHOW_POSSIBLE_CIVS_NUM:Z

    .line 110
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_DECISIONS_UNION_SHOW_POSSIBLE_CIVS_NUM_MOBILE:Z

    .line 112
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_DIPLOMACY_SHOW_CONQUERED_CIVS:Z

    .line 113
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->CIV_DIPLOMACY_SHOW_NEIGH_AT_WAR:Z

    .line 115
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->BUDGET_MENU_WIDTH_PERC_OF_MAX_WIDTH:F

    .line 116
    const v1, 0x3f266666  # 0.65f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->BUDGET_MENU_WIDTH_PERC_OF_MAX_WIDTH_MOBILE:F

    .line 118
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->FLAG_MENU_GRAPH_BOT_NUM_OF_CIVS_TO_LOAD:I

    .line 119
    const/4 v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->FLAG_MENU_GRAPH_BOT_NUM_OF_CIVS_TO_LOAD_MOBILE:I

    .line 121
    const v0, 0x3e4ccccd  # 0.2f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->DRAW_OV_STOP_SCALE:F

    .line 123
    const v0, 0x3e19999a  # 0.15f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->DISABLE_DRAW_CIV_NAMES_SCALE_BASE:F

    .line 124
    const v0, 0x3f59999a  # 0.85f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->DISABLE_DRAW_CIV_NAMES_SCALE_CURR_SCALE:F

    .line 126
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->USE_REGROUP_BUILD_PATH_2:Z

    .line 128
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->ENABLE_PLAYER_CIV_INFO_NEW_TURN:Z

    .line 129
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->ENABLE_DIPLOMACY_NEW_TURN:Z

    return-void
.end method
