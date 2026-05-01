.class Lage/of/civilizations2/jakowski/lukasz/GameValues/BattleConfigLoader;
.super Ljava/lang/Object;
.source "BattleConfigLoader.java"

# direct methods
.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static applyModConfig()V
    .registers 14

    :try_start_0
    # === Check if Gdx is initialized ===
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    if-eqz v0, :return_early  # If files is null, Gdx is not ready yet
    
    # Default source for error reporting
    const-string v11, "unknown"
    # === 1. Try local storage first ===
    move-object v5, v0
    const-string v6, "mods/battle.json"
    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z
    move-result v7
    if-eqz v7, :try_internal

    # Local file exists
    const-string v11, "local"
    const-string v6, "BattleConfigLoader"
    const-string v7, "Loading config from local storage"
    sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;
    invoke-interface {v8, v6, v7}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V
    goto :parse

:try_internal
    # === 2. Try internal assets ===
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    const-string v6, "mods/battle.json"
    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z
    move-result v7
    if-eqz v7, :no_config

    # Internal file exists
    const-string v11, "internal"
    const-string v6, "BattleConfigLoader"
    const-string v7, "Loading config from internal assets"
    sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;
    invoke-interface {v8, v6, v7}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V
    goto :parse

    :parse
    new-instance v5, Lcom/badlogic/gdx/utils/JsonReader;
    invoke-direct {v5}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V
    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v2

    # ============================================================
    # GV_Battle
    # ============================================================
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;
    if-eqz v0, :skip_gv_battle

    # TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_DEFAULT (int)
    const-string v1, "TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_DEFAULT"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvb_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_DEFAULT:I
    :skip_gvb_1

    # TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_LIMIT (int)
    const-string v1, "TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_LIMIT"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvb_2
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_LIMIT:I
    :skip_gvb_2

    # TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_DEFAULT (int)
    const-string v1, "TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_DEFAULT"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvb_3
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_DEFAULT:I
    :skip_gvb_3

    # TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_LIMIT (int)
    const-string v1, "TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_LIMIT"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvb_4
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_LIMIT:I
    :skip_gvb_4

    # BATTLE_PROVINCE_ECONOMY_LOSSES_UNITS (float)
    const-string v1, "BATTLE_PROVINCE_ECONOMY_LOSSES_UNITS"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvb_5
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_ECONOMY_LOSSES_UNITS:F
    :skip_gvb_5

    # BATTLE_PROVINCE_ECONOMY_LOSSES_MAX_PERC (float)
    const-string v1, "BATTLE_PROVINCE_ECONOMY_LOSSES_MAX_PERC"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvb_6
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_ECONOMY_LOSSES_MAX_PERC:F
    :skip_gvb_6

    # BATTLE_PROVINCE_POPULATION_LOSSES_BASE (float)
    const-string v1, "BATTLE_PROVINCE_POPULATION_LOSSES_BASE"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvb_7
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_POPULATION_LOSSES_BASE:F
    :skip_gvb_7

    # BATTLE_PROVINCE_POPULATION_LOSSES_TECH_LEVEL_MODIFIER (float)
    const-string v1, "BATTLE_PROVINCE_POPULATION_LOSSES_TECH_LEVEL_MODIFIER"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvb_8
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_POPULATION_LOSSES_TECH_LEVEL_MODIFIER:F
    :skip_gvb_8

    # BATTLE_PROVINCE_POPULATION_LOSSES_OR_BASED_ON_POPULATION_PERC (float)
    const-string v1, "BATTLE_PROVINCE_POPULATION_LOSSES_OR_BASED_ON_POPULATION_PERC"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvb_9
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_POPULATION_LOSSES_OR_BASED_ON_POPULATION_PERC:F
    :skip_gvb_9

    :skip_gv_battle

    # ============================================================
    # GV_Capital
    # ============================================================
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCapital:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capital;
    if-eqz v0, :skip_gv_capital

    # BONUS_CAPITAL_ATTACK_FROM_CAPITAL (int)
    const-string v1, "BONUS_CAPITAL_ATTACK_FROM_CAPITAL"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvc_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capital;->BONUS_CAPITAL_ATTACK_FROM_CAPITAL:I
    :skip_gvc_1

    # BONUS_CAPITAL_DEFENSE (int)
    const-string v1, "BONUS_CAPITAL_DEFENSE"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvc_2
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capital;->BONUS_CAPITAL_DEFENSE:I
    :skip_gvc_2

    :skip_gv_capital

    # ============================================================
    # GV_BuildingFort
    # ============================================================
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingFort:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;
    if-eqz v0, :skip_gv_fort

    # FORT_DEFENSE_BONUS_FORT (index 0)
    const-string v1, "FORT_DEFENSE_BONUS_FORT"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvf_0
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_DEFENSE_BONUS:[I
    const/4 v10, 0x0
    aput v8, v9, v10
    :skip_gvf_0

    # FORT_DEFENSE_BONUS_CASTLE (index 1)
    const-string v1, "FORT_DEFENSE_BONUS_CASTLE"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvf_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_DEFENSE_BONUS:[I
    const/4 v10, 0x1
    aput v8, v9, v10
    :skip_gvf_1

    # FORT_DEFENSE_BONUS_FORTRESS (index 2)
    const-string v1, "FORT_DEFENSE_BONUS_FORTRESS"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvf_2
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_DEFENSE_BONUS:[I
    const/4 v10, 0x2
    aput v8, v9, v10
    :skip_gvf_2

    :skip_gv_fort

    # ============================================================
    # GV_BuildingWatchTower
    # ============================================================
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBuildingWatchTower:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;
    if-eqz v0, :skip_gv_tower

    # TOWER_DEFENSE_BONUS_BASE (index 0)
    const-string v1, "TOWER_DEFENSE_BONUS_BASE"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvt_0
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_DEFENSE_BONUS:[I
    const/4 v10, 0x0
    aput v8, v9, v10
    :skip_gvt_0

    # TOWER_DEFENSE_BONUS (index 1)
    const-string v1, "TOWER_DEFENSE_BONUS"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvt_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_DEFENSE_BONUS:[I
    const/4 v10, 0x1
    aput v8, v9, v10
    :skip_gvt_1

    :skip_gv_tower

    # ============================================================
    # GV_Military
    # ============================================================
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;
    if-eqz v0, :skip_gv_military

    # MILITARY_EXPERTISE_ATTACK_PER_POINT (float)
    const-string v1, "MILITARY_EXPERTISE_ATTACK_PER_POINT"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvm_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_ATTACK_PER_POINT:F
    :skip_gvm_1

    # MILITARY_EXPERTISE_DEFENSE_PER_POINT (float)
    const-string v1, "MILITARY_EXPERTISE_DEFENSE_PER_POINT"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvm_2
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_DEFENSE_PER_POINT:F
    :skip_gvm_2

    # MILITARY_EXPERTISE_MAX_LEVEL (int)
    const-string v1, "MILITARY_EXPERTISE_MAX_LEVEL"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvm_3
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_MAX_LEVEL:I
    :skip_gvm_3

    # MILITARY_EXPERTISE_MAX_ATTACK (int)
    const-string v1, "MILITARY_EXPERTISE_MAX_ATTACK"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvm_4
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_MAX_ATTACK:I
    :skip_gvm_4

    # MILITARY_EXPERTISE_MAX_DEFENSE (int)
    const-string v1, "MILITARY_EXPERTISE_MAX_DEFENSE"
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v3
    if-eqz v3, :skip_gvm_5
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v8
    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->MILITARY_EXPERTISE_MAX_DEFENSE:I
    :skip_gvm_5

    :skip_gv_military

    # Config applied successfully
    const-string v6, "BattleConfigLoader"
    const-string v7, "Battle config applied successfully"
    sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;
    invoke-interface {v8, v6, v7}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

:return_early
    return-void

:no_config
    const-string v6, "BattleConfigLoader"
    const-string v7, "No battle.json found, using game defaults"
    sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;
    if-eqz v8, :skip_log
    goto :return_early
:skip_log
    invoke-interface {v8, v6, v7}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V
    return-void

    :catch_0
    move-exception v5
    const-string v6, "BattleConfigLoader"
    
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "Failed to load config from "
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v9
    if-nez v9, :has_msg
    const-string v9, "Unknown error loading battle config"
    :has_msg
    
    new-instance v10, Ljava/io/StringWriter;
    invoke-direct {v10}, Ljava/io/StringWriter;-><init>()V
    new-instance v12, Ljava/io/PrintWriter;
    invoke-direct {v12, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    invoke-virtual {v5, v12}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V
    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    move-result-object v13
    
    sget-object v12, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;
    if-eqz v12, :log_errors
    return-void

:log_errors
    invoke-interface {v12, v6, v8}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V
    invoke-interface {v12, v6, v9}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V
    invoke-interface {v12, v6, v13}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V
    return-void

.end method
