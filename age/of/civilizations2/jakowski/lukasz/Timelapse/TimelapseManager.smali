.class public Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;
.super Ljava/lang/Object;
.source "TimelapseManager.java"


# static fields
.field public static final MAX_SPEED:I = 0x6

.field public static PAUSE:Z

.field public static SOURCE:I

.field public static SPEED:I

.field public static TIME_LAST_UPDATE:J

.field public static TIME_PAST:J

.field public static final TIME_REQUIRED_TO_ACTION:[I


# instance fields
.field public iTimelineTurnID:I

.field public timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

.field public timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;

.field public timelapseStatsEconomy:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;

.field public timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

.field public timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

.field public timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

.field public timelapseStatsProvinces:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;

.field public timelapseStatsRank:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;

.field public timelapseStatsTechnology:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;

.field public timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

.field public timelineOwners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public timelineOwners_Capitals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

.field public timelineOwners_IsOccupied:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->SOURCE:I

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_REQUIRED_TO_ACTION:[I

    .line 45
    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->SPEED:I

    .line 47
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->PAUSE:Z

    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_PAST:J

    .line 50
    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_LAST_UPDATE:J

    return-void

    nop

    :array_18
    .array-data 4
        0x1
        0x7d0
        0x5dc
        0x3e8
        0x2ee
        0x1f4
        0xfa
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    .line 24
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;

    .line 26
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    .line 28
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    .line 30
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsProvinces:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;

    .line 31
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    .line 32
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsRank:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;

    .line 33
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsTechnology:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;

    .line 34
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    .line 36
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsEconomy:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_IsOccupied:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    .line 128
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    return-void
.end method

.method private final timePasted()Z
    .registers 6

    .line 69
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_PAST:J

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->getRequiredTime()I

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


# virtual methods
.method public final addChange(IIZ)V
    .registers 7
    .param p1, "nProvinceID"  # I
    .param p2, "toCivID"  # I
    .param p3, "isOccupied"  # Z

    .line 368
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 370
    .local v0, "iSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 371
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->iProvinceID:I

    if-ne v2, p1, :cond_54

    .line 372
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    iput p2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->iToCivID:I

    .line 373
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    iput-boolean p3, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->isOccupied:Z

    .line 374
    return-void

    .line 370
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 378
    .end local v1  # "i":I
    :cond_57
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    invoke-direct {v2, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;-><init>(IIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6b

    .line 381
    nop

    .end local v0  # "iSize":I
    goto :goto_6c

    .line 379
    :catch_6b
    move-exception v0

    .line 382
    :goto_6c
    return-void
.end method

.method public final buildTimeline()V
    .registers 15

    .line 132
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->clearTimeline()V

    .line 133
    const/4 v0, 0x0

    .line 163
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 133
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    .line 134
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->resetTime()V

    .line 135
    const/4 v2, 0x1

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->PAUSE:Z

    .line 137
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v4, -0x1

    .line 173
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 137
    const/4 v5, 0x2

    if-ne v3, v5, :cond_a5

    .line 138
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_54

    .line 139
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 140
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 143
    :cond_43
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :goto_4c
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_IsOccupied:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 149
    .end local v3  # "i":I
    :cond_54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_55
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a4

    .line 150
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->getCapitalID(I)I

    move-result v1

    .line 152
    .local v1, "tempCapital":I
    if-ltz v1, :cond_9c

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v5, v0, 0x1

    if-ne v3, v5, :cond_9c

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 153
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 156
    :cond_9c
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :goto_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .end local v0  # "i":I
    .end local v1  # "tempCapital":I
    :cond_a4
    goto :goto_107

    .line 161
    :cond_a5
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_a6
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c7

    .line 162
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_IsOccupied:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 166
    .end local v0  # "i":I
    :cond_c7
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_c8
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_107

    .line 167
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->getCapitalID(I)I

    move-result v1

    .line 169
    .restart local v1  # "tempCapital":I
    if-ltz v1, :cond_ff

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v5, v0, 0x1

    if-ne v3, v5, :cond_ff

    .line 170
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_104

    .line 173
    :cond_ff
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_104
    add-int/lit8 v0, v0, 0x1

    goto :goto_c8

    .line 179
    .end local v0  # "i":I
    .end local v1  # "tempCapital":I
    :cond_107
    :goto_107
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveTag:Ljava/lang/String;

    if-eqz v0, :cond_24d

    .line 180
    const/4 v0, 0x0

    .line 183
    .local v0, "turnSavesID":I
    const/4 v1, 0x0

    .line 185
    .local v1, "fileReadData3":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_10d
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v3
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_111} :catch_249

    const-string v4, "Age_of_Civilizations"

    const-string v5, "TURN/"

    const-string v6, "TS/"

    const-string v7, "/"

    const-string v8, "saves/games/"

    if-eqz v3, :cond_152

    .line 186
    :try_start_11d
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v1, v3

    goto :goto_184

    .line 188
    :cond_152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveTag:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v1, v3

    .line 191
    :goto_184
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "tRead":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18f
    if-ge v2, v0, :cond_248

    .line 196
    const/4 v4, 0x0

    .line 198
    .local v4, "fileReadData4":Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v9
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_196} :catch_249

    const-string v10, "_"

    const-string v11, "_C"

    if-eqz v9, :cond_1df

    .line 199
    :try_start_19c
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveTag:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveTag:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    move-object v4, v9

    goto :goto_21f

    .line 201
    :cond_1df
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveTag:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveTag:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    move-object v4, v9

    .line 204
    :goto_21f
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    .line 206
    .local v9, "tempChangesData":Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_22a
    iget-object v11, v9, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_244

    .line 207
    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget-object v12, v9, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_241} :catch_249

    .line 206
    add-int/lit8 v10, v10, 0x1

    goto :goto_22a

    .line 195
    .end local v4  # "fileReadData4":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "tempChangesData":Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;
    .end local v10  # "j":I
    :cond_244
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_18f

    .line 213
    .end local v1  # "fileReadData3":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "i":I
    .end local v3  # "tRead":Ljava/lang/String;
    :cond_248
    goto :goto_24d

    .line 211
    :catch_249
    move-exception v1

    .line 212
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 216
    .end local v0  # "turnSavesID":I
    .end local v1  # "ex":Ljava/lang/Exception;
    :cond_24d
    :goto_24d
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_24e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26c

    .line 217
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_24e

    .line 219
    .end local v0  # "j":I
    :cond_26c
    return-void
.end method

.method public final clearTimeline()V
    .registers 2

    .line 222
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_IsOccupied:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 224
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 226
    return-void
.end method

.method public final clearTimeline_Statistics()V
    .registers 3

    .line 229
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsProvinces:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsRank:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;->lRank:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 232
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsEconomy:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;->lEconomy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsTechnology:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;->lTechnologyLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Treasury:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Expenses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_MilitarySpendings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 241
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Happiness:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_ArmySize:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Stability:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    .line 249
    return-void
.end method

.method public final getNumOfProvinces(I)I
    .registers 5
    .param p1, "nCivID"  # I

    .line 526
    const/4 v0, 0x0

    .line 529
    .local v0, "out":I
    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1e

    .line 530
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1f

    if-ne v2, p1, :cond_1b

    .line 531
    add-int/lit8 v0, v0, 0x1

    .line 529
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 536
    .end local v1  # "i":I
    :cond_1e
    goto :goto_20

    .line 534
    :catch_1f
    move-exception v1

    .line 538
    :goto_20
    return v0
.end method

.method public final getPlayerIncome(II)I
    .registers 6
    .param p1, "iPlayerID"  # I
    .param p2, "iTurnID"  # I

    .line 543
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_14} :catch_15

    return v0

    .line 544
    :catch_15
    move-exception v0

    .line 546
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_16
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_3f

    .line 547
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3e} :catch_40

    return v1

    .line 551
    :cond_3f
    goto :goto_41

    .line 549
    :catch_40
    move-exception v1

    .line 554
    :goto_41
    const/4 v1, 0x0

    return v1
.end method

.method public final getRequiredTime()I
    .registers 3

    .line 73
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_REQUIRED_TO_ACTION:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->SPEED:I

    aget v0, v0, v1

    return v0
.end method

.method public final getTimePerc()F
    .registers 3

    .line 77
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_PAST:J

    long-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->getRequiredTime()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public final loadNextTurn()V
    .registers 8

    .line 252
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1fc

    .line 253
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 255
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v1, 0x2

    const/4 v3, -0x1

    if-ne v0, v1, :cond_10a

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b4

    .line 257
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->iProvinceID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 258
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->iProvinceID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->iToCivID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_IsOccupied:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->iProvinceID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->isOccupied:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_b0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1a

    .line 263
    .end local v0  # "i":I
    :cond_b4
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_b5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_108

    .line 264
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->getCapitalID(I)I

    move-result v1

    .line 266
    .local v1, "tempCapital":I
    if-ltz v1, :cond_fc

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    if-ne v4, v5, :cond_fc

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 267
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_105

    .line 270
    :cond_fc
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :goto_105
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .end local v0  # "i":I
    .end local v1  # "tempCapital":I
    :cond_108
    goto/16 :goto_1c6

    .line 275
    :cond_10a
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_10b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_182

    .line 276
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->iProvinceID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->iToCivID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_IsOccupied:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->iProvinceID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->isOccupied:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_10b

    .line 280
    .end local v0  # "i":I
    :cond_182
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_183
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c6

    .line 281
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->getCapitalID(I)I

    move-result v1

    .line 283
    .restart local v1  # "tempCapital":I
    if-ltz v1, :cond_1ba

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    if-ne v4, v5, :cond_1ba

    .line 284
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c3

    .line 287
    :cond_1ba
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :goto_1c3
    add-int/lit8 v0, v0, 0x1

    goto :goto_183

    .line 292
    .end local v0  # "i":I
    .end local v1  # "tempCapital":I
    :cond_1c6
    :goto_1c6
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    .line 294
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline()Z

    move-result v0

    if-eqz v0, :cond_1d9

    .line 295
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline_UpdateLanguage()V

    goto :goto_1fe

    .line 297
    :cond_1d9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v0

    if-eqz v0, :cond_1fe

    .line 298
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Victory_UpdateLanguage()V

    .line 300
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->centerToCivilizationBox_Timeline(IZ)V

    goto :goto_1fe

    .line 304
    :cond_1fc
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->PAUSE:Z

    .line 306
    :cond_1fe
    :goto_1fe
    return-void
.end method

.method public final newGame()V
    .registers 13

    .line 311
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 312
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->clearTimeline()V

    .line 315
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->clearTimeline_Statistics()V

    .line 317
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_6e

    .line 318
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 319
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 321
    :cond_3d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_56

    .line 322
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 325
    :cond_56
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 329
    .end local v0  # "i":I
    :cond_6e
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_6f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_91

    .line 330
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 333
    .end local v0  # "i":I
    :cond_91
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v0, "tempProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v1, "tempPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v2, "tempRank":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v3, "tempTechnology":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v4, "tempEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b7
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v6

    if-ge v5, v6, :cond_136

    .line 342
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    const-wide/16 v6, 0x1

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPop()J

    move-result-wide v8

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    const-wide/16 v6, 0x0

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countEco()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v6

    const/high16 v7, 0x42c80000  # 100.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v5, v5, 0x1

    goto :goto_b7

    .line 349
    .end local v5  # "i":I
    :cond_136
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsProvinces:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;->addProvinces(Ljava/util/List;)V

    .line 350
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->addPopulation(Ljava/util/List;)V

    .line 352
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsEconomy:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;->addData(Ljava/util/List;)V

    .line 354
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsRank:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;->addRank(Ljava/util/List;)V

    .line 355
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsTechnology:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;->addTechLevel(Ljava/util/List;)V

    .line 356
    return-void
.end method

.method public final newTurn()V
    .registers 3

    .line 361
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->updateTurnStatistics()V

    .line 364
    return-void
.end method

.method public pauseUnpause()V
    .registers 3

    .line 86
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->PAUSE:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->PAUSE:Z

    .line 88
    if-nez v0, :cond_3d

    .line 89
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->iTimelineTurnID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_37

    .line 90
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->buildTimeline()V

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->PAUSE:Z

    .line 93
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 94
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline_UpdateLanguage()V

    goto :goto_37

    .line 96
    :cond_2a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 97
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Victory_UpdateLanguage()V

    .line 101
    :cond_37
    :goto_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_LAST_UPDATE:J

    .line 105
    :cond_3d
    return-void
.end method

.method public final resetTime()V
    .registers 3

    .line 81
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_PAST:J

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_LAST_UPDATE:J

    .line 83
    return-void
.end method

.method public updateSpeed(I)V
    .registers 5
    .param p1, "nDiff"  # I

    .line 108
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->getTimePerc()F

    move-result v0

    .line 110
    .local v0, "tempTimePastPerc":F
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->SPEED:I

    add-int/2addr v1, p1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->SPEED:I

    .line 112
    const/4 v2, 0x1

    if-ge v1, v2, :cond_f

    .line 113
    sput v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->SPEED:I

    goto :goto_14

    .line 114
    :cond_f
    const/4 v2, 0x6

    if-le v1, v2, :cond_14

    .line 115
    sput v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->SPEED:I

    .line 118
    :cond_14
    :goto_14
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_REQUIRED_TO_ACTION:[I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->SPEED:I

    aget v1, v1, v2

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-long v1, v1

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_PAST:J

    .line 121
    return-void
.end method

.method public final updateTime()V
    .registers 7

    .line 54
    :try_start_0
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_PAST:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_LAST_UPDATE:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_PAST:J

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_LAST_UPDATE:J

    .line 57
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timePasted()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->TIME_PAST:J

    .line 59
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->loadNextTurn()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 65
    :cond_1f
    goto :goto_28

    .line 61
    :catch_20
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v1, :cond_28

    .line 63
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 66
    .end local v0  # "ex":Ljava/lang/Exception;
    :cond_28
    :goto_28
    return-void
.end method

.method public final updateTurnStatistics()V
    .registers 15

    .line 386
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 387
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->updateCapital(II)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_28

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 393
    .end local v0  # "i":I
    :cond_27
    goto :goto_56

    .line 389
    :catch_28
    move-exception v0

    .line 390
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    :goto_33
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 391
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 396
    .end local v0  # "ex":Ljava/lang/Exception;
    .end local v1  # "i":I
    :cond_56
    :goto_56
    :try_start_56
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_UPDATE_EVERY_X_TURNS:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_d8

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v0, "tempProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v1, "tempPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v2, "tempRank":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v3, "tempEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_74
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v5

    if-ge v4, v5, :cond_c4

    .line 403
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    .line 405
    .local v5, "civI":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPop()J

    move-result-wide v6

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countEco()J

    move-result-wide v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    nop

    .end local v5  # "civI":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 411
    .end local v4  # "i":I
    :cond_c4
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsProvinces:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;->addProvinces(Ljava/util/List;)V

    .line 412
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->addPopulation(Ljava/util/List;)V

    .line 413
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsEconomy:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;->addData(Ljava/util/List;)V

    .line 415
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsRank:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;->addRank(Ljava/util/List;)V

    .line 418
    .end local v0  # "tempProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1  # "tempPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2  # "tempRank":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3  # "tempEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d8
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_UPDATE_EVERY_X_TURNS_RANK:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_109

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v0, "tempRank":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_104

    .line 422
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    .line 424
    .local v2, "civI":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    nop

    .end local v2  # "civI":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e7

    .line 427
    .end local v1  # "i":I
    :cond_104
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsRank:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;->addRank(Ljava/util/List;)V

    .line 430
    .end local v0  # "tempRank":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_109
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_UPDATE_EVERY_X_TURNS_TECH_LEVEL:I

    rem-int/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    if-nez v0, :cond_13f

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v0, "tempTechnology":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_13a

    .line 434
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    .line 436
    .local v3, "civI":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    nop

    .end local v3  # "civI":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    add-int/lit8 v2, v2, 0x1

    goto :goto_11a

    .line 439
    .end local v2  # "i":I
    :cond_13a
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsTechnology:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;->addTechLevel(Ljava/util/List;)V

    .line 443
    .end local v0  # "tempTechnology":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_13f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v0, "tempIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v2, "tempExpenses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v3, "tempBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v4, "tempMilitarySpendings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v5, "tempTreasury":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v6, "tempHappiness":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v7, "tempArmy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v8, "tempStability":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_168
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v10

    if-ge v9, v10, :cond_21b

    .line 455
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    .line 457
    .local v10, "civPlayer":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v11

    long-to-int v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHappiness()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getStabilityCiv()F

    move-result v11

    mul-float v11, v11, v1

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getExpenses(I)F

    move-result v11

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    add-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeep_Total(I)F

    move-result v11

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getIncome(I)F

    move-result v11

    float-to-int v11, v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getExpenses(I)F

    move-result v12

    float-to-int v12, v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    nop

    .end local v10  # "civPlayer":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_168

    .line 472
    .end local v9  # "i":I
    :cond_21b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Treasury:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Happiness:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_ArmySize:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Stability:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Expenses:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_MilitarySpendings:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_LIMIT_PLAYER_DATA:I

    const/4 v10, 0x0

    if-le v1, v9, :cond_269

    .line 484
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 487
    :cond_269
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Happiness:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_LIMIT_PLAYER_DATA:I

    if-le v1, v9, :cond_27e

    .line 488
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Happiness:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 491
    :cond_27e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_ArmySize:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_LIMIT_PLAYER_DATA:I

    if-le v1, v9, :cond_293

    .line 492
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_ArmySize:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 495
    :cond_293
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Expenses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_LIMIT_PLAYER_DATA:I

    if-le v1, v9, :cond_2a8

    .line 496
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Expenses:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 499
    :cond_2a8
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Stability:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_LIMIT_PLAYER_DATA:I

    if-le v1, v9, :cond_2bd

    .line 500
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Stability:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 503
    :cond_2bd
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Expenses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_LIMIT_PLAYER_DATA:I

    if-le v1, v9, :cond_2d2

    .line 504
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Expenses:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 507
    :cond_2d2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_LIMIT_PLAYER_DATA:I

    if-le v1, v9, :cond_2e7

    .line 508
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 511
    :cond_2e7
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_MilitarySpendings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_LIMIT_PLAYER_DATA:I

    if-le v1, v9, :cond_2fc

    .line 512
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_MilitarySpendings:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2fc
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_2fc} :catch_2fd

    .line 520
    .end local v0  # "tempIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2  # "tempExpenses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3  # "tempBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4  # "tempMilitarySpendings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5  # "tempTreasury":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6  # "tempHappiness":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7  # "tempArmy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8  # "tempStability":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2fc
    goto :goto_301

    .line 518
    :catch_2fd
    move-exception v0

    .line 519
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 521
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_301
    return-void
.end method
