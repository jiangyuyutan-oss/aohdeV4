.class synthetic Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;
.super Ljava/lang/Object;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$age$of$civilizations2$jakowski$lukasz$Button$MenuElemUI$TypeOfMenuElemUI:[I

.field static final synthetic $SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 10516
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->values()[Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Button$MenuElemUI$TypeOfMenuElemUI:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->SLIDER:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Button$MenuElemUI$TypeOfMenuElemUI:[I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->SLIDE:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Button$MenuElemUI$TypeOfMenuElemUI:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->FLAG_PIXEL:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    const/4 v3, 0x4

    :try_start_2f
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Button$MenuElemUI$TypeOfMenuElemUI:[I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT_SLIDER:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v4

    :goto_3b
    const/4 v4, 0x5

    :try_start_3c
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Button$MenuElemUI$TypeOfMenuElemUI:[I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->GRAPH:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v5

    :goto_48
    const/4 v5, 0x6

    :try_start_49
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Button$MenuElemUI$TypeOfMenuElemUI:[I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->GRAPH_VERTICAL:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v6

    :goto_55
    const/4 v6, 0x7

    :try_start_56
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Button$MenuElemUI$TypeOfMenuElemUI:[I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->DIPLOMACY_INFO:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v7

    :goto_62
    const/16 v7, 0x8

    :try_start_64
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Button$MenuElemUI$TypeOfMenuElemUI:[I

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->GRAPH_CIRCLE:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v8

    .line 1501
    :goto_70
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/View;->values()[Lage/of/civilizations2/jakowski/lukasz/View;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    :try_start_79
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_COQNUERED_PROVS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_81} :catch_82

    goto :goto_83

    :catch_82
    move-exception v1

    :goto_83
    :try_start_83
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_MILITARYEXPERTISE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v8

    aput v0, v1, v8
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8e

    goto :goto_8f

    :catch_8e
    move-exception v0

    :goto_8f
    :try_start_8f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ASSICOST:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_99} :catch_9a

    goto :goto_9b

    :catch_9a
    move-exception v0

    :goto_9b
    :try_start_9b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ASSICOSTLOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a5} :catch_a6

    goto :goto_a7

    :catch_a6
    move-exception v0

    :goto_a7
    :try_start_a7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_INVESTSDEVCOST:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_b2

    goto :goto_b3

    :catch_b2
    move-exception v0

    :goto_b3
    :try_start_b3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ECO_GAINEDLOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_bd} :catch_be

    goto :goto_bf

    :catch_be
    move-exception v0

    :goto_bf
    :try_start_bf
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ECO_GAINED:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_c9} :catch_ca

    goto :goto_cb

    :catch_ca
    move-exception v0

    :goto_cb
    :try_start_cb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_INVESTSCOST:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d5} :catch_d6

    goto :goto_d7

    :catch_d6
    move-exception v0

    :goto_d7
    :try_start_d7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_FESTIVALSCOST:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e3} :catch_e4

    goto :goto_e5

    :catch_e4
    move-exception v0

    :goto_e5
    :try_start_e5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_FESTIVALSCOSTLOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e5 .. :try_end_f1} :catch_f2

    goto :goto_f3

    :catch_f2
    move-exception v0

    :goto_f3
    :try_start_f3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_FESTIVALS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_ff} :catch_100

    goto :goto_101

    :catch_100
    move-exception v0

    :goto_101
    :try_start_101
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_FESTIVALSLOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10d} :catch_10e

    goto :goto_10f

    :catch_10e
    move-exception v0

    :goto_10f
    :try_start_10f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ASSI:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10f .. :try_end_11b} :catch_11c

    goto :goto_11d

    :catch_11c
    move-exception v0

    :goto_11d
    :try_start_11d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ASSILOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11d .. :try_end_129} :catch_12a

    goto :goto_12b

    :catch_12a
    move-exception v0

    :goto_12b
    :try_start_12b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_INVESTS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_137
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12b .. :try_end_137} :catch_138

    goto :goto_139

    :catch_138
    move-exception v0

    :goto_139
    :try_start_139
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_145
    .catch Ljava/lang/NoSuchFieldError; {:try_start_139 .. :try_end_145} :catch_146

    goto :goto_147

    :catch_146
    move-exception v0

    :goto_147
    :try_start_147
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAMES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_153
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_153} :catch_154

    goto :goto_155

    :catch_154
    move-exception v0

    :goto_155
    :try_start_155
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_161
    .catch Ljava/lang/NoSuchFieldError; {:try_start_155 .. :try_end_161} :catch_162

    goto :goto_163

    :catch_162
    move-exception v0

    :goto_163
    :try_start_163
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eAGE_OF_CHAOS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_163 .. :try_end_16f} :catch_170

    goto :goto_171

    :catch_170
    move-exception v0

    :goto_171
    :try_start_171
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eLOAD_SCENARIO:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_17d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_171 .. :try_end_17d} :catch_17e

    goto :goto_17f

    :catch_17e
    move-exception v0

    :goto_17f
    :try_start_17f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSELECT_MAP_TYPE_SCALE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_18b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17f .. :try_end_18b} :catch_18c

    goto :goto_18d

    :catch_18c
    move-exception v0

    :goto_18d
    :try_start_18d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR_SCENARIOS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_199
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18d .. :try_end_199} :catch_19a

    goto :goto_19b

    :catch_19a
    move-exception v0

    :goto_19b
    :try_start_19b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eLOADGAME:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19b .. :try_end_1a7} :catch_1a8

    goto :goto_1a9

    :catch_1a8
    move-exception v0

    :goto_1a9
    :try_start_1a9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR_UNIONS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a9 .. :try_end_1b5} :catch_1b6

    goto :goto_1b7

    :catch_1b6
    move-exception v0

    :goto_1b7
    :try_start_1b7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR_UNIONS_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b7 .. :try_end_1c3} :catch_1c4

    goto :goto_1c5

    :catch_1c4
    move-exception v0

    :goto_1c5
    :try_start_1c5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_COLONIZATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c5 .. :try_end_1d1} :catch_1d2

    goto :goto_1d3

    :catch_1d2
    move-exception v0

    :goto_1d3
    :try_start_1d3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d3 .. :try_end_1df} :catch_1e0

    goto :goto_1e1

    :catch_1e0
    move-exception v0

    :goto_1e1
    :try_start_1e1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e1 .. :try_end_1ed} :catch_1ee

    goto :goto_1ef

    :catch_1ee
    move-exception v0

    :goto_1ef
    :try_start_1ef
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSELECT_AVAILABLE_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ef .. :try_end_1fb} :catch_1fc

    goto :goto_1fd

    :catch_1fc
    move-exception v0

    :goto_1fd
    :try_start_1fd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSETTINGS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_209
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fd .. :try_end_209} :catch_20a

    goto :goto_20b

    :catch_20a
    move-exception v0

    :goto_20b
    :try_start_20b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSELECT_LANGUAGE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_217
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20b .. :try_end_217} :catch_218

    goto :goto_219

    :catch_218
    move-exception v0

    :goto_219
    :try_start_219
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSETTINGS_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_225
    .catch Ljava/lang/NoSuchFieldError; {:try_start_219 .. :try_end_225} :catch_226

    goto :goto_227

    :catch_226
    move-exception v0

    :goto_227
    :try_start_227
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eHELP:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_233
    .catch Ljava/lang/NoSuchFieldError; {:try_start_227 .. :try_end_233} :catch_234

    goto :goto_235

    :catch_234
    move-exception v0

    :goto_235
    :try_start_235
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSTART_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_241
    .catch Ljava/lang/NoSuchFieldError; {:try_start_235 .. :try_end_241} :catch_242

    goto :goto_243

    :catch_242
    move-exception v0

    :goto_243
    :try_start_243
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEND_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_24f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_243 .. :try_end_24f} :catch_250

    goto :goto_251

    :catch_250
    move-exception v0

    :goto_251
    :try_start_251
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eNEXT_PLAYER_TURN:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_25d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_251 .. :try_end_25d} :catch_25e

    goto :goto_25f

    :catch_25e
    move-exception v0

    :goto_25f
    :try_start_25f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eVICTORY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_26b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25f .. :try_end_26b} :catch_26c

    goto :goto_26d

    :catch_26c
    move-exception v0

    :goto_26d
    :try_start_26d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eDEFEAT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_279
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26d .. :try_end_279} :catch_27a

    goto :goto_27b

    :catch_27a
    move-exception v0

    :goto_27b
    :try_start_27b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_CIV_VIEW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_287
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27b .. :try_end_287} :catch_288

    goto :goto_289

    :catch_288
    move-exception v0

    :goto_289
    :try_start_289
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_CONTROLLEDBYPLAYER:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_295
    .catch Ljava/lang/NoSuchFieldError; {:try_start_289 .. :try_end_295} :catch_296

    goto :goto_297

    :catch_296
    move-exception v0

    :goto_297
    :try_start_297
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NEUTRAL:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_2a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_297 .. :try_end_2a3} :catch_2a4

    goto :goto_2a5

    :catch_2a4
    move-exception v0

    :goto_2a5
    :try_start_2a5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_LEADER:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_2b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a5 .. :try_end_2b1} :catch_2b2

    goto :goto_2b3

    :catch_2b2
    move-exception v0

    :goto_2b3
    :try_start_2b3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_FARM:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b3 .. :try_end_2bf} :catch_2c0

    goto :goto_2c1

    :catch_2c0
    move-exception v0

    :goto_2c1
    :try_start_2c1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_FORT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c1 .. :try_end_2cd} :catch_2ce

    goto :goto_2cf

    :catch_2ce
    move-exception v0

    :goto_2cf
    :try_start_2cf
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_PORT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2cf .. :try_end_2db} :catch_2dc

    goto :goto_2dd

    :catch_2dc
    move-exception v0

    :goto_2dd
    :try_start_2dd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_WATCHTOWER:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2dd .. :try_end_2e9} :catch_2ea

    goto :goto_2eb

    :catch_2ea
    move-exception v0

    :goto_2eb
    :try_start_2eb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2eb .. :try_end_2f7} :catch_2f8

    goto :goto_2f9

    :catch_2f8
    move-exception v0

    :goto_2f9
    :try_start_2f9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ADM_POLICY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_305
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f9 .. :try_end_305} :catch_306

    goto :goto_307

    :catch_306
    move-exception v0

    :goto_307
    :try_start_307
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ADM_POLICYLIST:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_313
    .catch Ljava/lang/NoSuchFieldError; {:try_start_307 .. :try_end_313} :catch_314

    goto :goto_315

    :catch_314
    move-exception v0

    :goto_315
    :try_start_315
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_TREASURY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_321
    .catch Ljava/lang/NoSuchFieldError; {:try_start_315 .. :try_end_321} :catch_322

    goto :goto_323

    :catch_322
    move-exception v0

    :goto_323
    :try_start_323
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_INVESTSCOSTLOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_32f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_323 .. :try_end_32f} :catch_330

    goto :goto_331

    :catch_330
    move-exception v0

    :goto_331
    :try_start_331
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_INVESTSDEVCOSTLOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_33d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_331 .. :try_end_33d} :catch_33e

    goto :goto_33f

    :catch_33e
    move-exception v0

    :goto_33f
    :try_start_33f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_MILITARYEXPERTISELOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_34b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33f .. :try_end_34b} :catch_34c

    goto :goto_34d

    :catch_34c
    move-exception v0

    :goto_34d
    :try_start_34d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_DEATHS_ALL_WARSLOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_359
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34d .. :try_end_359} :catch_35a

    goto :goto_35b

    :catch_35a
    move-exception v0

    :goto_35b
    :try_start_35b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_DEATHS_ALL_WARS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_367
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35b .. :try_end_367} :catch_368

    goto :goto_369

    :catch_368
    move-exception v0

    :goto_369
    :try_start_369
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_BUILDINGSCONSTRLOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_375
    .catch Ljava/lang/NoSuchFieldError; {:try_start_369 .. :try_end_375} :catch_376

    goto :goto_377

    :catch_376
    move-exception v0

    :goto_377
    :try_start_377
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_BUILDINGSCONSTR:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_383
    .catch Ljava/lang/NoSuchFieldError; {:try_start_377 .. :try_end_383} :catch_384

    goto :goto_385

    :catch_384
    move-exception v0

    :goto_385
    :try_start_385
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_RECRUITEDARMYLOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_391
    .catch Ljava/lang/NoSuchFieldError; {:try_start_385 .. :try_end_391} :catch_392

    goto :goto_393

    :catch_392
    move-exception v0

    :goto_393
    :try_start_393
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_COQNUERED_PROVS_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_39f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_393 .. :try_end_39f} :catch_3a0

    goto :goto_3a1

    :catch_3a0
    move-exception v0

    :goto_3a1
    :try_start_3a1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSK:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a1 .. :try_end_3ad} :catch_3ae

    goto :goto_3af

    :catch_3ae
    move-exception v0

    :goto_3af
    :try_start_3af
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMM:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3af .. :try_end_3bb} :catch_3bc

    goto :goto_3bd

    :catch_3bc
    move-exception v0

    :goto_3bd
    :try_start_3bd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eFB:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3bd .. :try_end_3c9} :catch_3ca

    goto :goto_3cb

    :catch_3ca
    move-exception v0

    :goto_3cb
    :try_start_3cb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eNV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3cb .. :try_end_3d7} :catch_3d8

    goto :goto_3d9

    :catch_3d8
    move-exception v0

    :goto_3d9
    :try_start_3d9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eFLAG_EDITOR:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_3e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d9 .. :try_end_3e5} :catch_3e6

    goto :goto_3e7

    :catch_3e6
    move-exception v0

    :goto_3e7
    :try_start_3e7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eABOUT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_3f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e7 .. :try_end_3f3} :catch_3f4

    goto :goto_3f5

    :catch_3f4
    move-exception v0

    :goto_3f5
    :try_start_3f5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSELECT_UI_SCALE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_401
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f5 .. :try_end_401} :catch_402

    goto :goto_403

    :catch_402
    move-exception v0

    :goto_403
    :try_start_403
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSETTINGS_GRAPHICS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_40f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_403 .. :try_end_40f} :catch_410

    goto :goto_411

    :catch_410
    move-exception v0

    :goto_411
    :try_start_411
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_CIVILIZATIONS_SELECT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_41d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_411 .. :try_end_41d} :catch_41e

    goto :goto_41f

    :catch_41e
    move-exception v0

    :goto_41f
    :try_start_41f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR_UNIONS_ADDCIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_42b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41f .. :try_end_42b} :catch_42c

    goto :goto_42d

    :catch_42c
    move-exception v0

    :goto_42d
    :try_start_42d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_CORES_ADD_CORE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_439
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42d .. :try_end_439} :catch_43a

    goto :goto_43b

    :catch_43a
    move-exception v0

    :goto_43b
    :try_start_43b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_CORES_ADD_CIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_447
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43b .. :try_end_447} :catch_448

    goto :goto_449

    :catch_448
    move-exception v0

    :goto_449
    :try_start_449
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_RANDOM_GAME_CIVILIZATIONS_SELECT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_455
    .catch Ljava/lang/NoSuchFieldError; {:try_start_449 .. :try_end_455} :catch_456

    goto :goto_457

    :catch_456
    move-exception v0

    :goto_457
    :try_start_457
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_SELECT_CIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_463
    .catch Ljava/lang/NoSuchFieldError; {:try_start_457 .. :try_end_463} :catch_464

    goto :goto_465

    :catch_464
    move-exception v0

    :goto_465
    :try_start_465
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_ADD_CIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_471
    .catch Ljava/lang/NoSuchFieldError; {:try_start_465 .. :try_end_471} :catch_472

    goto :goto_473

    :catch_472
    move-exception v0

    :goto_473
    :try_start_473
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_TRIGGER:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_47f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_473 .. :try_end_47f} :catch_480

    goto :goto_481

    :catch_480
    move-exception v0

    :goto_481
    :try_start_481
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_ADD_NEW_CONDITION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_48d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_481 .. :try_end_48d} :catch_48e

    goto :goto_48f

    :catch_48e
    move-exception v0

    :goto_48f
    :try_start_48f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_ADD_NEW_OUTCOME:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_49b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48f .. :try_end_49b} :catch_49c

    goto :goto_49d

    :catch_49c
    move-exception v0

    :goto_49d
    :try_start_49d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_CIVEXIST:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49d .. :try_end_4a9} :catch_4aa

    goto :goto_4ab

    :catch_4aa
    move-exception v0

    :goto_4ab
    :try_start_4ab
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ISPARTOFHRE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_4b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4ab .. :try_end_4b7} :catch_4b8

    goto :goto_4b9

    :catch_4b8
    move-exception v0

    :goto_4b9
    :try_start_4b9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_IDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_4c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b9 .. :try_end_4c5} :catch_4c6

    goto :goto_4c7

    :catch_4c6
    move-exception v0

    :goto_4c7
    :try_start_4c7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_RELIGION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_4d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c7 .. :try_end_4d3} :catch_4d4

    goto :goto_4d5

    :catch_4d4
    move-exception v0

    :goto_4d5
    :try_start_4d5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_LEADER:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_4e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d5 .. :try_end_4e1} :catch_4e2

    goto :goto_4e3

    :catch_4e2
    move-exception v0

    :goto_4e3
    :try_start_4e3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_TECHNOLOGY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_4ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e3 .. :try_end_4ef} :catch_4f0

    goto :goto_4f1

    :catch_4f0
    move-exception v0

    :goto_4f1
    :try_start_4f1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_TECHNOLOGY_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_4fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f1 .. :try_end_4fd} :catch_4fe

    goto :goto_4ff

    :catch_4fe
    move-exception v0

    :goto_4ff
    :try_start_4ff
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_50b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4ff .. :try_end_50b} :catch_50c

    goto :goto_50d

    :catch_50c
    move-exception v0

    :goto_50d
    :try_start_50d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_HAPPINESS_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_519
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50d .. :try_end_519} :catch_51a

    goto :goto_51b

    :catch_51a
    move-exception v0

    :goto_51b
    :try_start_51b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSETTINGS_RESOLUTION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_527
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51b .. :try_end_527} :catch_528

    goto :goto_529

    :catch_528
    move-exception v0

    :goto_529
    :try_start_529
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSELECT_MAP_TYPE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_535
    .catch Ljava/lang/NoSuchFieldError; {:try_start_529 .. :try_end_535} :catch_536

    goto :goto_537

    :catch_536
    move-exception v0

    :goto_537
    :try_start_537
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eVICTORY_CONDITIONS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_543
    .catch Ljava/lang/NoSuchFieldError; {:try_start_537 .. :try_end_543} :catch_544

    goto :goto_545

    :catch_544
    move-exception v0

    :goto_545
    :try_start_545
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_STABILITY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_551
    .catch Ljava/lang/NoSuchFieldError; {:try_start_545 .. :try_end_551} :catch_552

    goto :goto_553

    :catch_552
    move-exception v0

    :goto_553
    :try_start_553
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_STABILITYLOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_55f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_553 .. :try_end_55f} :catch_560

    goto :goto_561

    :catch_560
    move-exception v0

    :goto_561
    :try_start_561
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_BFORTS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_56d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_561 .. :try_end_56d} :catch_56e

    goto :goto_56f

    :catch_56e
    move-exception v0

    :goto_56f
    :try_start_56f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_BWORKSHOPS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_57b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56f .. :try_end_57b} :catch_57c

    goto :goto_57d

    :catch_57c
    move-exception v0

    :goto_57d
    :try_start_57d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_BLIBRARIES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_589
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57d .. :try_end_589} :catch_58a

    goto :goto_58b

    :catch_58a
    move-exception v0

    :goto_58b
    :try_start_58b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_BMARKETS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_597
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58b .. :try_end_597} :catch_598

    goto :goto_599

    :catch_598
    move-exception v0

    :goto_599
    :try_start_599
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_BSUPPLIES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_5a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_599 .. :try_end_5a5} :catch_5a6

    goto :goto_5a7

    :catch_5a6
    move-exception v0

    :goto_5a7
    :try_start_5a7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_BARMORIES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_5b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a7 .. :try_end_5b3} :catch_5b4

    goto :goto_5b5

    :catch_5b4
    move-exception v0

    :goto_5b5
    :try_start_5b5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_BFARMS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x62

    aput v2, v0, v1
    :try_end_5c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b5 .. :try_end_5c1} :catch_5c2

    goto :goto_5c3

    :catch_5c2
    move-exception v0

    :goto_5c3
    :try_start_5c3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_BPORTS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x63

    aput v2, v0, v1
    :try_end_5cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c3 .. :try_end_5cf} :catch_5d0

    goto :goto_5d1

    :catch_5d0
    move-exception v0

    :goto_5d1
    :try_start_5d1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_BTOWERS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x64

    aput v2, v0, v1
    :try_end_5dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d1 .. :try_end_5dd} :catch_5de

    goto :goto_5df

    :catch_5de
    move-exception v0

    :goto_5df
    :try_start_5df
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_RECRUITEDARMY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x65

    aput v2, v0, v1
    :try_end_5eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5df .. :try_end_5eb} :catch_5ec

    goto :goto_5ed

    :catch_5ec
    move-exception v0

    :goto_5ed
    :try_start_5ed
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_AVE_DEVLOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x66

    aput v2, v0, v1
    :try_end_5f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5ed .. :try_end_5f9} :catch_5fa

    goto :goto_5fb

    :catch_5fa
    move-exception v0

    :goto_5fb
    :try_start_5fb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_AVE_DEV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x67

    aput v2, v0, v1
    :try_end_607
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5fb .. :try_end_607} :catch_608

    goto :goto_609

    :catch_608
    move-exception v0

    :goto_609
    :try_start_609
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSAVE_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x68

    aput v2, v0, v1
    :try_end_615
    .catch Ljava/lang/NoSuchFieldError; {:try_start_609 .. :try_end_615} :catch_616

    goto :goto_617

    :catch_616
    move-exception v0

    :goto_617
    :try_start_617
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eLOAD_SCENARIO_AOC:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x69

    aput v2, v0, v1
    :try_end_623
    .catch Ljava/lang/NoSuchFieldError; {:try_start_617 .. :try_end_623} :catch_624

    goto :goto_625

    :catch_624
    move-exception v0

    :goto_625
    :try_start_625
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_NEW_GAME:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x6a

    aput v2, v0, v1
    :try_end_631
    .catch Ljava/lang/NoSuchFieldError; {:try_start_625 .. :try_end_631} :catch_632

    goto :goto_633

    :catch_632
    move-exception v0

    :goto_633
    :try_start_633
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_RANDOM_GAME:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x6b

    aput v2, v0, v1
    :try_end_63f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_633 .. :try_end_63f} :catch_640

    goto :goto_641

    :catch_640
    move-exception v0

    :goto_641
    :try_start_641
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_AC:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x6c

    aput v2, v0, v1
    :try_end_64d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_641 .. :try_end_64d} :catch_64e

    goto :goto_64f

    :catch_64e
    move-exception v0

    :goto_64f
    :try_start_64f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eNEWGAME_PLAYERS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x6d

    aput v2, v0, v1
    :try_end_65b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64f .. :try_end_65b} :catch_65c

    goto :goto_65d

    :catch_65c
    move-exception v0

    :goto_65d
    :try_start_65d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x6e

    aput v2, v0, v1
    :try_end_669
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65d .. :try_end_669} :catch_66a

    goto :goto_66b

    :catch_66a
    move-exception v0

    :goto_66b
    :try_start_66b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_FORMABLE_CIV_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x6f

    aput v2, v0, v1
    :try_end_677
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66b .. :try_end_677} :catch_678

    goto :goto_679

    :catch_678
    move-exception v0

    :goto_679
    :try_start_679
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_PEACE_TREATY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x70

    aput v2, v0, v1
    :try_end_685
    .catch Ljava/lang/NoSuchFieldError; {:try_start_679 .. :try_end_685} :catch_686

    goto :goto_687

    :catch_686
    move-exception v0

    :goto_687
    :try_start_687
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_PEACE_TREATY_RESPONSE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x71

    aput v2, v0, v1
    :try_end_693
    .catch Ljava/lang/NoSuchFieldError; {:try_start_687 .. :try_end_693} :catch_694

    goto :goto_695

    :catch_694
    move-exception v0

    :goto_695
    :try_start_695
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_DECLAREWAR:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x72

    aput v2, v0, v1
    :try_end_6a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_695 .. :try_end_6a1} :catch_6a2

    goto :goto_6a3

    :catch_6a2
    move-exception v0

    :goto_6a3
    :try_start_6a3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_WHITEPEACE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x73

    aput v2, v0, v1
    :try_end_6af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a3 .. :try_end_6af} :catch_6b0

    goto :goto_6b1

    :catch_6b0
    move-exception v0

    :goto_6b1
    :try_start_6b1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_CHANGEIDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x74

    aput v2, v0, v1
    :try_end_6bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b1 .. :try_end_6bd} :catch_6be

    goto :goto_6bf

    :catch_6be
    move-exception v0

    :goto_6bf
    :try_start_6bf
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_CHANGERELIGION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x75

    aput v2, v0, v1
    :try_end_6cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6bf .. :try_end_6cb} :catch_6cc

    goto :goto_6cd

    :catch_6cc
    move-exception v0

    :goto_6cd
    :try_start_6cd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_INCRELATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x76

    aput v2, v0, v1
    :try_end_6d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6cd .. :try_end_6d9} :catch_6da

    goto :goto_6db

    :catch_6da
    move-exception v0

    :goto_6db
    :try_start_6db
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_DECRELATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x77

    aput v2, v0, v1
    :try_end_6e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6db .. :try_end_6e7} :catch_6e8

    goto :goto_6e9

    :catch_6e8
    move-exception v0

    :goto_6e9
    :try_start_6e9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_SELECTIDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x78

    aput v2, v0, v1
    :try_end_6f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e9 .. :try_end_6f5} :catch_6f6

    goto :goto_6f7

    :catch_6f6
    move-exception v0

    :goto_6f7
    :try_start_6f7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_SELECTRELIGION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x79

    aput v2, v0, v1
    :try_end_703
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f7 .. :try_end_703} :catch_704

    goto :goto_705

    :catch_704
    move-exception v0

    :goto_705
    :try_start_705
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_ADDARMY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x7a

    aput v2, v0, v1
    :try_end_711
    .catch Ljava/lang/NoSuchFieldError; {:try_start_705 .. :try_end_711} :catch_712

    goto :goto_713

    :catch_712
    move-exception v0

    :goto_713
    :try_start_713
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_UPDATEPOPULATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x7b

    aput v2, v0, v1
    :try_end_71f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_713 .. :try_end_71f} :catch_720

    goto :goto_721

    :catch_720
    move-exception v0

    :goto_721
    :try_start_721
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_UPDATEPOPULATION_OFCIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x7c

    aput v2, v0, v1
    :try_end_72d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_721 .. :try_end_72d} :catch_72e

    goto :goto_72f

    :catch_72e
    move-exception v0

    :goto_72f
    :try_start_72f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_UPDATEECONOMY_OFCIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x7d

    aput v2, v0, v1
    :try_end_73b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72f .. :try_end_73b} :catch_73c

    goto :goto_73d

    :catch_73c
    move-exception v0

    :goto_73d
    :try_start_73d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_TECHLEVEL:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x7e

    aput v2, v0, v1
    :try_end_749
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73d .. :try_end_749} :catch_74a

    goto :goto_74b

    :catch_74a
    move-exception v0

    :goto_74b
    :try_start_74b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_DEVELOPEMNT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x7f

    aput v2, v0, v1
    :try_end_757
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74b .. :try_end_757} :catch_758

    goto :goto_759

    :catch_758
    move-exception v0

    :goto_759
    :try_start_759
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_UPDATEECONOMY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x80

    aput v2, v0, v1
    :try_end_765
    .catch Ljava/lang/NoSuchFieldError; {:try_start_759 .. :try_end_765} :catch_766

    goto :goto_767

    :catch_766
    move-exception v0

    :goto_767
    :try_start_767
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_UPDATEECONOMYPERC:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x81

    aput v2, v0, v1
    :try_end_773
    .catch Ljava/lang/NoSuchFieldError; {:try_start_767 .. :try_end_773} :catch_774

    goto :goto_775

    :catch_774
    move-exception v0

    :goto_775
    :try_start_775
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x82

    aput v2, v0, v1
    :try_end_781
    .catch Ljava/lang/NoSuchFieldError; {:try_start_775 .. :try_end_781} :catch_782

    goto :goto_783

    :catch_782
    move-exception v0

    :goto_783
    :try_start_783
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_HAPPINESS_OF_CIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x83

    aput v2, v0, v1
    :try_end_78f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_783 .. :try_end_78f} :catch_790

    goto :goto_791

    :catch_790
    move-exception v0

    :goto_791
    :try_start_791
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_UPDATEPOPULATION_PERC:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x84

    aput v2, v0, v1
    :try_end_79d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_791 .. :try_end_79d} :catch_79e

    goto :goto_79f

    :catch_79e
    move-exception v0

    :goto_79f
    :try_start_79f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_GLOBAL_POPULATION_PERC:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x85

    aput v2, v0, v1
    :try_end_7ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79f .. :try_end_7ab} :catch_7ac

    goto :goto_7ad

    :catch_7ac
    move-exception v0

    :goto_7ad
    :try_start_7ad
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_GLOBAL_HAPPINESS_PERC:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x86

    aput v2, v0, v1
    :try_end_7b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7ad .. :try_end_7b9} :catch_7ba

    goto :goto_7bb

    :catch_7ba
    move-exception v0

    :goto_7bb
    :try_start_7bb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_GLOBAL_ARMY_PERC:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x87

    aput v2, v0, v1
    :try_end_7c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7bb .. :try_end_7c7} :catch_7c8

    goto :goto_7c9

    :catch_7c8
    move-exception v0

    :goto_7c9
    :try_start_7c9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_GLOBAL_DEV_PERC:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x88

    aput v2, v0, v1
    :try_end_7d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c9 .. :try_end_7d5} :catch_7d6

    goto :goto_7d7

    :catch_7d6
    move-exception v0

    :goto_7d7
    :try_start_7d7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_GLOBAL_ECONOMY_PERC:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x89

    aput v2, v0, v1
    :try_end_7e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d7 .. :try_end_7e3} :catch_7e4

    goto :goto_7e5

    :catch_7e4
    move-exception v0

    :goto_7e5
    :try_start_7e5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_RAND_FARMS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x8a

    aput v2, v0, v1
    :try_end_7f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e5 .. :try_end_7f1} :catch_7f2

    goto :goto_7f3

    :catch_7f2
    move-exception v0

    :goto_7f3
    :try_start_7f3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_RENAME_CIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x8b

    aput v2, v0, v1
    :try_end_7ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f3 .. :try_end_7ff} :catch_800

    goto :goto_801

    :catch_800
    move-exception v0

    :goto_801
    :try_start_801
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_RENAME_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x8c

    aput v2, v0, v1
    :try_end_80d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_801 .. :try_end_80d} :catch_80e

    goto :goto_80f

    :catch_80e
    move-exception v0

    :goto_80f
    :try_start_80f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_REMOVE_ARMY_X:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x8d

    aput v2, v0, v1
    :try_end_81b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80f .. :try_end_81b} :catch_81c

    goto :goto_81d

    :catch_81c
    move-exception v0

    :goto_81d
    :try_start_81d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_RAND_FESTIVALS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x8e

    aput v2, v0, v1
    :try_end_829
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81d .. :try_end_829} :catch_82a

    goto :goto_82b

    :catch_82a
    move-exception v0

    :goto_82b
    :try_start_82b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_RAND_SUPPLY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x8f

    aput v2, v0, v1
    :try_end_837
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82b .. :try_end_837} :catch_838

    goto :goto_839

    :catch_838
    move-exception v0

    :goto_839
    :try_start_839
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eTIMELINE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x90

    aput v2, v0, v1
    :try_end_845
    .catch Ljava/lang/NoSuchFieldError; {:try_start_839 .. :try_end_845} :catch_846

    goto :goto_847

    :catch_846
    move-exception v0

    :goto_847
    :try_start_847
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_CREATE_VASSAL:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x91

    aput v2, v0, v1
    :try_end_853
    .catch Ljava/lang/NoSuchFieldError; {:try_start_847 .. :try_end_853} :catch_854

    goto :goto_855

    :catch_854
    move-exception v0

    :goto_855
    :try_start_855
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_CREATE_VASSAL_SELECT_CIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x92

    aput v2, v0, v1
    :try_end_861
    .catch Ljava/lang/NoSuchFieldError; {:try_start_855 .. :try_end_861} :catch_862

    goto :goto_863

    :catch_862
    move-exception v0

    :goto_863
    :try_start_863
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eNEW_GAME_ADD_CIV_SELECT_CIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x93

    aput v2, v0, v1
    :try_end_86f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_863 .. :try_end_86f} :catch_870

    goto :goto_871

    :catch_870
    move-exception v0

    :goto_871
    :try_start_871
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_FORM_ANIMATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x94

    aput v2, v0, v1
    :try_end_87d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_871 .. :try_end_87d} :catch_87e

    goto :goto_87f

    :catch_87e
    move-exception v0

    :goto_87f
    :try_start_87f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSELECT_CIVILIZATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x95

    aput v2, v0, v1
    :try_end_88b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87f .. :try_end_88b} :catch_88c

    goto :goto_88d

    :catch_88c
    move-exception v0

    :goto_88d
    :try_start_88d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_SELECT_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x96

    aput v2, v0, v1
    :try_end_899
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88d .. :try_end_899} :catch_89a

    goto :goto_89b

    :catch_89a
    move-exception v0

    :goto_89b
    :try_start_89b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_SHOW_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x97

    aput v2, v0, v1
    :try_end_8a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89b .. :try_end_8a7} :catch_8a8

    goto :goto_8a9

    :catch_8a8
    move-exception v0

    :goto_8a9
    :try_start_8a9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_TRADE_SELECT_CIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x98

    aput v2, v0, v1
    :try_end_8b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a9 .. :try_end_8b5} :catch_8b6

    goto :goto_8b7

    :catch_8b6
    move-exception v0

    :goto_8b7
    :try_start_8b7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSELECT_CIVILIZATION_CLASSIC:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x99

    aput v2, v0, v1
    :try_end_8c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b7 .. :try_end_8c3} :catch_8c4

    goto :goto_8c5

    :catch_8c4
    move-exception v0

    :goto_8c5
    :try_start_8c5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFUNITS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x9a

    aput v2, v0, v1
    :try_end_8d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c5 .. :try_end_8d1} :catch_8d2

    goto :goto_8d3

    :catch_8d2
    move-exception v0

    :goto_8d3
    :try_start_8d3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFUNITS_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x9b

    aput v2, v0, v1
    :try_end_8df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d3 .. :try_end_8df} :catch_8e0

    goto :goto_8e1

    :catch_8e0
    move-exception v0

    :goto_8e1
    :try_start_8e1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFWARS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x9c

    aput v2, v0, v1
    :try_end_8ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e1 .. :try_end_8ed} :catch_8ee

    goto :goto_8ef

    :catch_8ee
    move-exception v0

    :goto_8ef
    :try_start_8ef
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME_ACS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x9d

    aput v2, v0, v1
    :try_end_8fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8ef .. :try_end_8fb} :catch_8fc

    goto :goto_8fd

    :catch_8fc
    move-exception v0

    :goto_8fd
    :try_start_8fd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFWARS_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x9e

    aput v2, v0, v1
    :try_end_909
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8fd .. :try_end_909} :catch_90a

    goto :goto_90b

    :catch_90a
    move-exception v0

    :goto_90b
    :try_start_90b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFNEIGHBORS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x9f

    aput v2, v0, v1
    :try_end_917
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90b .. :try_end_917} :catch_918

    goto :goto_919

    :catch_918
    move-exception v0

    :goto_919
    :try_start_919
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFNEIGHBORS_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xa0

    aput v2, v0, v1
    :try_end_925
    .catch Ljava/lang/NoSuchFieldError; {:try_start_919 .. :try_end_925} :catch_926

    goto :goto_927

    :catch_926
    move-exception v0

    :goto_927
    :try_start_927
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_POPULATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xa1

    aput v2, v0, v1
    :try_end_933
    .catch Ljava/lang/NoSuchFieldError; {:try_start_927 .. :try_end_933} :catch_934

    goto :goto_935

    :catch_934
    move-exception v0

    :goto_935
    :try_start_935
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_POPULATION_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xa2

    aput v2, v0, v1
    :try_end_941
    .catch Ljava/lang/NoSuchFieldError; {:try_start_935 .. :try_end_941} :catch_942

    goto :goto_943

    :catch_942
    move-exception v0

    :goto_943
    :try_start_943
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ECONOMY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xa3

    aput v2, v0, v1
    :try_end_94f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_943 .. :try_end_94f} :catch_950

    goto :goto_951

    :catch_950
    move-exception v0

    :goto_951
    :try_start_951
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ECONOMY_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xa4

    aput v2, v0, v1
    :try_end_95d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_951 .. :try_end_95d} :catch_95e

    goto :goto_95f

    :catch_95e
    move-exception v0

    :goto_95f
    :try_start_95f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ISATWAR:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xa5

    aput v2, v0, v1
    :try_end_96b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95f .. :try_end_96b} :catch_96c

    goto :goto_96d

    :catch_96c
    move-exception v0

    :goto_96d
    :try_start_96d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ALLIES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xa6

    aput v2, v0, v1
    :try_end_979
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96d .. :try_end_979} :catch_97a

    goto :goto_97b

    :catch_97a
    move-exception v0

    :goto_97b
    :try_start_97b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ATWAR:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xa7

    aput v2, v0, v1
    :try_end_987
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97b .. :try_end_987} :catch_988

    goto :goto_989

    :catch_988
    move-exception v0

    :goto_989
    :try_start_989
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_INDEPENDENCE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xa8

    aput v2, v0, v1
    :try_end_995
    .catch Ljava/lang/NoSuchFieldError; {:try_start_989 .. :try_end_995} :catch_996

    goto :goto_997

    :catch_996
    move-exception v0

    :goto_997
    :try_start_997
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_DEFENSIVE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xa9

    aput v2, v0, v1
    :try_end_9a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_997 .. :try_end_9a3} :catch_9a4

    goto :goto_9a5

    :catch_9a4
    move-exception v0

    :goto_9a5
    :try_start_9a5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_MILITARYACCESS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xaa

    aput v2, v0, v1
    :try_end_9b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a5 .. :try_end_9b1} :catch_9b2

    goto :goto_9b3

    :catch_9b2
    move-exception v0

    :goto_9b3
    :try_start_9b3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NONAGGRESSION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xab

    aput v2, v0, v1
    :try_end_9bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b3 .. :try_end_9bf} :catch_9c0

    goto :goto_9c1

    :catch_9c0
    move-exception v0

    :goto_9c1
    :try_start_9c1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_LEADERS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xac

    aput v2, v0, v1
    :try_end_9cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c1 .. :try_end_9cd} :catch_9ce

    goto :goto_9cf

    :catch_9ce
    move-exception v0

    :goto_9cf
    :try_start_9cf
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_FORMABLE_CIVS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xad

    aput v2, v0, v1
    :try_end_9db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9cf .. :try_end_9db} :catch_9dc

    goto :goto_9dd

    :catch_9dc
    move-exception v0

    :goto_9dd
    :try_start_9dd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_PROVINCE_NAMES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xae

    aput v2, v0, v1
    :try_end_9e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9dd .. :try_end_9e9} :catch_9ea

    goto :goto_9eb

    :catch_9ea
    move-exception v0

    :goto_9eb
    :try_start_9eb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ISVASSAL:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xaf

    aput v2, v0, v1
    :try_end_9f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9eb .. :try_end_9f7} :catch_9f8

    goto :goto_9f9

    :catch_9f8
    move-exception v0

    :goto_9f9
    :try_start_9f9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ISVASSAL_OFCIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xb0

    aput v2, v0, v1
    :try_end_a05
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f9 .. :try_end_a05} :catch_a06

    goto :goto_a07

    :catch_a06
    move-exception v0

    :goto_a07
    :try_start_a07
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_RELATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xb1

    aput v2, v0, v1
    :try_end_a13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a07 .. :try_end_a13} :catch_a14

    goto :goto_a15

    :catch_a14
    move-exception v0

    :goto_a15
    :try_start_a15
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_RELATION_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xb2

    aput v2, v0, v1
    :try_end_a21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a15 .. :try_end_a21} :catch_a22

    goto :goto_a23

    :catch_a22
    move-exception v0

    :goto_a23
    :try_start_a23
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFALLIES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xb3

    aput v2, v0, v1
    :try_end_a2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a23 .. :try_end_a2f} :catch_a30

    goto :goto_a31

    :catch_a30
    move-exception v0

    :goto_a31
    :try_start_a31
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFALLIES_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xb4

    aput v2, v0, v1
    :try_end_a3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a31 .. :try_end_a3d} :catch_a3e

    goto :goto_a3f

    :catch_a3e
    move-exception v0

    :goto_a3f
    :try_start_a3f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFVASSALS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xb5

    aput v2, v0, v1
    :try_end_a4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3f .. :try_end_a4b} :catch_a4c

    goto :goto_a4d

    :catch_a4c
    move-exception v0

    :goto_a4d
    :try_start_a4d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFVASSALS_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xb6

    aput v2, v0, v1
    :try_end_a59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4d .. :try_end_a59} :catch_a5a

    goto :goto_a5b

    :catch_a5a
    move-exception v0

    :goto_a5b
    :try_start_a5b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_EVENTCHANCE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xb7

    aput v2, v0, v1
    :try_end_a67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5b .. :try_end_a67} :catch_a68

    goto :goto_a69

    :catch_a68
    move-exception v0

    :goto_a69
    :try_start_a69
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_DECISIONTAKEN:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xb8

    aput v2, v0, v1
    :try_end_a75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a69 .. :try_end_a75} :catch_a76

    goto :goto_a77

    :catch_a76
    move-exception v0

    :goto_a77
    :try_start_a77
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_CHANGE_OWNER:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xb9

    aput v2, v0, v1
    :try_end_a83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a77 .. :try_end_a83} :catch_a84

    goto :goto_a85

    :catch_a84
    move-exception v0

    :goto_a85
    :try_start_a85
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_OCCUPY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xba

    aput v2, v0, v1
    :try_end_a91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a85 .. :try_end_a91} :catch_a92

    goto :goto_a93

    :catch_a92
    move-exception v0

    :goto_a93
    :try_start_a93
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_IMPOSE_SANCTIONS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xbb

    aput v2, v0, v1
    :try_end_a9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a93 .. :try_end_a9f} :catch_aa0

    goto :goto_aa1

    :catch_aa0
    move-exception v0

    :goto_aa1
    :try_start_aa1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_BUILDBUILDING:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xbc

    aput v2, v0, v1
    :try_end_aad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa1 .. :try_end_aad} :catch_aae

    goto :goto_aaf

    :catch_aae
    move-exception v0

    :goto_aaf
    :try_start_aaf
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_BUILDBUILDINGLIST:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xbd

    aput v2, v0, v1
    :try_end_abb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aaf .. :try_end_abb} :catch_abc

    goto :goto_abd

    :catch_abc
    move-exception v0

    :goto_abd
    :try_start_abd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_BUILDBUILDINGLISTDESTROY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xbe

    aput v2, v0, v1
    :try_end_ac9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_abd .. :try_end_ac9} :catch_aca

    goto :goto_acb

    :catch_aca
    move-exception v0

    :goto_acb
    :try_start_acb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_BUILDBUILDINGDESTROY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xbf

    aput v2, v0, v1
    :try_end_ad7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_acb .. :try_end_ad7} :catch_ad8

    goto :goto_ad9

    :catch_ad8
    move-exception v0

    :goto_ad9
    :try_start_ad9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_SELECTDECISION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xc0

    aput v2, v0, v1
    :try_end_ae5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad9 .. :try_end_ae5} :catch_ae6

    goto :goto_ae7

    :catch_ae6
    move-exception v0

    :goto_ae7
    :try_start_ae7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_ADDCORE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xc1

    aput v2, v0, v1
    :try_end_af3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae7 .. :try_end_af3} :catch_af4

    goto :goto_af5

    :catch_af4
    move-exception v0

    :goto_af5
    :try_start_af5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_REMOVECORE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xc2

    aput v2, v0, v1
    :try_end_b01
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af5 .. :try_end_b01} :catch_b02

    goto :goto_b03

    :catch_b02
    move-exception v0

    :goto_b03
    :try_start_b03
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCHOOSE_SCENARIO:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xc3

    aput v2, v0, v1
    :try_end_b0f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b03 .. :try_end_b0f} :catch_b10

    goto :goto_b11

    :catch_b10
    move-exception v0

    :goto_b11
    :try_start_b11
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_INVESTSLOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xc4

    aput v2, v0, v1
    :try_end_b1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b11 .. :try_end_b1d} :catch_b1e

    goto :goto_b1f

    :catch_b1e
    move-exception v0

    :goto_b1f
    :try_start_b1f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUKES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xc5

    aput v2, v0, v1
    :try_end_b2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1f .. :try_end_b2b} :catch_b2c

    goto :goto_b2d

    :catch_b2c
    move-exception v0

    :goto_b2d
    :try_start_b2d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUKES_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xc6

    aput v2, v0, v1
    :try_end_b39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2d .. :try_end_b39} :catch_b3a

    goto :goto_b3b

    :catch_b3a
    move-exception v0

    :goto_b3b
    :try_start_b3b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_TREASURY_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xc7

    aput v2, v0, v1
    :try_end_b47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3b .. :try_end_b47} :catch_b48

    goto :goto_b49

    :catch_b48
    move-exception v0

    :goto_b49
    :try_start_b49
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_DEVELOPMENT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xc8

    aput v2, v0, v1
    :try_end_b55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b49 .. :try_end_b55} :catch_b56

    goto :goto_b57

    :catch_b56
    move-exception v0

    :goto_b57
    :try_start_b57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_DEVELOPMENT_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xc9

    aput v2, v0, v1
    :try_end_b63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b57 .. :try_end_b63} :catch_b64

    goto :goto_b65

    :catch_b64
    move-exception v0

    :goto_b65
    :try_start_b65
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_CONTROLS_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xca

    aput v2, v0, v1
    :try_end_b71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b65 .. :try_end_b71} :catch_b72

    goto :goto_b73

    :catch_b72
    move-exception v0

    :goto_b73
    :try_start_b73
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_OCCUPIED_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xcb

    aput v2, v0, v1
    :try_end_b7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b73 .. :try_end_b7f} :catch_b80

    goto :goto_b81

    :catch_b80
    move-exception v0

    :goto_b81
    :try_start_b81
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_HAVEARMY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xcc

    aput v2, v0, v1
    :try_end_b8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b81 .. :try_end_b8d} :catch_b8e

    goto :goto_b8f

    :catch_b8e
    move-exception v0

    :goto_b8f
    :try_start_b8f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_HAVECORE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xcd

    aput v2, v0, v1
    :try_end_b9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8f .. :try_end_b9b} :catch_b9c

    goto :goto_b9d

    :catch_b9c
    move-exception v0

    :goto_b9d
    :try_start_b9d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ISCAPITAL:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xce

    aput v2, v0, v1
    :try_end_ba9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9d .. :try_end_ba9} :catch_baa

    goto :goto_bab

    :catch_baa
    move-exception v0

    :goto_bab
    :try_start_bab
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFPROVINCES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xcf

    aput v2, v0, v1
    :try_end_bb7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bab .. :try_end_bb7} :catch_bb8

    goto :goto_bb9

    :catch_bb8
    move-exception v0

    :goto_bb9
    :try_start_bb9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFPROVINCES_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xd0

    aput v2, v0, v1
    :try_end_bc5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb9 .. :try_end_bc5} :catch_bc6

    goto :goto_bc7

    :catch_bc6
    move-exception v0

    :goto_bc7
    :try_start_bc7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_RAND_ARMOURY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xd1

    aput v2, v0, v1
    :try_end_bd3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc7 .. :try_end_bd3} :catch_bd4

    goto :goto_bd5

    :catch_bd4
    move-exception v0

    :goto_bd5
    :try_start_bd5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_CIVILIZATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xd2

    aput v2, v0, v1
    :try_end_be1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd5 .. :try_end_be1} :catch_be2

    goto :goto_be3

    :catch_be2
    move-exception v0

    :goto_be3
    :try_start_be3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR_GAME_CIVS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xd3

    aput v2, v0, v1
    :try_end_bef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be3 .. :try_end_bef} :catch_bf0

    goto :goto_bf1

    :catch_bf0
    move-exception v0

    :goto_bf1
    :try_start_bf1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR_GAME_CIVS_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xd4

    aput v2, v0, v1
    :try_end_bfd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf1 .. :try_end_bfd} :catch_bfe

    goto :goto_bff

    :catch_bfe
    move-exception v0

    :goto_bff
    :try_start_bff
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSCENARIO_AGE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xd5

    aput v2, v0, v1
    :try_end_c0b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bff .. :try_end_c0b} :catch_c0c

    goto :goto_c0d

    :catch_c0c
    move-exception v0

    :goto_c0d
    :try_start_c0d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_DATE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xd6

    aput v2, v0, v1
    :try_end_c19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0d .. :try_end_c19} :catch_c1a

    goto :goto_c1b

    :catch_c1a
    move-exception v0

    :goto_c1b
    :try_start_c1b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eLOAD_MAP:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xd7

    aput v2, v0, v1
    :try_end_c27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1b .. :try_end_c27} :catch_c28

    goto :goto_c29

    :catch_c28
    move-exception v0

    :goto_c29
    :try_start_c29
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eLOAD_SAVE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xd8

    aput v2, v0, v1
    :try_end_c35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c29 .. :try_end_c35} :catch_c36

    goto :goto_c37

    :catch_c36
    move-exception v0

    :goto_c37
    :try_start_c37
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMANAGE_DIPLOMACY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xd9

    aput v2, v0, v1
    :try_end_c43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c37 .. :try_end_c43} :catch_c44

    goto :goto_c45

    :catch_c44
    move-exception v0

    :goto_c45
    :try_start_c45
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCUSTOMIZE_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xda

    aput v2, v0, v1
    :try_end_c51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c45 .. :try_end_c51} :catch_c52

    goto :goto_c53

    :catch_c52
    move-exception v0

    :goto_c53
    :try_start_c53
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCUSTOMIZE_ALLIANCE_ADD_CIVILIZATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xdb

    aput v2, v0, v1
    :try_end_c5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c53 .. :try_end_c5f} :catch_c60

    goto :goto_c61

    :catch_c60
    move-exception v0

    :goto_c61
    :try_start_c61
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_CORES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xdc

    aput v2, v0, v1
    :try_end_c6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c61 .. :try_end_c6d} :catch_c6e

    goto :goto_c6f

    :catch_c6e
    move-exception v0

    :goto_c6f
    :try_start_c6f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_DECISION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xdd

    aput v2, v0, v1
    :try_end_c7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6f .. :try_end_c7b} :catch_c7c

    goto :goto_c7d

    :catch_c7c
    move-exception v0

    :goto_c7d
    :try_start_c7d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_PALLET_OF_COLORS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xde

    aput v2, v0, v1
    :try_end_c89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7d .. :try_end_c89} :catch_c8a

    goto :goto_c8b

    :catch_c8a
    move-exception v0

    :goto_c8b
    :try_start_c8b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR_CITIES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xdf

    aput v2, v0, v1
    :try_end_c97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8b .. :try_end_c97} :catch_c98

    goto :goto_c99

    :catch_c98
    move-exception v0

    :goto_c99
    :try_start_c99
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR_TRANSLATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xe0

    aput v2, v0, v1
    :try_end_ca5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c99 .. :try_end_ca5} :catch_ca6

    goto :goto_ca7

    :catch_ca6
    move-exception v0

    :goto_ca7
    :try_start_ca7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_TRANSLATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xe1

    aput v2, v0, v1
    :try_end_cb3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ca7 .. :try_end_cb3} :catch_cb4

    goto :goto_cb5

    :catch_cb4
    move-exception v0

    :goto_cb5
    :try_start_cb5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eDOWNLOAD_PALLETS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xe2

    aput v2, v0, v1
    :try_end_cc1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb5 .. :try_end_cc1} :catch_cc2

    goto :goto_cc3

    :catch_cc2
    move-exception v0

    :goto_cc3
    :try_start_cc3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xe3

    aput v2, v0, v1
    :try_end_ccf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc3 .. :try_end_ccf} :catch_cd0

    goto :goto_cd1

    :catch_cd0
    move-exception v0

    :goto_cd1
    :try_start_cd1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xe4

    aput v2, v0, v1
    :try_end_cdd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cd1 .. :try_end_cdd} :catch_cde

    goto :goto_cdf

    :catch_cde
    move-exception v0

    :goto_cdf
    :try_start_cdf
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_CONNECTIONS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xe5

    aput v2, v0, v1
    :try_end_ceb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cdf .. :try_end_ceb} :catch_cec

    goto :goto_ced

    :catch_cec
    move-exception v0

    :goto_ced
    :try_start_ced
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_UPDATE_PROVINCE_DATA:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xe6

    aput v2, v0, v1
    :try_end_cf9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ced .. :try_end_cf9} :catch_cfa

    goto :goto_cfb

    :catch_cfa
    move-exception v0

    :goto_cfb
    :try_start_cfb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_PROVINCE_BACKGROUND:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xe7

    aput v2, v0, v1
    :try_end_d07
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cfb .. :try_end_d07} :catch_d08

    goto :goto_d09

    :catch_d08
    move-exception v0

    :goto_d09
    :try_start_d09
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_LEADERS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xe8

    aput v2, v0, v1
    :try_end_d15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d09 .. :try_end_d15} :catch_d16

    goto :goto_d17

    :catch_d16
    move-exception v0

    :goto_d17
    :try_start_d17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_RAND_LIBRARY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xe9

    aput v2, v0, v1
    :try_end_d23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d17 .. :try_end_d23} :catch_d24

    goto :goto_d25

    :catch_d24
    move-exception v0

    :goto_d25
    :try_start_d25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_RAND_MARKETS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xea

    aput v2, v0, v1
    :try_end_d31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d25 .. :try_end_d31} :catch_d32

    goto :goto_d33

    :catch_d32
    move-exception v0

    :goto_d33
    :try_start_d33
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_RAND_WORKSHOP:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xeb

    aput v2, v0, v1
    :try_end_d3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d33 .. :try_end_d3f} :catch_d40

    goto :goto_d41

    :catch_d40
    move-exception v0

    :goto_d41
    :try_start_d41
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_RAND_TOWERS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xec

    aput v2, v0, v1
    :try_end_d4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d41 .. :try_end_d4d} :catch_d4e

    goto :goto_d4f

    :catch_d4e
    move-exception v0

    :goto_d4f
    :try_start_d4f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_RAND_FORTS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xed

    aput v2, v0, v1
    :try_end_d5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4f .. :try_end_d5b} :catch_d5c

    goto :goto_d5d

    :catch_d5c
    move-exception v0

    :goto_d5d
    :try_start_d5d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_PLAYERCIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xee

    aput v2, v0, v1
    :try_end_d69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5d .. :try_end_d69} :catch_d6a

    goto :goto_d6b

    :catch_d6a
    move-exception v0

    :goto_d6b
    :try_start_d6b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_MONEY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xef

    aput v2, v0, v1
    :try_end_d77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6b .. :try_end_d77} :catch_d78

    goto :goto_d79

    :catch_d78
    move-exception v0

    :goto_d79
    :try_start_d79
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_EXP:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xf0

    aput v2, v0, v1
    :try_end_d85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d79 .. :try_end_d85} :catch_d86

    goto :goto_d87

    :catch_d86
    move-exception v0

    :goto_d87
    :try_start_d87
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_GOLDEN_PROSP:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xf1

    aput v2, v0, v1
    :try_end_d93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d87 .. :try_end_d93} :catch_d94

    goto :goto_d95

    :catch_d94
    move-exception v0

    :goto_d95
    :try_start_d95
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_GOLDEN_MILIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xf2

    aput v2, v0, v1
    :try_end_da1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d95 .. :try_end_da1} :catch_da2

    goto :goto_da3

    :catch_da2
    move-exception v0

    :goto_da3
    :try_start_da3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_GOLDEN_SCIE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xf3

    aput v2, v0, v1
    :try_end_daf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da3 .. :try_end_daf} :catch_db0

    goto :goto_db1

    :catch_db0
    move-exception v0

    :goto_db1
    :try_start_db1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_FESTIVAL_ALL:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xf4

    aput v2, v0, v1
    :try_end_dbd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db1 .. :try_end_dbd} :catch_dbe

    goto :goto_dbf

    :catch_dbe
    move-exception v0

    :goto_dbf
    :try_start_dbf
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_ASSIMILATE_ALL:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xf5

    aput v2, v0, v1
    :try_end_dcb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dbf .. :try_end_dcb} :catch_dcc

    goto :goto_dcd

    :catch_dcc
    move-exception v0

    :goto_dcd
    :try_start_dcd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_ADM_POLICY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xf6

    aput v2, v0, v1
    :try_end_dd9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dcd .. :try_end_dd9} :catch_dda

    goto :goto_ddb

    :catch_dda
    move-exception v0

    :goto_ddb
    :try_start_ddb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_ADM_POLICYLIST:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xf7

    aput v2, v0, v1
    :try_end_de7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ddb .. :try_end_de7} :catch_de8

    goto :goto_de9

    :catch_de8
    move-exception v0

    :goto_de9
    :try_start_de9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_PROVOKE_REBELS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xf8

    aput v2, v0, v1
    :try_end_df5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_de9 .. :try_end_df5} :catch_df6

    goto :goto_df7

    :catch_df6
    move-exception v0

    :goto_df7
    :try_start_df7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_MILITARYEXP:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xf9

    aput v2, v0, v1
    :try_end_e03
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df7 .. :try_end_e03} :catch_e04

    goto :goto_e05

    :catch_e04
    move-exception v0

    :goto_e05
    :try_start_e05
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_MILITARYDEFENSE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xfa

    aput v2, v0, v1
    :try_end_e11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e05 .. :try_end_e11} :catch_e12

    goto :goto_e13

    :catch_e12
    move-exception v0

    :goto_e13
    :try_start_e13
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_MILITARYATTACK:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xfb

    aput v2, v0, v1
    :try_end_e1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e13 .. :try_end_e1f} :catch_e20

    goto :goto_e21

    :catch_e20
    move-exception v0

    :goto_e21
    :try_start_e21
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_NUKES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xfc

    aput v2, v0, v1
    :try_end_e2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e21 .. :try_end_e2d} :catch_e2e

    goto :goto_e2f

    :catch_e2e
    move-exception v0

    :goto_e2f
    :try_start_e2f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_DROPNUKES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xfd

    aput v2, v0, v1
    :try_end_e3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2f .. :try_end_e3b} :catch_e3c

    goto :goto_e3d

    :catch_e3c
    move-exception v0

    :goto_e3d
    :try_start_e3d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_COALITION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xfe

    aput v2, v0, v1
    :try_end_e49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3d .. :try_end_e49} :catch_e4a

    goto :goto_e4b

    :catch_e4a
    move-exception v0

    :goto_e4b
    :try_start_e4b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_MOVEMENTPOINTS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0xff

    aput v2, v0, v1
    :try_end_e57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4b .. :try_end_e57} :catch_e58

    goto :goto_e59

    :catch_e58
    move-exception v0

    :goto_e59
    :try_start_e59
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_DIPLOMACYPOINTS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x100

    aput v2, v0, v1
    :try_end_e65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e59 .. :try_end_e65} :catch_e66

    goto :goto_e67

    :catch_e66
    move-exception v0

    :goto_e67
    :try_start_e67
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x101

    aput v2, v0, v1
    :try_end_e73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e67 .. :try_end_e73} :catch_e74

    goto :goto_e75

    :catch_e74
    move-exception v0

    :goto_e75
    :try_start_e75
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_FORM_CIV:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x102

    aput v2, v0, v1
    :try_end_e81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e75 .. :try_end_e81} :catch_e82

    goto :goto_e83

    :catch_e82
    move-exception v0

    :goto_e83
    :try_start_e83
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_TRIGGERANOTHEREVENT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x103

    aput v2, v0, v1
    :try_end_e8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e83 .. :try_end_e8f} :catch_e90

    goto :goto_e91

    :catch_e90
    move-exception v0

    :goto_e91
    :try_start_e91
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_SELECT_EVENT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x104

    aput v2, v0, v1
    :try_end_e9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e91 .. :try_end_e9d} :catch_e9e

    goto :goto_e9f

    :catch_e9e
    move-exception v0

    :goto_e9f
    :try_start_e9f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_SELECT_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x105

    aput v2, v0, v1
    :try_end_eab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9f .. :try_end_eab} :catch_eac

    goto :goto_ead

    :catch_eac
    move-exception v0

    :goto_ead
    :try_start_ead
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_CREATEVASSAL:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x106

    aput v2, v0, v1
    :try_end_eb9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ead .. :try_end_eb9} :catch_eba

    goto :goto_ebb

    :catch_eba
    move-exception v0

    :goto_ebb
    :try_start_ebb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_JOINALLIANCE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x107

    aput v2, v0, v1
    :try_end_ec7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ebb .. :try_end_ec7} :catch_ec8

    goto :goto_ec9

    :catch_ec8
    move-exception v0

    :goto_ec9
    :try_start_ec9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_LEAVEALLIANCE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x108

    aput v2, v0, v1
    :try_end_ed5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec9 .. :try_end_ed5} :catch_ed6

    goto :goto_ed7

    :catch_ed6
    move-exception v0

    :goto_ed7
    :try_start_ed7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_JOINUNION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x109

    aput v2, v0, v1
    :try_end_ee3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed7 .. :try_end_ee3} :catch_ee4

    goto :goto_ee5

    :catch_ee4
    move-exception v0

    :goto_ee5
    :try_start_ee5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_NONAGGRESSION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x10a

    aput v2, v0, v1
    :try_end_ef1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee5 .. :try_end_ef1} :catch_ef2

    goto :goto_ef3

    :catch_ef2
    move-exception v0

    :goto_ef3
    :try_start_ef3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_DEFENSIVE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x10b

    aput v2, v0, v1
    :try_end_eff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef3 .. :try_end_eff} :catch_f00

    goto :goto_f01

    :catch_f00
    move-exception v0

    :goto_f01
    :try_start_f01
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_INDEPENENCE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x10c

    aput v2, v0, v1
    :try_end_f0d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f01 .. :try_end_f0d} :catch_f0e

    goto :goto_f0f

    :catch_f0e
    move-exception v0

    :goto_f0f
    :try_start_f0f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_MOVECAPITAL:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x10d

    aput v2, v0, v1
    :try_end_f1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0f .. :try_end_f1b} :catch_f1c

    goto :goto_f1d

    :catch_f1c
    move-exception v0

    :goto_f1d
    :try_start_f1d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_LIBERATEVASSAL:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x10e

    aput v2, v0, v1
    :try_end_f29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f1d .. :try_end_f29} :catch_f2a

    goto :goto_f2b

    :catch_f2a
    move-exception v0

    :goto_f2b
    :try_start_f2b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_MILITARY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x10f

    aput v2, v0, v1
    :try_end_f37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2b .. :try_end_f37} :catch_f38

    goto :goto_f39

    :catch_f38
    move-exception v0

    :goto_f39
    :try_start_f39
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_ASSIGN:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x110

    aput v2, v0, v1
    :try_end_f45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f39 .. :try_end_f45} :catch_f46

    goto :goto_f47

    :catch_f46
    move-exception v0

    :goto_f47
    :try_start_f47
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_ASSIGN_SELECT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x111

    aput v2, v0, v1
    :try_end_f53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f47 .. :try_end_f53} :catch_f54

    goto :goto_f55

    :catch_f54
    move-exception v0

    :goto_f55
    :try_start_f55
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x112

    aput v2, v0, v1
    :try_end_f61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f55 .. :try_end_f61} :catch_f62

    goto :goto_f63

    :catch_f62
    move-exception v0

    :goto_f63
    :try_start_f63
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_AVAILABLE_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x113

    aput v2, v0, v1
    :try_end_f6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f63 .. :try_end_f6f} :catch_f70

    goto :goto_f71

    :catch_f70
    move-exception v0

    :goto_f71
    :try_start_f71
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_SETTINGS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x114

    aput v2, v0, v1
    :try_end_f7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f71 .. :try_end_f7d} :catch_f7e

    goto :goto_f7f

    :catch_f7e
    move-exception v0

    :goto_f7f
    :try_start_f7f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_SET_UP_ARMY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x115

    aput v2, v0, v1
    :try_end_f8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7f .. :try_end_f8b} :catch_f8c

    goto :goto_f8d

    :catch_f8c
    move-exception v0

    :goto_f8d
    :try_start_f8d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_TECHNOLOGY_LEVELS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x116

    aput v2, v0, v1
    :try_end_f99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8d .. :try_end_f99} :catch_f9a

    goto :goto_f9b

    :catch_f9a
    move-exception v0

    :goto_f9b
    :try_start_f9b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x117

    aput v2, v0, v1
    :try_end_fa7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9b .. :try_end_fa7} :catch_fa8

    goto :goto_fa9

    :catch_fa8
    move-exception v0

    :goto_fa9
    :try_start_fa9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_STARTING_MONEY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x118

    aput v2, v0, v1
    :try_end_fb5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fa9 .. :try_end_fb5} :catch_fb6

    goto :goto_fb7

    :catch_fb6
    move-exception v0

    :goto_fb7
    :try_start_fb7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x119

    aput v2, v0, v1
    :try_end_fc3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb7 .. :try_end_fc3} :catch_fc4

    goto :goto_fc5

    :catch_fc4
    move-exception v0

    :goto_fc5
    :try_start_fc5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_LEADERS_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x11a

    aput v2, v0, v1
    :try_end_fd1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc5 .. :try_end_fd1} :catch_fd2

    goto :goto_fd3

    :catch_fd2
    move-exception v0

    :goto_fd3
    :try_start_fd3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_FORMABLE_CIVS_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x11b

    aput v2, v0, v1
    :try_end_fdf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fd3 .. :try_end_fdf} :catch_fe0

    goto :goto_fe1

    :catch_fe0
    move-exception v0

    :goto_fe1
    :try_start_fe1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_HOLY_ROMAN_EMPIRE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x11c

    aput v2, v0, v1
    :try_end_fed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe1 .. :try_end_fed} :catch_fee

    goto :goto_fef

    :catch_fee
    move-exception v0

    :goto_fef
    :try_start_fef
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_FORMABLE_CIVS_SELECT_FORMABLE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x11d

    aput v2, v0, v1
    :try_end_ffb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fef .. :try_end_ffb} :catch_ffc

    goto :goto_ffd

    :catch_ffc
    move-exception v0

    :goto_ffd
    :try_start_ffd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_LEADERS_EDIT_SELECT_CIVS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x11e

    aput v2, v0, v1
    :try_end_1009
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ffd .. :try_end_1009} :catch_100a

    goto :goto_100b

    :catch_100a
    move-exception v0

    :goto_100b
    :try_start_100b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_FORMABLE_CIVS_SELECT_CLAIMANT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x11f

    aput v2, v0, v1
    :try_end_1017
    .catch Ljava/lang/NoSuchFieldError; {:try_start_100b .. :try_end_1017} :catch_1018

    goto :goto_1019

    :catch_1018
    move-exception v0

    :goto_1019
    :try_start_1019
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCC:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x120

    aput v2, v0, v1
    :try_end_1025
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1019 .. :try_end_1025} :catch_1026

    goto :goto_1027

    :catch_1026
    move-exception v0

    :goto_1027
    :try_start_1027
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_SEA_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x121

    aput v2, v0, v1
    :try_end_1033
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1027 .. :try_end_1033} :catch_1034

    goto :goto_1035

    :catch_1034
    move-exception v0

    :goto_1035
    :try_start_1035
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_TERRAIN:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x122

    aput v2, v0, v1
    :try_end_1041
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1035 .. :try_end_1041} :catch_1042

    goto :goto_1043

    :catch_1042
    move-exception v0

    :goto_1043
    :try_start_1043
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_CONTINENTS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x123

    aput v2, v0, v1
    :try_end_104f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1043 .. :try_end_104f} :catch_1050

    goto :goto_1051

    :catch_1050
    move-exception v0

    :goto_1051
    :try_start_1051
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_REGIONS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x124

    aput v2, v0, v1
    :try_end_105d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1051 .. :try_end_105d} :catch_105e

    goto :goto_105f

    :catch_105e
    move-exception v0

    :goto_105f
    :try_start_105f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_GROWTH_RATE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x125

    aput v2, v0, v1
    :try_end_106b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105f .. :try_end_106b} :catch_106c

    goto :goto_106d

    :catch_106c
    move-exception v0

    :goto_106d
    :try_start_106d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_TRADE_ZONES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x126

    aput v2, v0, v1
    :try_end_1079
    .catch Ljava/lang/NoSuchFieldError; {:try_start_106d .. :try_end_1079} :catch_107a

    goto :goto_107b

    :catch_107a
    move-exception v0

    :goto_107b
    :try_start_107b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_TRADE_ZONES_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x127

    aput v2, v0, v1
    :try_end_1087
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107b .. :try_end_1087} :catch_1088

    goto :goto_1089

    :catch_1088
    move-exception v0

    :goto_1089
    :try_start_1089
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_ARMY_POSITION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x128

    aput v2, v0, v1
    :try_end_1095
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1089 .. :try_end_1095} :catch_1096

    goto :goto_1097

    :catch_1096
    move-exception v0

    :goto_1097
    :try_start_1097
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_PORT_POSITION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x129

    aput v2, v0, v1
    :try_end_10a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1097 .. :try_end_10a3} :catch_10a4

    goto :goto_10a5

    :catch_10a4
    move-exception v0

    :goto_10a5
    :try_start_10a5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_ARMY_POSITION_CONVERT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x12a

    aput v2, v0, v1
    :try_end_10b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a5 .. :try_end_10b1} :catch_10b2

    goto :goto_10b3

    :catch_10b2
    move-exception v0

    :goto_10b3
    :try_start_10b3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_PORT_POSITION_CONVERT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x12b

    aput v2, v0, v1
    :try_end_10bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b3 .. :try_end_10bf} :catch_10c0

    goto :goto_10c1

    :catch_10c0
    move-exception v0

    :goto_10c1
    :try_start_10c1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_ARMY_SEA_BOXES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x12c

    aput v2, v0, v1
    :try_end_10cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10c1 .. :try_end_10cd} :catch_10ce

    goto :goto_10cf

    :catch_10ce
    move-exception v0

    :goto_10cf
    :try_start_10cf
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_ARMY_SEA_BOXES_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x12d

    aput v2, v0, v1
    :try_end_10db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10cf .. :try_end_10db} :catch_10dc

    goto :goto_10dd

    :catch_10dc
    move-exception v0

    :goto_10dd
    :try_start_10dd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_ARMY_SEA_BOXES_ADD:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x12e

    aput v2, v0, v1
    :try_end_10e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10dd .. :try_end_10e9} :catch_10ea

    goto :goto_10eb

    :catch_10ea
    move-exception v0

    :goto_10eb
    :try_start_10eb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_SERVICE_RIBBON:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x12f

    aput v2, v0, v1
    :try_end_10f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10eb .. :try_end_10f7} :catch_10f8

    goto :goto_10f9

    :catch_10f8
    move-exception v0

    :goto_10f9
    :try_start_10f9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_SERVICE_RIBBON_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x130

    aput v2, v0, v1
    :try_end_1105
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10f9 .. :try_end_1105} :catch_1106

    goto :goto_1107

    :catch_1106
    move-exception v0

    :goto_1107
    :try_start_1107
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_SERVICE_RIBBON_EDIT_OVERLAY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x131

    aput v2, v0, v1
    :try_end_1113
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1107 .. :try_end_1113} :catch_1114

    goto :goto_1115

    :catch_1114
    move-exception v0

    :goto_1115
    :try_start_1115
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eTERRAIN_TYPES_EDITOR:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x132

    aput v2, v0, v1
    :try_end_1121
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1115 .. :try_end_1121} :catch_1122

    goto :goto_1123

    :catch_1122
    move-exception v0

    :goto_1123
    :try_start_1123
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eTERRAIN_TYPE_ADD:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x133

    aput v2, v0, v1
    :try_end_112f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1123 .. :try_end_112f} :catch_1130

    goto :goto_1131

    :catch_1130
    move-exception v0

    :goto_1131
    :try_start_1131
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eACHIEVEMENTS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x134

    aput v2, v0, v1
    :try_end_113d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1131 .. :try_end_113d} :catch_113e

    goto :goto_113f

    :catch_113e
    move-exception v0

    :goto_113f
    :try_start_113f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_LINES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x135

    aput v2, v0, v1
    :try_end_114b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113f .. :try_end_114b} :catch_114c

    goto :goto_114d

    :catch_114c
    move-exception v0

    :goto_114d
    :try_start_114d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_LINES_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x136

    aput v2, v0, v1
    :try_end_1159
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114d .. :try_end_1159} :catch_115a

    goto :goto_115b

    :catch_115a
    move-exception v0

    :goto_115b
    :try_start_115b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGENERATE_FLAG:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x137

    aput v2, v0, v1
    :try_end_1167
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115b .. :try_end_1167} :catch_1168

    goto :goto_1169

    :catch_1168
    move-exception v0

    :goto_1169
    :try_start_1169
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGENERATE_PREVIEW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x138

    aput v2, v0, v1
    :try_end_1175
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1169 .. :try_end_1175} :catch_1176

    goto :goto_1177

    :catch_1176
    move-exception v0

    :goto_1177
    :try_start_1177
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->ePRINT_A_MAP:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x139

    aput v2, v0, v1
    :try_end_1183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1177 .. :try_end_1183} :catch_1184

    goto :goto_1185

    :catch_1184
    move-exception v0

    :goto_1185
    :try_start_1185
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_REGIONS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x13a

    aput v2, v0, v1
    :try_end_1191
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1185 .. :try_end_1191} :catch_1192

    goto :goto_1193

    :catch_1192
    move-exception v0

    :goto_1193
    :try_start_1193
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_WASTELAND_MAPS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x13b

    aput v2, v0, v1
    :try_end_119f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1193 .. :try_end_119f} :catch_11a0

    goto :goto_11a1

    :catch_11a0
    move-exception v0

    :goto_11a1
    :try_start_11a1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_WASTELAND_MAPS_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x13c

    aput v2, v0, v1
    :try_end_11ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11a1 .. :try_end_11ad} :catch_11ae

    goto :goto_11af

    :catch_11ae
    move-exception v0

    :goto_11af
    :try_start_11af
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_PACKAGES_CONTINENTS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x13d

    aput v2, v0, v1
    :try_end_11bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11af .. :try_end_11bb} :catch_11bc

    goto :goto_11bd

    :catch_11bc
    move-exception v0

    :goto_11bd
    :try_start_11bd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_PACKAGES_REGIONS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x13e

    aput v2, v0, v1
    :try_end_11c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11bd .. :try_end_11c9} :catch_11ca

    goto :goto_11cb

    :catch_11ca
    move-exception v0

    :goto_11cb
    :try_start_11cb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_CREATE_CONTINENTS_PACKAGE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x13f

    aput v2, v0, v1
    :try_end_11d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11cb .. :try_end_11d7} :catch_11d8

    goto :goto_11d9

    :catch_11d8
    move-exception v0

    :goto_11d9
    :try_start_11d9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_CREATE_REGIONS_PACKAGE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x140

    aput v2, v0, v1
    :try_end_11e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11d9 .. :try_end_11e5} :catch_11e6

    goto :goto_11e7

    :catch_11e6
    move-exception v0

    :goto_11e7
    :try_start_11e7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_CONTINENTS_ADDNEWCONTINENT_TOPACKAGE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x141

    aput v2, v0, v1
    :try_end_11f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11e7 .. :try_end_11f3} :catch_11f4

    goto :goto_11f5

    :catch_11f4
    move-exception v0

    :goto_11f5
    :try_start_11f5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_REGIONS_ADDNEWREGION_TOPACKAGE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x142

    aput v2, v0, v1
    :try_end_1201
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f5 .. :try_end_1201} :catch_1202

    goto :goto_1203

    :catch_1202
    move-exception v0

    :goto_1203
    :try_start_1203
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_CREATE_NEW_CONTINENT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x143

    aput v2, v0, v1
    :try_end_120f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1203 .. :try_end_120f} :catch_1210

    goto :goto_1211

    :catch_1210
    move-exception v0

    :goto_1211
    :try_start_1211
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAP_EDITOR_CREATE_NEW_REGION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x144

    aput v2, v0, v1
    :try_end_121d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1211 .. :try_end_121d} :catch_121e

    goto :goto_121f

    :catch_121e
    move-exception v0

    :goto_121f
    :try_start_121f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_PREVIEW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x145

    aput v2, v0, v1
    :try_end_122b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_121f .. :try_end_122b} :catch_122c

    goto :goto_122d

    :catch_122c
    move-exception v0

    :goto_122d
    :try_start_122d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x146

    aput v2, v0, v1
    :try_end_1239
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122d .. :try_end_1239} :catch_123a

    goto :goto_123b

    :catch_123a
    move-exception v0

    :goto_123b
    :try_start_123b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMANAGE_MODS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x147

    aput v2, v0, v1
    :try_end_1247
    .catch Ljava/lang/NoSuchFieldError; {:try_start_123b .. :try_end_1247} :catch_1248

    goto :goto_1249

    :catch_1248
    move-exception v0

    :goto_1249
    :try_start_1249
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eWORKSHOP:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x148

    aput v2, v0, v1
    :try_end_1255
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1249 .. :try_end_1255} :catch_1256

    goto :goto_1257

    :catch_1256
    move-exception v0

    :goto_1257
    :try_start_1257
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eLOAD_WORKSHOP_PUBLISH:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x149

    aput v2, v0, v1
    :try_end_1263
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1257 .. :try_end_1263} :catch_1264

    goto :goto_1265

    :catch_1264
    move-exception v0

    :goto_1265
    :try_start_1265
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x14a

    aput v2, v0, v1
    :try_end_1271
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1265 .. :try_end_1271} :catch_1272

    goto :goto_1273

    :catch_1272
    move-exception v0

    :goto_1273
    :try_start_1273
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE_CREATE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x14b

    aput v2, v0, v1
    :try_end_127f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1273 .. :try_end_127f} :catch_1280

    goto :goto_1281

    :catch_1280
    move-exception v0

    :goto_1281
    :try_start_1281
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE_CREATE_BUNDLE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x14c

    aput v2, v0, v1
    :try_end_128d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1281 .. :try_end_128d} :catch_128e

    goto :goto_128f

    :catch_128e
    move-exception v0

    :goto_128f
    :try_start_128f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_DIPLOMACY_COLORS_PACKAGES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x14d

    aput v2, v0, v1
    :try_end_129b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_128f .. :try_end_129b} :catch_129c

    goto :goto_129d

    :catch_129c
    move-exception v0

    :goto_129d
    :try_start_129d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_DIPLOMACY_COLORS_PACKAGES_CREATE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x14e

    aput v2, v0, v1
    :try_end_12a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129d .. :try_end_12a9} :catch_12aa

    goto :goto_12ab

    :catch_12aa
    move-exception v0

    :goto_12ab
    :try_start_12ab
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_PALLETS_OF_CIVS_COLORS_PACKAGES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x14f

    aput v2, v0, v1
    :try_end_12b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12ab .. :try_end_12b7} :catch_12b8

    goto :goto_12b9

    :catch_12b8
    move-exception v0

    :goto_12b9
    :try_start_12b9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_PALLETS_OF_CIVS_COLORS_PACKAGES_EDIT:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x150

    aput v2, v0, v1
    :try_end_12c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12b9 .. :try_end_12c5} :catch_12c6

    goto :goto_12c7

    :catch_12c6
    move-exception v0

    :goto_12c7
    :try_start_12c7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eLOAD_GENERATE_SUGGESTED_OWNERS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x151

    aput v2, v0, v1
    :try_end_12d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c7 .. :try_end_12d3} :catch_12d4

    goto :goto_12d5

    :catch_12d4
    move-exception v0

    :goto_12d5
    :try_start_12d5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eLOAD_GENERATE_CIVS_TEMPLATES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x152

    aput v2, v0, v1
    :try_end_12e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12d5 .. :try_end_12e1} :catch_12e2

    goto :goto_12e3

    :catch_12e2
    move-exception v0

    :goto_12e3
    :try_start_12e3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eLOAD_GENERATE_PRE_DEFINED_BORDERS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x153

    aput v2, v0, v1
    :try_end_12ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e3 .. :try_end_12ef} :catch_12f0

    goto :goto_12f1

    :catch_12f0
    move-exception v0

    :goto_12f1
    :try_start_12f1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR_RELIGION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x154

    aput v2, v0, v1
    :try_end_12fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12f1 .. :try_end_12fd} :catch_12fe

    goto :goto_12ff

    :catch_12fe
    move-exception v0

    :goto_12ff
    :try_start_12ff
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$32;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$View:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eEDITOR_RELIGION_ADD:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View;->ordinal()I

    move-result v1

    const/16 v2, 0x155

    aput v2, v0, v1
    :try_end_130b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12ff .. :try_end_130b} :catch_130c

    goto :goto_130d

    :catch_130c
    move-exception v0

    :goto_130d
    return-void
.end method
