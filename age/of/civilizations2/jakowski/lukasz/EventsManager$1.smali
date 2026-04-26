.class synthetic Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;
.super Ljava/lang/Object;
.source "EventsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/EventsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 418
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->values()[Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    :try_start_9
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_RECIPENT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_COND_CIV_EXIST:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->COND_SELECTCIV_DECISIONTAKEN:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_CONTROL_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_CONTROL_OCCUPIED:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_HAVE_ARMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_CORE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v0

    :goto_62
    :try_start_62
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ISCAPITAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v0

    :goto_70
    :try_start_70
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFPROVINCES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v0

    :goto_7e
    :try_start_7e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFPROVINCES_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    move-exception v0

    :goto_8c
    :try_start_8c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFUNITS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception v0

    :goto_9a
    :try_start_9a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFUNITS_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a6} :catch_a7

    goto :goto_a8

    :catch_a7
    move-exception v0

    :goto_a8
    :try_start_a8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFVASSALS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    move-exception v0

    :goto_b6
    :try_start_b6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFVASSALS_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c3

    goto :goto_c4

    :catch_c3
    move-exception v0

    :goto_c4
    :try_start_c4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFWARS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_d1

    goto :goto_d2

    :catch_d1
    move-exception v0

    :goto_d2
    :try_start_d2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFWARS_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_de} :catch_df

    goto :goto_e0

    :catch_df
    move-exception v0

    :goto_e0
    :try_start_e0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFALLIES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_ec} :catch_ed

    goto :goto_ee

    :catch_ed
    move-exception v0

    :goto_ee
    :try_start_ee
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFALLIES_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_fa} :catch_fb

    goto :goto_fc

    :catch_fb
    move-exception v0

    :goto_fc
    :try_start_fc
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFNEIGHBORS_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_109

    goto :goto_10a

    :catch_109
    move-exception v0

    :goto_10a
    :try_start_10a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFNEIGHBORS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_117

    goto :goto_118

    :catch_117
    move-exception v0

    :goto_118
    :try_start_118
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_POPULATION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_124
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_124} :catch_125

    goto :goto_126

    :catch_125
    move-exception v0

    :goto_126
    :try_start_126
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_POPULATION_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_126 .. :try_end_132} :catch_133

    goto :goto_134

    :catch_133
    move-exception v0

    :goto_134
    :try_start_134
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ECONOMY_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_140
    .catch Ljava/lang/NoSuchFieldError; {:try_start_134 .. :try_end_140} :catch_141

    goto :goto_142

    :catch_141
    move-exception v0

    :goto_142
    :try_start_142
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ECONOMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_14e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_142 .. :try_end_14e} :catch_14f

    goto :goto_150

    :catch_14f
    move-exception v0

    :goto_150
    :try_start_150
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_RELATION_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_15d

    goto :goto_15e

    :catch_15d
    move-exception v0

    :goto_15e
    :try_start_15e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_RELATION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_16a} :catch_16b

    goto :goto_16c

    :catch_16b
    move-exception v0

    :goto_16c
    :try_start_16c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ISATWAR:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16c .. :try_end_178} :catch_179

    goto :goto_17a

    :catch_179
    move-exception v0

    :goto_17a
    :try_start_17a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ALLIES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_186
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17a .. :try_end_186} :catch_187

    goto :goto_188

    :catch_187
    move-exception v0

    :goto_188
    :try_start_188
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ATWAR:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_194
    .catch Ljava/lang/NoSuchFieldError; {:try_start_188 .. :try_end_194} :catch_195

    goto :goto_196

    :catch_195
    move-exception v0

    :goto_196
    :try_start_196
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_DEFENSIVE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_196 .. :try_end_1a2} :catch_1a3

    goto :goto_1a4

    :catch_1a3
    move-exception v0

    :goto_1a4
    :try_start_1a4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_INDEPENDENCE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1b0} :catch_1b1

    goto :goto_1b2

    :catch_1b1
    move-exception v0

    :goto_1b2
    :try_start_1b2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NONAGGRESSION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b2 .. :try_end_1be} :catch_1bf

    goto :goto_1c0

    :catch_1bf
    move-exception v0

    :goto_1c0
    :try_start_1c0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_MILITARYACCESS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c0 .. :try_end_1cc} :catch_1cd

    goto :goto_1ce

    :catch_1cd
    move-exception v0

    :goto_1ce
    :try_start_1ce
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ISVASSAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ce .. :try_end_1da} :catch_1db

    goto :goto_1dc

    :catch_1db
    move-exception v0

    :goto_1dc
    :try_start_1dc
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ISVASSALOFCIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1dc .. :try_end_1e8} :catch_1e9

    goto :goto_1ea

    :catch_1e9
    move-exception v0

    :goto_1ea
    :try_start_1ea
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ISPARTOFHRE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ea .. :try_end_1f6} :catch_1f7

    goto :goto_1f8

    :catch_1f7
    move-exception v0

    :goto_1f8
    :try_start_1f8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_IDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_204
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f8 .. :try_end_204} :catch_205

    goto :goto_206

    :catch_205
    move-exception v0

    :goto_206
    :try_start_206
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_TECHNOLOGY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_212
    .catch Ljava/lang/NoSuchFieldError; {:try_start_206 .. :try_end_212} :catch_213

    goto :goto_214

    :catch_213
    move-exception v0

    :goto_214
    :try_start_214
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_TECHNOLOGY_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_220
    .catch Ljava/lang/NoSuchFieldError; {:try_start_214 .. :try_end_220} :catch_221

    goto :goto_222

    :catch_221
    move-exception v0

    :goto_222
    :try_start_222
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_22e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_222 .. :try_end_22e} :catch_22f

    goto :goto_230

    :catch_22f
    move-exception v0

    :goto_230
    :try_start_230
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_HAPPINESS_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_23c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_230 .. :try_end_23c} :catch_23d

    goto :goto_23e

    :catch_23d
    move-exception v0

    :goto_23e
    :try_start_23e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_TREASURY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_24a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23e .. :try_end_24a} :catch_24b

    goto :goto_24c

    :catch_24b
    move-exception v0

    :goto_24c
    :try_start_24c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_TREASURY_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_258
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24c .. :try_end_258} :catch_259

    goto :goto_25a

    :catch_259
    move-exception v0

    :goto_25a
    :try_start_25a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_CONTROLLEDBYPLAYER:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_266
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25a .. :try_end_266} :catch_267

    goto :goto_268

    :catch_267
    move-exception v0

    :goto_268
    :try_start_268
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_RELIGION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_274
    .catch Ljava/lang/NoSuchFieldError; {:try_start_268 .. :try_end_274} :catch_275

    goto :goto_276

    :catch_275
    move-exception v0

    :goto_276
    :try_start_276
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_LEADER_COND:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_282
    .catch Ljava/lang/NoSuchFieldError; {:try_start_276 .. :try_end_282} :catch_283

    goto :goto_284

    :catch_283
    move-exception v0

    :goto_284
    :try_start_284
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_COND_ADM_POLICY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_290
    .catch Ljava/lang/NoSuchFieldError; {:try_start_284 .. :try_end_290} :catch_291

    goto :goto_292

    :catch_291
    move-exception v0

    :goto_292
    :try_start_292
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUKES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_29e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_292 .. :try_end_29e} :catch_29f

    goto :goto_2a0

    :catch_29f
    move-exception v0

    :goto_2a0
    :try_start_2a0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUKES_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_2ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a0 .. :try_end_2ac} :catch_2ad

    goto :goto_2ae

    :catch_2ad
    move-exception v0

    :goto_2ae
    :try_start_2ae
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_INVESTS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_2ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ae .. :try_end_2ba} :catch_2bb

    goto :goto_2bc

    :catch_2bb
    move-exception v0

    :goto_2bc
    :try_start_2bc
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_INVESTSLOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_2c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2bc .. :try_end_2c8} :catch_2c9

    goto :goto_2ca

    :catch_2c9
    move-exception v0

    :goto_2ca
    :try_start_2ca
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ASSI:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_2d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ca .. :try_end_2d6} :catch_2d7

    goto :goto_2d8

    :catch_2d7
    move-exception v0

    :goto_2d8
    :try_start_2d8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ASSILOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_2e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d8 .. :try_end_2e4} :catch_2e5

    goto :goto_2e6

    :catch_2e5
    move-exception v0

    :goto_2e6
    :try_start_2e6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_FESTIVALS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_2f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e6 .. :try_end_2f2} :catch_2f3

    goto :goto_2f4

    :catch_2f3
    move-exception v0

    :goto_2f4
    :try_start_2f4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_FESTIVALSLOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_300
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f4 .. :try_end_300} :catch_301

    goto :goto_302

    :catch_301
    move-exception v0

    :goto_302
    :try_start_302
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_FESTIVALSCOST:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_30e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_302 .. :try_end_30e} :catch_30f

    goto :goto_310

    :catch_30f
    move-exception v0

    :goto_310
    :try_start_310
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_FESTIVALSCOSTLOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_31c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_310 .. :try_end_31c} :catch_31d

    goto :goto_31e

    :catch_31d
    move-exception v0

    :goto_31e
    :try_start_31e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_INVESTSCOST:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_32a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31e .. :try_end_32a} :catch_32b

    goto :goto_32c

    :catch_32b
    move-exception v0

    :goto_32c
    :try_start_32c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_INVESTSCOSTLOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_338
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32c .. :try_end_338} :catch_339

    goto :goto_33a

    :catch_339
    move-exception v0

    :goto_33a
    :try_start_33a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_INVESTSDEVCOST:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_346
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33a .. :try_end_346} :catch_347

    goto :goto_348

    :catch_347
    move-exception v0

    :goto_348
    :try_start_348
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_INVESTSDEVCOSTLOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_354
    .catch Ljava/lang/NoSuchFieldError; {:try_start_348 .. :try_end_354} :catch_355

    goto :goto_356

    :catch_355
    move-exception v0

    :goto_356
    :try_start_356
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ECO_GAINED:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_362
    .catch Ljava/lang/NoSuchFieldError; {:try_start_356 .. :try_end_362} :catch_363

    goto :goto_364

    :catch_363
    move-exception v0

    :goto_364
    :try_start_364
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ECO_GAINEDLOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_370
    .catch Ljava/lang/NoSuchFieldError; {:try_start_364 .. :try_end_370} :catch_371

    goto :goto_372

    :catch_371
    move-exception v0

    :goto_372
    :try_start_372
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ASSICOST:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_37e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_372 .. :try_end_37e} :catch_37f

    goto :goto_380

    :catch_37f
    move-exception v0

    :goto_380
    :try_start_380
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ASSICOSTLOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_38c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_380 .. :try_end_38c} :catch_38d

    goto :goto_38e

    :catch_38d
    move-exception v0

    :goto_38e
    :try_start_38e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_MILITARYEXPRERTISE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_39a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38e .. :try_end_39a} :catch_39b

    goto :goto_39c

    :catch_39b
    move-exception v0

    :goto_39c
    :try_start_39c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_MILITARYEXPRERTISELOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_3a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39c .. :try_end_3a8} :catch_3a9

    goto :goto_3aa

    :catch_3a9
    move-exception v0

    :goto_3aa
    :try_start_3aa
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_WAR_CASU:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_3b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3aa .. :try_end_3b6} :catch_3b7

    goto :goto_3b8

    :catch_3b7
    move-exception v0

    :goto_3b8
    :try_start_3b8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_WAR_CASULOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_3c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b8 .. :try_end_3c4} :catch_3c5

    goto :goto_3c6

    :catch_3c5
    move-exception v0

    :goto_3c6
    :try_start_3c6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_CONQU_PROVS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_3d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c6 .. :try_end_3d2} :catch_3d3

    goto :goto_3d4

    :catch_3d3
    move-exception v0

    :goto_3d4
    :try_start_3d4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_CONQU_PROVSLOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_3e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d4 .. :try_end_3e0} :catch_3e1

    goto :goto_3e2

    :catch_3e1
    move-exception v0

    :goto_3e2
    :try_start_3e2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_BUILDINGSCONS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_3ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e2 .. :try_end_3ee} :catch_3ef

    goto :goto_3f0

    :catch_3ef
    move-exception v0

    :goto_3f0
    :try_start_3f0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_BUILDINGSCONSLOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_3fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f0 .. :try_end_3fc} :catch_3fd

    goto :goto_3fe

    :catch_3fd
    move-exception v0

    :goto_3fe
    :try_start_3fe
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_RECRUITEDARMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_40a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3fe .. :try_end_40a} :catch_40b

    goto :goto_40c

    :catch_40b
    move-exception v0

    :goto_40c
    :try_start_40c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_RECRUITEDARMYLOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_418
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40c .. :try_end_418} :catch_419

    goto :goto_41a

    :catch_419
    move-exception v0

    :goto_41a
    :try_start_41a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_STABILITY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_426
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41a .. :try_end_426} :catch_427

    goto :goto_428

    :catch_427
    move-exception v0

    :goto_428
    :try_start_428
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_STABILITYLOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_434
    .catch Ljava/lang/NoSuchFieldError; {:try_start_428 .. :try_end_434} :catch_435

    goto :goto_436

    :catch_435
    move-exception v0

    :goto_436
    :try_start_436
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_AVEDEV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_442
    .catch Ljava/lang/NoSuchFieldError; {:try_start_436 .. :try_end_442} :catch_443

    goto :goto_444

    :catch_443
    move-exception v0

    :goto_444
    :try_start_444
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_AVEDEVLOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_450
    .catch Ljava/lang/NoSuchFieldError; {:try_start_444 .. :try_end_450} :catch_451

    goto :goto_452

    :catch_451
    move-exception v0

    :goto_452
    :try_start_452
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_BFORTS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_45e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_452 .. :try_end_45e} :catch_45f

    goto :goto_460

    :catch_45f
    move-exception v0

    :goto_460
    :try_start_460
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_BTOWERS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_46c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_460 .. :try_end_46c} :catch_46d

    goto :goto_46e

    :catch_46d
    move-exception v0

    :goto_46e
    :try_start_46e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_BPORTS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_47a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46e .. :try_end_47a} :catch_47b

    goto :goto_47c

    :catch_47b
    move-exception v0

    :goto_47c
    :try_start_47c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_BFARMS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_488
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47c .. :try_end_488} :catch_489

    goto :goto_48a

    :catch_489
    move-exception v0

    :goto_48a
    :try_start_48a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_BWORKSHOPS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_496
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48a .. :try_end_496} :catch_497

    goto :goto_498

    :catch_497
    move-exception v0

    :goto_498
    :try_start_498
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_BLIBRARIES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_4a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_498 .. :try_end_4a4} :catch_4a5

    goto :goto_4a6

    :catch_4a5
    move-exception v0

    :goto_4a6
    :try_start_4a6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_BARMORIES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_4b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a6 .. :try_end_4b2} :catch_4b3

    goto :goto_4b4

    :catch_4b3
    move-exception v0

    :goto_4b4
    :try_start_4b4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_BSUPPLIES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_4c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b4 .. :try_end_4c0} :catch_4c1

    goto :goto_4c2

    :catch_4c1
    move-exception v0

    :goto_4c2
    :try_start_4c2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_BMARKETS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_4ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c2 .. :try_end_4ce} :catch_4cf

    goto :goto_4d0

    :catch_4cf
    move-exception v0

    :goto_4d0
    :try_start_4d0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_RELATION2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_4dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d0 .. :try_end_4dc} :catch_4dd

    goto :goto_4de

    :catch_4dd
    move-exception v0

    :goto_4de
    :try_start_4de
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_RELATION_LOW2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_4ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4de .. :try_end_4ea} :catch_4eb

    goto :goto_4ec

    :catch_4eb
    move-exception v0

    :goto_4ec
    :try_start_4ec
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ALLIES2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_4f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4ec .. :try_end_4f8} :catch_4f9

    goto :goto_4fa

    :catch_4f9
    move-exception v0

    :goto_4fa
    :try_start_4fa
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ATWAR2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_506
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4fa .. :try_end_506} :catch_507

    goto :goto_508

    :catch_507
    move-exception v0

    :goto_508
    :try_start_508
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_DEFENSIVE2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_514
    .catch Ljava/lang/NoSuchFieldError; {:try_start_508 .. :try_end_514} :catch_515

    goto :goto_516

    :catch_515
    move-exception v0

    :goto_516
    :try_start_516
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_INDEPENDENCE2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_522
    .catch Ljava/lang/NoSuchFieldError; {:try_start_516 .. :try_end_522} :catch_523

    goto :goto_524

    :catch_523
    move-exception v0

    :goto_524
    :try_start_524
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NONAGGRESSION2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_530
    .catch Ljava/lang/NoSuchFieldError; {:try_start_524 .. :try_end_530} :catch_531

    goto :goto_532

    :catch_531
    move-exception v0

    :goto_532
    :try_start_532
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_MILITARYACCESS2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_53e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_532 .. :try_end_53e} :catch_53f

    goto :goto_540

    :catch_53f
    move-exception v0

    :goto_540
    :try_start_540
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ISVASSALOFCIV2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_54c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_540 .. :try_end_54c} :catch_54d

    goto :goto_54e

    :catch_54d
    move-exception v0

    :goto_54e
    :try_start_54e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CONTROLS_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x62

    aput v2, v0, v1
    :try_end_55a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54e .. :try_end_55a} :catch_55b

    goto :goto_55c

    :catch_55b
    move-exception v0

    :goto_55c
    :try_start_55c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_OCCUPIED_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x63

    aput v2, v0, v1
    :try_end_568
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55c .. :try_end_568} :catch_569

    goto :goto_56a

    :catch_569
    move-exception v0

    :goto_56a
    :try_start_56a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_HAVEARMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x64

    aput v2, v0, v1
    :try_end_576
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56a .. :try_end_576} :catch_577

    goto :goto_578

    :catch_577
    move-exception v0

    :goto_578
    :try_start_578
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_HAVECORE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x65

    aput v2, v0, v1
    :try_end_584
    .catch Ljava/lang/NoSuchFieldError; {:try_start_578 .. :try_end_584} :catch_585

    goto :goto_586

    :catch_585
    move-exception v0

    :goto_586
    :try_start_586
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_ISCAPITAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x66

    aput v2, v0, v1
    :try_end_592
    .catch Ljava/lang/NoSuchFieldError; {:try_start_586 .. :try_end_592} :catch_593

    goto :goto_594

    :catch_593
    move-exception v0

    :goto_594
    :try_start_594
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_DEVELOPMENT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x67

    aput v2, v0, v1
    :try_end_5a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_594 .. :try_end_5a0} :catch_5a1

    goto :goto_5a2

    :catch_5a1
    move-exception v0

    :goto_5a2
    :try_start_5a2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_DEVELOPMENT_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x68

    aput v2, v0, v1
    :try_end_5ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a2 .. :try_end_5ae} :catch_5af

    goto :goto_5b0

    :catch_5af
    move-exception v0

    :goto_5b0
    :try_start_5b0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x69

    aput v2, v0, v1
    :try_end_5bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b0 .. :try_end_5bc} :catch_5bd

    goto :goto_5be

    :catch_5bd
    move-exception v0

    :goto_5be
    :try_start_5be
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_NEUTRAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x6a

    aput v2, v0, v1
    :try_end_5ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5be .. :try_end_5ca} :catch_5cb

    goto :goto_5cc

    :catch_5cb
    move-exception v0

    :goto_5cc
    :try_start_5cc
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_WATCHTOWER:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x6b

    aput v2, v0, v1
    :try_end_5d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5cc .. :try_end_5d8} :catch_5d9

    goto :goto_5da

    :catch_5d9
    move-exception v0

    :goto_5da
    :try_start_5da
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_FORT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x6c

    aput v2, v0, v1
    :try_end_5e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5da .. :try_end_5e6} :catch_5e7

    goto :goto_5e8

    :catch_5e7
    move-exception v0

    :goto_5e8
    :try_start_5e8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_FARM:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x6d

    aput v2, v0, v1
    :try_end_5f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e8 .. :try_end_5f4} :catch_5f5

    goto :goto_5f6

    :catch_5f5
    move-exception v0

    :goto_5f6
    :try_start_5f6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_PORT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x6e

    aput v2, v0, v1
    :try_end_602
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f6 .. :try_end_602} :catch_603

    goto :goto_604

    :catch_603
    move-exception v0

    :goto_604
    :try_start_604
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTIDEOLOGY_COND_IDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x6f

    aput v2, v0, v1
    :try_end_610
    .catch Ljava/lang/NoSuchFieldError; {:try_start_604 .. :try_end_610} :catch_611

    goto :goto_612

    :catch_611
    move-exception v0

    :goto_612
    :try_start_612
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTRELIGION_COND_RELIGION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x70

    aput v2, v0, v1
    :try_end_61e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_612 .. :try_end_61e} :catch_61f

    goto :goto_620

    :catch_61f
    move-exception v0

    :goto_620
    :try_start_620
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x71

    aput v2, v0, v1
    :try_end_62c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_620 .. :try_end_62c} :catch_62d

    goto :goto_62e

    :catch_62d
    move-exception v0

    :goto_62e
    :try_start_62e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_ADDCORE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x72

    aput v2, v0, v1
    :try_end_63a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62e .. :try_end_63a} :catch_63b

    goto :goto_63c

    :catch_63b
    move-exception v0

    :goto_63c
    :try_start_63c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_REMOVECORE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x73

    aput v2, v0, v1
    :try_end_648
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63c .. :try_end_648} :catch_649

    goto :goto_64a

    :catch_649
    move-exception v0

    :goto_64a
    :try_start_64a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DECLAREWAR_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x74

    aput v2, v0, v1
    :try_end_656
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64a .. :try_end_656} :catch_657

    goto :goto_658

    :catch_657
    move-exception v0

    :goto_658
    :try_start_658
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_WHITEPEACE_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x75

    aput v2, v0, v1
    :try_end_664
    .catch Ljava/lang/NoSuchFieldError; {:try_start_658 .. :try_end_664} :catch_665

    goto :goto_666

    :catch_665
    move-exception v0

    :goto_666
    :try_start_666
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_INCRELATION_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x76

    aput v2, v0, v1
    :try_end_672
    .catch Ljava/lang/NoSuchFieldError; {:try_start_666 .. :try_end_672} :catch_673

    goto :goto_674

    :catch_673
    move-exception v0

    :goto_674
    :try_start_674
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DECRELATION_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x77

    aput v2, v0, v1
    :try_end_680
    .catch Ljava/lang/NoSuchFieldError; {:try_start_674 .. :try_end_680} :catch_681

    goto :goto_682

    :catch_681
    move-exception v0

    :goto_682
    :try_start_682
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_CREATEVASSAL_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x78

    aput v2, v0, v1
    :try_end_68e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_682 .. :try_end_68e} :catch_68f

    goto :goto_690

    :catch_68f
    move-exception v0

    :goto_690
    :try_start_690
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_JOINALLIANCE_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x79

    aput v2, v0, v1
    :try_end_69c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_690 .. :try_end_69c} :catch_69d

    goto :goto_69e

    :catch_69d
    move-exception v0

    :goto_69e
    :try_start_69e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_LEAVEALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x7a

    aput v2, v0, v1
    :try_end_6aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69e .. :try_end_6aa} :catch_6ab

    goto :goto_6ac

    :catch_6ab
    move-exception v0

    :goto_6ac
    :try_start_6ac
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_JOINUNION_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x7b

    aput v2, v0, v1
    :try_end_6b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6ac .. :try_end_6b8} :catch_6b9

    goto :goto_6ba

    :catch_6b9
    move-exception v0

    :goto_6ba
    :try_start_6ba
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_NONAGGRESSION_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x7c

    aput v2, v0, v1
    :try_end_6c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6ba .. :try_end_6c6} :catch_6c7

    goto :goto_6c8

    :catch_6c7
    move-exception v0

    :goto_6c8
    :try_start_6c8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MILITARY_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x7d

    aput v2, v0, v1
    :try_end_6d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c8 .. :try_end_6d4} :catch_6d5

    goto :goto_6d6

    :catch_6d5
    move-exception v0

    :goto_6d6
    :try_start_6d6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DEFENSIVE_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x7e

    aput v2, v0, v1
    :try_end_6e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d6 .. :try_end_6e2} :catch_6e3

    goto :goto_6e4

    :catch_6e3
    move-exception v0

    :goto_6e4
    :try_start_6e4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_INDEPENDENCE_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x7f

    aput v2, v0, v1
    :try_end_6f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e4 .. :try_end_6f0} :catch_6f1

    goto :goto_6f2

    :catch_6f1
    move-exception v0

    :goto_6f2
    :try_start_6f2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MOVECAPITAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x80

    aput v2, v0, v1
    :try_end_6fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f2 .. :try_end_6fe} :catch_6ff

    goto :goto_700

    :catch_6ff
    move-exception v0

    :goto_700
    :try_start_700
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_LIBERATEVASSAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x81

    aput v2, v0, v1
    :try_end_70c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_700 .. :try_end_70c} :catch_70d

    goto :goto_70e

    :catch_70d
    move-exception v0

    :goto_70e
    :try_start_70e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_CHANGEIDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x82

    aput v2, v0, v1
    :try_end_71a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70e .. :try_end_71a} :catch_71b

    goto :goto_71c

    :catch_71b
    move-exception v0

    :goto_71c
    :try_start_71c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_ADDARMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x83

    aput v2, v0, v1
    :try_end_728
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71c .. :try_end_728} :catch_729

    goto :goto_72a

    :catch_729
    move-exception v0

    :goto_72a
    :try_start_72a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_UPDATEPOPULAION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x84

    aput v2, v0, v1
    :try_end_736
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72a .. :try_end_736} :catch_737

    goto :goto_738

    :catch_737
    move-exception v0

    :goto_738
    :try_start_738
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_UPDATEPOPULAION_PERC:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x85

    aput v2, v0, v1
    :try_end_744
    .catch Ljava/lang/NoSuchFieldError; {:try_start_738 .. :try_end_744} :catch_745

    goto :goto_746

    :catch_745
    move-exception v0

    :goto_746
    :try_start_746
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_UPDATEECONOMY_PERC:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x86

    aput v2, v0, v1
    :try_end_752
    .catch Ljava/lang/NoSuchFieldError; {:try_start_746 .. :try_end_752} :catch_753

    goto :goto_754

    :catch_753
    move-exception v0

    :goto_754
    :try_start_754
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_UPDATEECONOMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x87

    aput v2, v0, v1
    :try_end_760
    .catch Ljava/lang/NoSuchFieldError; {:try_start_754 .. :try_end_760} :catch_761

    goto :goto_762

    :catch_761
    move-exception v0

    :goto_762
    :try_start_762
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_UPDATEECONOMY_OFCIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x88

    aput v2, v0, v1
    :try_end_76e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_762 .. :try_end_76e} :catch_76f

    goto :goto_770

    :catch_76f
    move-exception v0

    :goto_770
    :try_start_770
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_UPDATEPOPULAION_OFCIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x89

    aput v2, v0, v1
    :try_end_77c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_770 .. :try_end_77c} :catch_77d

    goto :goto_77e

    :catch_77d
    move-exception v0

    :goto_77e
    :try_start_77e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_TECHLEVEL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x8a

    aput v2, v0, v1
    :try_end_78a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77e .. :try_end_78a} :catch_78b

    goto :goto_78c

    :catch_78b
    move-exception v0

    :goto_78c
    :try_start_78c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DEVELOPMENT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x8b

    aput v2, v0, v1
    :try_end_798
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78c .. :try_end_798} :catch_799

    goto :goto_79a

    :catch_799
    move-exception v0

    :goto_79a
    :try_start_79a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x8c

    aput v2, v0, v1
    :try_end_7a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79a .. :try_end_7a6} :catch_7a7

    goto :goto_7a8

    :catch_7a7
    move-exception v0

    :goto_7a8
    :try_start_7a8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_HAPPINESS_OF_CIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x8d

    aput v2, v0, v1
    :try_end_7b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a8 .. :try_end_7b4} :catch_7b5

    goto :goto_7b6

    :catch_7b5
    move-exception v0

    :goto_7b6
    :try_start_7b6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MONEY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x8e

    aput v2, v0, v1
    :try_end_7c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b6 .. :try_end_7c2} :catch_7c3

    goto :goto_7c4

    :catch_7c3
    move-exception v0

    :goto_7c4
    :try_start_7c4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DIPLOMACYPOINTS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x8f

    aput v2, v0, v1
    :try_end_7d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c4 .. :try_end_7d0} :catch_7d1

    goto :goto_7d2

    :catch_7d1
    move-exception v0

    :goto_7d2
    :try_start_7d2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MOVEMENTPOINTS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x90

    aput v2, v0, v1
    :try_end_7de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d2 .. :try_end_7de} :catch_7df

    goto :goto_7e0

    :catch_7df
    move-exception v0

    :goto_7e0
    :try_start_7e0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_LEADER:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x91

    aput v2, v0, v1
    :try_end_7ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e0 .. :try_end_7ec} :catch_7ed

    goto :goto_7ee

    :catch_7ed
    move-exception v0

    :goto_7ee
    :try_start_7ee
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_FORMCIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x92

    aput v2, v0, v1
    :try_end_7fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7ee .. :try_end_7fa} :catch_7fb

    goto :goto_7fc

    :catch_7fb
    move-exception v0

    :goto_7fc
    :try_start_7fc
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_OCCUPY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x93

    aput v2, v0, v1
    :try_end_808
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7fc .. :try_end_808} :catch_809

    goto :goto_80a

    :catch_809
    move-exception v0

    :goto_80a
    :try_start_80a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_CHANGERELIGION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x94

    aput v2, v0, v1
    :try_end_816
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80a .. :try_end_816} :catch_817

    goto :goto_818

    :catch_817
    move-exception v0

    :goto_818
    :try_start_818
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_COALITION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x95

    aput v2, v0, v1
    :try_end_824
    .catch Ljava/lang/NoSuchFieldError; {:try_start_818 .. :try_end_824} :catch_825

    goto :goto_826

    :catch_825
    move-exception v0

    :goto_826
    :try_start_826
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_BUILDBUILDINGS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x96

    aput v2, v0, v1
    :try_end_832
    .catch Ljava/lang/NoSuchFieldError; {:try_start_826 .. :try_end_832} :catch_833

    goto :goto_834

    :catch_833
    move-exception v0

    :goto_834
    :try_start_834
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_BUILDBUILDINGSDESTROY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x97

    aput v2, v0, v1
    :try_end_840
    .catch Ljava/lang/NoSuchFieldError; {:try_start_834 .. :try_end_840} :catch_841

    goto :goto_842

    :catch_841
    move-exception v0

    :goto_842
    :try_start_842
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_REMOVE_ADD_ARMY_X:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x98

    aput v2, v0, v1
    :try_end_84e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_842 .. :try_end_84e} :catch_84f

    goto :goto_850

    :catch_84f
    move-exception v0

    :goto_850
    :try_start_850
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_NUKES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x99

    aput v2, v0, v1
    :try_end_85c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_850 .. :try_end_85c} :catch_85d

    goto :goto_85e

    :catch_85d
    move-exception v0

    :goto_85e
    :try_start_85e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_NUKESDROP:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x9a

    aput v2, v0, v1
    :try_end_86a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85e .. :try_end_86a} :catch_86b

    goto :goto_86c

    :catch_86b
    move-exception v0

    :goto_86c
    :try_start_86c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_PROVOKE_REBELS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x9b

    aput v2, v0, v1
    :try_end_878
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86c .. :try_end_878} :catch_879

    goto :goto_87a

    :catch_879
    move-exception v0

    :goto_87a
    :try_start_87a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_IMPOSE_SANCTIONS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x9c

    aput v2, v0, v1
    :try_end_886
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87a .. :try_end_886} :catch_887

    goto :goto_888

    :catch_887
    move-exception v0

    :goto_888
    :try_start_888
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_ADM_POLICY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x9d

    aput v2, v0, v1
    :try_end_894
    .catch Ljava/lang/NoSuchFieldError; {:try_start_888 .. :try_end_894} :catch_895

    goto :goto_896

    :catch_895
    move-exception v0

    :goto_896
    :try_start_896
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_FESTIVALALL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x9e

    aput v2, v0, v1
    :try_end_8a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_896 .. :try_end_8a2} :catch_8a3

    goto :goto_8a4

    :catch_8a3
    move-exception v0

    :goto_8a4
    :try_start_8a4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_ASSIMILATEALL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x9f

    aput v2, v0, v1
    :try_end_8b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a4 .. :try_end_8b0} :catch_8b1

    goto :goto_8b2

    :catch_8b1
    move-exception v0

    :goto_8b2
    :try_start_8b2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_RAND_FESTIVALS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xa0

    aput v2, v0, v1
    :try_end_8be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b2 .. :try_end_8be} :catch_8bf

    goto :goto_8c0

    :catch_8bf
    move-exception v0

    :goto_8c0
    :try_start_8c0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_RAND_FARMS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xa1

    aput v2, v0, v1
    :try_end_8cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c0 .. :try_end_8cc} :catch_8cd

    goto :goto_8ce

    :catch_8cd
    move-exception v0

    :goto_8ce
    :try_start_8ce
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_RAND_FORTS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xa2

    aput v2, v0, v1
    :try_end_8da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8ce .. :try_end_8da} :catch_8db

    goto :goto_8dc

    :catch_8db
    move-exception v0

    :goto_8dc
    :try_start_8dc
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_RAND_TOWERS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xa3

    aput v2, v0, v1
    :try_end_8e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8dc .. :try_end_8e8} :catch_8e9

    goto :goto_8ea

    :catch_8e9
    move-exception v0

    :goto_8ea
    :try_start_8ea
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_RAND_WORKSHOPS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xa4

    aput v2, v0, v1
    :try_end_8f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8ea .. :try_end_8f6} :catch_8f7

    goto :goto_8f8

    :catch_8f7
    move-exception v0

    :goto_8f8
    :try_start_8f8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_RAND_MARKETS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xa5

    aput v2, v0, v1
    :try_end_904
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f8 .. :try_end_904} :catch_905

    goto :goto_906

    :catch_905
    move-exception v0

    :goto_906
    :try_start_906
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_RAND_LIBRARY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xa6

    aput v2, v0, v1
    :try_end_912
    .catch Ljava/lang/NoSuchFieldError; {:try_start_906 .. :try_end_912} :catch_913

    goto :goto_914

    :catch_913
    move-exception v0

    :goto_914
    :try_start_914
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_RAND_ARMOURY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xa7

    aput v2, v0, v1
    :try_end_920
    .catch Ljava/lang/NoSuchFieldError; {:try_start_914 .. :try_end_920} :catch_921

    goto :goto_922

    :catch_921
    move-exception v0

    :goto_922
    :try_start_922
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_RAND_SUPPLY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xa8

    aput v2, v0, v1
    :try_end_92e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_922 .. :try_end_92e} :catch_92f

    goto :goto_930

    :catch_92f
    move-exception v0

    :goto_930
    :try_start_930
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MILITARYEXP:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xa9

    aput v2, v0, v1
    :try_end_93c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_930 .. :try_end_93c} :catch_93d

    goto :goto_93e

    :catch_93d
    move-exception v0

    :goto_93e
    :try_start_93e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MILITARYATTACK:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xaa

    aput v2, v0, v1
    :try_end_94a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93e .. :try_end_94a} :catch_94b

    goto :goto_94c

    :catch_94b
    move-exception v0

    :goto_94c
    :try_start_94c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MILITARYDEFENSE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xab

    aput v2, v0, v1
    :try_end_958
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94c .. :try_end_958} :catch_959

    goto :goto_95a

    :catch_959
    move-exception v0

    :goto_95a
    :try_start_95a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_GOLDEN_PROS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xac

    aput v2, v0, v1
    :try_end_966
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95a .. :try_end_966} :catch_967

    goto :goto_968

    :catch_967
    move-exception v0

    :goto_968
    :try_start_968
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_GOLDEN_MILIT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xad

    aput v2, v0, v1
    :try_end_974
    .catch Ljava/lang/NoSuchFieldError; {:try_start_968 .. :try_end_974} :catch_975

    goto :goto_976

    :catch_975
    move-exception v0

    :goto_976
    :try_start_976
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_GOLDEN_SCIE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xae

    aput v2, v0, v1
    :try_end_982
    .catch Ljava/lang/NoSuchFieldError; {:try_start_976 .. :try_end_982} :catch_983

    goto :goto_984

    :catch_983
    move-exception v0

    :goto_984
    :try_start_984
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_RENAMECIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xaf

    aput v2, v0, v1
    :try_end_990
    .catch Ljava/lang/NoSuchFieldError; {:try_start_984 .. :try_end_990} :catch_991

    goto :goto_992

    :catch_991
    move-exception v0

    :goto_992
    :try_start_992
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_PLAYERCIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xb0

    aput v2, v0, v1
    :try_end_99e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_992 .. :try_end_99e} :catch_99f

    goto :goto_9a0

    :catch_99f
    move-exception v0

    :goto_9a0
    :try_start_9a0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_EXP:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xb1

    aput v2, v0, v1
    :try_end_9ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a0 .. :try_end_9ac} :catch_9ad

    goto :goto_9ae

    :catch_9ad
    move-exception v0

    :goto_9ae
    :try_start_9ae
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xb2

    aput v2, v0, v1
    :try_end_9ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9ae .. :try_end_9ba} :catch_9bb

    goto :goto_9bc

    :catch_9bb
    move-exception v0

    :goto_9bc
    :try_start_9bc
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DECLAREWAR_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xb3

    aput v2, v0, v1
    :try_end_9c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9bc .. :try_end_9c8} :catch_9c9

    goto :goto_9ca

    :catch_9c9
    move-exception v0

    :goto_9ca
    :try_start_9ca
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_WHITEPEACE_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xb4

    aput v2, v0, v1
    :try_end_9d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9ca .. :try_end_9d6} :catch_9d7

    goto :goto_9d8

    :catch_9d7
    move-exception v0

    :goto_9d8
    :try_start_9d8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_INCRELATION_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xb5

    aput v2, v0, v1
    :try_end_9e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d8 .. :try_end_9e4} :catch_9e5

    goto :goto_9e6

    :catch_9e5
    move-exception v0

    :goto_9e6
    :try_start_9e6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DECRELATION_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xb6

    aput v2, v0, v1
    :try_end_9f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e6 .. :try_end_9f2} :catch_9f3

    goto :goto_9f4

    :catch_9f3
    move-exception v0

    :goto_9f4
    :try_start_9f4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_CREATEVASSAL_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xb7

    aput v2, v0, v1
    :try_end_a00
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f4 .. :try_end_a00} :catch_a01

    goto :goto_a02

    :catch_a01
    move-exception v0

    :goto_a02
    :try_start_a02
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_JOINALLIANCE_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xb8

    aput v2, v0, v1
    :try_end_a0e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a02 .. :try_end_a0e} :catch_a0f

    goto :goto_a10

    :catch_a0f
    move-exception v0

    :goto_a10
    :try_start_a10
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_JOINUNION_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xb9

    aput v2, v0, v1
    :try_end_a1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a10 .. :try_end_a1c} :catch_a1d

    goto :goto_a1e

    :catch_a1d
    move-exception v0

    :goto_a1e
    :try_start_a1e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_NONAGGRESSION_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xba

    aput v2, v0, v1
    :try_end_a2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1e .. :try_end_a2a} :catch_a2b

    goto :goto_a2c

    :catch_a2b
    move-exception v0

    :goto_a2c
    :try_start_a2c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MILITARY_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xbb

    aput v2, v0, v1
    :try_end_a38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2c .. :try_end_a38} :catch_a39

    goto :goto_a3a

    :catch_a39
    move-exception v0

    :goto_a3a
    :try_start_a3a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DEFENSIVE_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xbc

    aput v2, v0, v1
    :try_end_a46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3a .. :try_end_a46} :catch_a47

    goto :goto_a48

    :catch_a47
    move-exception v0

    :goto_a48
    :try_start_a48
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_INDEPENDENCE_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xbd

    aput v2, v0, v1
    :try_end_a54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a48 .. :try_end_a54} :catch_a55

    goto :goto_a56

    :catch_a55
    move-exception v0

    :goto_a56
    :try_start_a56
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV2_OCCUPY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xbe

    aput v2, v0, v1
    :try_end_a62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a56 .. :try_end_a62} :catch_a63

    goto :goto_a64

    :catch_a63
    move-exception v0

    :goto_a64
    :try_start_a64
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_IMPOSE_SANCTIONS2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xbf

    aput v2, v0, v1
    :try_end_a70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a64 .. :try_end_a70} :catch_a71

    goto :goto_a72

    :catch_a71
    move-exception v0

    :goto_a72
    :try_start_a72
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVINCES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xc0

    aput v2, v0, v1
    :try_end_a7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a72 .. :try_end_a7e} :catch_a7f

    goto :goto_a80

    :catch_a7f
    move-exception v0

    :goto_a80
    :try_start_a80
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVINCES_ADDCORE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xc1

    aput v2, v0, v1
    :try_end_a8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a80 .. :try_end_a8c} :catch_a8d

    goto :goto_a8e

    :catch_a8d
    move-exception v0

    :goto_a8e
    :try_start_a8e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVINCES_REMOVECORE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xc2

    aput v2, v0, v1
    :try_end_a9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8e .. :try_end_a9a} :catch_a9b

    goto :goto_a9c

    :catch_a9b
    move-exception v0

    :goto_a9c
    :try_start_a9c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVINCES_CREATEVASSAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xc3

    aput v2, v0, v1
    :try_end_aa8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9c .. :try_end_aa8} :catch_aa9

    goto :goto_aaa

    :catch_aa9
    move-exception v0

    :goto_aaa
    :try_start_aaa
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_ADDARMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xc4

    aput v2, v0, v1
    :try_end_ab6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aaa .. :try_end_ab6} :catch_ab7

    goto :goto_ab8

    :catch_ab7
    move-exception v0

    :goto_ab8
    :try_start_ab8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_UPDATEPOPULAION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xc5

    aput v2, v0, v1
    :try_end_ac4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab8 .. :try_end_ac4} :catch_ac5

    goto :goto_ac6

    :catch_ac5
    move-exception v0

    :goto_ac6
    :try_start_ac6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_UPDATEPOPULAION_PERC:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xc6

    aput v2, v0, v1
    :try_end_ad2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac6 .. :try_end_ad2} :catch_ad3

    goto :goto_ad4

    :catch_ad3
    move-exception v0

    :goto_ad4
    :try_start_ad4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_UPDATEECONOMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xc7

    aput v2, v0, v1
    :try_end_ae0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad4 .. :try_end_ae0} :catch_ae1

    goto :goto_ae2

    :catch_ae1
    move-exception v0

    :goto_ae2
    :try_start_ae2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_UPDATEECONOMY_PERC:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xc8

    aput v2, v0, v1
    :try_end_aee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae2 .. :try_end_aee} :catch_aef

    goto :goto_af0

    :catch_aef
    move-exception v0

    :goto_af0
    :try_start_af0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_DEVELOPMENT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xc9

    aput v2, v0, v1
    :try_end_afc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af0 .. :try_end_afc} :catch_afd

    goto :goto_afe

    :catch_afd
    move-exception v0

    :goto_afe
    :try_start_afe
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xca

    aput v2, v0, v1
    :try_end_b0a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_afe .. :try_end_b0a} :catch_b0b

    goto :goto_b0c

    :catch_b0b
    move-exception v0

    :goto_b0c
    :try_start_b0c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xcb

    aput v2, v0, v1
    :try_end_b18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0c .. :try_end_b18} :catch_b19

    goto :goto_b1a

    :catch_b19
    move-exception v0

    :goto_b1a
    :try_start_b1a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVINCES_OCCUPY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xcc

    aput v2, v0, v1
    :try_end_b26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1a .. :try_end_b26} :catch_b27

    goto :goto_b28

    :catch_b27
    move-exception v0

    :goto_b28
    :try_start_b28
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVINCES_BUILDBUILDINGS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xcd

    aput v2, v0, v1
    :try_end_b34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b28 .. :try_end_b34} :catch_b35

    goto :goto_b36

    :catch_b35
    move-exception v0

    :goto_b36
    :try_start_b36
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVINCES_BUILDBUILDINGSDESTROY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xce

    aput v2, v0, v1
    :try_end_b42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b36 .. :try_end_b42} :catch_b43

    goto :goto_b44

    :catch_b43
    move-exception v0

    :goto_b44
    :try_start_b44
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_NUKESDROPPROVINCES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xcf

    aput v2, v0, v1
    :try_end_b50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b44 .. :try_end_b50} :catch_b51

    goto :goto_b52

    :catch_b51
    move-exception v0

    :goto_b52
    :try_start_b52
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_MOVECAPITAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xd0

    aput v2, v0, v1
    :try_end_b5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b52 .. :try_end_b5e} :catch_b5f

    goto :goto_b60

    :catch_b5f
    move-exception v0

    :goto_b60
    :try_start_b60
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_RENAMEPROV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xd1

    aput v2, v0, v1
    :try_end_b6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b60 .. :try_end_b6c} :catch_b6d

    goto :goto_b6e

    :catch_b6d
    move-exception v0

    :goto_b6e
    :try_start_b6e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTIDEOLOGY_CHANGEIDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xd2

    aput v2, v0, v1
    :try_end_b7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6e .. :try_end_b7a} :catch_b7b

    goto :goto_b7c

    :catch_b7b
    move-exception v0

    :goto_b7c
    :try_start_b7c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTRELIGION_CHANGERELIGION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xd3

    aput v2, v0, v1
    :try_end_b88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7c .. :try_end_b88} :catch_b89

    goto :goto_b8a

    :catch_b89
    move-exception v0

    :goto_b8a
    :try_start_b8a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_LEADER_COND_SELECT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xd4

    aput v2, v0, v1
    :try_end_b96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8a .. :try_end_b96} :catch_b97

    goto :goto_b98

    :catch_b97
    move-exception v0

    :goto_b98
    :try_start_b98
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTEVENT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xd5

    aput v2, v0, v1
    :try_end_ba4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b98 .. :try_end_ba4} :catch_ba5

    goto :goto_ba6

    :catch_ba5
    move-exception v0

    :goto_ba6
    :try_start_ba6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_FORMCIV2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xd6

    aput v2, v0, v1
    :try_end_bb2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba6 .. :try_end_bb2} :catch_bb3

    goto :goto_bb4

    :catch_bb3
    move-exception v0

    :goto_bb4
    :try_start_bb4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->COND_SELECTDECISION_DECISIONTAKEN:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xd7

    aput v2, v0, v1
    :try_end_bc0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb4 .. :try_end_bc0} :catch_bc1

    goto :goto_bc2

    :catch_bc1
    move-exception v0

    :goto_bc2
    return-void
.end method
