.class Lage/of/civilizations2/jakowski/lukasz/GameValues/TechConfigLoader;
.super Ljava/lang/Object;
.source "TechConfigLoader.java"

# direct methods
.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static applyModConfig(Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;)V
    .registers 9
    .param p0, "gvTech"

    .catch Ljava/lang/Exception; {:try_start .. :try_end} :try_catch

    :try_start
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    const-string v6, "mods/technology.json"
    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z
    move-result v7
    if-eqz v7, :check_internal

    goto :parse

:check_internal
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    const-string v6, "mods/technology.json"
    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z
    move-result v7
    if-eqz v7, :try_end

    :parse
    new-instance v5, Lcom/badlogic/gdx/utils/JsonReader;
    invoke-direct {v5}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V
    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v2

    const-string v0, "ADD_CIV_DEFAULT_TECH_LEVEL"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->ADD_CIV_DEFAULT_TECH_LEVEL:I
    :skip_int_1

    const-string v0, "MIN_MONEY_REQUIRED_TO_ENABLE_RESEARCH"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MIN_MONEY_REQUIRED_TO_ENABLE_RESEARCH:I
    :skip_int_2

    const-string v0, "MAX_POINTS_POP_GROWTH"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_POP_GROWTH:I
    :skip_int_3

    const-string v0, "MAX_POINTS_ECONOMY_GROWTH"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_ECONOMY_GROWTH:I
    :skip_int_4

    const-string v0, "MAX_POINTS_INCOME_TAXATION"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_5
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_INCOME_TAXATION:I
    :skip_int_5

    const-string v0, "MAX_POINTS_INCOME_PRODUCTION"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_6
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_INCOME_PRODUCTION:I
    :skip_int_6

    const-string v0, "MAX_POINTS_ADMINISTRATION"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_7
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_ADMINISTRATION:I
    :skip_int_7

    const-string v0, "MAX_POINTS_MILITARY_UPKEEP"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_8
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_MILITARY_UPKEEP:I
    :skip_int_8

    const-string v0, "MAX_POINTS_RESEARCH"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_9
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_RESEARCH:I
    :skip_int_9

    const-string v0, "MAX_POINTS_COLONIZATION"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_10
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_COLONIZATION:I
    :skip_int_10

    const-string v0, "MAX_POINTS_MOVEMENT"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_11
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_MOVEMENT:I
    :skip_int_11

    const-string v0, "MAX_POINTS_ASSIMILATE"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_12
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_ASSIMILATE:I
    :skip_int_12

    const-string v0, "MAX_POINTS_RECRUITABLE"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_13
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_POINTS_RECRUITABLE:I
    :skip_int_13

    const-string v0, "SHARE_TECHNOLOGY_DIPLOMACY_COST"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_14
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->SHARE_TECHNOLOGY_DIPLOMACY_COST:I
    :skip_int_14

    const-string v0, "ADD_TECH_POINTS_PER_CLICK"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_15
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->ADD_TECH_POINTS_PER_CLICK:I
    :skip_int_15

    const-string v0, "MAX_TECHNOLOGY_LEVEL"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_TECHNOLOGY_LEVEL:F
    :skip_float_1

    const-string v0, "PER_POINT_POP_GROWTH"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_POP_GROWTH:F
    :skip_float_2

    const-string v0, "PER_POINT_ECONOMY_GROWTH"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_ECONOMY_GROWTH:F
    :skip_float_3

    const-string v0, "PER_POINT_INCOME_TAXATION"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_INCOME_TAXATION:F
    :skip_float_4

    const-string v0, "PER_POINT_INCOME_PRODUCTION"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_5
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_INCOME_PRODUCTION:F
    :skip_float_5

    const-string v0, "PER_POINT_ADMINISTRATION"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_6
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_ADMINISTRATION:F
    :skip_float_6

    const-string v0, "PER_POINT_MILITARY_UPKEEP"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_7
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_MILITARY_UPKEEP:F
    :skip_float_7

    const-string v0, "PER_POINT_RESEARCH"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_8
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_RESEARCH:F
    :skip_float_8

    const-string v0, "PER_POINT_COLONIZATION"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_9
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_COLONIZATION:F
    :skip_float_9

    const-string v0, "PER_POINT_MOVEMENT"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_10
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_MOVEMENT:F
    :skip_float_10

    const-string v0, "PER_POINT_ASSIMILATE"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_11
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_ASSIMILATE:F
    :skip_float_11

    const-string v0, "PER_POINT_RECRUITABLE"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_12
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->PER_POINT_RECRUITABLE:F
    :skip_float_12

    const-string v0, "SHARE_TECHNOLOGY_RELATION_INCREASE_PER_TECH_LEVEL"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_13
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->SHARE_TECHNOLOGY_RELATION_INCREASE_PER_TECH_LEVEL:F
    :skip_float_13

    const-string v0, "TECH_RESEARCHED_HAPPINESS_ALL_PROVINCES_BONUS"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_14
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->TECH_RESEARCHED_HAPPINESS_ALL_PROVINCES_BONUS:F
    :skip_float_14

    :try_end
    return-void

    :try_catch
    move-exception v5
    const-string v6, "TechConfigLoader"
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v7
    sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;
    invoke-interface {v8, v6, v7}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V
    return-void

.end method
