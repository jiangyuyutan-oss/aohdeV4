.class synthetic Lage/of/civilizations2/jakowski/lukasz/CFG$88;
.super Ljava/lang/Object;
.source "CFG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/CFG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

.field static final synthetic $SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 7712
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->values()[Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->EXIT_GAME:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

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
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->SELECT_CIVILIZATION:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

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
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->PAUSE_GAME:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    :try_start_2e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->CREATE_RANDOM_GAME_EXIT_MAIN_MENU:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v3

    :goto_3b
    :try_start_3b
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->PEACE_TREATY_BACK_ARE_YOU_SURE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v3

    :goto_48
    :try_start_48
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->SEND_DEMANDS:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v3

    :goto_55
    :try_start_55
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->PEACE_TREARY_ACCEPT:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v3

    :goto_62
    :try_start_62
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->PEACE_TREARY_REFUSE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v3

    :goto_70
    :try_start_70
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ABADON:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v3

    :goto_7e
    :try_start_7e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->LEAVE_HRE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0xa

    aput v5, v3, v4
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    move-exception v3

    :goto_8c
    :try_start_8c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->DISSOLVE_HRE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0xb

    aput v5, v3, v4
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception v3

    :goto_9a
    :try_start_9a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->UNITE_HRE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0xc

    aput v5, v3, v4
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a6} :catch_a7

    goto :goto_a8

    :catch_a7
    move-exception v3

    :goto_a8
    :try_start_a8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->INVITE_TO_HRE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0xd

    aput v5, v3, v4
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    move-exception v3

    :goto_b6
    :try_start_b6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->JOIN_A_WAR_AGGRESSORS:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0xe

    aput v5, v3, v4
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c3

    goto :goto_c4

    :catch_c3
    move-exception v3

    :goto_c4
    :try_start_c4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->JOIN_A_WAR_DEFENDERS:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0xf

    aput v5, v3, v4
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_d1

    goto :goto_d2

    :catch_d1
    move-exception v3

    :goto_d2
    :try_start_d2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->COLONIZE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x10

    aput v5, v3, v4
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_de} :catch_df

    goto :goto_e0

    :catch_df
    move-exception v3

    :goto_e0
    :try_start_e0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->END_GAME_SPECTACTOR:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x11

    aput v5, v3, v4
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_ec} :catch_ed

    goto :goto_ee

    :catch_ed
    move-exception v3

    :goto_ee
    :try_start_ee
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->END_GAME_EXIT_MAIN_MENU:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x12

    aput v5, v3, v4
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_fa} :catch_fb

    goto :goto_fc

    :catch_fb
    move-exception v3

    :goto_fc
    :try_start_fc
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->END_GAME_ONE_MORE_TURN:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x13

    aput v5, v3, v4
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_109

    goto :goto_10a

    :catch_109
    move-exception v3

    :goto_10a
    :try_start_10a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->CONTINUE_AFTER_END_GAME:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x14

    aput v5, v3, v4
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_117

    goto :goto_118

    :catch_117
    move-exception v3

    :goto_118
    :try_start_118
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->FIGHT_COALITION:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x15

    aput v5, v3, v4
    :try_end_124
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_124} :catch_125

    goto :goto_126

    :catch_125
    move-exception v3

    :goto_126
    :try_start_126
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->EXIT_CREATOR:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x16

    aput v5, v3, v4
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_126 .. :try_end_132} :catch_133

    goto :goto_134

    :catch_133
    move-exception v3

    :goto_134
    :try_start_134
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->PEACE_TREATY_TAKE_ALL:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x17

    aput v5, v3, v4
    :try_end_140
    .catch Ljava/lang/NoSuchFieldError; {:try_start_134 .. :try_end_140} :catch_141

    goto :goto_142

    :catch_141
    move-exception v3

    :goto_142
    :try_start_142
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->CREATE_SCENARIO_REMOVE_CIVILIZATION:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x18

    aput v5, v3, v4
    :try_end_14e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_142 .. :try_end_14e} :catch_14f

    goto :goto_150

    :catch_14f
    move-exception v3

    :goto_150
    :try_start_150
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->CREATE_SCENARIO_ASSIGN_CIVILIZATION:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x19

    aput v5, v3, v4
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_15d

    goto :goto_15e

    :catch_15d
    move-exception v3

    :goto_15e
    :try_start_15e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->TRADE_REQUEST_SELECT_CIV:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x1a

    aput v5, v3, v4
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_16a} :catch_16b

    goto :goto_16c

    :catch_16b
    move-exception v3

    :goto_16c
    :try_start_16c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->SAVE_SCENARIO:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x1b

    aput v5, v3, v4
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16c .. :try_end_178} :catch_179

    goto :goto_17a

    :catch_179
    move-exception v3

    :goto_17a
    :try_start_17a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->CREATE_SCENARIO_REMOVE_EVENT:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x1c

    aput v5, v3, v4
    :try_end_186
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17a .. :try_end_186} :catch_187

    goto :goto_188

    :catch_187
    move-exception v3

    :goto_188
    :try_start_188
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->CONFIRM_LANGUAGE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x1d

    aput v5, v3, v4
    :try_end_194
    .catch Ljava/lang/NoSuchFieldError; {:try_start_188 .. :try_end_194} :catch_195

    goto :goto_196

    :catch_195
    move-exception v3

    :goto_196
    :try_start_196
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->CREATE_SCENARIO_EVENTS_EDIT_BACK:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x1e

    aput v5, v3, v4
    :try_end_1a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_196 .. :try_end_1a2} :catch_1a3

    goto :goto_1a4

    :catch_1a3
    move-exception v3

    :goto_1a4
    :try_start_1a4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->CREATE_SCENARIO_EVENTS_EDIT_SAVE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x1f

    aput v5, v3, v4
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1b0} :catch_1b1

    goto :goto_1b2

    :catch_1b1
    move-exception v3

    :goto_1b2
    :try_start_1b2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->SURRENDER:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x20

    aput v5, v3, v4
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b2 .. :try_end_1be} :catch_1bf

    goto :goto_1c0

    :catch_1bf
    move-exception v3

    :goto_1c0
    :try_start_1c0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->FORM_A_CIV:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x21

    aput v5, v3, v4
    :try_end_1cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c0 .. :try_end_1cc} :catch_1cd

    goto :goto_1ce

    :catch_1cd
    move-exception v3

    :goto_1ce
    :try_start_1ce
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->DESELET_ALL_SELECTED_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x22

    aput v5, v3, v4
    :try_end_1da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ce .. :try_end_1da} :catch_1db

    goto :goto_1dc

    :catch_1db
    move-exception v3

    :goto_1dc
    :try_start_1dc
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->DESELET_ALL_SELECTED_PROVINCES_CREATE_A_VASSAL:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x23

    aput v5, v3, v4
    :try_end_1e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1dc .. :try_end_1e8} :catch_1e9

    goto :goto_1ea

    :catch_1e9
    move-exception v3

    :goto_1ea
    :try_start_1ea
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->DESELET_ALL_SELECTED_PROVINCES_CREATE_HOLY_ROMAN_EMPIRE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x24

    aput v5, v3, v4
    :try_end_1f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ea .. :try_end_1f6} :catch_1f7

    goto :goto_1f8

    :catch_1f7
    move-exception v3

    :goto_1f8
    :try_start_1f8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->NO_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x25

    aput v5, v3, v4
    :try_end_204
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f8 .. :try_end_204} :catch_205

    goto :goto_206

    :catch_205
    move-exception v3

    :goto_206
    :try_start_206
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_ASSIMILATE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x26

    aput v5, v3, v4
    :try_end_212
    .catch Ljava/lang/NoSuchFieldError; {:try_start_206 .. :try_end_212} :catch_213

    goto :goto_214

    :catch_213
    move-exception v3

    :goto_214
    :try_start_214
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_INVEST_FESTIVAL:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x27

    aput v5, v3, v4
    :try_end_220
    .catch Ljava/lang/NoSuchFieldError; {:try_start_214 .. :try_end_220} :catch_221

    goto :goto_222

    :catch_221
    move-exception v3

    :goto_222
    :try_start_222
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_PROPAGANDA:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x28

    aput v5, v3, v4
    :try_end_22e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_222 .. :try_end_22e} :catch_22f

    goto :goto_230

    :catch_22f
    move-exception v3

    :goto_230
    :try_start_230
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_FORT:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x29

    aput v5, v3, v4
    :try_end_23c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_230 .. :try_end_23c} :catch_23d

    goto :goto_23e

    :catch_23d
    move-exception v3

    :goto_23e
    :try_start_23e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_TOWER:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x2a

    aput v5, v3, v4
    :try_end_24a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23e .. :try_end_24a} :catch_24b

    goto :goto_24c

    :catch_24b
    move-exception v3

    :goto_24c
    :try_start_24c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_FARM:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x2b

    aput v5, v3, v4
    :try_end_258
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24c .. :try_end_258} :catch_259

    goto :goto_25a

    :catch_259
    move-exception v3

    :goto_25a
    :try_start_25a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_WORKSHOP:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x2c

    aput v5, v3, v4
    :try_end_266
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25a .. :try_end_266} :catch_267

    goto :goto_268

    :catch_267
    move-exception v3

    :goto_268
    :try_start_268
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_MARKET:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x2d

    aput v5, v3, v4
    :try_end_274
    .catch Ljava/lang/NoSuchFieldError; {:try_start_268 .. :try_end_274} :catch_275

    goto :goto_276

    :catch_275
    move-exception v3

    :goto_276
    :try_start_276
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_LIBRARY:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x2e

    aput v5, v3, v4
    :try_end_282
    .catch Ljava/lang/NoSuchFieldError; {:try_start_276 .. :try_end_282} :catch_283

    goto :goto_284

    :catch_283
    move-exception v3

    :goto_284
    :try_start_284
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_ARMOURY:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x2f

    aput v5, v3, v4
    :try_end_290
    .catch Ljava/lang/NoSuchFieldError; {:try_start_284 .. :try_end_290} :catch_291

    goto :goto_292

    :catch_291
    move-exception v3

    :goto_292
    :try_start_292
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_SUPPLIES:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x30

    aput v5, v3, v4
    :try_end_29e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_292 .. :try_end_29e} :catch_29f

    goto :goto_2a0

    :catch_29f
    move-exception v3

    :goto_2a0
    :try_start_2a0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_PORT:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x31

    aput v5, v3, v4
    :try_end_2ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a0 .. :try_end_2ac} :catch_2ad

    goto :goto_2ae

    :catch_2ad
    move-exception v3

    :goto_2ae
    :try_start_2ae
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_INVEST_ECO:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x32

    aput v5, v3, v4
    :try_end_2ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ae .. :try_end_2ba} :catch_2bb

    goto :goto_2bc

    :catch_2bb
    move-exception v3

    :goto_2bc
    :try_start_2bc
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_INVEST_DEV:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x33

    aput v5, v3, v4
    :try_end_2c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2bc .. :try_end_2c8} :catch_2c9

    goto :goto_2ca

    :catch_2c9
    move-exception v3

    :goto_2ca
    :try_start_2ca
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->REVERSE_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x34

    aput v5, v3, v4
    :try_end_2d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ca .. :try_end_2d6} :catch_2d7

    goto :goto_2d8

    :catch_2d7
    move-exception v3

    :goto_2d8
    :try_start_2d8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->CONFIRM_END_TURN:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x35

    aput v5, v3, v4
    :try_end_2e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d8 .. :try_end_2e4} :catch_2e5

    goto :goto_2e6

    :catch_2e5
    move-exception v3

    :goto_2e6
    :try_start_2e6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->START_TUTORIAL:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x36

    aput v5, v3, v4
    :try_end_2f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e6 .. :try_end_2f2} :catch_2f3

    goto :goto_2f4

    :catch_2f3
    move-exception v3

    :goto_2f4
    :try_start_2f4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->REMOVE_RANDOM_ALLIANCES_NAMES_BUNDLE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x37

    aput v5, v3, v4
    :try_end_300
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f4 .. :try_end_300} :catch_301

    goto :goto_302

    :catch_301
    move-exception v3

    :goto_302
    :try_start_302
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->REMOVE_TRADE_ZONE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x38

    aput v5, v3, v4
    :try_end_30e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_302 .. :try_end_30e} :catch_30f

    goto :goto_310

    :catch_30f
    move-exception v3

    :goto_310
    :try_start_310
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->SAVE_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x39

    aput v5, v3, v4
    :try_end_31c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_310 .. :try_end_31c} :catch_31d

    goto :goto_31e

    :catch_31d
    move-exception v3

    :goto_31e
    :try_start_31e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->SAVE_THE_GAME_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x3a

    aput v5, v3, v4
    :try_end_32a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31e .. :try_end_32a} :catch_32b

    goto :goto_32c

    :catch_32b
    move-exception v3

    :goto_32c
    :try_start_32c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->START_CHALLENGE_ID:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x3b

    aput v5, v3, v4
    :try_end_338
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32c .. :try_end_338} :catch_339

    goto :goto_33a

    :catch_339
    move-exception v3

    :goto_33a
    :try_start_33a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->REMOVE_PLAYER:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x3c

    aput v5, v3, v4
    :try_end_346
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33a .. :try_end_346} :catch_347

    goto :goto_348

    :catch_347
    move-exception v3

    :goto_348
    :try_start_348
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->BECOME_VASSAL:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x3d

    aput v5, v3, v4
    :try_end_354
    .catch Ljava/lang/NoSuchFieldError; {:try_start_348 .. :try_end_354} :catch_355

    goto :goto_356

    :catch_355
    move-exception v3

    :goto_356
    :try_start_356
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->SAVE_THE_GAME_AS_NEW:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x3e

    aput v5, v3, v4
    :try_end_362
    .catch Ljava/lang/NoSuchFieldError; {:try_start_356 .. :try_end_362} :catch_363

    goto :goto_364

    :catch_363
    move-exception v3

    :goto_364
    :try_start_364
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_NOT_SAVED_PROGRESS_WILL_BE_LOST:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x3f

    aput v5, v3, v4
    :try_end_370
    .catch Ljava/lang/NoSuchFieldError; {:try_start_364 .. :try_end_370} :catch_371

    goto :goto_372

    :catch_371
    move-exception v3

    :goto_372
    :try_start_372
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_NOT_SAVED_PROGRESS_WILL_BE_LOST2:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x40

    aput v5, v3, v4
    :try_end_37e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_372 .. :try_end_37e} :catch_37f

    goto :goto_380

    :catch_37f
    move-exception v3

    :goto_380
    :try_start_380
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->AGE_OF_CIVILIZATIONS_MENU:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x41

    aput v5, v3, v4
    :try_end_38c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_380 .. :try_end_38c} :catch_38d

    goto :goto_38e

    :catch_38d
    move-exception v3

    :goto_38e
    :try_start_38e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->GO_TO_WIKI:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x42

    aput v5, v3, v4
    :try_end_39a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38e .. :try_end_39a} :catch_39b

    goto :goto_39c

    :catch_39b
    move-exception v3

    :goto_39c
    :try_start_39c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->GO_TO_WIKI_SCENARIO:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x43

    aput v5, v3, v4
    :try_end_3a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39c .. :try_end_3a8} :catch_3a9

    goto :goto_3aa

    :catch_3a9
    move-exception v3

    :goto_3aa
    :try_start_3aa
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->GO_TO_LINK:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x44

    aput v5, v3, v4
    :try_end_3b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3aa .. :try_end_3b6} :catch_3b7

    goto :goto_3b8

    :catch_3b7
    move-exception v3

    :goto_3b8
    :try_start_3b8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->RELEASE_A_VASSAL:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x45

    aput v5, v3, v4
    :try_end_3c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b8 .. :try_end_3c4} :catch_3c5

    goto :goto_3c6

    :catch_3c5
    move-exception v3

    :goto_3c6
    :try_start_3c6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ADD_PLAYER:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x46

    aput v5, v3, v4
    :try_end_3d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c6 .. :try_end_3d2} :catch_3d3

    goto :goto_3d4

    :catch_3d3
    move-exception v3

    :goto_3d4
    :try_start_3d4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->JOIN_TO_HRE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x47

    aput v5, v3, v4
    :try_end_3e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d4 .. :try_end_3e0} :catch_3e1

    goto :goto_3e2

    :catch_3e1
    move-exception v3

    :goto_3e2
    :try_start_3e2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->SHUFFLE_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x48

    aput v5, v3, v4
    :try_end_3ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e2 .. :try_end_3ee} :catch_3ef

    goto :goto_3f0

    :catch_3ef
    move-exception v3

    :goto_3f0
    :try_start_3f0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->GENERATE_SUGGESTED_OWNERS:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x49

    aput v5, v3, v4
    :try_end_3fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f0 .. :try_end_3fc} :catch_3fd

    goto :goto_3fe

    :catch_3fd
    move-exception v3

    :goto_3fe
    :try_start_3fe
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->GENERATE_PRE_DEFINED_BORDERS:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x4a

    aput v5, v3, v4
    :try_end_40a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3fe .. :try_end_40a} :catch_40b

    goto :goto_40c

    :catch_40b
    move-exception v3

    :goto_40c
    :try_start_40c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->GENERATE_SEA_ROUTES:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x4b

    aput v5, v3, v4
    :try_end_418
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40c .. :try_end_418} :catch_419

    goto :goto_41a

    :catch_419
    move-exception v3

    :goto_41a
    :try_start_41a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->MAP_EDITOR_WASTELAND_MAPS_WORLD_FILL:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x4c

    aput v5, v3, v4
    :try_end_426
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41a .. :try_end_426} :catch_427

    goto :goto_428

    :catch_427
    move-exception v3

    :goto_428
    :try_start_428
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->DELETE_SAVED_GAME:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x4d

    aput v5, v3, v4
    :try_end_434
    .catch Ljava/lang/NoSuchFieldError; {:try_start_428 .. :try_end_434} :catch_435

    goto :goto_436

    :catch_435
    move-exception v3

    :goto_436
    :try_start_436
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->MAP_EDITOR_SEA_ARMY_BOXES_REMOVE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x4e

    aput v5, v3, v4
    :try_end_442
    .catch Ljava/lang/NoSuchFieldError; {:try_start_436 .. :try_end_442} :catch_443

    goto :goto_444

    :catch_443
    move-exception v3

    :goto_444
    :try_start_444
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->REMOVE_PRINCE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x4f

    aput v5, v3, v4
    :try_end_450
    .catch Ljava/lang/NoSuchFieldError; {:try_start_444 .. :try_end_450} :catch_451

    goto :goto_452

    :catch_451
    move-exception v3

    :goto_452
    :try_start_452
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->CONVERT_ARMY_POSITION_TO_ANOTHER_SCALE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x50

    aput v5, v3, v4
    :try_end_45e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_452 .. :try_end_45e} :catch_45f

    goto :goto_460

    :catch_45f
    move-exception v3

    :goto_460
    :try_start_460
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->CONVERT_PORT_POSITION_TO_ANOTHER_SCALE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x51

    aput v5, v3, v4
    :try_end_46c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_460 .. :try_end_46c} :catch_46d

    goto :goto_46e

    :catch_46d
    move-exception v3

    :goto_46e
    :try_start_46e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->MANAGE_DIPLOMACY_REMOVE_CIVILIZATION_FROM_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x52

    aput v5, v3, v4
    :try_end_47a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46e .. :try_end_47a} :catch_47b

    goto :goto_47c

    :catch_47b
    move-exception v3

    :goto_47c
    :try_start_47c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Z_Other$DialogType:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->REMOVE_CITY:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ordinal()I

    move-result v4

    const/16 v5, 0x53

    aput v5, v3, v4
    :try_end_488
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47c .. :try_end_488} :catch_489

    goto :goto_48a

    :catch_489
    move-exception v3

    .line 585
    :goto_48a
    invoke-static {}, Lcom/badlogic/gdx/Application$ApplicationType;->values()[Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I

    :try_start_493
    sget-object v4, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/Application$ApplicationType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_49b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_493 .. :try_end_49b} :catch_49c

    goto :goto_49d

    :catch_49c
    move-exception v1

    :goto_49d
    :try_start_49d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I

    sget-object v3, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v3}, Lcom/badlogic/gdx/Application$ApplicationType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49d .. :try_end_4a7} :catch_4a8

    goto :goto_4a9

    :catch_4a8
    move-exception v0

    :goto_4a9
    :try_start_4a9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$88;->$SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/Application$ApplicationType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a9 .. :try_end_4b3} :catch_4b4

    goto :goto_4b5

    :catch_4b4
    move-exception v0

    :goto_4b5
    return-void
.end method
