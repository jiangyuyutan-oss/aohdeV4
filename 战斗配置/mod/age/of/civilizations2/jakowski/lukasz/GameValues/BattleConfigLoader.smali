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

    # ============================================================
    # Mobile & Desktop Compatible Logic
    # Using Gdx.files.local -> Android/data/<package>/files/mods/
    # Using Gdx.files.internal -> APK assets/mods/
    # ============================================================

    :try_start_0
    # 1. Check if Gdx is initialized (Safety check)
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    if-eqz v0, :return_early
    
    # 2. Try External Storage (Android/data/.../files/mods/battle.json)
    move-object v5, v0
    const-string v6, "mods/battle.json"
    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z
    move-result v7
    if-eqz v7, :load_success

    # 3. Try Internal Assets (APK assets/mods/battle.json)
    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z
    move-result v7
    if-eqz v7, :load_success

    # File not found
    return-void

:load_success
    # Parse JSON
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

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_error

:return_early
    return-void

:catch_error
    move-exception v0
    return-void

.end method