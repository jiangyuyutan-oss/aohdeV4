.class public LLage/of/civilizations2/jakowski/lukasz/GameValues/BattleConfigLoader;
.super Ljava/lang/Object;
.source "BattleConfigLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyModConfig()V
    .registers 7

    .line 13
    const-string v0, "mods/battle.json"

    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-nez v1, :cond_7

    return-void

    .line 16
    :cond_7
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-nez v2, :cond_20

    .line 20
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-nez v0, :cond_20

    return-void

    .line 25
    :cond_20
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 26
    if-nez v0, :cond_2c

    return-void

    .line 29
    :cond_2c
    sget-object v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    if-eqz v1, :cond_b0

    .line 30
    sget-object v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    .line 33
    const-string v2, "TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_DEFAULT"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_DEFAULT:I

    .line 36
    :cond_40
    const-string v2, "TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_LIMIT"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 37
    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_LIMIT:I

    .line 39
    :cond_4e
    const-string v2, "TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_DEFAULT"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 40
    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_DEFAULT:I

    .line 42
    :cond_5c
    const-string v2, "TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_LIMIT"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 43
    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_LIMIT:I

    .line 45
    :cond_6a
    const-string v2, "BATTLE_PROVINCE_ECONOMY_LOSSES_UNITS"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 46
    if-eqz v2, :cond_78

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_ECONOMY_LOSSES_UNITS:F

    .line 48
    :cond_78
    const-string v2, "BATTLE_PROVINCE_ECONOMY_LOSSES_MAX_PERC"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 49
    if-eqz v2, :cond_86

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_ECONOMY_LOSSES_MAX_PERC:F

    .line 51
    :cond_86
    const-string v2, "BATTLE_PROVINCE_POPULATION_LOSSES_BASE"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_94

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_POPULATION_LOSSES_BASE:F

    .line 54
    :cond_94
    const-string v2, "BATTLE_PROVINCE_POPULATION_LOSSES_TECH_LEVEL_MODIFIER"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_a2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_POPULATION_LOSSES_TECH_LEVEL_MODIFIER:F

    .line 57
    :cond_a2
    const-string v2, "BATTLE_PROVINCE_POPULATION_LOSSES_OR_BASED_ON_POPULATION_PERC"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_b0

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_POPULATION_LOSSES_OR_BASED_ON_POPULATION_PERC:F

    .line 62
    :cond_b0
    sget-object v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCapital:LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capital;

    if-eqz v1, :cond_d2

    .line 63
    sget-object v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCapital:LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capital;

    .line 66
    const-string v2, "BONUS_CAPITAL_ATTACK_FROM_CAPITAL"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_c4

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capital;->BONUS_CAPITAL_ATTACK_FROM_CAPITAL:I

    .line 69
    :cond_c4
    const-string v2, "BONUS_CAPITAL_DEFENSE"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_d2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capital;->BONUS_CAPITAL_DEFENSE:I

    .line 74
    :cond_d2
    sget-object v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingFort:LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_10b

    .line 75
    sget-object v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingFort:LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;

    .line 78
    const-string v5, "FORT_DEFENSE_BONUS_FORT"

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    .line 79
    if-eqz v5, :cond_eb

    iget-object v6, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_DEFENSE_BONUS:[I

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v5

    aput v5, v6, v4

    .line 81
    :cond_eb
    const-string v5, "FORT_DEFENSE_BONUS_CASTLE"

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    .line 82
    if-eqz v5, :cond_fb

    iget-object v6, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_DEFENSE_BONUS:[I

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v5

    aput v5, v6, v3

    .line 84
    :cond_fb
    const-string v5, "FORT_DEFENSE_BONUS_FORTRESS"

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    .line 85
    if-eqz v5, :cond_10b

    iget-object v1, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_DEFENSE_BONUS:[I

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v5

    aput v5, v1, v2

    .line 89
    :cond_10b
    sget-object v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingWatchTower:LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;

    if-eqz v1, :cond_141

    .line 90
    sget-object v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingWatchTower:LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;

    .line 93
    const-string v5, "TOWER_DEFENSE_BONUS_BASE"

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    .line 94
    if-eqz v5, :cond_121

    iget-object v6, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_DEFENSE_BONUS:[I

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v5

    aput v5, v6, v4

    .line 96
    :cond_121
    const-string v4, "TOWER_DEFENSE_BONUS"

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    .line 97
    if-eqz v4, :cond_131

    iget-object v5, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_DEFENSE_BONUS:[I

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v4

    aput v4, v5, v3

    .line 99
    :cond_131
    const-string v3, "TOWER_DEFENSE_BONUS_FORTRESS"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_141

    iget-object v1, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_DEFENSE_BONUS:[I

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v3

    aput v3, v1, v2

    .line 104
    :cond_141
    sget-object v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    if-eqz v1, :cond_18d

    .line 105
    sget-object v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    .line 108
    const-string v2, "MILITARY_EXPERTISE_ATTACK_PER_POINT"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_155

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_ATTACK_PER_POINT:F

    .line 111
    :cond_155
    const-string v2, "MILITARY_EXPERTISE_DEFENSE_PER_POINT"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_163

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_DEFENSE_PER_POINT:F

    .line 114
    :cond_163
    const-string v2, "MILITARY_EXPERTISE_MAX_LEVEL"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_171

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_MAX_LEVEL:I

    .line 117
    :cond_171
    const-string v2, "MILITARY_EXPERTISE_MAX_ATTACK"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_17f

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    iput v2, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_MAX_ATTACK:I

    .line 120
    :cond_17f
    const-string v2, "MILITARY_EXPERTISE_MAX_DEFENSE"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_18d

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v0

    iput v0, v1, LLage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_MAX_DEFENSE:I
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18d} :catch_18e

    .line 127
    :cond_18d
    goto :goto_192

    .line 124
    :catch_18e
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    :goto_192
    return-void
.end method
