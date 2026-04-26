.class public Lage/of/civilizations2/jakowski/lukasz/Ideology;
.super Ljava/lang/Object;
.source "Ideology.java"


# instance fields
.field public ACCEPTABLE_TAXATION:F

.field public ADMINISTRATION_COST:F

.field public ADMINISTRATION_COST_CAPITAL:F

.field public ADMINISTRATION_COST_DISTANCE:F

.field public AI_TYPE:Ljava/lang/String;

.field public AVAILABLE_SINCE_AGE_ID:I

.field public CAN_BECOME_CIVILIZED:I

.field public CIVILIZE_TECH_LEVEL:F

.field public COST_OF_DISBAND:I

.field public COST_OF_MOVE:I

.field public COST_OF_MOVE_OWN_PROVINCE:I

.field public COST_OF_MOVE_SAME_PROVINCE:I

.field public COST_OF_PLUNDER:I

.field public COST_OF_RECRUIT:I

.field public DEFENSE_BONUS:I

.field public DESC:Ljava/lang/String;

.field public GOV_GROUP_ID:I

.field public INCOME_PRODUCTION:F

.field public INCOME_TAXATION:F

.field public MILITARY_UPKEEP:F

.field public MIN_GOODS:F

.field public MIN_INVESTMENTS:F

.field public RESEARCH_COST:F

.field public REVOLUTIONARY:Z

.field public extraTag:Ljava/lang/String;

.field private iCrownImage:Lage/of/civilizations2/jakowski/lukasz/Image;

.field private iCrownImageScaled:Lage/of/civilizations2/jakowski/lukasz/Image;

.field private iCrownVassalImage:Lage/of/civilizations2/jakowski/lukasz/Image;

.field private oColor:Lcom/badlogic/gdx/graphics/Color;

.field private sName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIFFIIIFFIFFFFFIIIIIFFLjava/lang/String;ZILjava/lang/String;)V
    .registers 58
    .param p1, "sName"  # Ljava/lang/String;
    .param p2, "extraTag"  # Ljava/lang/String;
    .param p3, "iR"  # I
    .param p4, "iG"  # I
    .param p5, "iB"  # I
    .param p6, "MIN_GOODS"  # F
    .param p7, "MIN_INVESTMENTS"  # F
    .param p8, "COST_OF_MOVE"  # I
    .param p9, "COST_OF_MOVE_SAME_PROVINCE"  # I
    .param p10, "COST_OF_MOVE_OWN_PROVINCE"  # I
    .param p11, "RESEARCH_COST"  # F
    .param p12, "ACCEPTABLE_TAXATION"  # F
    .param p13, "DEFENSE_BONUS"  # I
    .param p14, "MILITARY_UPKEEP"  # F
    .param p15, "ADMINISTRATION_COST"  # F
    .param p16, "ADMINISTRATION_COST_DISTANCE"  # F
    .param p17, "INCOME_TAXATION"  # F
    .param p18, "INCOME_PRODUCTION"  # F
    .param p19, "COST_OF_RECRUIT"  # I
    .param p20, "COST_OF_DISBAND"  # I
    .param p21, "COST_OF_PLUNDER"  # I
    .param p22, "CAN_BECOME_CIVILIZED"  # I
    .param p23, "AVAILABLE_SINCE_AGE_ID"  # I
    .param p24, "ADMINISTRATION_COST_CAPITAL"  # F
    .param p25, "CIVILIZE_TECH_LEVEL"  # F
    .param p26, "AI_TYPE"  # Ljava/lang/String;
    .param p27, "REVOLUTIONARY"  # Z
    .param p28, "GOV_GROUP_ID"  # I
    .param p29, "DESC"  # Ljava/lang/String;

    .line 76
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v0, p24

    const-string v3, "crowns/"

    const-string v4, "UI/"

    const-string v5, ".png"

    const-string v6, "UI/imageNotFound.png"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v7, 0x0

    iput-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 26
    iput-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownVassalImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 28
    iput-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImageScaled:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 30
    const v7, 0x3e19999a  # 0.15f

    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_GOODS:F

    .line 31
    const v8, 0x3dcccccd  # 0.1f

    iput v8, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_INVESTMENTS:F

    .line 32
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    .line 33
    const/high16 v7, 0x3e800000  # 0.25f

    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    .line 34
    const/high16 v7, 0x3f800000  # 1.0f

    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    .line 36
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    .line 37
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST_DISTANCE:F

    .line 38
    const v9, 0x3f19999a  # 0.6f

    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST_CAPITAL:F

    .line 40
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    .line 41
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    .line 43
    const/4 v9, 0x6

    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    .line 44
    const/4 v9, 0x4

    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE_SAME_PROVINCE:I

    .line 45
    const/4 v9, 0x2

    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE_OWN_PROVINCE:I

    .line 47
    const/16 v10, 0x14

    iput v10, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_DISBAND:I

    .line 48
    const/16 v10, 0xc

    iput v10, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_PLUNDER:I

    .line 50
    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    .line 52
    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEFENSE_BONUS:I

    .line 54
    const/4 v9, -0x1

    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    .line 55
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CIVILIZE_TECH_LEVEL:F

    .line 56
    const/4 v9, 0x0

    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->AVAILABLE_SINCE_AGE_ID:I

    .line 58
    iput-boolean v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    .line 59
    const-string v9, ""

    iput-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DESC:Ljava/lang/String;

    .line 78
    move-object/from16 v9, p1

    iput-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->sName:Ljava/lang/String;

    .line 79
    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->extraTag:Ljava/lang/String;

    .line 80
    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    move/from16 v11, p3

    int-to-float v12, v11

    const/high16 v13, 0x437f0000  # 255.0f

    div-float/2addr v12, v13

    move/from16 v14, p4

    int-to-float v15, v14

    div-float/2addr v15, v13

    move/from16 v8, p5

    int-to-float v7, v8

    div-float/2addr v7, v13

    const v13, 0x3ed9999a  # 0.425f

    invoke-direct {v10, v12, v15, v7, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->oColor:Lcom/badlogic/gdx/graphics/Color;

    .line 82
    move/from16 v7, p28

    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->GOV_GROUP_ID:I

    .line 84
    const v10, 0x3c23d70a  # 0.01f

    cmpg-float v12, p11, v10

    if-gez v12, :cond_89

    .line 85
    const v12, 0x3c23d70a  # 0.01f

    .end local p11  # "RESEARCH_COST":F
    .local v12, "RESEARCH_COST":F
    goto :goto_8b

    .line 84
    .end local v12  # "RESEARCH_COST":F
    .restart local p11  # "RESEARCH_COST":F
    :cond_89
    move/from16 v12, p11

    .line 87
    .end local p11  # "RESEARCH_COST":F
    .restart local v12  # "RESEARCH_COST":F
    :goto_8b
    cmpg-float v13, p12, v10

    if-gez v13, :cond_93

    .line 88
    const v13, 0x3c23d70a  # 0.01f

    .end local p12  # "ACCEPTABLE_TAXATION":F
    .local v13, "ACCEPTABLE_TAXATION":F
    goto :goto_95

    .line 87
    .end local v13  # "ACCEPTABLE_TAXATION":F
    .restart local p12  # "ACCEPTABLE_TAXATION":F
    :cond_93
    move/from16 v13, p12

    .line 90
    .end local p12  # "ACCEPTABLE_TAXATION":F
    .restart local v13  # "ACCEPTABLE_TAXATION":F
    :goto_95
    const v15, 0x3f7d70a4  # 0.99f

    cmpl-float v15, v13, v15

    if-lez v15, :cond_9f

    .line 91
    const v13, 0x3f7d70a4  # 0.99f

    .line 93
    :cond_9f
    move/from16 v15, p6

    float-to-double v10, v15

    const-wide v19, 0x3f847ae147ae147bL  # 0.01

    cmpg-double v21, v10, v19

    if-gez v21, :cond_af

    .line 94
    const v10, 0x3c23d70a  # 0.01f

    .end local p6  # "MIN_GOODS":F
    .local v10, "MIN_GOODS":F
    goto :goto_b0

    .line 93
    .end local v10  # "MIN_GOODS":F
    .restart local p6  # "MIN_GOODS":F
    :cond_af
    move v10, v15

    .line 96
    .end local p6  # "MIN_GOODS":F
    .restart local v10  # "MIN_GOODS":F
    :goto_b0
    const/high16 v11, 0x3f800000  # 1.0f

    cmpl-float v15, v10, v11

    if-lez v15, :cond_b8

    .line 97
    const/high16 v10, 0x3f800000  # 1.0f

    .line 99
    :cond_b8
    move/from16 v11, p7

    float-to-double v7, v11

    cmpg-double v15, v7, v19

    if-gez v15, :cond_c3

    .line 100
    const v7, 0x3c23d70a  # 0.01f

    .end local p7  # "MIN_INVESTMENTS":F
    .local v7, "MIN_INVESTMENTS":F
    goto :goto_c4

    .line 99
    .end local v7  # "MIN_INVESTMENTS":F
    .restart local p7  # "MIN_INVESTMENTS":F
    :cond_c3
    move v7, v11

    .line 102
    .end local p7  # "MIN_INVESTMENTS":F
    .restart local v7  # "MIN_INVESTMENTS":F
    :goto_c4
    const/high16 v8, 0x3f800000  # 1.0f

    cmpl-float v11, v7, v8

    if-lez v11, :cond_cc

    .line 103
    const/high16 v7, 0x3f800000  # 1.0f

    .line 106
    :cond_cc
    iput v13, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    .line 107
    iput v10, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_GOODS:F

    .line 108
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_INVESTMENTS:F

    .line 109
    iput v12, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    .line 111
    if-gez p8, :cond_d8

    .line 112
    const/4 v8, 0x0

    .end local p8  # "COST_OF_MOVE":I
    .local v8, "COST_OF_MOVE":I
    goto :goto_da

    .line 111
    .end local v8  # "COST_OF_MOVE":I
    .restart local p8  # "COST_OF_MOVE":I
    :cond_d8
    move/from16 v8, p8

    .line 114
    .end local p8  # "COST_OF_MOVE":I
    .restart local v8  # "COST_OF_MOVE":I
    :goto_da
    if-gez p9, :cond_de

    .line 115
    const/4 v11, 0x0

    .end local p9  # "COST_OF_MOVE_SAME_PROVINCE":I
    .local v11, "COST_OF_MOVE_SAME_PROVINCE":I
    goto :goto_e0

    .line 114
    .end local v11  # "COST_OF_MOVE_SAME_PROVINCE":I
    .restart local p9  # "COST_OF_MOVE_SAME_PROVINCE":I
    :cond_de
    move/from16 v11, p9

    .line 117
    .end local p9  # "COST_OF_MOVE_SAME_PROVINCE":I
    .restart local v11  # "COST_OF_MOVE_SAME_PROVINCE":I
    :goto_e0
    if-gez p10, :cond_e4

    .line 118
    const/4 v15, 0x0

    .end local p10  # "COST_OF_MOVE_OWN_PROVINCE":I
    .local v15, "COST_OF_MOVE_OWN_PROVINCE":I
    goto :goto_e6

    .line 117
    .end local v15  # "COST_OF_MOVE_OWN_PROVINCE":I
    .restart local p10  # "COST_OF_MOVE_OWN_PROVINCE":I
    :cond_e4
    move/from16 v15, p10

    .line 120
    .end local p10  # "COST_OF_MOVE_OWN_PROVINCE":I
    .restart local v15  # "COST_OF_MOVE_OWN_PROVINCE":I
    :goto_e6
    if-gez p20, :cond_f1

    .line 121
    const/16 v21, 0x0

    move/from16 v27, v21

    move/from16 v21, v7

    move/from16 v7, v27

    .end local p20  # "COST_OF_DISBAND":I
    .local v21, "COST_OF_DISBAND":I
    goto :goto_f5

    .line 120
    .end local v21  # "COST_OF_DISBAND":I
    .restart local p20  # "COST_OF_DISBAND":I
    :cond_f1
    move/from16 v21, v7

    move/from16 v7, p20

    .line 123
    .end local p20  # "COST_OF_DISBAND":I
    .local v7, "COST_OF_DISBAND":I
    .local v21, "MIN_INVESTMENTS":F
    :goto_f5
    if-gez p21, :cond_fc

    .line 124
    const/16 v22, 0x0

    move/from16 v9, v22

    .end local p21  # "COST_OF_PLUNDER":I
    .local v22, "COST_OF_PLUNDER":I
    goto :goto_fe

    .line 123
    .end local v22  # "COST_OF_PLUNDER":I
    .restart local p21  # "COST_OF_PLUNDER":I
    :cond_fc
    move/from16 v9, p21

    .line 127
    .end local p21  # "COST_OF_PLUNDER":I
    .local v9, "COST_OF_PLUNDER":I
    :goto_fe
    iput v8, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    .line 128
    iput v11, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE_SAME_PROVINCE:I

    .line 129
    iput v15, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE_OWN_PROVINCE:I

    .line 130
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_DISBAND:I

    .line 131
    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_PLUNDER:I

    .line 133
    move/from16 v22, v7

    .end local v7  # "COST_OF_DISBAND":I
    .local v22, "COST_OF_DISBAND":I
    const/16 v7, -0x63

    move/from16 p6, v8

    move/from16 v8, p13

    .end local v8  # "COST_OF_MOVE":I
    .local p6, "COST_OF_MOVE":I
    if-ge v8, v7, :cond_115

    .line 134
    const/16 v7, -0x63

    .end local p13  # "DEFENSE_BONUS":I
    .local v7, "DEFENSE_BONUS":I
    goto :goto_116

    .line 133
    .end local v7  # "DEFENSE_BONUS":I
    .restart local p13  # "DEFENSE_BONUS":I
    :cond_115
    move v7, v8

    .line 136
    .end local p13  # "DEFENSE_BONUS":I
    .restart local v7  # "DEFENSE_BONUS":I
    :goto_116
    const/16 v8, 0x63

    if-le v7, v8, :cond_11c

    .line 137
    const/16 v7, 0x63

    .line 139
    :cond_11c
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEFENSE_BONUS:I

    .line 141
    move/from16 v8, p14

    move/from16 p7, v9

    move/from16 p11, v10

    .end local v9  # "COST_OF_PLUNDER":I
    .end local v10  # "MIN_GOODS":F
    .local p7, "COST_OF_PLUNDER":I
    .local p11, "MIN_GOODS":F
    float-to-double v9, v8

    cmpg-double v23, v9, v19

    if-gez v23, :cond_12c

    .line 142
    const v8, 0x3c23d70a  # 0.01f

    .line 145
    .end local p14  # "MILITARY_UPKEEP":F
    .local v8, "MILITARY_UPKEEP":F
    :cond_12c
    iput v8, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    .line 147
    const v9, 0x3dcccccd  # 0.1f

    cmpg-float v9, p15, v9

    if-gez v9, :cond_139

    .line 148
    const v9, 0x3dcccccd  # 0.1f

    .end local p15  # "ADMINISTRATION_COST":F
    .local v9, "ADMINISTRATION_COST":F
    goto :goto_13b

    .line 147
    .end local v9  # "ADMINISTRATION_COST":F
    .restart local p15  # "ADMINISTRATION_COST":F
    :cond_139
    move/from16 v9, p15

    .line 150
    .end local p15  # "ADMINISTRATION_COST":F
    .restart local v9  # "ADMINISTRATION_COST":F
    :goto_13b
    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    .line 152
    move/from16 v10, p16

    move/from16 v16, v7

    move/from16 v23, v8

    .end local v7  # "DEFENSE_BONUS":I
    .end local v8  # "MILITARY_UPKEEP":F
    .local v16, "DEFENSE_BONUS":I
    .local v23, "MILITARY_UPKEEP":F
    float-to-double v7, v10

    cmpg-double v24, v7, v19

    if-gez v24, :cond_14c

    .line 153
    const v7, 0x3c23d70a  # 0.01f

    .end local p16  # "ADMINISTRATION_COST_DISTANCE":F
    .local v7, "ADMINISTRATION_COST_DISTANCE":F
    goto :goto_14d

    .line 152
    .end local v7  # "ADMINISTRATION_COST_DISTANCE":F
    .restart local p16  # "ADMINISTRATION_COST_DISTANCE":F
    :cond_14c
    move v7, v10

    .line 155
    .end local p16  # "ADMINISTRATION_COST_DISTANCE":F
    .restart local v7  # "ADMINISTRATION_COST_DISTANCE":F
    :goto_14d
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST_DISTANCE:F

    .line 157
    move/from16 v8, p17

    move/from16 v24, v9

    .end local v9  # "ADMINISTRATION_COST":F
    .local v24, "ADMINISTRATION_COST":F
    float-to-double v9, v8

    cmpg-double v25, v9, v19

    if-gez v25, :cond_15b

    .line 158
    const v8, 0x3c23d70a  # 0.01f

    .line 160
    .end local p17  # "INCOME_TAXATION":F
    .local v8, "INCOME_TAXATION":F
    :cond_15b
    iput v8, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    .line 162
    const v9, 0x3c23d70a  # 0.01f

    cmpg-float v9, p18, v9

    if-gez v9, :cond_168

    .line 163
    const v9, 0x3c23d70a  # 0.01f

    .end local p18  # "INCOME_PRODUCTION":F
    .local v9, "INCOME_PRODUCTION":F
    goto :goto_16a

    .line 162
    .end local v9  # "INCOME_PRODUCTION":F
    .restart local p18  # "INCOME_PRODUCTION":F
    :cond_168
    move/from16 v9, p18

    .line 165
    .end local p18  # "INCOME_PRODUCTION":F
    .restart local v9  # "INCOME_PRODUCTION":F
    :goto_16a
    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    .line 167
    const/4 v10, 0x1

    move/from16 v18, v7

    move/from16 v7, p19

    .end local v7  # "ADMINISTRATION_COST_DISTANCE":F
    .local v18, "ADMINISTRATION_COST_DISTANCE":F
    if-ge v7, v10, :cond_174

    .line 168
    const/4 v7, 0x1

    .line 170
    .end local p19  # "COST_OF_RECRUIT":I
    .local v7, "COST_OF_RECRUIT":I
    :cond_174
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    .line 172
    move/from16 v10, p22

    iput v10, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    .line 173
    move/from16 v25, v7

    move/from16 v7, p23

    .end local v7  # "COST_OF_RECRUIT":I
    .local v25, "COST_OF_RECRUIT":I
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->AVAILABLE_SINCE_AGE_ID:I

    .line 175
    move/from16 p9, v8

    .end local v8  # "INCOME_TAXATION":F
    .local p9, "INCOME_TAXATION":F
    float-to-double v7, v0

    cmpg-double v26, v7, v19

    if-gez v26, :cond_18c

    .line 176
    const v0, 0x3c23d70a  # 0.01f

    move v7, v0

    .end local p24  # "ADMINISTRATION_COST_CAPITAL":F
    .local v0, "ADMINISTRATION_COST_CAPITAL":F
    goto :goto_197

    .line 177
    .end local v0  # "ADMINISTRATION_COST_CAPITAL":F
    .restart local p24  # "ADMINISTRATION_COST_CAPITAL":F
    :cond_18c
    const/high16 v7, 0x3f800000  # 1.0f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_196

    .line 178
    const/high16 v0, 0x3f800000  # 1.0f

    move v7, v0

    .end local p24  # "ADMINISTRATION_COST_CAPITAL":F
    .restart local v0  # "ADMINISTRATION_COST_CAPITAL":F
    goto :goto_197

    .line 177
    .end local v0  # "ADMINISTRATION_COST_CAPITAL":F
    .restart local p24  # "ADMINISTRATION_COST_CAPITAL":F
    :cond_196
    move v7, v0

    .line 180
    .end local p24  # "ADMINISTRATION_COST_CAPITAL":F
    .local v7, "ADMINISTRATION_COST_CAPITAL":F
    :goto_197
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST_CAPITAL:F

    .line 182
    move/from16 v0, p25

    move/from16 v17, v7

    .end local v7  # "ADMINISTRATION_COST_CAPITAL":F
    .local v17, "ADMINISTRATION_COST_CAPITAL":F
    float-to-double v7, v0

    cmpg-double v26, v7, v19

    if-gez v26, :cond_1a7

    .line 183
    const v0, 0x3c23d70a  # 0.01f

    move v7, v0

    .end local p25  # "CIVILIZE_TECH_LEVEL":F
    .local v0, "CIVILIZE_TECH_LEVEL":F
    goto :goto_1a8

    .line 182
    .end local v0  # "CIVILIZE_TECH_LEVEL":F
    .restart local p25  # "CIVILIZE_TECH_LEVEL":F
    :cond_1a7
    move v7, v0

    .line 185
    .end local p25  # "CIVILIZE_TECH_LEVEL":F
    .local v7, "CIVILIZE_TECH_LEVEL":F
    :goto_1a8
    iput v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CIVILIZE_TECH_LEVEL:F

    .line 187
    move/from16 v8, p27

    iput-boolean v8, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    .line 189
    move/from16 v19, v7

    move-object/from16 v7, p26

    .end local v7  # "CIVILIZE_TECH_LEVEL":F
    .local v19, "CIVILIZE_TECH_LEVEL":F
    iput-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->AI_TYPE:Ljava/lang/String;

    .line 191
    move-object/from16 v7, p29

    iput-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DESC:Ljava/lang/String;

    .line 195
    :try_start_1b8
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1c1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1b8 .. :try_end_1c1} :catch_1f5
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1c1} :catch_1ef

    move/from16 v20, v9

    .end local v9  # "INCOME_PRODUCTION":F
    .local v20, "INCOME_PRODUCTION":F
    :try_start_1c3
    const-string v9, "UI/icons/crowns/crown"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImage:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_1e6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1c3 .. :try_end_1e6} :catch_1ed
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1e6} :catch_1e9

    .line 198
    move/from16 v26, v11

    goto :goto_211

    .line 199
    :catch_1e9
    move-exception v0

    move/from16 v26, v11

    goto :goto_217

    .line 196
    :catch_1ed
    move-exception v0

    goto :goto_1f8

    .line 199
    .end local v20  # "INCOME_PRODUCTION":F
    .restart local v9  # "INCOME_PRODUCTION":F
    :catch_1ef
    move-exception v0

    move/from16 v20, v9

    move/from16 v26, v11

    .end local v9  # "INCOME_PRODUCTION":F
    .restart local v20  # "INCOME_PRODUCTION":F
    goto :goto_217

    .line 196
    .end local v20  # "INCOME_PRODUCTION":F
    .restart local v9  # "INCOME_PRODUCTION":F
    :catch_1f5
    move-exception v0

    move/from16 v20, v9

    .line 197
    .end local v9  # "INCOME_PRODUCTION":F
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v20  # "INCOME_PRODUCTION":F
    :goto_1f8
    :try_start_1f8
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    const-string v9, "UI/icons/crowns/crown.png"

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_204} :catch_214

    move/from16 v26, v11

    const/4 v11, 0x1

    .end local v11  # "COST_OF_MOVE_SAME_PROVINCE":I
    .local v26, "COST_OF_MOVE_SAME_PROVINCE":I
    :try_start_207
    invoke-direct {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImage:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_211} :catch_212

    .line 201
    .end local v0  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_211
    goto :goto_22c

    .line 199
    :catch_212
    move-exception v0

    goto :goto_217

    .end local v26  # "COST_OF_MOVE_SAME_PROVINCE":I
    .restart local v11  # "COST_OF_MOVE_SAME_PROVINCE":I
    :catch_214
    move-exception v0

    move/from16 v26, v11

    .line 200
    .end local v11  # "COST_OF_MOVE_SAME_PROVINCE":I
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v26  # "COST_OF_MOVE_SAME_PROVINCE":I
    :goto_217
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 205
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_22c
    :try_start_22c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UI/icons/crowns/crown_x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownVassalImage:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_258
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_22c .. :try_end_258} :catch_25b
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_258} :catch_259

    .line 208
    goto :goto_273

    .line 209
    :catch_259
    move-exception v0

    goto :goto_274

    .line 206
    :catch_25b
    move-exception v0

    .line 207
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_25c
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    const-string v9, "UI/icons/crowns/crown_x.png"

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownVassalImage:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_273} :catch_259

    .line 211
    .end local v0  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_273
    goto :goto_289

    .line 210
    .local v0, "exr":Ljava/lang/Exception;
    :goto_274
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownVassalImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 215
    .end local v0  # "exr":Ljava/lang/Exception;
    :goto_289
    :try_start_289
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "crown"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    sget-object v8, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v9, 0x1

    invoke-direct {v7, v5, v8, v9}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImageScaled:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_2c5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_289 .. :try_end_2c5} :catch_2c8
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_2c5} :catch_2c6

    .line 218
    goto :goto_2fd

    .line 219
    :catch_2c6
    move-exception v0

    goto :goto_2fe

    .line 216
    :catch_2c8
    move-exception v0

    .line 217
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_2c9
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "crown.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v5, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImageScaled:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_2fd
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_2fd} :catch_2c6

    .line 221
    .end local v0  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_2fd
    goto :goto_313

    .line 220
    .local v0, "exr":Ljava/lang/Exception;
    :goto_2fe
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImageScaled:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 222
    .end local v0  # "exr":Ljava/lang/Exception;
    :goto_313
    return-void
.end method


# virtual methods
.method public final getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 243
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->oColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public final getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;
    .registers 2

    .line 255
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImageScaled:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method public final getExtraTag()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->extraTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getMin_Goods()F
    .registers 2

    .line 68
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_GOODS:F

    return v0
.end method

.method public final getMin_Goods(I)F
    .registers 5
    .param p1, "nCivID"  # I

    .line 64
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_GOODS:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MIN_GOODS:[F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->policyID:I

    aget v1, v1, v2

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MIN_GOODS:F

    add-float/2addr v0, v1

    const v1, 0x3c23d70a  # 0.01f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public final getiCrownImage()Lage/of/civilizations2/jakowski/lukasz/Image;
    .registers 2

    .line 247
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method public final getiCrownVassalImage()Lage/of/civilizations2/jakowski/lukasz/Image;
    .registers 2

    .line 251
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownVassalImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method public final setExtraTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "extraTag"  # Ljava/lang/String;

    .line 239
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->extraTag:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sName"  # Ljava/lang/String;

    .line 231
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->sName:Ljava/lang/String;

    .line 232
    return-void
.end method
