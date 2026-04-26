.class public Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;
.super Ljava/lang/Object;
.source "MapModesManager.java"


# static fields
.field public static DEATHS_MAX:J

.field public static ECONOMY_MAX:I

.field public static POPULATION_MAX:I

.field public static POPULATION_MIN:I

.field public static POPULATION_OF_CIVID:I

.field public static VIEW_AI_DANGER_MODE:I

.field public static VIEW_AI_POTENTIAL_MODE:I

.field public static VIEW_ALLIANCES_MODE:I

.field public static VIEW_ARMY_MODE:I

.field public static VIEW_ASSIMILATIONS_MODE:I

.field public static VIEW_BALANCE_MODE:I

.field public static VIEW_BUILDINGS_MODE:I

.field public static VIEW_CONTINENT_MODE:I

.field public static VIEW_CORES_MODE:I

.field public static VIEW_DEATHS_IN_ALL_WARS_MODE:I

.field public static VIEW_DEVELOPMENT_MODE:I

.field public static VIEW_DIPLOMACY_MODE:I

.field public static VIEW_DISEASES_MODE:I

.field public static VIEW_DISTANCE_MODE:I

.field public static VIEW_ECONOMY_CHANGE_MODE:I

.field public static VIEW_ECONOMY_MODE:I

.field public static VIEW_FANS_MODE:I

.field public static VIEW_FESTIVALS_MODE:I

.field public static VIEW_GROWTH_RATE_MODE:I

.field public static VIEW_HAPPINESS_MODE:I

.field public static VIEW_HATERS_MODE:I

.field public static VIEW_IDEOLOGIES_MODE:I

.field public static VIEW_IMPERIAL_MODE:I

.field public static VIEW_INCOME_ALL_MODE:I

.field public static VIEW_INCOME_MODE:I

.field public static VIEW_INCOME_PRODUCTION_MODE:I

.field public static VIEW_INCOME_TAXATION_MODE:I

.field public static VIEW_INVESTS_DEV_MODE:I

.field public static VIEW_INVESTS_ECO_MODE:I

.field public static VIEW_LEVEL_OF_ARMOURY_MODE:I

.field public static VIEW_LEVEL_OF_FARM_MODE:I

.field public static VIEW_LEVEL_OF_FORTIFICATIONS_MODE:I

.field public static VIEW_LEVEL_OF_LIBRARY_MODE:I

.field public static VIEW_LEVEL_OF_MARKET_MODE:I

.field public static VIEW_LEVEL_OF_PORT_MODE:I

.field public static VIEW_LEVEL_OF_SUPPLY_MODE:I

.field public static VIEW_LEVEL_OF_WATCH_TOWER_MODE:I

.field public static VIEW_LEVEL_OF_WORKSHOP_MODE:I

.field public static VIEW_POPULATION_CHANGE_MODE:I

.field public static VIEW_POPULATION_MODE:I

.field public static VIEW_POPULATION_OF_CIV_MODE:I

.field public static VIEW_PROVINCE_STABILITY_MODE:I

.field public static VIEW_PROVINCE_VALUE_MODE:I

.field public static VIEW_RECRUITABLE_ARMY_MODE:I

.field public static VIEW_REGIONS_MODE:I

.field public static VIEW_RELIGION_MODE:I

.field public static VIEW_REVOLUTION_MODE:I

.field public static VIEW_SUPPLIES_MODE:I

.field public static VIEW_TECHNOLOGY_MODE:I

.field public static VIEW_TERRAIN_TYPE_MODE:I

.field public static VIEW_TRUE_OWNERS_MODE:I

.field public static VIEW_WARS_MODE:I

.field public static VIEW_WONDERS_MODE:I


# instance fields
.field private iActiveMapModeID:I

.field private lMapModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;",
            ">;"
        }
    .end annotation
.end field

.field public viewConfig:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 69
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_POPULATION_MODE:I

    .line 70
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_POPULATION_OF_CIV_MODE:I

    .line 72
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DEATHS_IN_ALL_WARS_MODE:I

    .line 74
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ECONOMY_MODE:I

    .line 76
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_POPULATION_CHANGE_MODE:I

    .line 77
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ECONOMY_CHANGE_MODE:I

    .line 79
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_CONTINENT_MODE:I

    .line 80
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_REGIONS_MODE:I

    .line 81
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_TERRAIN_TYPE_MODE:I

    .line 83
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_FANS_MODE:I

    .line 84
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_HATERS_MODE:I

    .line 86
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_GROWTH_RATE_MODE:I

    .line 88
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_SUPPLIES_MODE:I

    .line 90
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DEVELOPMENT_MODE:I

    .line 91
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_TECHNOLOGY_MODE:I

    .line 93
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DIPLOMACY_MODE:I

    .line 95
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_PROVINCE_VALUE_MODE:I

    .line 97
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_IDEOLOGIES_MODE:I

    .line 98
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DISTANCE_MODE:I

    .line 99
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_MODE:I

    .line 101
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_ALL_MODE:I

    .line 102
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_TAXATION_MODE:I

    .line 103
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_PRODUCTION_MODE:I

    .line 105
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_HAPPINESS_MODE:I

    .line 106
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_REVOLUTION_MODE:I

    .line 107
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_PROVINCE_STABILITY_MODE:I

    .line 109
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ARMY_MODE:I

    .line 110
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_CORES_MODE:I

    .line 112
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_BUILDINGS_MODE:I

    .line 113
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_PORT_MODE:I

    .line 114
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_FORTIFICATIONS_MODE:I

    .line 115
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_WATCH_TOWER_MODE:I

    .line 116
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_FARM_MODE:I

    .line 117
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_LIBRARY_MODE:I

    .line 118
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_ARMOURY_MODE:I

    .line 119
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_MARKET_MODE:I

    .line 120
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_SUPPLY_MODE:I

    .line 121
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_WORKSHOP_MODE:I

    .line 123
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ALLIANCES_MODE:I

    .line 124
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_IMPERIAL_MODE:I

    .line 126
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_RECRUITABLE_ARMY_MODE:I

    .line 128
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_AI_POTENTIAL_MODE:I

    .line 129
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_AI_DANGER_MODE:I

    .line 130
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_BALANCE_MODE:I

    .line 131
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_TRUE_OWNERS_MODE:I

    .line 133
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DISEASES_MODE:I

    .line 135
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_RELIGION_MODE:I

    .line 136
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_WONDERS_MODE:I

    .line 138
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INVESTS_ECO_MODE:I

    .line 139
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INVESTS_DEV_MODE:I

    .line 140
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_FESTIVALS_MODE:I

    .line 141
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ASSIMILATIONS_MODE:I

    .line 143
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_WARS_MODE:I

    .line 12234
    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    .line 12235
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12236
    const-wide/16 v1, 0x1

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->DEATHS_MAX:J

    .line 12238
    const/4 v1, 0x0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_OF_CIVID:I

    .line 12366
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->iActiveMapModeID:I

    .line 12117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->viewConfig:Z

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    .line 154
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 436
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$2;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_25

    .line 490
    :cond_20
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$3;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 544
    :goto_25
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_2f

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$4;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_34

    .line 649
    :cond_2f
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$5;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 154
    :goto_34
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DIPLOMACY_MODE:I

    .line 748
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$6;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 855
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_49

    .line 856
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$7;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_4e

    .line 910
    :cond_49
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$8;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 963
    :goto_4e
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_58

    .line 964
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$9;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_5d

    .line 995
    :cond_58
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$10;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 748
    :goto_5d
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_POPULATION_MODE:I

    .line 1018
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$11;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1115
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_72

    .line 1116
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$12;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_77

    .line 1170
    :cond_72
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$13;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1223
    :goto_77
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_81

    .line 1224
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$14;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_86

    .line 1255
    :cond_81
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$15;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1018
    :goto_86
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DEATHS_IN_ALL_WARS_MODE:I

    .line 1279
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$16;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1397
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_9b

    .line 1398
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$17;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_a0

    .line 1450
    :cond_9b
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$18;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1503
    :goto_a0
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_aa

    .line 1504
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$19;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_af

    .line 1540
    :cond_aa
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$20;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1279
    :goto_af
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_CORES_MODE:I

    .line 1574
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$21;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1646
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_c4

    .line 1647
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$22;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_c9

    .line 1699
    :cond_c4
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$23;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1746
    :goto_c9
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_d3

    .line 1747
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$24;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$24;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_d8

    .line 1762
    :cond_d3
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$25;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$25;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1574
    :goto_d8
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ALLIANCES_MODE:I

    .line 1780
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$26;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$26;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1850
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_ed

    .line 1851
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$27;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$27;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_f2

    .line 1905
    :cond_ed
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$28;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$28;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1954
    :goto_f2
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_fc

    .line 1955
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$29;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$29;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_101

    .line 1975
    :cond_fc
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$30;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$30;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1780
    :goto_101
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_SUPPLIES_MODE:I

    .line 1998
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$31;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$31;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2119
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_116

    .line 2120
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$32;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$32;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_11b

    .line 2163
    :cond_116
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$33;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$33;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2206
    :goto_11b
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_125

    .line 2207
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$34;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$34;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_12a

    .line 2227
    :cond_125
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$35;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$35;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 1998
    :goto_12a
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_MODE:I

    .line 2245
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$36;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$36;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2359
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_13f

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$37;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$37;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_144

    .line 2398
    :cond_13f
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$38;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$38;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2435
    :goto_144
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_14e

    .line 2436
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$39;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$39;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_153

    .line 2451
    :cond_14e
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$40;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$40;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2245
    :goto_153
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_PRODUCTION_MODE:I

    .line 2463
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$41;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$41;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2577
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_168

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$42;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$42;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_16d

    .line 2616
    :cond_168
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$43;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$43;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2653
    :goto_16d
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_177

    .line 2654
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$44;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$44;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_17c

    .line 2669
    :cond_177
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$45;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$45;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2463
    :goto_17c
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_TAXATION_MODE:I

    .line 2681
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$46;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$46;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2795
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_191

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$47;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$47;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_196

    .line 2834
    :cond_191
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$48;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$48;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2871
    :goto_196
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1a0

    .line 2872
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$49;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$49;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_1a5

    .line 2887
    :cond_1a0
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$50;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$50;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2681
    :goto_1a5
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_ALL_MODE:I

    .line 2899
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$51;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$51;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2976
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_1ba

    .line 2977
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$52;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$52;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_1bf

    .line 3025
    :cond_1ba
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$53;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$53;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 3073
    :goto_1bf
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1c9

    .line 3074
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$54;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$54;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_1ce

    .line 3094
    :cond_1c9
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$55;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$55;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 2899
    :goto_1ce
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DISTANCE_MODE:I

    .line 3111
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$56;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$56;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 3215
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_1e3

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$57;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$57;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_1e8

    .line 3255
    :cond_1e3
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$58;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$58;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 3298
    :goto_1e8
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f2

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$59;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$59;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_1f7

    .line 3327
    :cond_1f2
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$60;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$60;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 3111
    :goto_1f7
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_HAPPINESS_MODE:I

    .line 3349
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$61;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$61;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 3453
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_20c

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$62;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$62;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_211

    .line 3515
    :cond_20c
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$63;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$63;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 3579
    :goto_211
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_21b

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$64;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$64;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_220

    .line 3592
    :cond_21b
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$65;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$65;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 3349
    :goto_220
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_REVOLUTION_MODE:I

    .line 3617
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$66;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$66;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 3736
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_235

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$67;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$67;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_23a

    .line 3797
    :cond_235
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$68;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$68;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 3861
    :goto_23a
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_244

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$69;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$69;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_249

    .line 3886
    :cond_244
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$70;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$70;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 3617
    :goto_249
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_PROVINCE_STABILITY_MODE:I

    .line 3917
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$71;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$71;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4060
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_25e

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$72;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$72;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_263

    .line 4119
    :cond_25e
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$73;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$73;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4180
    :goto_263
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_26d

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$74;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$74;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_272

    .line 4230
    :cond_26d
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$75;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$75;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 3917
    :goto_272
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ECONOMY_MODE:I

    .line 4275
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$76;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$76;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4308
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_287

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$77;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$77;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_28c

    .line 4354
    :cond_287
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$78;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$78;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4402
    :goto_28c
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_296

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$79;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$79;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_29b

    .line 4450
    :cond_296
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$80;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$80;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4275
    :goto_29b
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_POPULATION_OF_CIV_MODE:I

    .line 4614
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$81;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$81;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4671
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_2b0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$82;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$82;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_2b5

    .line 4710
    :cond_2b0
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$83;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$83;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4750
    :goto_2b5
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_2bf

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$84;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$84;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_2c4

    .line 4763
    :cond_2bf
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$85;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$85;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4614
    :goto_2c4
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_CONTINENT_MODE:I

    .line 4776
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$86;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$86;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4834
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_2d9

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$87;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$87;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_2de

    .line 4871
    :cond_2d9
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$88;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$88;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4910
    :goto_2de
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_2e8

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$89;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$89;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_2ed

    .line 4923
    :cond_2e8
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$90;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$90;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4776
    :goto_2ed
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_REGIONS_MODE:I

    .line 4936
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$91;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$91;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4995
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_302

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$92;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$92;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_307

    .line 5082
    :cond_302
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$93;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$93;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 5148
    :goto_307
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_311

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$94;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$94;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_316

    .line 5162
    :cond_311
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$95;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$95;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 4936
    :goto_316
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_TERRAIN_TYPE_MODE:I

    .line 5175
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$96;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$96;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 5296
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_32b

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$97;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$97;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_330

    .line 5363
    :cond_32b
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$98;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$98;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 5431
    :goto_330
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_33a

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$99;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$99;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_33f

    .line 5444
    :cond_33a
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$100;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$100;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 5175
    :goto_33f
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_GROWTH_RATE_MODE:I

    .line 5457
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$101;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$101;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 5613
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_354

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$102;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$102;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_359

    .line 5680
    :cond_354
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$103;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$103;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 5749
    :goto_359
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_363

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$104;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$104;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_368

    .line 5772
    :cond_363
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$105;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$105;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 5457
    :goto_368
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DEVELOPMENT_MODE:I

    .line 5793
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$106;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$106;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 5929
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_37d

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$107;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$107;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_382

    .line 5974
    :cond_37d
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$108;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$108;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 6021
    :goto_382
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_38c

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$109;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$109;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_391

    .line 6050
    :cond_38c
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$110;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$110;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 5793
    :goto_391
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_IMPERIAL_MODE:I

    .line 6080
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$111;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$111;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 6187
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_3a6

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$112;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$112;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_3ab

    .line 6241
    :cond_3a6
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$113;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$113;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 6298
    :goto_3ab
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_3b5

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$114;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$114;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_3ba

    .line 6316
    :cond_3b5
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$115;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$115;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 6080
    :goto_3ba
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_TECHNOLOGY_MODE:I

    .line 6332
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$116;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$116;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 6472
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_3cf

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$117;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$117;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_3d4

    .line 6539
    :cond_3cf
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$118;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$118;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 6607
    :goto_3d4
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_3de

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$119;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$119;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_3e3

    .line 6620
    :cond_3de
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$120;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$120;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 6332
    :goto_3e3
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_PROVINCE_VALUE_MODE:I

    .line 6633
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$121;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$121;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 6741
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_3f8

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$122;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$122;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_3fd

    .line 6793
    :cond_3f8
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$123;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$123;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 6846
    :goto_3fd
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-nez v3, :cond_407

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$124;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$124;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_416

    .line 6885
    :cond_407
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_411

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$125;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$125;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_416

    .line 6936
    :cond_411
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$126;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$126;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 6633
    :goto_416
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ARMY_MODE:I

    .line 6982
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$127;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$127;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7136
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_42b

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$128;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$128;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_430

    .line 7172
    :cond_42b
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$129;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$129;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7210
    :goto_430
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_43a

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$130;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$130;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_43f

    .line 7223
    :cond_43a
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$131;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$131;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 6982
    :goto_43f
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_BUILDINGS_MODE:I

    .line 7236
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$132;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$132;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7310
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_454

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$133;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$133;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_459

    .line 7363
    :cond_454
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$134;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$134;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7418
    :goto_459
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_463

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$135;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$135;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_468

    .line 7431
    :cond_463
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$136;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$136;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7236
    :goto_468
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_PORT_MODE:I

    .line 7444
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$137;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$137;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7523
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_47d

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$138;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$138;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_482

    .line 7572
    :cond_47d
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$139;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$139;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7623
    :goto_482
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_48c

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$140;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$140;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_491

    .line 7636
    :cond_48c
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$141;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$141;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7444
    :goto_491
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_FORTIFICATIONS_MODE:I

    .line 7649
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$142;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$142;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7728
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_4a6

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$143;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$143;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_4ab

    .line 7767
    :cond_4a6
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$144;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$144;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7805
    :goto_4ab
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_4b5

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$145;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$145;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_4ba

    .line 7818
    :cond_4b5
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$146;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$146;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7649
    :goto_4ba
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_WATCH_TOWER_MODE:I

    .line 7828
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initFarms()V

    .line 7829
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initLibrary()V

    .line 7830
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initMarket()V

    .line 7831
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initSupply()V

    .line 7832
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initWorkshop()V

    .line 7833
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initArmoury()V

    .line 7835
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initWonders()V

    .line 7837
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initPopulationChange()V

    .line 7838
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initEconomicChange()V

    .line 7840
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initInvestsEco()V

    .line 7841
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initInvestsDev()V

    .line 7842
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initFestivals()V

    .line 7843
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initAssimilations()V

    .line 7844
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initWars()V

    .line 7849
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$147;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$147;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7900
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_4f9

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$148;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$148;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_4fe

    .line 7946
    :cond_4f9
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$149;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$149;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7996
    :goto_4fe
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_508

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$150;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$150;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_50d

    .line 8015
    :cond_508
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$151;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$151;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 7849
    :goto_50d
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_IDEOLOGIES_MODE:I

    .line 8074
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$152;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$152;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 8125
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_522

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$153;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$153;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_527

    .line 8173
    :cond_522
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$154;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$154;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 8223
    :goto_527
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_531

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$155;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$155;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_536

    .line 8242
    :cond_531
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$156;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$156;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 8074
    :goto_536
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_RELIGION_MODE:I

    .line 8279
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$157;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$157;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 8367
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_54b

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$158;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$158;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_550

    .line 8429
    :cond_54b
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$159;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$159;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 8492
    :goto_550
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_55a

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$160;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$160;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_55f

    .line 8510
    :cond_55a
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$161;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$161;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 8279
    :goto_55f
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_RECRUITABLE_ARMY_MODE:I

    .line 8526
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$162;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$162;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$163;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$163;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$164;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$164;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_AI_POTENTIAL_MODE:I

    .line 8594
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$165;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$165;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$166;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$166;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$167;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$167;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_AI_DANGER_MODE:I

    .line 8662
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$168;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$168;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$169;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$169;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$170;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$170;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_BALANCE_MODE:I

    .line 8745
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$171;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$171;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$172;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$172;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$173;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$173;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_TRUE_OWNERS_MODE:I

    .line 8831
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$174;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$174;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 8938
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_5c8

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$175;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$175;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_5cd

    .line 8990
    :cond_5c8
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$176;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$176;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9043
    :goto_5cd
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_5d7

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$177;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$177;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_5dc

    .line 9078
    :cond_5d7
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$178;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$178;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 8831
    :goto_5dc
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DISEASES_MODE:I

    .line 9100
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initFans()V

    .line 9103
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_TECHNOLOGY_MODE:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9104
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_IDEOLOGIES_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9105
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_RELIGION_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9106
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DIPLOMACY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9107
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ALLIANCES_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9108
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_IMPERIAL_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9109
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_PROVINCE_STABILITY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9110
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_SUPPLIES_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9111
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_BUILDINGS_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9112
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_ALL_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9113
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_TAXATION_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9114
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_PRODUCTION_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9115
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_RECRUITABLE_ARMY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawCivNamesOver:Z

    .line 9121
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ARMY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9122
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ECONOMY_CHANGE_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9123
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_POPULATION_CHANGE_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9124
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_POPULATION_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9125
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ECONOMY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9126
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_ALL_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9127
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_TAXATION_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9128
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INCOME_PRODUCTION_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9130
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_TERRAIN_TYPE_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9131
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_GROWTH_RATE_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9132
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_RECRUITABLE_ARMY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9133
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_FORTIFICATIONS_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9134
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_WATCH_TOWER_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9135
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_FARM_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9136
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_LIBRARY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9137
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_ARMOURY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9138
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_MARKET_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9139
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_SUPPLY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9140
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_WONDERS_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9141
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_WORKSHOP_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9142
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_PORT_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9143
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DEVELOPMENT_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9144
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_REVOLUTION_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9145
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_PROVINCE_VALUE_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9146
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_PROVINCE_STABILITY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9147
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_SUPPLIES_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->canMoveArmy:Z

    .line 9148
    return-void
.end method

.method private final addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I
    .registers 5
    .param p1, "nView"  # Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;
    .param p2, "nRenderer"  # Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;
    .param p3, "nDrawProvinces"  # Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;

    .line 12108
    iput-object p2, p1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;

    .line 12109
    iput-object p3, p1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->drawProvinces:Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;

    .line 12111
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12112
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static updateEconomicChange()V
    .registers 3

    .line 12209
    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    .line 12210
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_8a

    .line 12213
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_86

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-lez v1, :cond_86

    .line 12214
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->startingEconomy:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    if-le v1, v2, :cond_56

    .line 12215
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->startingEconomy:I

    sub-int/2addr v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12218
    :cond_56
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->startingEconomy:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    if-ge v1, v2, :cond_86

    .line 12219
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->startingEconomy:I

    sub-int/2addr v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    .line 12212
    :cond_86
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 12224
    .end local v0  # "i":I
    :cond_8a
    sget v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000  # 0.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    .line 12225
    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12227
    if-ltz v0, :cond_a1

    .line 12228
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    .line 12230
    :cond_a1
    return-void
.end method

.method public static final updateMaxBalance()V
    .registers 3

    .line 12412
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    .line 12414
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 12415
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getBalanceCivId(I)I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    if-le v1, v2, :cond_1e

    .line 12416
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getBalanceCivId(I)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    .line 12414
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 12419
    .end local v0  # "i":I
    :cond_21
    return-void
.end method

.method public static final updateMaxDanger()V
    .registers 3

    .line 12402
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    .line 12404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 12405
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLvl()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    if-le v1, v2, :cond_26

    .line 12406
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLvl()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    .line 12404
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 12409
    .end local v0  # "i":I
    :cond_29
    return-void
.end method

.method public static updateMaxDeaths()V
    .registers 6

    .line 12241
    const-wide/16 v0, 0x1

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->DEATHS_MAX:J

    .line 12243
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_58

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v0, :cond_58

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_58

    .line 12244
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_16
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 12245
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-lez v1, :cond_54

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_54

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-wide v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    sget-wide v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->DEATHS_MAX:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_54

    .line 12246
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-wide v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->DEATHS_MAX:J

    .line 12244
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .end local v0  # "i":I
    :cond_57
    goto :goto_8c

    .line 12251
    :cond_58
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_59
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_8c

    .line 12252
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-lez v1, :cond_89

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-wide v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    sget-wide v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->DEATHS_MAX:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_89

    .line 12253
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-wide v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->DEATHS_MAX:J

    .line 12251
    :cond_89
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 12258
    .end local v0  # "i":I
    :cond_8c
    :goto_8c
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->DEATHS_MAX:J

    long-to-float v0, v0

    const/high16 v1, 0x3f200000  # 0.625f

    mul-float v0, v0, v1

    float-to-long v0, v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->DEATHS_MAX:J

    .line 12259
    return-void
.end method

.method public static final updateMaxDistance()V
    .registers 4

    .line 12354
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_9c

    .line 12357
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_98

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_98

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    if-eq v1, v2, :cond_5e

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    if-ne v1, v2, :cond_98

    :cond_5e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 12358
    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v1

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Distance;->getDistanceFromCapital(II)F

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_98

    .line 12359
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v1

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Distance;->getDistanceFromCapital(II)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12356
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 12362
    .end local v0  # "i":I
    :cond_9c
    return-void
.end method

.method public static final updateMaxEconomy()V
    .registers 3

    .line 12369
    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    .line 12371
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_55

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v0, :cond_55

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_55

    .line 12372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 12373
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_51

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_51

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    if-le v1, v2, :cond_51

    .line 12374
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    .line 12372
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .end local v0  # "i":I
    :cond_54
    goto :goto_87

    .line 12379
    :cond_55
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_56
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_87

    .line 12380
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_84

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    if-le v1, v2, :cond_84

    .line 12381
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    .line 12379
    :cond_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 12386
    .end local v0  # "i":I
    :cond_87
    :goto_87
    sget v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    int-to-float v0, v0

    const v1, 0x3f466666  # 0.775f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    .line 12387
    return-void
.end method

.method public static updateMaxIncome()V
    .registers 5

    .line 12294
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_b6

    .line 12297
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_b2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_b2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    if-eq v1, v2, :cond_5e

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    if-ne v1, v2, :cond_b2

    .line 12298
    :cond_5e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeTaxation(I)F

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeTaxation:F

    .line 12299
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeProduction(I)F

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeProduction:F

    .line 12300
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getAdministration_Capital(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvinceAdministrationCost(II)F

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->administrationCost:F

    .line 12302
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBalance_LastTurn()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    if-le v1, v2, :cond_b2

    .line 12303
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBalance_LastTurn()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12296
    :cond_b2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 12307
    .end local v0  # "i":I
    :cond_b6
    return-void
.end method

.method public static updateMaxIncome_All()V
    .registers 5

    .line 12310
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_8f

    .line 12313
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_8b

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_8b

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 12314
    :cond_37
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeTaxation(I)F

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeTaxation:F

    .line 12315
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeProduction(I)F

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeProduction:F

    .line 12316
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getAdministration_Capital(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvinceAdministrationCost(II)F

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->administrationCost:F

    .line 12318
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBalance_LastTurn()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    if-le v1, v2, :cond_8b

    .line 12319
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBalance_LastTurn()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12312
    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 12323
    .end local v0  # "i":I
    :cond_8f
    return-void
.end method

.method public static updateMaxIncome_All_Production()V
    .registers 3

    .line 12340
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_62

    .line 12343
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_5f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_5f

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 12344
    :cond_37
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeProduction(I)F

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeProduction:F

    .line 12346
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeProduction:F

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5f

    .line 12347
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeProduction:F

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12342
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 12351
    .end local v0  # "i":I
    :cond_62
    return-void
.end method

.method public static updateMaxIncome_All_Taxation()V
    .registers 3

    .line 12326
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_62

    .line 12329
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_5f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_5f

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 12330
    :cond_37
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeTaxation(I)F

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeTaxation:F

    .line 12332
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeTaxation:F

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5f

    .line 12333
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeTaxation:F

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12328
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 12337
    .end local v0  # "i":I
    :cond_62
    return-void
.end method

.method public static updateMaxPopulation()V
    .registers 3

    .line 12262
    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12264
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_5d

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v0, :cond_5d

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5d

    .line 12265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 12266
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_59

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_59

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    if-le v1, v2, :cond_59

    .line 12267
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12265
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .end local v0  # "i":I
    :cond_5c
    goto :goto_97

    .line 12272
    :cond_5d
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_5e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_97

    .line 12273
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_94

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    if-le v1, v2, :cond_94

    .line 12274
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12272
    :cond_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 12279
    .end local v0  # "i":I
    :cond_97
    :goto_97
    sget v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    int-to-float v0, v0

    const v1, 0x3f466666  # 0.775f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12280
    return-void
.end method

.method public static final updateMaxPopulationOfCivilization(I)V
    .registers 5
    .param p0, "nCivID"  # I

    .line 12283
    sput p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_OF_CIVID:I

    .line 12284
    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_OF_CIVID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 12287
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_OF_CIVID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_66

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_OF_CIVID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    if-le v1, v2, :cond_66

    .line 12288
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_OF_CIVID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12286
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 12291
    .end local v0  # "i":I
    :cond_69
    return-void
.end method

.method public static final updateMaxPotential()V
    .registers 3

    .line 12392
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    .line 12394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 12395
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    if-le v1, v2, :cond_26

    .line 12396
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    .line 12394
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 12399
    .end local v0  # "i":I
    :cond_29
    return-void
.end method

.method public static final updateMaxRecruitable()V
    .registers 4

    .line 12422
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    .line 12424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 12425
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->gMARY(II)I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    if-le v1, v2, :cond_36

    .line 12426
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->gMARY(II)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    .line 12424
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 12429
    .end local v0  # "i":I
    :cond_39
    return-void
.end method

.method public static updatePopulationChange()V
    .registers 3

    .line 12185
    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    .line 12186
    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_9a

    .line 12189
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_96

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-lez v1, :cond_96

    .line 12190
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->startingPopulation:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    if-le v1, v2, :cond_5e

    .line 12191
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->startingPopulation:I

    sub-int/2addr v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12194
    :cond_5e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->startingPopulation:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    if-ge v1, v2, :cond_96

    .line 12195
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->startingPopulation:I

    sub-int/2addr v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    .line 12188
    :cond_96
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 12200
    .end local v0  # "i":I
    :cond_9a
    sget v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000  # 0.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    .line 12201
    sget v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    .line 12203
    if-ltz v0, :cond_b1

    .line 12204
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MIN:I

    .line 12206
    :cond_b1
    return-void
.end method


# virtual methods
.method public final clearData()V
    .registers 2

    .line 12444
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12445
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    .line 12446
    return-void
.end method

.method public final disableAllViews()V
    .registers 3

    .line 12169
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->iActiveMapModeID:I

    if-ltz v0, :cond_14

    .line 12170
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->iActiveMapModeID:I

    .line 12171
    .local v0, "tempActive":I
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->iActiveMapModeID:I

    .line 12173
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->disableViewAction()V

    .line 12176
    .end local v0  # "tempActive":I
    :cond_14
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Render;->updateRenderer()V

    .line 12177
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RenderProvince;->updateDrawProvinces()V

    .line 12178
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Render;->updateDrawMoveUnits()V

    .line 12179
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateBuildProvinceHoverInformation()V

    .line 12180
    return-void
.end method

.method public final getActiveMapModeID()I
    .registers 2

    .line 12434
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->iActiveMapModeID:I

    return v0
.end method

.method public final getActiveView()Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;
    .registers 3

    .line 12438
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->iActiveMapModeID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    return-object v0
.end method

.method public initArmoury()V
    .registers 5

    .line 9955
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$199;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$199;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10034
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$200;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$200;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 10073
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$201;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$201;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10111
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$202;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$202;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 10124
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$203;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$203;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9955
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_ARMOURY_MODE:I

    .line 10133
    return-void
.end method

.method public initAssimilations()V
    .registers 5

    .line 9758
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$194;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$194;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9851
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$195;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$195;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 9890
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$196;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$196;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9928
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$197;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$197;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 9941
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$198;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$198;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9758
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ASSIMILATIONS_MODE:I

    .line 9950
    return-void
.end method

.method public initEconomicChange()V
    .registers 5

    .line 11217
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$234;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$234;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 11368
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$235;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$235;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 11427
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$236;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$236;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 11488
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$237;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$237;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 11513
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$238;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$238;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 11217
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_ECONOMY_CHANGE_MODE:I

    .line 11533
    return-void
.end method

.method public initFans()V
    .registers 5

    .line 12449
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$249;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$249;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 12529
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$250;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$250;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 12578
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$251;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$251;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 12628
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$252;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$252;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 12682
    :cond_1f
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$253;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$253;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 12449
    :goto_24
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_FANS_MODE:I

    .line 12738
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$254;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$254;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 12818
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_39

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$255;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$255;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_3e

    .line 12867
    :cond_39
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$256;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$256;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 12917
    :goto_3e
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_48

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$257;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$257;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_4d

    .line 12939
    :cond_48
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$258;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$258;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 12738
    :goto_4d
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_HATERS_MODE:I

    .line 12962
    return-void
.end method

.method public initFarms()V
    .registers 5

    .line 10860
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$224;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$224;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10939
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$225;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$225;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 10978
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$226;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$226;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 11016
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$227;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$227;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 11029
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$228;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$228;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10860
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_FARM_MODE:I

    .line 11038
    return-void
.end method

.method public initFestivals()V
    .registers 5

    .line 9563
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$189;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$189;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9656
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$190;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$190;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 9695
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$191;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$191;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9733
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$192;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$192;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 9746
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$193;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$193;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9563
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_FESTIVALS_MODE:I

    .line 9755
    return-void
.end method

.method public initInvestsDev()V
    .registers 5

    .line 9360
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$184;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$184;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9461
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$185;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$185;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 9500
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$186;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$186;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9538
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$187;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$187;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 9551
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$188;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$188;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9360
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INVESTS_DEV_MODE:I

    .line 9560
    return-void
.end method

.method public initInvestsEco()V
    .registers 5

    .line 9153
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$179;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$179;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9258
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$180;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$180;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 9297
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$181;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$181;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9335
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$182;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$182;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 9348
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$183;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$183;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 9153
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_INVESTS_ECO_MODE:I

    .line 9357
    return-void
.end method

.method public initLibrary()V
    .registers 5

    .line 10136
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$204;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$204;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10215
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$205;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$205;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 10254
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$206;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$206;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10292
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$207;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$207;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 10305
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$208;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$208;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10136
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_LIBRARY_MODE:I

    .line 10314
    return-void
.end method

.method public initMarket()V
    .registers 5

    .line 10317
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$209;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$209;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10396
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$210;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$210;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 10435
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$211;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$211;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10473
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$212;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$212;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 10486
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$213;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$213;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10317
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_MARKET_MODE:I

    .line 10495
    return-void
.end method

.method public initPopulationChange()V
    .registers 5

    .line 11536
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$239;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$239;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 11651
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 11652
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$240;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$240;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 11704
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$241;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$241;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 11756
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    .line 11757
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$242;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$242;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 11784
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$243;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$243;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 11536
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_POPULATION_CHANGE_MODE:I

    .line 11806
    return-void
.end method

.method public initSupply()V
    .registers 5

    .line 10498
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$214;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$214;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10577
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$215;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$215;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 10616
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$216;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$216;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10654
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$217;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$217;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 10667
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$218;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$218;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10498
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_SUPPLY_MODE:I

    .line 10676
    return-void
.end method

.method public initWars()V
    .registers 5

    .line 11809
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$244;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$244;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 11912
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$245;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$245;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 11966
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$246;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$246;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 12020
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$247;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$247;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 12066
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$248;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$248;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 11809
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_WARS_MODE:I

    .line 12103
    return-void
.end method

.method public initWonders()V
    .registers 5

    .line 11041
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$229;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$229;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 11103
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$230;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$230;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 11147
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$231;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$231;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 11189
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$232;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$232;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 11202
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$233;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$233;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 11041
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_WONDERS_MODE:I

    .line 11211
    return-void
.end method

.method public initWorkshop()V
    .registers 5

    .line 10679
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$219;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$219;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10758
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$220;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$220;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_15

    .line 10797
    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$221;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$221;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10835
    :goto_15
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$222;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$222;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    goto :goto_24

    .line 10848
    :cond_1f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$223;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$223;-><init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V

    .line 10679
    :goto_24
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_LEVEL_OF_WORKSHOP_MODE:I

    .line 10857
    return-void
.end method

.method public final setActiveMapModeID(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 12127
    const/4 v0, -0x1

    :try_start_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->iActiveMapModeID:I

    if-ne v1, p1, :cond_14

    .line 12128
    nop

    .line 12129
    .local v1, "tempActive":I
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->iActiveMapModeID:I

    .line 12132
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->disableViewAction()V

    .line 12133
    .end local v1  # "tempActive":I
    goto :goto_3d

    .line 12134
    :cond_14
    if-ltz v1, :cond_30

    .line 12135
    nop

    .line 12136
    .restart local v1  # "tempActive":I
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->iActiveMapModeID:I

    .line 12139
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->disableViewAction()V

    .line 12141
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->enableViewAction()V

    .line 12143
    .end local v1  # "tempActive":I
    goto :goto_3d

    .line 12145
    :cond_30
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->iActiveMapModeID:I

    .line 12146
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->lMapModes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapMode;->enableViewAction()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3e

    .line 12150
    :goto_3d
    goto :goto_41

    .line 12148
    :catch_3e
    move-exception v1

    .line 12149
    .local v1, "ex":Ljava/lang/Exception;
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->iActiveMapModeID:I

    .line 12152
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_41
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->iActiveMapModeID:I

    if-ltz v0, :cond_5b

    .line 12153
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 12154
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_FlagAction(Z)V

    .line 12158
    :cond_5b
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Render;->updateRenderer()V

    .line 12159
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RenderProvince;->updateDrawProvinces()V

    .line 12160
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Render;->updateDrawMoveUnits()V

    .line 12161
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateBuildProvinceHoverInformation()V

    .line 12163
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_78

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    if-nez v0, :cond_78

    .line 12164
    const/high16 v0, 0x3f400000  # 0.75f

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/RTS;->updateTimePast_AfterAction(F)V

    .line 12166
    :cond_78
    return-void
.end method

.method public final setActiveMapModeID(IZ)V
    .registers 3
    .param p1, "iID"  # I
    .param p2, "viewConfig"  # Z

    .line 12120
    iput-boolean p2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->viewConfig:Z

    .line 12122
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->setActiveMapModeID(I)V

    .line 12123
    return-void
.end method
