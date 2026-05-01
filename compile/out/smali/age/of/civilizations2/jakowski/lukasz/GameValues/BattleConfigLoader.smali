.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/BattleConfigLoader;
.super Ljava/lang/Object;
.source "BattleConfigLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyModConfig()V
    .registers 6

    .line 11
    const-string v0, "mods/battle.json"

    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-nez v1, :cond_7

    return-void

    .line 13
    :cond_7
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-nez v2, :cond_20

    .line 15
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-nez v0, :cond_20

    return-void

    .line 19
    :cond_20
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 20
    if-nez v0, :cond_2c

    return-void

    .line 22
    :cond_2c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    if-eqz v1, :cond_c0

    .line 24
    const-string v1, "TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_DEFAULT"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 25
    if-eqz v1, :cond_40

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_DEFAULT:I

    .line 26
    :cond_40
    const-string v1, "TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_LIMIT"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_50

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_LIMIT:I

    .line 28
    :cond_50
    const-string v1, "TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_DEFAULT"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_60

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_DEFAULT:I

    .line 30
    :cond_60
    const-string v1, "TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_LIMIT"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_70

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_LIMIT:I

    .line 32
    :cond_70
    const-string v1, "BATTLE_PROVINCE_ECONOMY_LOSSES_UNITS"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_80

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_ECONOMY_LOSSES_UNITS:F

    .line 34
    :cond_80
    const-string v1, "BATTLE_PROVINCE_ECONOMY_LOSSES_MAX_PERC"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_90

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_ECONOMY_LOSSES_MAX_PERC:F

    .line 36
    :cond_90
    const-string v1, "BATTLE_PROVINCE_POPULATION_LOSSES_BASE"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_a0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_POPULATION_LOSSES_BASE:F

    .line 38
    :cond_a0
    const-string v1, "BATTLE_PROVINCE_POPULATION_LOSSES_TECH_LEVEL_MODIFIER"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_b0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_POPULATION_LOSSES_TECH_LEVEL_MODIFIER:F

    .line 40
    :cond_b0
    const-string v1, "BATTLE_PROVINCE_POPULATION_LOSSES_OR_BASED_ON_POPULATION_PERC"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_c0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_POPULATION_LOSSES_OR_BASED_ON_POPULATION_PERC:F

    .line 44
    :cond_c0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCapital:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capital;

    if-eqz v1, :cond_e4

    .line 46
    const-string v1, "BONUS_CAPITAL_ATTACK_FROM_CAPITAL"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_d4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCapital:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capital;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capital;->BONUS_CAPITAL_ATTACK_FROM_CAPITAL:I

    .line 48
    :cond_d4
    const-string v1, "BONUS_CAPITAL_DEFENSE"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_e4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCapital:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capital;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capital;->BONUS_CAPITAL_DEFENSE:I

    .line 52
    :cond_e4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingFort:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_121

    .line 54
    const-string v1, "FORT_DEFENSE_BONUS_FORT"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_fd

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingFort:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_DEFENSE_BONUS:[I

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    aput v1, v5, v4

    .line 56
    :cond_fd
    const-string v1, "FORT_DEFENSE_BONUS_CASTLE"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_10f

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingFort:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_DEFENSE_BONUS:[I

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    aput v1, v5, v3

    .line 58
    :cond_10f
    const-string v1, "FORT_DEFENSE_BONUS_FORTRESS"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_121

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingFort:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_DEFENSE_BONUS:[I

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    aput v1, v5, v2

    .line 62
    :cond_121
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingWatchTower:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;

    if-eqz v1, :cond_15b

    .line 64
    const-string v1, "TOWER_DEFENSE_BONUS_BASE"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_137

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingWatchTower:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_DEFENSE_BONUS:[I

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    aput v1, v5, v4

    .line 66
    :cond_137
    const-string v1, "TOWER_DEFENSE_BONUS"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_149

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingWatchTower:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_DEFENSE_BONUS:[I

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    aput v1, v4, v3

    .line 68
    :cond_149
    const-string v1, "TOWER_DEFENSE_BONUS_FORTRESS"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_15b

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingWatchTower:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_DEFENSE_BONUS:[I

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    aput v1, v3, v2

    .line 72
    :cond_15b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    if-eqz v1, :cond_1af

    .line 74
    const-string v1, "MILITARY_EXPERTISE_ATTACK_PER_POINT"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_16f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_ATTACK_PER_POINT:F

    .line 76
    :cond_16f
    const-string v1, "MILITARY_EXPERTISE_DEFENSE_PER_POINT"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_17f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_DEFENSE_PER_POINT:F

    .line 78
    :cond_17f
    const-string v1, "MILITARY_EXPERTISE_MAX_LEVEL"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_18f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_MAX_LEVEL:I

    .line 80
    :cond_18f
    const-string v1, "MILITARY_EXPERTISE_MAX_ATTACK"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_19f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_MAX_ATTACK:I

    .line 82
    :cond_19f
    const-string v1, "MILITARY_EXPERTISE_MAX_DEFENSE"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1af

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_MAX_DEFENSE:I
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1af} :catch_1b0

    .line 87
    :cond_1af
    goto :goto_1b4

    .line 85
    :catch_1b0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :goto_1b4
    return-void
.end method
