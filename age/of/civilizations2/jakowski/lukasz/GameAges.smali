.class public Lage/of/civilizations2/jakowski/lukasz/GameAges;
.super Ljava/lang/Object;
.source "GameAges.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;,
        Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;
    }
.end annotation


# instance fields
.field public ages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Age;",
            ">;"
        }
    .end annotation
.end field

.field private agesSize:I

.field private sBC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->loadAges()V

    .line 84
    return-void
.end method


# virtual methods
.method public final getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;
    .registers 5
    .param p1, "i"  # I

    .line 296
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 297
    :catch_9
    move-exception v0

    .line 298
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->agesSize:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Age;

    return-object v1
.end method

.method public final getAgeOfYear(I)I
    .registers 4
    .param p1, "nYear"  # I

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2b

    .line 175
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Age;->getBeginningYear()I

    move-result v1

    if-gt v1, p1, :cond_28

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Age;->getEndYear()I

    move-result v1

    if-lt v1, p1, :cond_28

    .line 176
    return v0

    .line 174
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    .end local v0  # "i":I
    :cond_2b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getAge_AdministrationCost_Distance(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 239
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_DISTANCE:F

    return v0
.end method

.method public final getAge_DevelopmentLevel_Increase(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 202
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DEVELOPMENT_LEVEL_INCREASE:F

    return v0
.end method

.method public final getAge_DiseaseChance(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 283
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DISEASE_CHANCE:F

    return v0
.end method

.method public final getAge_DistanceDiplomacy(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 245
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

    int-to-float v0, v0

    return v0
.end method

.method public final getAge_Economy_GrowthRate(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 198
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Age;->getEconomyGrowthRate()F

    move-result v0

    return v0
.end method

.method public final getAge_FogOfWarDiscovery_MetProvinces(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 186
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

    return v0
.end method

.method public final getAge_IncomeProductionBase(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 271
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_PRODUCTION:F

    return v0
.end method

.method public final getAge_IncomeProduction_PerDev(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 275
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

    return v0
.end method

.method public final getAge_IncomeTaxationBase(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 251
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_TAXATION:F

    return v0
.end method

.method public final getAge_IncomeTaxation_PerTechnology(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 255
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

    return v0
.end method

.method public final getAge_MilitaryUpkeep(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 261
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MILITARY_UPKEEP:F

    return v0
.end method

.method public final getAge_MovementPointsModifier(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 229
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->MOVEMENT_POINTS_MODIFIER:F

    return v0
.end method

.method public final getAge_Population_GrowthRate(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 193
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Age;->getPopulationGrowthRate()F

    move-result v0

    return v0
.end method

.method public final getAge_RevolutionaryRiskModifier(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 279
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->REVOLUTIONARY_RISK_MODIFIER:F

    return v0
.end method

.method public final getAge_StartingDevelopment(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 265
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_STARTING_DEVELOPMENT:F

    return v0
.end method

.method public final getAge_StartingDiplomacyPoints(I)I
    .registers 3
    .param p1, "nAgeID"  # I

    .line 235
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_DIPLOMACY_POINTS:I

    return v0
.end method

.method public final getAge_StartingMovementPoints(I)I
    .registers 3
    .param p1, "nAgeID"  # I

    .line 225
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MOVEMENT_POINTS:I

    return v0
.end method

.method public final getAge_TreasuryModifier(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 206
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_MODIFIER:F

    return v0
.end method

.method public final getAge_TreasuryModifier_Administration(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 214
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_MODIFIER:F

    return v0
.end method

.method public final getAge_TreasuryModifier_MilitaryUpkeep(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 218
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_MILITARY_UPKEEP_MODIFIER:F

    return v0
.end method

.method public final getAge_TreasuryModifier_Production(I)F
    .registers 3
    .param p1, "nAgeID"  # I

    .line 210
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTION_MODIFIER:F

    return v0
.end method

.method public final getAge_TurnDays(I)I
    .registers 4
    .param p1, "nAgeID"  # I

    .line 289
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_DAYS_PER_TURN:I

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getAgesSize()I
    .registers 2

    .line 307
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->agesSize:I

    return v0
.end method

.method public final getBC()Ljava/lang/String;
    .registers 2

    .line 303
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->sBC:Ljava/lang/String;

    return-object v0
.end method

.method public final getYear(I)Ljava/lang/String;
    .registers 4
    .param p1, "nYear"  # I

    .line 170
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    if-gez p1, :cond_21

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    neg-int v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getBC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_2c

    :cond_21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final loadAges()V
    .registers 49

    .line 87
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    .line 90
    :try_start_9
    const-string v0, "game/Ages.json"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 92
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "fileContent":Ljava/lang/String;
    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 96
    .local v3, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v4, Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;

    const-string v5, "Age"

    const-class v6, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 97
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;-><init>()V

    .line 98
    .local v4, "data":Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;
    const-class v5, Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;

    invoke-virtual {v3, v5, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;

    move-object v4, v5

    .line 100
    iget-object v5, v4, Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;->Age:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_de

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 101
    .local v6, "e":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;

    .line 103
    .local v7, "tempData":Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;
    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget-object v10, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->Name:Ljava/lang/String;

    iget v11, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->AGE_BeginningYear:I

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->AGE_EndYear:I

    iget v13, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->POPULATION_GROWTH:F

    iget v14, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->ECONOMY_GROWTH:F

    iget v9, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

    move-object/from16 v40, v0

    .end local v0  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v40, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    iget v0, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->DEVELOPMENT_LEVEL_INCREASE:F

    move-object/from16 v41, v2

    .end local v2  # "fileContent":Ljava/lang/String;
    .local v41, "fileContent":Ljava/lang/String;
    iget v2, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->INCOME_TAXATION_MODIFIER:F

    move-object/from16 v42, v3

    .end local v3  # "json":Lcom/badlogic/gdx/utils/Json;
    .local v42, "json":Lcom/badlogic/gdx/utils/Json;
    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->INCOME_PRODUCTION_MODIFIER:F

    move-object/from16 v43, v4

    .end local v4  # "data":Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;
    .local v43, "data":Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;
    iget v4, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->EXPENSES_ADMINSTRATION_MODIFIER:F

    move-object/from16 v44, v5

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->EXPENSES_MILITARY_UPKEEP_MODIFIER:F

    move-object/from16 v45, v6

    .end local v6  # "e":Ljava/lang/Object;
    .local v45, "e":Ljava/lang/Object;
    iget v6, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->BASE_MOVEMENT_POINTS:I

    iget v1, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->MOVEMENT_POINTS_MODIFIER:F

    move-object/from16 v46, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->BASE_DIPLOMACY_POINTS:I

    move/from16 v23, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->EXPENSES_ADMINSTRATION_DISTANCE:F

    move/from16 v24, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

    move/from16 v25, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->BASE_INCOME_TAXATION:F

    move/from16 v26, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

    move/from16 v27, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->BASE_MILITARY_UPKEEP:F

    move/from16 v28, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->GAME_STARTING_DEVELOPMENT:F

    move/from16 v29, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->GAME_DAYS_PER_TURN:I

    move/from16 v30, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->BASE_INCOME_PRODUCTION:F

    move/from16 v31, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

    move/from16 v32, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->REVOLUTIONARY_RISK_MODIFIER:F

    move/from16 v33, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->DISEASE_CHANCE:F

    move/from16 v34, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->COLONIZATION_COST:F

    move/from16 v35, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->COLONIZE_COST_MOVEMENT_POINTS:I

    move/from16 v36, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->COLONIZE_COST_DIPLOMACY_POINTS:I

    move/from16 v37, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->SHIP_GROUP:I

    move/from16 v38, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;->RIVALS_DISTANCE:F

    move/from16 v16, v9

    move-object v9, v15

    move-object/from16 v47, v7

    move-object v7, v15

    .end local v7  # "tempData":Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;
    .local v47, "tempData":Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;
    move/from16 v15, v16

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v1

    move/from16 v39, v8

    invoke-direct/range {v9 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFFFFFFFFIFIFIFFFFIFFFFFIIIF)V

    move-object/from16 v0, v46

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9 .. :try_end_d0} :catch_ea

    .line 134
    move-object/from16 v1, p0

    move-object/from16 v0, v40

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    move-object/from16 v5, v44

    .end local v45  # "e":Ljava/lang/Object;
    .end local v47  # "tempData":Lage/of/civilizations2/jakowski/lukasz/GameAges$Data_Ages;
    goto/16 :goto_35

    .line 100
    .end local v40  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v41  # "fileContent":Ljava/lang/String;
    .end local v42  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v43  # "data":Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;
    .restart local v0  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2  # "fileContent":Ljava/lang/String;
    .restart local v3  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v4  # "data":Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;
    :cond_de
    move-object/from16 v40, v0

    move-object/from16 v41, v2

    move-object/from16 v42, v3

    move-object/from16 v43, v4

    .line 150
    .end local v0  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "fileContent":Ljava/lang/String;
    .end local v3  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v4  # "data":Lage/of/civilizations2/jakowski/lukasz/GameAges$ConfigAgesData;
    move-object/from16 v1, p0

    goto/16 :goto_1e6

    .line 135
    :catch_ea
    move-exception v0

    .line 136
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 138
    move-object/from16 v1, p0

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Age;

    const/16 v5, -0x1388

    const/16 v6, -0x12d

    const v7, 0x3e99999a  # 0.3f

    const v8, 0x3e4ccccd  # 0.2f

    const-string v4, "AgeofCivilizations"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Age;

    const/16 v5, -0x12c

    const/16 v6, 0x1f3

    const v7, 0x3eb33333  # 0.35f

    const v8, 0x3e6147ae  # 0.22f

    const-string v4, "AgeofExpansion"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Age;

    const/16 v5, 0x1f4

    const/16 v6, 0x429

    const v7, 0x3ecccccd  # 0.4f

    const-string v4, "AgeofDarkness"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Age;

    const/16 v5, 0x42a

    const/16 v6, 0x5d3

    const v7, 0x3ee66666  # 0.45f

    const-string v4, "AgeofFeudalism"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Age;

    const/16 v5, 0x5d4

    const/16 v6, 0x6d5

    const/high16 v7, 0x3f000000  # 0.5f

    const-string v4, "AgeofDiscovery"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Age;

    const/16 v5, 0x6d6

    const/16 v6, 0x72b

    const v7, 0x3f0ccccd  # 0.55f

    const-string v4, "AgeofRevolution"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Age;

    const/16 v5, 0x72c

    const/16 v6, 0x744

    const v7, 0x3f19999a  # 0.6f

    const-string v4, "AgeofIndustrialisation"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Age;

    const/16 v5, 0x745

    const/16 v6, 0x77e

    const v7, 0x3f266666  # 0.65f

    const-string v4, "AgeofImperialism"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Age;

    const/16 v5, 0x77f

    const/16 v6, 0x79a

    const v7, 0x3f333333  # 0.7f

    const-string v4, "AgeofConflict"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Age;

    const/16 v5, 0x79b

    const/16 v6, 0x7c6

    const/high16 v7, 0x3f400000  # 0.75f

    const-string v4, "AgeofBrinkmanship"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Age;

    const/16 v5, 0x7c7

    const/16 v6, 0x801

    const v7, 0x3f4ccccd  # 0.8f

    const-string v4, "AgeofInformation"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Age;

    const/16 v5, 0x802

    const/16 v6, 0x1388

    const v7, 0x3f733333  # 0.95f

    const/high16 v8, 0x3f800000  # 1.0f

    const-string v4, "AgeofTomorrow"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_1e6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "BeforeChrist"

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->sBC:Ljava/lang/String;

    .line 154
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->agesSize:I

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f9
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->agesSize:I

    if-ge v0, v2, :cond_21d

    .line 157
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Age;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Age;->setName(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f9

    .line 159
    .end local v0  # "i":I
    :cond_21d
    return-void
.end method

.method public final updateLanguage()V
    .registers 1

    .line 164
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->loadAges()V

    .line 165
    return-void
.end method
