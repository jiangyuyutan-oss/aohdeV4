.class public Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;
.super Ljava/lang/Object;
.source "Plagues_GameData.java"


# instance fields
.field public BeginningYear:I

.field public DEATH_RATE_EXTRA:F

.field public DEATH_RATE_MIN:F

.field public DURATION_TURNS_EXTRA:I

.field public DURATION_TURNS_MIN:I

.field public EXPANSION_MODIFIER:F

.field public EXPANSION_MODIFIER_EXTRA:F

.field public EndYear:I

.field private Name:Ljava/lang/String;

.field public OUTBREAK_CHANCE:F

.field public OUTBREAK_PROVINCES:I

.field public OUTBREAK_PROVINCES_EXTRA:I

.field public OUTBREAK_SCORE_DEVELOPMENT:F

.field public OUTBREAK_SCORE_DEVELOPMENT_LOW:F

.field public OUTBREAK_SCORE_ECONOMY:F

.field public OUTBREAK_SCORE_HAPPINESS:F

.field public OUTBREAK_SCORE_HAPPINESS_LOW:F

.field public OUTBREAK_SCORE_POPULATION:F

.field public Radiation:Z

.field public fB:F

.field public fG:F

.field public fR:F


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIFFFFIIIFIIFFFFFFZ)V
    .registers 40
    .param p1, "Name"  # Ljava/lang/String;
    .param p2, "BeginningYear"  # I
    .param p3, "EndYear"  # I
    .param p4, "DURATION_TURNS_MIN"  # I
    .param p5, "DURATION_TURNS_EXTRA"  # I
    .param p6, "DEATH_RATE_MIN"  # F
    .param p7, "DEATH_RATE_EXTRA"  # F
    .param p8, "EXPANSION_MODIFIER"  # F
    .param p9, "EXPANSION_MODIFIER_EXTRA"  # F
    .param p10, "R"  # I
    .param p11, "G"  # I
    .param p12, "B"  # I
    .param p13, "OUTBREAK_CHANCE"  # F
    .param p14, "OUTBREAK_PROVINCES"  # I
    .param p15, "OUTBREAK_PROVINCES_EXTRA"  # I
    .param p16, "OUTBREAK_SCORE_POPULATION"  # F
    .param p17, "OUTBREAK_SCORE_ECONOMY"  # F
    .param p18, "OUTBREAK_SCORE_DEVELOPMENT"  # F
    .param p19, "OUTBREAK_SCORE_HAPPINESS"  # F
    .param p20, "OUTBREAK_SCORE_DEVELOPMENT_LOW"  # F
    .param p21, "OUTBREAK_SCORE_HAPPINESS_LOW"  # F
    .param p22, "Radiation"  # Z

    .line 46
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->Radiation:Z

    .line 47
    move-object/from16 v2, p1

    iput-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->Name:Ljava/lang/String;

    .line 49
    move/from16 v3, p2

    move/from16 v4, p3

    if-ge v4, v3, :cond_17

    .line 50
    move/from16 v5, p2

    .line 51
    .local v5, "tData":I
    move/from16 v3, p3

    .line 52
    .end local p2  # "BeginningYear":I
    .local v3, "BeginningYear":I
    move v4, v5

    .line 55
    .end local v5  # "tData":I
    .end local p3  # "EndYear":I
    .local v4, "EndYear":I
    :cond_17
    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->BeginningYear:I

    .line 56
    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->EndYear:I

    .line 58
    const/4 v5, 0x1

    move/from16 v6, p4

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DURATION_TURNS_MIN:I

    .line 59
    move/from16 v7, p5

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DURATION_TURNS_EXTRA:I

    .line 61
    const v8, 0x3c23d70a  # 0.01f

    move/from16 v9, p6

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DEATH_RATE_MIN:F

    .line 62
    const/4 v10, 0x0

    move/from16 v11, p7

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iput v12, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->DEATH_RATE_EXTRA:F

    .line 64
    move/from16 v12, p8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->EXPANSION_MODIFIER:F

    .line 65
    move/from16 v8, p9

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v13

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->EXPANSION_MODIFIER_EXTRA:F

    .line 67
    move/from16 v13, p10

    int-to-float v14, v13

    const/high16 v15, 0x437f0000  # 255.0f

    div-float/2addr v14, v15

    iput v14, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->fR:F

    .line 68
    move/from16 v14, p11

    int-to-float v1, v14

    div-float/2addr v1, v15

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->fG:F

    .line 69
    move/from16 v1, p12

    int-to-float v5, v1

    div-float/2addr v5, v15

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->fB:F

    .line 71
    move/from16 v5, p13

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_CHANCE:F

    .line 72
    move/from16 v10, p14

    const/4 v15, 0x1

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/16 v1, 0xa

    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_PROVINCES:I

    .line 73
    move/from16 v1, p15

    const/4 v15, 0x0

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    iput v15, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_PROVINCES_EXTRA:I

    .line 75
    const/high16 v15, -0x40000000  # -2.0f

    move/from16 v1, p16

    invoke-static {v1, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v15, 0x40000000  # 2.0f

    invoke-static {v2, v15}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_POPULATION:F

    .line 76
    move/from16 v2, p17

    move/from16 v16, v3

    const/high16 v1, -0x40000000  # -2.0f

    .end local v3  # "BeginningYear":I
    .local v16, "BeginningYear":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_ECONOMY:F

    .line 77
    move/from16 v3, p18

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v15}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_DEVELOPMENT:F

    .line 78
    move/from16 v2, p19

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_HAPPINESS:F

    .line 80
    move/from16 v3, p20

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v15}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_DEVELOPMENT_LOW:F

    .line 81
    move/from16 v2, p21

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v15}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->OUTBREAK_SCORE_HAPPINESS_LOW:F

    .line 83
    move/from16 v1, p22

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->Radiation:Z

    .line 84
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 3

    .line 89
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName_Real()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "Name"  # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Plagues_GameData;->Name:Ljava/lang/String;

    .line 98
    return-void
.end method
