.class public Lage/of/civilizations2/jakowski/lukasz/RTS;
.super Ljava/lang/Object;
.source "RTS.java"


# static fields
.field public static final MAXSPEED:I = 0x6

.field public static PAUSE:Z

.field public static PAUSED_BY_NEXT_TURN:Z

.field public static final SHOW_REPORT:[Z

.field public static SOURCE:I

.field public static SPEED:I

.field public static TIME_LAST_UPDATE:J

.field public static TIME_PAST:J

.field public static final TIME_REQUIRED_TO_ACTION:[I

.field public static final TIME_REQUIRED_TO_ACTION_LOADAI:[I

.field public static final TIME_REQUIRED_TO_ACTION_MOVEUNITS:[I

.field public static final TIME_REQUIRED_TO_ACTION_REPORT:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    .line 17
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSED_BY_NEXT_TURN:Z

    .line 20
    sput v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->SOURCE:I

    .line 24
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_36

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION:[I

    .line 26
    new-array v1, v0, [I

    fill-array-data v1, :array_48

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION_MOVEUNITS:[I

    .line 27
    new-array v1, v0, [I

    fill-array-data v1, :array_5a

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION_REPORT:[I

    .line 34
    new-array v1, v0, [I

    fill-array-data v1, :array_6c

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION_LOADAI:[I

    .line 36
    new-array v0, v0, [Z

    fill-array-data v0, :array_7e

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->SHOW_REPORT:[Z

    .line 38
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    .line 39
    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_LAST_UPDATE:J

    return-void

    nop

    :array_36
    .array-data 4
        0x1
        0x1964
        0xfa0
        0xbb8
        0x7d0
        0x4e2
        0x1
    .end array-data

    :array_48
    .array-data 4
        0x1
        0x6d6
        0x4e2
        0x3e8
        0x3e8
        0x2ee
        0x32
    .end array-data

    :array_5a
    .array-data 4
        0x1
        0x8ca
        0x7d0
        0x6d6
        0x672
        0x5dc
        0x32
    .end array-data

    :array_6c
    .array-data 4
        0x1
        0x2ee
        0x1f4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addTime()Z
    .registers 2

    .line 104
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v0, v1, :cond_27

    .line 105
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_Options()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_EndOfGame()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_23

    .line 110
    :cond_1c
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->runRTS()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 113
    return v1

    .line 106
    :cond_23
    :goto_23
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->resetTime()V

    .line 107
    return v1

    .line 117
    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method public static final getRequiredTime()I
    .registers 2

    .line 81
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v0, v1, :cond_11

    .line 82
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v0, v0, v1

    return v0

    .line 84
    :cond_11
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->TURN_ACTIONS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v0, v1, :cond_31

    .line 85
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 86
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION_MOVEUNITS:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v0, v0, v1

    return v0

    .line 89
    :cond_2a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION_REPORT:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v0, v0, v1

    return v0

    .line 92
    :cond_31
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-eq v0, v1, :cond_4d

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->LOADING_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v0, v1, :cond_46

    goto :goto_4d

    .line 96
    :cond_46
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v0, v0, v1

    return v0

    .line 93
    :cond_4d
    :goto_4d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION_LOADAI:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v0, v0, v1

    return v0
.end method

.method public static final getTimePerc()F
    .registers 2

    .line 154
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    long-to-float v0, v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->getRequiredTime()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static isEnabled()Z
    .registers 2

    .line 166
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public static pauseUnpause()V
    .registers 3

    .line 170
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    .line 171
    const/4 v1, 0x0

    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSED_BY_NEXT_TURN:Z

    .line 173
    if-nez v0, :cond_11

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_LAST_UPDATE:J

    .line 177
    :cond_11
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    if-eqz v1, :cond_1c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Paused"

    goto :goto_20

    :cond_1c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Unpaused"

    :goto_20
    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static final reset()V
    .registers 1

    .line 158
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    .line 159
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSED_BY_NEXT_TURN:Z

    .line 160
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->resetTime()V

    .line 161
    return-void
.end method

.method public static final resetTime()V
    .registers 2

    .line 149
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_LAST_UPDATE:J

    .line 151
    return-void
.end method

.method public static runRTS()Z
    .registers 2

    .line 129
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v0, :cond_70

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    .line 131
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v0

    if-ltz v0, :cond_22

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveView()Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy()Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DISEASES_MODE:I

    if-ne v0, v1, :cond_6e

    :cond_22
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chooseProvinceMode:Z

    if-nez v0, :cond_6e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 135
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Visible()Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 136
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 137
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 138
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 139
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvincemMore_Visible()Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 140
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceChooseProvince_Visible()Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 142
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 143
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_Budget()Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 145
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_Event()Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_6e
    const/4 v0, 0x1

    goto :goto_71

    :cond_70
    const/4 v0, 0x0

    .line 129
    :goto_71
    return v0
.end method

.method public static final showReport()Z
    .registers 2

    .line 100
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->SHOW_REPORT:[Z

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method private static final timePasted()Z
    .registers 5

    .line 77
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->getRequiredTime()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static updateSpeed(I)V
    .registers 6
    .param p0, "nDiff"  # I

    .line 181
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->getTimePerc()F

    move-result v0

    .line 183
    .local v0, "tempTimePastPerc":F
    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    add-int/2addr v1, p0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    .line 185
    const/4 v2, 0x1

    if-ge v1, v2, :cond_f

    .line 186
    sput v2, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    goto :goto_14

    .line 187
    :cond_f
    const/4 v2, 0x6

    if-le v1, v2, :cond_14

    .line 188
    sput v2, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    .line 191
    :cond_14
    :goto_14
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION:[I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v1, v1, v2

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-long v1, v1

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    .line 193
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Speed"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static final updateTime()V
    .registers 6

    .line 50
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->addTime()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 51
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_LAST_UPDATE:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_LAST_UPDATE:J

    goto :goto_1f

    .line 55
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_LAST_UPDATE:J

    .line 58
    :goto_1f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->timePasted()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    .line 63
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v0, v1, :cond_39

    .line 64
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->takeNextTurn()V

    goto :goto_76

    .line 66
    :cond_39
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->TURN_ACTIONS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v0, v1, :cond_49

    .line 67
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->takeNextTurn()V

    goto :goto_76

    .line 69
    :cond_49
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-eq v0, v1, :cond_5d

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->LOADING_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v0, v1, :cond_76

    :cond_5d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 70
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->takeNextTurn()V

    .line 71
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->resetTime()V

    .line 74
    :cond_76
    :goto_76
    return-void
.end method

.method public static updateTimePast_AfterAction(F)V
    .registers 6
    .param p0, "fPerc"  # F

    .line 42
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION:[I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v2, v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p0

    float-to-int v2, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    .line 44
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_18

    .line 45
    sput-wide v2, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    .line 47
    :cond_18
    return-void
.end method


# virtual methods
.method public getImageHeight(I)I
    .registers 3
    .param p1, "image"  # I

    .line 125
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageHeight(I)I

    move-result v0

    return v0
.end method

.method public getImageWidth(I)I
    .registers 3
    .param p1, "image"  # I

    .line 121
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageWidth(I)I

    move-result v0

    return v0
.end method
