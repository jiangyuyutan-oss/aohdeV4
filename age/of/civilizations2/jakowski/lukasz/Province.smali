.class public Lage/of/civilizations2/jakowski/lukasz/Province;
.super Ljava/lang/Object;
.source "Province.java"


# instance fields
.field public administrationCost:F

.field private bordersWithEnemy:Z

.field private ceX:I

.field private ceY:I

.field private cities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/City;",
            ">;"
        }
    .end annotation
.end field

.field private citiesSize:I

.field private drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

.field private drawCitiesInProv:Z

.field private drawProvince:Z

.field public fPopulationGrowthRate:F

.field public freeValue:I

.field private fromCivID:I

.field private iArmyWasRecruited:B

.field private iBasin:I

.field private iCivRegionID:I

.field private iContinentID:I

.field private iDangerLevel:I

.field private iDangerLevel_WithArmy:I

.field private iNumOfNeighboringNeutralProvinces:B

.field private iPotential:I

.field public iProvBordersSeaBySeaSize:I

.field public iProviBordersLandByLandSize:I

.field public iProviBordersLandBySeaSize:I

.field private iProvinceID:I

.field public iProvinceNameLength_Minus1:I

.field private iRegionID:I

.field private iTerrainTypeID:I

.field private iTranslateProvincePosX:I

.field private iWondersSize:I

.field public incomeProduction:F

.field public incomeTaxation:F

.field private isBelowZeroPosX:Z

.field private lColorTime:J

.field public lNeighboringProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public lNeighboringSeaProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lProvince_ArmyBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;",
            ">;"
        }
    .end annotation
.end field

.field private maX:I

.field private maY:I

.field private miX:I

.field private miY:I

.field private mountains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MapA/Mountains/Mountain;",
            ">;"
        }
    .end annotation
.end field

.field public neighboringProvincesSize:I

.field public neighboringSeaProvincesSize:I

.field private pointsSize:I

.field private pointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private pointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

.field public provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

.field public provinceBordersLandByLand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;",
            ">;"
        }
    .end annotation
.end field

.field public provinceBordersLandBySea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;",
            ">;"
        }
    .end annotation
.end field

.field public provinceBordersSeaBySea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;",
            ">;"
        }
    .end annotation
.end field

.field private provinceName:Ljava/lang/String;

.field private provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

.field private provinceStability:F

.field public provinceVolunteerArmySent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_VolunteerArmySent;",
            ">;"
        }
    .end annotation
.end field

.field private sProvinceNameUpperCase:Ljava/lang/String;

.field private seaProvince:Z

.field private shiftX:I

.field private shiftY:I

.field private updateColorTime:Z

.field public viewBool:Z

.field public wasCities:Z

.field public wasInProv:Z

.field private wonders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILage/of/civilizations2/jakowski/lukasz/Province_GameData2;)V
    .registers 14
    .param p1, "iProvinceID"  # I
    .param p2, "nProvince_GameData"  # Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    .line 83
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    .line 84
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel:I

    .line 85
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel_WithArmy:I

    .line 113
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    .line 114
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandBySeaSize:I

    .line 115
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCivRegionID:I

    .line 122
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->wasCities:Z

    .line 132
    const-string v2, ""

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    .line 133
    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->sProvinceNameUpperCase:Ljava/lang/String;

    .line 134
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceNameLength_Minus1:I

    .line 142
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->seaProvince:Z

    .line 147
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawCitiesInProv:Z

    .line 149
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->citiesSize:I

    .line 155
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iWondersSize:I

    .line 159
    const/4 v2, 0x0

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsY:Ljava/util/List;

    .line 164
    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    .line 166
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->isBelowZeroPosX:Z

    .line 168
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    .line 169
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawProvince:Z

    .line 171
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    invoke-direct {v3, v0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;-><init>(II)V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    .line 309
    const/high16 v3, 0x3f800000  # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeTaxation:F

    .line 311
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeProduction:F

    .line 313
    const/4 v4, 0x0

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->administrationCost:F

    .line 1872
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->freeValue:I

    .line 1877
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    .line 1878
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lColorTime:J

    .line 1880
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    .line 1882
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    .line 1885
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 4039
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceVolunteerArmySent:Ljava/util/List;

    .line 4064
    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iArmyWasRecruited:B

    .line 4066
    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNumOfNeighboringNeutralProvinces:B

    .line 4069
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->bordersWithEnemy:Z

    .line 4071
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    .line 4075
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    .line 4076
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    .line 4078
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iBasin:I

    .line 4083
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    .line 4084
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    .line 4085
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    .line 176
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    .line 178
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    invoke-direct {v3}, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    .line 180
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;-><init>()V

    iput-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->pops:Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    .line 182
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a3
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getNeighboringProvinces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_bf

    .line 183
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getNeighboringProvinces()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_a3

    .line 186
    .end local v3  # "i":I
    :cond_bf
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->neighboringProvincesSize:I

    .line 188
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_c8
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getNeighboringSeaProvinces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e4

    .line 189
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getNeighboringSeaProvinces()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_c8

    .line 192
    .end local v3  # "i":I
    :cond_e4
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->neighboringSeaProvincesSize:I

    .line 194
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maX:I

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    .line 195
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maY:I

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    .line 197
    const/4 v3, 0x0

    .restart local v3  # "i":I
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "iSize":I
    :goto_119
    if-ge v3, v4, :cond_1c5

    .line 198
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsY:Ljava/util/List;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    if-le v5, v6, :cond_15b

    .line 202
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    .line 205
    :cond_15b
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maX:I

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    if-ge v5, v6, :cond_17d

    .line 206
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maX:I

    .line 209
    :cond_17d
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    if-le v5, v6, :cond_19f

    .line 210
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    .line 213
    :cond_19f
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maY:I

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    if-ge v5, v6, :cond_1c1

    .line 214
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maY:I

    .line 197
    :cond_1c1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_119

    .line 218
    .end local v3  # "i":I
    .end local v4  # "iSize":I
    :cond_1c5
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsY:Ljava/util/List;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsSize:I

    .line 223
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maX:I

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->ceX:I

    .line 224
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maY:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->ceY:I

    .line 226
    if-gez v3, :cond_216

    const/4 v3, 0x1

    goto :goto_217

    :cond_216
    const/4 v3, 0x0

    :goto_217
    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->isBelowZeroPosX:Z

    .line 228
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->MAX_BELOW_ZERO_POINT_X:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    if-le v3, v4, :cond_221

    .line 229
    sput v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->MAX_BELOW_ZERO_POINT_X:I

    .line 232
    :cond_221
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getLevelOfPort()I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLvlOfPort(I)V

    .line 234
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getLevelOfPort()I

    move-result v3

    if-ge v3, v1, :cond_230

    .line 235
    iput-boolean v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->seaProvince:Z

    .line 238
    :cond_230
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_388

    .line 239
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    .line 240
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    .line 244
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_24c
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_34f

    .line 245
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iPort:I

    if-ge v4, v1, :cond_292

    .line 246
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getWithProvinceID()I

    move-result v6

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getPointsX()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getPointsY()Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_34b

    .line 248
    :cond_292
    const/4 v4, 0x0

    .line 250
    .local v4, "bContinue":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_294
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->neighboringProvincesSize:I

    if-ge v5, v6, :cond_2ed

    .line 251
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getWithProvinceID()I

    move-result v7

    if-ne v6, v7, :cond_2ea

    .line 252
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getWithProvinceID()I

    move-result v8

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getPointsX()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getPointsY()Ljava/util/List;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    const/4 v4, 0x1

    .line 254
    goto :goto_2ed

    .line 250
    :cond_2ea
    add-int/lit8 v5, v5, 0x1

    goto :goto_294

    .line 258
    .end local v5  # "j":I
    :cond_2ed
    :goto_2ed
    if-eqz v4, :cond_2f0

    goto :goto_34b

    .line 260
    :cond_2f0
    const/4 v5, 0x0

    .restart local v5  # "j":I
    :goto_2f1
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->neighboringSeaProvincesSize:I

    if-ge v5, v6, :cond_34a

    .line 261
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getWithProvinceID()I

    move-result v7

    if-ne v6, v7, :cond_347

    .line 262
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getWithProvinceID()I

    move-result v8

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getPointsX()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getPointsY()Ljava/util/List;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const/4 v4, 0x1

    .line 264
    goto :goto_34a

    .line 260
    :cond_347
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f1

    .line 268
    .end local v5  # "j":I
    :cond_34a
    :goto_34a
    nop

    .line 244
    .end local v4  # "bContinue":Z
    :goto_34b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_24c

    .line 273
    .end local v3  # "i":I
    :cond_34f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_35a

    .line 274
    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    goto :goto_362

    .line 276
    :cond_35a
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    .line 279
    :goto_362
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_36d

    .line 280
    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    goto :goto_375

    .line 282
    :cond_36d
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandBySeaSize:I

    .line 285
    :goto_375
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_380

    .line 286
    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    goto :goto_388

    .line 288
    :cond_380
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    .line 292
    :cond_388
    :goto_388
    iget-object v1, p2, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->provinceInfo:Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->loadProvinceInfo(Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;)V

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->cities:Ljava/util/List;

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->mountains:Ljava/util/List;

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->wonders:Ljava/util/List;

    .line 298
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    iget v2, p2, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftX:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftX:I

    .line 299
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    iget v2, p2, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftY:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftY:I

    .line 301
    invoke-virtual {p0, v0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->addCiv(II)V

    .line 302
    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Province;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Province;

    .line 42
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    return v0
.end method

.method private final getUpdateView_SetCivID(I)Ljava/util/List;
    .registers 7
    .param p1, "oldOwner"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4044
    .local v0, "tPlayers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v2

    if-ge v1, v2, :cond_105

    .line 4045
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    if-eq v2, v3, :cond_fa

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 4046
    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v3

    if-eq v2, v3, :cond_fa

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 4047
    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    if-eq v2, v3, :cond_fa

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 4048
    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v2

    if-lez v2, :cond_8c

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v3

    if-eq v2, v3, :cond_fa

    :cond_8c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 4050
    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    if-eq v2, p1, :cond_fa

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 4051
    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v3

    if-eq v2, v3, :cond_fa

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 4052
    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v2

    if-eq v2, p1, :cond_fa

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 4053
    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v2

    if-lez v2, :cond_101

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v3

    if-ne v2, v3, :cond_101

    .line 4055
    :cond_fa
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4044
    :cond_101
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 4059
    .end local v1  # "i":I
    :cond_105
    return-object v0
.end method

.method private final getWastelandColor(F)Lcom/badlogic/gdx/graphics/Color;
    .registers 8
    .param p1, "fAlpha"  # F

    .line 2003
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 2004
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d8068dc  # 0.0627f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 2005
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3d58adac  # 0.0529f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 2006
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3d3573eb  # 0.0443f

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 2003
    return-object v0
.end method


# virtual methods
.method public final addArmy(II)V
    .registers 3
    .param p1, "iCivID"  # I
    .param p2, "iArmy"  # I

    .line 4215
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->addCiv(II)V

    .line 4216
    return-void
.end method

.method public final addCity(Lage/of/civilizations2/jakowski/lukasz/City;)V
    .registers 3
    .param p1, "oCity"  # Lage/of/civilizations2/jakowski/lukasz/City;

    .line 4374
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->cities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4376
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->cities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->citiesSize:I

    .line 4377
    return-void
.end method

.method public final addCityRename(Lage/of/civilizations2/jakowski/lukasz/City;)V
    .registers 3
    .param p1, "oCity"  # Lage/of/civilizations2/jakowski/lukasz/City;

    .line 4380
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->cities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4381
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->cities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->citiesSize:I

    .line 4383
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setName2(Ljava/lang/String;)V

    .line 4384
    return-void
.end method

.method public final addCiv(II)V
    .registers 6
    .param p1, "iCivID"  # I
    .param p2, "iArmy"  # I

    .line 4181
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4182
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    .line 4184
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_54

    if-lez p2, :cond_54

    .line 4185
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addArmyInAnotherProv(I)V

    .line 4187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 4188
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->isPlayerAlly_FogOfWarCheck(II)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 4189
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateFogOfWar(I)V

    .line 4187
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 4193
    .end local v0  # "i":I
    :cond_51
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmyInProv()V

    .line 4195
    :cond_54
    return-void
.end method

.method public final addDangerLvl(I)V
    .registers 3
    .param p1, "iDangerLevel"  # I

    .line 5553
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel:I

    .line 5554
    return-void
.end method

.method public final addMountain(Lage/of/civilizations2/jakowski/lukasz/MapA/Mountains/Mountain;)V
    .registers 3
    .param p1, "oMountain"  # Lage/of/civilizations2/jakowski/lukasz/MapA/Mountains/Mountain;

    .line 4410
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->mountains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4411
    return-void
.end method

.method public final addNeighboringProv(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 4830
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    int-to-short v1, p1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4831
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->neighboringProvincesSize:I

    .line 4832
    return-void
.end method

.method public final addNeighboringSeaProvince(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 4854
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    int-to-short v1, p1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4855
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->neighboringSeaProvincesSize:I

    .line 4856
    return-void
.end method

.method public final addPotentialP(I)V
    .registers 3
    .param p1, "iPotential"  # I

    .line 5530
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    .line 5531
    return-void
.end method

.method public final addProvBorder(ILjava/util/List;Ljava/util/List;)V
    .registers 6
    .param p1, "withProvinceID"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 1692
    .local p2, "nPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    .local p3, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_17

    .line 1693
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_14

    .line 1694
    return-void

    .line 1692
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1698
    .end local v0  # "i":I
    :cond_17
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_18
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandBySeaSize:I

    if-ge v0, v1, :cond_2e

    .line 1699
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_2b

    .line 1700
    return-void

    .line 1698
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1704
    .end local v0  # "i":I
    :cond_2e
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_2f
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_45

    .line 1705
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_42

    .line 1706
    return-void

    .line 1704
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1710
    .end local v0  # "i":I
    :cond_45
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    if-nez v0, :cond_50

    .line 1711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    .line 1714
    :cond_50
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-direct {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1715
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    .line 1717
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder(I)V

    .line 1718
    return-void
.end method

.method public final addSupportRebels(Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;)Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;
    .registers 7
    .param p1, "nData"  # Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    .line 4575
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iSupportRebelsSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_80

    .line 4576
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iByCivID:I

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iByCivID:I

    if-ne v2, v3, :cond_7d

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    if-ne v2, v3, :cond_7d

    .line 4577
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebelsSupport:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_NUM_OF_TURNS_MAX:I

    if-le v2, v3, :cond_64

    .line 4578
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebelsSupport:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_NUM_OF_TURNS_MAX:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    sub-int/2addr v2, v3

    .line 4580
    .local v2, "out":I
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebelsSupport:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_NUM_OF_TURNS_MAX:I

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    .line 4581
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;

    invoke-direct {v3, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;-><init>(IZ)V

    return-object v3

    .line 4584
    .end local v2  # "out":I
    :cond_64
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    iget v4, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    add-int/2addr v3, v4

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    .line 4586
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    invoke-direct {v2, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;-><init>(IZ)V

    return-object v2

    .line 4575
    :cond_7d
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 4591
    .end local v0  # "i":I
    :cond_80
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4592
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iSupportRebelsSize:I

    .line 4594
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebelsSupport:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_NUM_OF_TURNS_MAX:I

    if-lt v3, v4, :cond_9e

    goto :goto_9f

    :cond_9e
    const/4 v1, 0x0

    :goto_9f
    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;-><init>(IZ)V

    return-object v0
.end method

.method public final addWonder(Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;)V
    .registers 3
    .param p1, "oWonder"  # Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;

    .line 4424
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->wonders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4425
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->wonders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iWondersSize:I

    .line 4426
    return-void
.end method

.method public final buildProvinceBG(Z)V
    .registers 29
    .param p1, "overwriteExistingFiles"  # Z

    .line 525
    move-object/from16 v0, p0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v1

    .line 527
    .local v1, "tempMapScaleBefore":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "data/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "scales/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "provinces/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "Age_of_Civilizations"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 528
    .local v2, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v7

    .line 529
    .local v7, "tempT":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 531
    .local v8, "tagsSPLITED":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v9, "tempL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_53
    array-length v11, v8

    if-ge v10, v11, :cond_5e

    .line 533
    aget-object v11, v8, v10

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    add-int/lit8 v10, v10, 0x1

    goto :goto_53

    .line 536
    .end local v10  # "i":I
    :cond_5e
    const/4 v10, 0x1

    .line 537
    .local v10, "addStandardScale":Z
    const/4 v11, 0x1

    .line 545
    .local v11, "addScale1":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_61
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_84

    .line 546
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v14

    if-ne v13, v14, :cond_81

    .line 547
    const/4 v10, 0x0

    .line 548
    goto :goto_84

    .line 545
    :cond_81
    add-int/lit8 v12, v12, 0x1

    goto :goto_61

    .line 552
    .end local v12  # "i":I
    :cond_84
    :goto_84
    const/4 v12, 0x0

    .restart local v12  # "i":I
    :goto_85
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ge v12, v13, :cond_9d

    .line 553
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v14, :cond_9a

    .line 554
    const/4 v11, 0x0

    .line 555
    goto :goto_9d

    .line 552
    :cond_9a
    add-int/lit8 v12, v12, 0x1

    goto :goto_85

    .line 559
    .end local v12  # "i":I
    :cond_9d
    :goto_9d
    if-eqz v10, :cond_c1

    .line 560
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v15

    invoke-virtual {v13, v15}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_c1
    if-eqz v11, :cond_d6

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v12

    if-eq v12, v14, :cond_d6

    .line 564
    const-string v12, "1"

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_d6
    const/4 v12, 0x0

    .restart local v12  # "i":I
    :goto_d7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_3e7

    .line 568
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v15

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v15, v14}, Lage/of/civilizations2/jakowski/lukasz/Map;->setMapScale(II)I

    .line 570
    const-string v13, "/"

    if-nez p1, :cond_14b

    .line 571
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v14

    if-eqz v14, :cond_14b

    .line 572
    move/from16 v23, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v21, v10

    move/from16 v22, v11

    const/16 v17, 0x1

    goto/16 :goto_3d6

    .line 576
    :cond_14b
    new-instance v14, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v15, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->maX:I

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v16

    mul-int v15, v15, v16

    move-object/from16 v16, v2

    .end local v2  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v18

    mul-int v2, v2, v18

    sub-int/2addr v15, v2

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->maY:I

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v18

    mul-int v2, v2, v18

    move-object/from16 v18, v7

    .end local v7  # "tempT":Ljava/lang/String;
    .local v18, "tempT":Ljava/lang/String;
    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v19

    mul-int v7, v7, v19

    sub-int/2addr v2, v7

    sget-object v7, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v14, v15, v2, v7}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v2, v14

    .line 578
    .local v2, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v14, 0x3f800000  # 1.0f

    invoke-direct {v7, v14, v14, v14, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 582
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_19c
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v14

    if-ge v7, v14, :cond_363

    .line 583
    const/4 v14, 0x0

    .local v14, "x":I
    :goto_1a3
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v15

    if-ge v14, v15, :cond_353

    .line 602
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move-object/from16 v19, v8

    .end local v8  # "tagsSPLITED":[Ljava/lang/String;
    .local v19, "tagsSPLITED":[Ljava/lang/String;
    iget v8, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v20

    move/from16 v21, v10

    .end local v10  # "addStandardScale":Z
    .local v21, "addStandardScale":Z
    add-int v10, v20, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v20

    move/from16 v22, v11

    .end local v11  # "addScale1":Z
    .local v22, "addScale1":Z
    add-int v11, v20, v7

    invoke-virtual {v15, v8, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v8

    if-eqz v8, :cond_20c

    .line 603
    const/4 v8, 0x1

    .line 605
    .local v8, "add":Z
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_1c7
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_1ff

    .line 606
    iget v11, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v15

    if-le v11, v15, :cond_1f4

    .line 607
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v20

    move/from16 v23, v1

    .end local v1  # "tempMapScaleBefore":I
    .local v23, "tempMapScaleBefore":I
    add-int v1, v20, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v20

    move-object/from16 v24, v13

    add-int v13, v20, v7

    invoke-virtual {v11, v15, v1, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v1

    if-eqz v1, :cond_1f8

    .line 608
    const/4 v1, 0x0

    move v8, v1

    .end local v8  # "add":Z
    .local v1, "add":Z
    goto :goto_1f8

    .line 606
    .end local v23  # "tempMapScaleBefore":I
    .local v1, "tempMapScaleBefore":I
    .restart local v8  # "add":Z
    :cond_1f4
    move/from16 v23, v1

    move-object/from16 v24, v13

    .line 605
    .end local v1  # "tempMapScaleBefore":I
    .restart local v23  # "tempMapScaleBefore":I
    :cond_1f8
    :goto_1f8
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v23

    move-object/from16 v13, v24

    goto :goto_1c7

    .end local v23  # "tempMapScaleBefore":I
    .restart local v1  # "tempMapScaleBefore":I
    :cond_1ff
    move/from16 v23, v1

    move-object/from16 v24, v13

    .line 613
    .end local v1  # "tempMapScaleBefore":I
    .end local v10  # "a":I
    .restart local v23  # "tempMapScaleBefore":I
    if-eqz v8, :cond_208

    .line 614
    invoke-virtual {v2, v14, v7}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    .line 620
    .end local v8  # "add":Z
    :cond_208
    const/16 v17, 0x1

    goto/16 :goto_345

    .line 622
    .end local v23  # "tempMapScaleBefore":I
    .restart local v1  # "tempMapScaleBefore":I
    :cond_20c
    move/from16 v23, v1

    move-object/from16 v24, v13

    .end local v1  # "tempMapScaleBefore":I
    .restart local v23  # "tempMapScaleBefore":I
    const/4 v1, 0x0

    .line 624
    .local v1, "add":Z
    const/4 v8, 0x0

    .line 626
    .local v8, "check":Z
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v11, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v13

    add-int/2addr v13, v14

    const/4 v15, 0x1

    add-int/2addr v13, v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v15

    add-int/2addr v15, v7

    invoke-virtual {v10, v11, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v10

    if-eqz v10, :cond_229

    .line 627
    const/4 v8, 0x1

    .line 630
    :cond_229
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v11, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v13

    add-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v15

    add-int/2addr v15, v7

    const/16 v17, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v10, v11, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v10

    if-eqz v10, :cond_242

    .line 631
    const/4 v8, 0x1

    .line 634
    :cond_242
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v11, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v13

    add-int/2addr v13, v14

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v15

    add-int/2addr v15, v7

    invoke-virtual {v10, v11, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v10

    if-eqz v10, :cond_259

    .line 635
    const/4 v8, 0x1

    .line 638
    :cond_259
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v11, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v13

    add-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v15

    add-int/2addr v15, v7

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v10, v11, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v10

    if-eqz v10, :cond_272

    .line 639
    const/4 v8, 0x1

    .line 642
    :cond_272
    if-nez v8, :cond_278

    .line 643
    const/16 v17, 0x1

    goto/16 :goto_345

    .line 646
    :cond_278
    const/4 v10, 0x0

    .line 648
    .local v10, "edn":Z
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_27a
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v13

    if-ge v11, v13, :cond_2a5

    .line 649
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v20

    move/from16 v25, v1

    .end local v1  # "add":Z
    .local v25, "add":Z
    add-int v1, v20, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v20

    move/from16 v26, v8

    .end local v8  # "check":Z
    .local v26, "check":Z
    add-int v8, v20, v7

    invoke-virtual {v13, v15, v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v1

    if-eqz v1, :cond_29e

    .line 650
    const/4 v10, 0x1

    .line 651
    goto :goto_2a9

    .line 648
    :cond_29e
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v25

    move/from16 v8, v26

    goto :goto_27a

    .end local v25  # "add":Z
    .end local v26  # "check":Z
    .restart local v1  # "add":Z
    .restart local v8  # "check":Z
    :cond_2a5
    move/from16 v25, v1

    move/from16 v26, v8

    .line 655
    .end local v1  # "add":Z
    .end local v8  # "check":Z
    .end local v11  # "a":I
    .restart local v25  # "add":Z
    .restart local v26  # "check":Z
    :goto_2a9
    if-eqz v10, :cond_2af

    .line 656
    const/16 v17, 0x1

    goto/16 :goto_345

    .line 659
    :cond_2af
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_2b0
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v8

    if-ge v1, v8, :cond_33e

    .line 660
    iget v8, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v11

    if-le v8, v11, :cond_338

    .line 661
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v13

    add-int/2addr v13, v14

    const/4 v15, 0x1

    add-int/2addr v13, v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v15

    add-int/2addr v15, v7

    invoke-virtual {v8, v11, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v8

    if-eqz v8, :cond_2dc

    .line 662
    const/4 v8, 0x1

    .line 663
    .end local v25  # "add":Z
    .local v8, "add":Z
    move/from16 v25, v8

    const/16 v17, 0x1

    goto :goto_33a

    .line 666
    .end local v8  # "add":Z
    .restart local v25  # "add":Z
    :cond_2dc
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v13

    add-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v15

    add-int/2addr v15, v7

    const/16 v17, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v8, v11, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v8

    if-eqz v8, :cond_2fc

    .line 667
    const/4 v8, 0x1

    .line 668
    .end local v25  # "add":Z
    .restart local v8  # "add":Z
    move/from16 v25, v8

    const/16 v17, 0x1

    goto :goto_33a

    .line 671
    .end local v8  # "add":Z
    .restart local v25  # "add":Z
    :cond_2fc
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v13

    add-int/2addr v13, v14

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v15

    add-int/2addr v15, v7

    invoke-virtual {v8, v11, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v8

    if-eqz v8, :cond_31a

    .line 672
    const/4 v8, 0x1

    .line 673
    .end local v25  # "add":Z
    .restart local v8  # "add":Z
    move/from16 v25, v8

    const/16 v17, 0x1

    goto :goto_33a

    .line 676
    .end local v8  # "add":Z
    .restart local v25  # "add":Z
    :cond_31a
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v13

    add-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v15

    add-int/2addr v15, v7

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v8, v11, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v8

    if-eqz v8, :cond_33a

    .line 677
    const/4 v8, 0x1

    move/from16 v25, v8

    .end local v25  # "add":Z
    .restart local v8  # "add":Z
    goto :goto_33a

    .line 660
    .end local v8  # "add":Z
    .restart local v25  # "add":Z
    :cond_338
    const/16 v17, 0x1

    .line 659
    :cond_33a
    :goto_33a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2b0

    :cond_33e
    const/16 v17, 0x1

    .line 683
    .end local v1  # "a":I
    if-eqz v25, :cond_345

    .line 684
    invoke-virtual {v2, v14, v7}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    .line 583
    .end local v10  # "edn":Z
    .end local v25  # "add":Z
    .end local v26  # "check":Z
    :cond_345
    :goto_345
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v19

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v1, v23

    move-object/from16 v13, v24

    goto/16 :goto_1a3

    .end local v19  # "tagsSPLITED":[Ljava/lang/String;
    .end local v21  # "addStandardScale":Z
    .end local v22  # "addScale1":Z
    .end local v23  # "tempMapScaleBefore":I
    .local v1, "tempMapScaleBefore":I
    .local v8, "tagsSPLITED":[Ljava/lang/String;
    .local v10, "addStandardScale":Z
    .local v11, "addScale1":Z
    :cond_353
    move/from16 v23, v1

    move-object/from16 v19, v8

    move/from16 v21, v10

    move/from16 v22, v11

    move-object/from16 v24, v13

    const/16 v17, 0x1

    .line 582
    .end local v1  # "tempMapScaleBefore":I
    .end local v8  # "tagsSPLITED":[Ljava/lang/String;
    .end local v10  # "addStandardScale":Z
    .end local v11  # "addScale1":Z
    .end local v14  # "x":I
    .restart local v19  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v21  # "addStandardScale":Z
    .restart local v22  # "addScale1":Z
    .restart local v23  # "tempMapScaleBefore":I
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_19c

    .end local v19  # "tagsSPLITED":[Ljava/lang/String;
    .end local v21  # "addStandardScale":Z
    .end local v22  # "addScale1":Z
    .end local v23  # "tempMapScaleBefore":I
    .restart local v1  # "tempMapScaleBefore":I
    .restart local v8  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v10  # "addStandardScale":Z
    .restart local v11  # "addScale1":Z
    :cond_363
    move/from16 v23, v1

    move-object/from16 v19, v8

    move/from16 v21, v10

    move/from16 v22, v11

    move-object/from16 v24, v13

    const/16 v17, 0x1

    .line 708
    .end local v1  # "tempMapScaleBefore":I
    .end local v7  # "y":I
    .end local v8  # "tagsSPLITED":[Ljava/lang/String;
    .end local v10  # "addStandardScale":Z
    .end local v11  # "addScale1":Z
    .restart local v19  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v21  # "addStandardScale":Z
    .restart local v22  # "addScale1":Z
    .restart local v23  # "tempMapScaleBefore":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, v24

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 710
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 712
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-- PROVINCE DATA GENERATED "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 567
    .end local v2  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :goto_3d6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v16

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v1, v23

    const/4 v14, 0x1

    goto/16 :goto_d7

    .end local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18  # "tempT":Ljava/lang/String;
    .end local v19  # "tagsSPLITED":[Ljava/lang/String;
    .end local v21  # "addStandardScale":Z
    .end local v22  # "addScale1":Z
    .end local v23  # "tempMapScaleBefore":I
    .restart local v1  # "tempMapScaleBefore":I
    .local v2, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v7, "tempT":Ljava/lang/String;
    .restart local v8  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v10  # "addStandardScale":Z
    .restart local v11  # "addScale1":Z
    :cond_3e7
    move/from16 v23, v1

    move-object/from16 v16, v2

    .line 717
    .end local v1  # "tempMapScaleBefore":I
    .end local v2  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12  # "i":I
    .restart local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v23  # "tempMapScaleBefore":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v2

    move/from16 v3, v23

    .end local v23  # "tempMapScaleBefore":I
    .local v3, "tempMapScaleBefore":I
    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->setMapScale(II)I

    .line 718
    return-void
.end method

.method public final buildProvinceCore()V
    .registers 4

    .line 4494
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    const/4 v1, 0x0

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    .line 4495
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    .line 4497
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-lez v0, :cond_30

    .line 4498
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V

    .line 4499
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->increaseOwnership(II)V

    .line 4501
    :cond_30
    return-void
.end method

.method public final buildProvinceName()V
    .registers 4

    .line 5144
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 5145
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    goto :goto_3b

    .line 5147
    :cond_d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v0

    if-lez v0, :cond_1f

    .line 5148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    goto :goto_3b

    .line 5152
    :cond_1f
    :try_start_1f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomProvinceNames:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomProvinceNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_35} :catch_36

    .line 5155
    goto :goto_3b

    .line 5153
    :catch_36
    move-exception v0

    .line 5154
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Province"

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    .line 5158
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_3b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->sProvinceNameUpperCase:Ljava/lang/String;

    .line 5159
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceNameLength_Minus1:I

    .line 5160
    return-void
.end method

.method public final build_ArmyInAnotherProvince()V
    .registers 4

    .line 4205
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    .line 4206
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 4207
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addArmyInAnotherProv(I)V

    .line 4206
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4210
    .end local v0  # "i":I
    :cond_22
    return-void
.end method

.method public final checkLandBySeaProvinceBorders()V
    .registers 4

    .line 3925
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_4f

    .line 3926
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 3927
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    if-nez v1, :cond_28

    .line 3928
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    .line 3931
    :cond_28
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3932
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3934
    add-int/lit8 v0, v0, -0x1

    .line 3936
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandBySeaSize:I

    .line 3937
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    .line 3925
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3940
    .end local v0  # "i":I
    :cond_4f
    return-void
.end method

.method public final checkSeaBySeaProvinceBorders()V
    .registers 4

    .line 3943
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_4f

    .line 3944
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 3945
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    if-nez v1, :cond_28

    .line 3946
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    .line 3949
    :cond_28
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3950
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3952
    add-int/lit8 v0, v0, -0x1

    .line 3954
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandBySeaSize:I

    .line 3955
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    .line 3943
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3958
    .end local v0  # "i":I
    :cond_4f
    return-void
.end method

.method public final civSupportsRebels(I)Z
    .registers 5
    .param p1, "nCivID"  # I

    .line 5858
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iSupportRebelsSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 5859
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iByCivID:I

    if-ne v2, p1, :cond_17

    .line 5860
    return v1

    .line 5858
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 5864
    .end local v0  # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final clearCities()V
    .registers 2

    .line 4395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->cities:Ljava/util/List;

    .line 4396
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->citiesSize:I

    .line 4397
    return-void
.end method

.method public final clearWonders()V
    .registers 2

    .line 4433
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->wonders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4434
    return-void
.end method

.method public final disposeProvinceBG()V
    .registers 2

    .line 4005
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_b

    .line 4006
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 4008
    :cond_b
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "scale"  # F
    .param p5, "nAlpha"  # I

    .line 1970
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v0

    int-to-float v1, p5

    const/high16 v2, 0x437f0000  # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    .line 1971
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    add-int v2, p2, v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1972
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/2addr v2, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    sub-int/2addr v2, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    add-int v3, p3, v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1973
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    add-int/2addr v3, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    sub-int/2addr v3, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v3, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1974
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v1

    mul-float v1, v1, p4

    .line 1971
    invoke-virtual {v0, p1, v2, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 1975
    return-void
.end method

.method public final drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 3787
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;->drawArmyProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 3788
    return-void
.end method

.method public final drawArmyOptimizationRegions(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 3815
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMYBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvince_OptimizationRegions(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 3816
    return-void
.end method

.method public final drawArmyPosition(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 3807
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMYBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvince_ArmyPosition(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 3808
    return-void
.end method

.method public final drawArmyPositionSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 3811
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG_SEA:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_TEXT_SEA:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvince_ArmyPosition(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 3812
    return-void
.end method

.method public final drawArmyPosition_Active(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 3803
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvince_ArmyPosition(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 3804
    return-void
.end method

.method public final drawArmySeaProvincesLevels(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 3819
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMYBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvince_SeaProvincesLevels(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 3820
    return-void
.end method

.method public final drawArmy_SetUpArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 4313
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_23

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_23

    .line 4317
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v0

    if-lez v0, :cond_30

    .line 4318
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMYBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinceArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    goto :goto_30

    .line 4314
    :cond_23
    :goto_23
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMYBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, p1

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 4321
    :cond_30
    :goto_30
    return-void
.end method

.method public final drawArmy_SetUpArmy_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 4306
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 4307
    .local v0, "tCenterX":I
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v8, v1

    .line 4309
    .local v8, "tCenterY":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_TEXT_SEA:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    move v5, p2

    move v6, v0

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinceArmy_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;FII)V

    .line 4310
    return-void
.end method

.method public final drawBuildings(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 4299
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 4300
    .local v0, "tCenterX":I
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    .line 4302
    .local v1, "tCenterY":I
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v2, p1, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinceBuildings(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 4303
    return-void
.end method

.method public final drawDanger(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 3791
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMYBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvince_Danger(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 3792
    return-void
.end method

.method public final drawGrowthRate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 4324
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMYBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvince_GrowthRate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 4325
    return-void
.end method

.method public final drawHappiness(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 3795
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMYBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvince_Happiness(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 3796
    return-void
.end method

.method public final drawLandProv(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 800
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 801
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 802
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 803
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v3

    .line 800
    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 804
    return-void
.end method

.method public final drawOccupiedProv(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 808
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->OCCUPIED_PROV_ALPHA:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000  # 255.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 811
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->OCCUPIED_STRIPES_SIZE:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->patternReversed:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->patternReversed:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v1, v1, v2

    const-string v2, "u_maskScale"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 813
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 814
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 816
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patternExtraAlpha:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 817
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    mul-int v2, v2, v3

    add-int v3, v0, v2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 818
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    mul-int v2, v2, v4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->patternExtraAlpha:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 819
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v5, v0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v6, v0

    .line 816
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 821
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 822
    return-void
.end method

.method public final drawOccupiedProv2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 826
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->OCCUPIED_PROV_ALPHA:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x437f0000  # 255.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 829
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->OCCUPIED_STRIPES_SIZE:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->patternReversed:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->patternReversed:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v1, v1, v2

    const-string v2, "u_maskScale"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 831
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 832
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 834
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patternExtraAlpha:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 835
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    mul-int v2, v2, v3

    add-int v3, v0, v2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 836
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    mul-int v2, v2, v4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->patternExtraAlpha:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 837
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v5, v0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v6, v0

    .line 834
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 839
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 840
    return-void
.end method

.method public final drawPotential(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 4332
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMYBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvince_Potential(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 4333
    return-void
.end method

.method public final drawProvFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 900
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProv()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 901
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha4:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 902
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 903
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 904
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 906
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawLandProv(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 908
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 910
    :cond_3b
    return-void
.end method

.method public final drawProvFlag_CreateRandomGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPlayerID"  # I

    .line 913
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProv()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 914
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha4:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 915
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 916
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 917
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 919
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawLandProv(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 921
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 923
    :cond_37
    return-void
.end method

.method public final drawProv_ActiveProv(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 783
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getOceanContinentID()I

    move-result v1

    if-ne v0, v1, :cond_6b

    .line 784
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    add-int/2addr v1, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 785
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    sub-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 786
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    add-int/2addr v2, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 787
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    int-to-float v3, v3

    .line 784
    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_6e

    .line 790
    :cond_6b
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawLandProv(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 792
    :goto_6e
    return-void
.end method

.method public final drawProvinBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_17

    .line 1376
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1375
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1379
    .end local v0  # "i":I
    :cond_17
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_18
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_2e

    .line 1380
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1379
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1382
    .end local v0  # "i":I
    :cond_2e
    return-void
.end method

.method public final drawProvinceBorderInStartGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 10
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1888
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_51

    .line 1889
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1890
    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1891
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->startTheGameData:Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->getStraightLinePercentage()F

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    goto :goto_4e

    .line 1894
    :cond_2d
    const v1, 0x3f20a0a1

    const v2, 0x3d23d70a  # 0.04f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1895
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v5, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->startTheGameData:Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->getDashedLinePercentage()F

    move-result v6

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 1888
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1899
    .end local v0  # "i":I
    :cond_51
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1900
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_5e
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_78

    .line 1901
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->startTheGameData:Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->getStraightLinePercentage()F

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1900
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 1904
    .end local v0  # "i":I
    :cond_78
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1905
    return-void
.end method

.method public final drawProvinceBorderInStartGame_Wasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1908
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_2f

    .line 1909
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1910
    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1911
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->startTheGameData:Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->getStraightLinePercentage()F

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1908
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1915
    .end local v0  # "i":I
    :cond_2f
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1916
    return-void
.end method

.method public final drawProvinceBorderTimeline(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 941
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_62

    .line 942
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 943
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 944
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v2

    const/4 v3, 0x0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_5f

    .line 947
    :cond_4d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 948
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 941
    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 951
    .end local v0  # "i":I
    :cond_62
    return-void
.end method

.method public final drawProvinceBorderTimeline_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 954
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_62

    .line 955
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 956
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 957
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v2

    const/4 v3, 0x0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_5f

    .line 960
    :cond_4d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 961
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 954
    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 964
    .end local v0  # "i":I
    :cond_62
    return-void
.end method

.method public final drawProvinceBorder_CivilizationView(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1931
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_47

    .line 1932
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_CivilizationView;->iCivID:I

    if-ne v1, v2, :cond_35

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_CivilizationView;->iCivID:I

    if-eq v1, v2, :cond_44

    .line 1933
    :cond_35
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1931
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1937
    .end local v0  # "i":I
    :cond_47
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_48
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_5e

    .line 1938
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1937
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 1940
    .end local v0  # "i":I
    :cond_5e
    return-void
.end method

.method public final drawProvinceBorder_ContinentMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1518
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_5d

    .line 1519
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    if-ne v1, v2, :cond_43

    .line 1520
    const v1, 0x3ec8c8c9

    const v2, 0x3d23d70a  # 0.04f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1521
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_5a

    .line 1523
    :cond_43
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1524
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1518
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1528
    .end local v0  # "i":I
    :cond_5d
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1529
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_6a
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_7e

    .line 1530
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1529
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 1533
    .end local v0  # "i":I
    :cond_7e
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1534
    return-void
.end method

.method public final drawProvinceBorder_ContinentModeWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1778
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_6b

    .line 1779
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1780
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    if-ne v1, v2, :cond_51

    .line 1781
    const v1, 0x3ec8c8c9

    const v2, 0x3d23d70a  # 0.04f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1782
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_68

    .line 1784
    :cond_51
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1785
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1778
    :cond_68
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1790
    .end local v0  # "i":I
    :cond_6b
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1791
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_78
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_8c

    .line 1792
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1791
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 1795
    .end local v0  # "i":I
    :cond_8c
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1796
    return-void
.end method

.method public final drawProvinceBorder_ContinentModeWasteland_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1799
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_6b

    .line 1800
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1801
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    if-ne v1, v2, :cond_51

    .line 1802
    const v1, 0x3ec8c8c9

    const v2, 0x3d23d70a  # 0.04f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1803
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_68

    .line 1805
    :cond_51
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1806
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1799
    :cond_68
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1811
    .end local v0  # "i":I
    :cond_6b
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1812
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_78
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_8c

    .line 1813
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1812
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 1816
    .end local v0  # "i":I
    :cond_8c
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1817
    return-void
.end method

.method public final drawProvinceBorder_ContinentMode_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_5d

    .line 1538
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    if-ne v1, v2, :cond_43

    .line 1539
    const v1, 0x3ec8c8c9

    const v2, 0x3d23d70a  # 0.04f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1540
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_5a

    .line 1542
    :cond_43
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1543
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1537
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1547
    .end local v0  # "i":I
    :cond_5d
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1548
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_6a
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_7e

    .line 1549
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1548
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 1552
    .end local v0  # "i":I
    :cond_7e
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1553
    return-void
.end method

.method public final drawProvinceBorder_ContinentMode_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1556
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_d0

    .line 1557
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    const v2, 0x3ec8c8c9

    const/high16 v3, 0x42c80000  # 100.0f

    const v4, 0x3d23d70a  # 0.04f

    if-eqz v1, :cond_6f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v5

    if-ne v1, v5, :cond_6f

    .line 1558
    invoke-virtual {p1, v4, v4, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1559
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_cc

    .line 1561
    :cond_6f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_b5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_b5

    .line 1562
    invoke-virtual {p1, v4, v4, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1563
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_cc

    .line 1565
    :cond_b5
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1566
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1556
    :goto_cc
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1571
    .end local v0  # "i":I
    :cond_d0
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1572
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_dd
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_f1

    .line 1573
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1572
    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 1576
    .end local v0  # "i":I
    :cond_f1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1577
    return-void
.end method

.method public final drawProvinceBorder_ContinentMode_FogOfWarDiscovery_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1580
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_d0

    .line 1581
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    const v2, 0x3ec8c8c9

    const/high16 v3, 0x42c80000  # 100.0f

    const v4, 0x3d23d70a  # 0.04f

    if-eqz v1, :cond_6f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v5

    if-ne v1, v5, :cond_6f

    .line 1582
    invoke-virtual {p1, v4, v4, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1583
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_cc

    .line 1585
    :cond_6f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_b5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_b5

    .line 1586
    invoke-virtual {p1, v4, v4, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1587
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_cc

    .line 1589
    :cond_b5
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1590
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1580
    :goto_cc
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1595
    .end local v0  # "i":I
    :cond_d0
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1596
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_dd
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_f1

    .line 1597
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1596
    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 1600
    .end local v0  # "i":I
    :cond_f1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1601
    return-void
.end method

.method public final drawProvinceBorder_CreateRandomGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_66

    .line 90
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    if-eq v1, v2, :cond_54

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    if-eq v1, v2, :cond_54

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_3e

    goto :goto_54

    .line 94
    :cond_3e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 95
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v3, 0x0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_63

    .line 91
    :cond_54
    :goto_54
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 89
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    .end local v0  # "i":I
    :cond_66
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 100
    return-void
.end method

.method public final drawProvinceBorder_CreateRandomGameWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_45

    .line 104
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-nez v1, :cond_33

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    if-eq v1, v2, :cond_33

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    if-ne v1, v2, :cond_42

    .line 105
    :cond_33
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 103
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    .end local v0  # "i":I
    :cond_45
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 110
    return-void
.end method

.method public final drawProvinceBorder_LoadAI_RTO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1943
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_57

    .line 1944
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-nez v1, :cond_45

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-nez v1, :cond_54

    .line 1945
    :cond_45
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1943
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1949
    .end local v0  # "i":I
    :cond_57
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_58
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_6e

    .line 1950
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1949
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 1952
    .end local v0  # "i":I
    :cond_6e
    return-void
.end method

.method public final drawProvinceBorder_LoadAI_RTO_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1955
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_5b

    .line 1956
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-nez v1, :cond_49

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    if-ne v1, v2, :cond_49

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    if-eq v1, v2, :cond_58

    .line 1957
    :cond_49
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1955
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1961
    .end local v0  # "i":I
    :cond_5b
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_5c
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_72

    .line 1962
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1961
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 1964
    .end local v0  # "i":I
    :cond_72
    return-void
.end method

.method public final drawProvinceBorder_NextPlayerTurn(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1919
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_5b

    .line 1920
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-nez v1, :cond_49

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    if-ne v1, v2, :cond_49

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    if-eq v1, v2, :cond_58

    .line 1921
    :cond_49
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1919
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1925
    .end local v0  # "i":I
    :cond_5b
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_5c
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_72

    .line 1926
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1925
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 1928
    .end local v0  # "i":I
    :cond_72
    return-void
.end method

.method public final drawProvinceBorder_OnlyCivilizationBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1385
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1386
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceBorder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;->PROVINCE_BORDER_STOP_DRAWING:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_75

    .line 1387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_3d

    .line 1388
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1389
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1387
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .end local v0  # "i":I
    :cond_3d
    goto :goto_75

    .line 1395
    :cond_3e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceBorder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;->PROVINCE_BORDER_STOP_DRAWING_MOBILE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_75

    .line 1396
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_51
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_75

    .line 1397
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1398
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1396
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1404
    .end local v0  # "i":I
    :cond_75
    :goto_75
    return-void
.end method

.method public final drawProvinceBorder_OnlyCivilizationBorder_Capitals(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1407
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_99

    .line 1408
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-nez v1, :cond_86

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v1

    if-nez v1, :cond_86

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v1

    if-nez v1, :cond_86

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    if-eq v1, v2, :cond_86

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    if-ne v1, v2, :cond_52

    goto :goto_86

    .line 1411
    :cond_52
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-eqz v1, :cond_70

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-nez v1, :cond_95

    .line 1412
    :cond_70
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1413
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    const/4 v3, 0x0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_95

    .line 1409
    :cond_86
    :goto_86
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1407
    :cond_95
    :goto_95
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1416
    .end local v0  # "i":I
    :cond_99
    return-void
.end method

.method public final drawProvinceBorder_OnlyCivilizationBorder_Capitals_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_119

    .line 1433
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 1434
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-nez v1, :cond_b2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v1

    if-nez v1, :cond_b2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v1

    if-nez v1, :cond_b2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    if-eq v1, v3, :cond_b2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    if-ne v1, v3, :cond_7f

    goto :goto_b2

    .line 1437
    :cond_7f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-eqz v1, :cond_9d

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-nez v1, :cond_115

    .line 1438
    :cond_9d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1439
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_115

    .line 1435
    :cond_b2
    :goto_b2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_115

    .line 1443
    :cond_c2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_103

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_103

    .line 1444
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1445
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_115

    .line 1448
    :cond_103
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1449
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1432
    :cond_115
    :goto_115
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1453
    .end local v0  # "i":I
    :cond_119
    return-void
.end method

.method public final drawProvinceBorder_OnlyCivilizationBorder_Capitals_FogOfWarDiscoveryWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1419
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_9e

    .line 1420
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_86

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v1

    if-nez v1, :cond_86

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v1

    if-nez v1, :cond_86

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    if-eq v1, v3, :cond_86

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    if-ne v1, v3, :cond_53

    goto :goto_86

    .line 1424
    :cond_53
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-eqz v1, :cond_71

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-nez v1, :cond_9a

    .line 1425
    :cond_71
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1426
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_9a

    .line 1421
    :cond_86
    :goto_86
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1422
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 1419
    :cond_9a
    :goto_9a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1429
    .end local v0  # "i":I
    :cond_9e
    return-void
.end method

.method public final drawProvinceBorder_OnlyCivilizationBorder_Capitals_FogOfWarDiscovery_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_119

    .line 1457
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 1458
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-nez v1, :cond_b2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v1

    if-nez v1, :cond_b2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v1

    if-nez v1, :cond_b2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    if-eq v1, v3, :cond_b2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    if-ne v1, v3, :cond_7f

    goto :goto_b2

    .line 1461
    :cond_7f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-eqz v1, :cond_9d

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-nez v1, :cond_115

    .line 1462
    :cond_9d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1463
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_115

    .line 1459
    :cond_b2
    :goto_b2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;->drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_115

    .line 1467
    :cond_c2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_103

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_103

    .line 1468
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1469
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_115

    .line 1472
    :cond_103
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1473
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1456
    :cond_115
    :goto_115
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1477
    .end local v0  # "i":I
    :cond_119
    return-void
.end method

.method public final drawProvinceBorder_PeaceTreaty(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 993
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_64

    .line 994
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, v2, :cond_4f

    .line 995
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 996
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v2

    const/4 v3, 0x0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_61

    .line 999
    :cond_4f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1000
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 993
    :goto_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1003
    .end local v0  # "i":I
    :cond_64
    return-void
.end method

.method public final drawProvinceBorder_PeaceTreaty_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1006
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_64

    .line 1007
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, v2, :cond_4f

    .line 1008
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1009
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v2

    const/4 v3, 0x0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_61

    .line 1012
    :cond_4f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1013
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1006
    :goto_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1016
    .end local v0  # "i":I
    :cond_64
    return-void
.end method

.method public final drawProvinceBorder_PeaceTreaty_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1045
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_119

    .line 1046
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_90

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1047
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, v3, :cond_7c

    .line 1048
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1049
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto/16 :goto_115

    .line 1052
    :cond_7c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1053
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto/16 :goto_115

    .line 1057
    :cond_90
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_103

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_af

    goto :goto_103

    .line 1061
    :cond_af
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_f0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_f0

    .line 1062
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1063
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_115

    .line 1066
    :cond_f0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1067
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_115

    .line 1058
    :cond_103
    :goto_103
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1059
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1045
    :goto_115
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1071
    .end local v0  # "i":I
    :cond_119
    return-void
.end method

.method public final drawProvinceBorder_PeaceTreaty_FogOfWarDiscovery_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1074
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_119

    .line 1075
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_90

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1076
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, v3, :cond_7c

    .line 1077
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1078
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto/16 :goto_115

    .line 1081
    :cond_7c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1082
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto/16 :goto_115

    .line 1086
    :cond_90
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_103

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_af

    goto :goto_103

    .line 1090
    :cond_af
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_f0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_f0

    .line 1091
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1092
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_115

    .line 1095
    :cond_f0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1096
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_115

    .line 1087
    :cond_103
    :goto_103
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1088
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1074
    :goto_115
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1100
    .end local v0  # "i":I
    :cond_119
    return-void
.end method

.method public final drawProvinceBorder_PeaceTreaty_FogOfWarDiscovery_Only_CivilizationBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_e5

    .line 1104
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_70

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1105
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, v2, :cond_5d

    goto/16 :goto_e1

    .line 1110
    :cond_5d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1111
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_e1

    .line 1115
    :cond_70
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_cf

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_8f

    goto :goto_cf

    .line 1119
    :cond_8f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_bc

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_bc

    goto :goto_e1

    .line 1124
    :cond_bc
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1125
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_e1

    .line 1116
    :cond_cf
    :goto_cf
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1117
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1103
    :goto_e1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1129
    .end local v0  # "i":I
    :cond_e5
    return-void
.end method

.method public final drawProvinceBorder_PeaceTreaty_FogOfWarDiscovery_Only_CivilizationBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_e5

    .line 1307
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_70

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1308
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, v2, :cond_5d

    goto/16 :goto_e1

    .line 1313
    :cond_5d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1314
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_e1

    .line 1318
    :cond_70
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_cf

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_8f

    goto :goto_cf

    .line 1322
    :cond_8f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_bc

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_bc

    goto :goto_e1

    .line 1327
    :cond_bc
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1328
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_e1

    .line 1319
    :cond_cf
    :goto_cf
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1320
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1306
    :goto_e1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1332
    .end local v0  # "i":I
    :cond_e5
    return-void
.end method

.method public final drawProvinceBorder_PeaceTreaty_Only_CivilizationBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1019
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_45

    .line 1020
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, v2, :cond_30

    goto :goto_42

    .line 1025
    :cond_30
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1026
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1019
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1029
    .end local v0  # "i":I
    :cond_45
    return-void
.end method

.method public final drawProvinceBorder_PeaceTreaty_Only_CivilizationBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1032
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_45

    .line 1033
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, v2, :cond_30

    goto :goto_42

    .line 1038
    :cond_30
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1039
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1032
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1042
    .end local v0  # "i":I
    :cond_45
    return-void
.end method

.method public final drawProvinceBorder_PeaceTreaty_Wasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_b7

    .line 1336
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_25

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_25

    goto/16 :goto_b3

    .line 1339
    :cond_25
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_a1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_44

    goto :goto_a1

    .line 1343
    :cond_44
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, v2, :cond_8e

    .line 1344
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1345
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v2

    const/4 v3, 0x0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_b3

    .line 1348
    :cond_8e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1349
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_b3

    .line 1340
    :cond_a1
    :goto_a1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1341
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1335
    :goto_b3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1352
    .end local v0  # "i":I
    :cond_b7
    return-void
.end method

.method public final drawProvinceBorder_PeaceTreaty_Wasteland_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_b7

    .line 1356
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_25

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_25

    goto/16 :goto_b3

    .line 1359
    :cond_25
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_a1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_44

    goto :goto_a1

    .line 1363
    :cond_44
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->drawProvOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, v2, :cond_8e

    .line 1364
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1365
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v2

    const/4 v3, 0x0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_b3

    .line 1368
    :cond_8e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1369
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_b3

    .line 1360
    :cond_a1
    :goto_a1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1361
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1355
    :goto_b3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1372
    .end local v0  # "i":I
    :cond_b7
    return-void
.end method

.method public final drawProvinceBorder_PrintAMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_20

    .line 49
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 52
    .end local v0  # "i":I
    :cond_20
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_21
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandBySeaSize:I

    if-ge v0, v1, :cond_35

    .line 53
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 56
    .end local v0  # "i":I
    :cond_35
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_36
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_4a

    .line 57
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 60
    .end local v0  # "i":I
    :cond_4a
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 61
    return-void
.end method

.method public final drawProvinceBorder_PrintAMap_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_20

    .line 66
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 69
    .end local v0  # "i":I
    :cond_20
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_21
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandBySeaSize:I

    if-ge v0, v1, :cond_35

    .line 70
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 73
    .end local v0  # "i":I
    :cond_35
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_36
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_4a

    .line 74
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 77
    .end local v0  # "i":I
    :cond_4a
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 78
    return-void
.end method

.method public final drawProvinceBorder_RegionMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_5d

    .line 1605
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    if-ne v1, v2, :cond_43

    .line 1606
    const v1, 0x3ec8c8c9

    const v2, 0x3d23d70a  # 0.04f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1607
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_5a

    .line 1609
    :cond_43
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1610
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1604
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1614
    .end local v0  # "i":I
    :cond_5d
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1615
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_6a
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_7e

    .line 1616
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1615
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 1619
    .end local v0  # "i":I
    :cond_7e
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1620
    return-void
.end method

.method public final drawProvinceBorder_RegionModeWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1820
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_6b

    .line 1821
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1822
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    if-ne v1, v2, :cond_51

    .line 1823
    const v1, 0x3ec8c8c9

    const v2, 0x3d23d70a  # 0.04f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1824
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_68

    .line 1826
    :cond_51
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1827
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1820
    :cond_68
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1832
    .end local v0  # "i":I
    :cond_6b
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1833
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_78
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_8c

    .line 1834
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1833
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 1837
    .end local v0  # "i":I
    :cond_8c
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1838
    return-void
.end method

.method public final drawProvinceBorder_RegionModeWasteland_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1841
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_6b

    .line 1842
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1843
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    if-ne v1, v2, :cond_51

    .line 1844
    const v1, 0x3ec8c8c9

    const v2, 0x3d23d70a  # 0.04f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1845
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_68

    .line 1847
    :cond_51
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1848
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1841
    :cond_68
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1853
    .end local v0  # "i":I
    :cond_6b
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1854
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_78
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_8c

    .line 1855
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1854
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 1858
    .end local v0  # "i":I
    :cond_8c
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1859
    return-void
.end method

.method public final drawProvinceBorder_RegionMode_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_5d

    .line 1624
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    if-ne v1, v2, :cond_43

    .line 1625
    const v1, 0x3ec8c8c9

    const v2, 0x3d23d70a  # 0.04f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1626
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_5a

    .line 1628
    :cond_43
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1629
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1623
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1633
    .end local v0  # "i":I
    :cond_5d
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1634
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_6a
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_7e

    .line 1635
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1634
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 1638
    .end local v0  # "i":I
    :cond_7e
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1639
    return-void
.end method

.method public final drawProvinceBorder_RegionMode_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1642
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_d0

    .line 1643
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    const v2, 0x3ec8c8c9

    const/high16 v3, 0x42c80000  # 100.0f

    const v4, 0x3d23d70a  # 0.04f

    if-eqz v1, :cond_6f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v5

    if-ne v1, v5, :cond_6f

    .line 1644
    invoke-virtual {p1, v4, v4, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1645
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_cc

    .line 1647
    :cond_6f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_b5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_b5

    .line 1648
    invoke-virtual {p1, v4, v4, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1649
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_cc

    .line 1651
    :cond_b5
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1652
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1642
    :goto_cc
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1657
    .end local v0  # "i":I
    :cond_d0
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1658
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_dd
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_f1

    .line 1659
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1658
    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 1662
    .end local v0  # "i":I
    :cond_f1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1663
    return-void
.end method

.method public final drawProvinceBorder_RegionMode_FogOfWarDiscovery_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1666
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_d0

    .line 1667
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    const v2, 0x3ec8c8c9

    const/high16 v3, 0x42c80000  # 100.0f

    const v4, 0x3d23d70a  # 0.04f

    if-eqz v1, :cond_6f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v5

    if-ne v1, v5, :cond_6f

    .line 1668
    invoke-virtual {p1, v4, v4, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1669
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_cc

    .line 1671
    :cond_6f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_b5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_b5

    .line 1672
    invoke-virtual {p1, v4, v4, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1673
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_cc

    .line 1675
    :cond_b5
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1676
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1666
    :goto_cc
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1681
    .end local v0  # "i":I
    :cond_d0
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1682
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_dd
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_f1

    .line 1683
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1682
    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 1686
    .end local v0  # "i":I
    :cond_f1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1687
    return-void
.end method

.method public final drawProvinceBorder_TerrainMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1480
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_5b

    .line 1481
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    if-ne v1, v2, :cond_41

    .line 1482
    const v1, 0x3ec8c8c9

    const v2, 0x3d23d70a  # 0.04f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1483
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_58

    .line 1485
    :cond_41
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1486
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1480
    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1490
    .end local v0  # "i":I
    :cond_5b
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1491
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_68
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_7c

    .line 1492
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1491
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 1495
    .end local v0  # "i":I
    :cond_7c
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1496
    return-void
.end method

.method public final drawProvinceBorder_TerrainMode_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1499
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_5b

    .line 1500
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    if-ne v1, v2, :cond_41

    .line 1501
    const v1, 0x3ec8c8c9

    const v2, 0x3d23d70a  # 0.04f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1502
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    const/4 v7, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v8, v1, v3

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_58

    .line 1504
    :cond_41
    const v1, 0x3f0ccccd  # 0.55f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1505
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 1499
    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1509
    .end local v0  # "i":I
    :cond_5b
    const v0, 0x3f733333  # 0.95f

    const v1, 0x3d8f5c29  # 0.07f

    const v2, 0x3f70a3d7  # 0.94f

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1510
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_68
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_7c

    .line 1511
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 1514
    .end local v0  # "i":I
    :cond_7c
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1515
    return-void
.end method

.method public final drawProvinceBorder_Timeline_Only_CivilizationBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 967
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_43

    .line 968
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_40

    .line 973
    :cond_2e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 974
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 967
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 977
    .end local v0  # "i":I
    :cond_43
    return-void
.end method

.method public final drawProvinceBorder_Timeline_Only_CivilizationBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 980
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_43

    .line 981
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_40

    .line 986
    :cond_2e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 987
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_Classic(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 980
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 990
    .end local v0  # "i":I
    :cond_43
    return-void
.end method

.method public final drawProvinceInfo(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 3
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 926
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawProvincePort(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 927
    return-void
.end method

.method public final drawProvincePort(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 930
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v0

    if-lez v0, :cond_2b

    .line 931
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    .line 932
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    .line 933
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v2, v2

    .line 931
    invoke-virtual {v0, p1, v1, v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 935
    :cond_2b
    return-void
.end method

.method public final drawStartingMoney(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 3799
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMYBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvince_StartingMoney(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 3800
    return-void
.end method

.method public final drawTechnologyLevels(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 4328
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMYBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvince_TechnologyLevels(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 4329
    return-void
.end method

.method public final drawWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "scale"  # F
    .param p5, "nAlpha"  # I

    .line 1995
    int-to-float v0, p5

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1996
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    add-int v2, p2, v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1997
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/2addr v2, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    sub-int/2addr v2, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    add-int v3, p3, v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1998
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    add-int/2addr v3, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    sub-int/2addr v3, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v3, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1999
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v1

    mul-float v1, v1, p4

    .line 1996
    invoke-virtual {v0, p1, v2, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 2000
    return-void
.end method

.method public final drawWastelandProv(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 843
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->PROVINCE_ALPHA_WASTELAND:F

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 845
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 846
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 847
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 848
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v3

    .line 845
    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 879
    return-void
.end method

.method public final drawWastelandProv(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 8
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nAlpha"  # F

    .line 891
    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 893
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 894
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 895
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 896
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v3

    .line 893
    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 897
    return-void
.end method

.method public final drawWastelandProv_PeaceTreaty(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 882
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->PROVINCE_ALPHA_WASTELAND:F

    const/high16 v1, 0x3e800000  # 0.25f

    mul-float v0, v0, v1

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 884
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 885
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 886
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 887
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v3

    .line 884
    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 888
    return-void
.end method

.method public final draw_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "scale"  # F
    .param p5, "nAlpha"  # I

    .line 1980
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1981
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v0

    int-to-float v1, p5

    const/high16 v2, 0x437f0000  # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    .line 1984
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    add-int v2, p2, v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1985
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/2addr v2, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    sub-int/2addr v2, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    add-int v3, p3, v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1986
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    add-int/2addr v3, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    sub-int/2addr v3, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v3, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 1987
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapExtraScale()F

    move-result v1

    mul-float v1, v1, p4

    .line 1984
    invoke-virtual {v0, p1, v2, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_8b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8b} :catch_8c

    .line 1991
    :cond_8b
    goto :goto_90

    .line 1989
    :catch_8c
    move-exception v0

    .line 1990
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Province;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 1992
    .end local v0  # "ex":Ljava/lang/NullPointerException;
    :goto_90
    return-void
.end method

.method public final getArmyCivID1(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 4907
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    if-ge v0, v1, :cond_29

    .line 4908
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_26

    .line 4909
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v1

    return v1

    .line 4907
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4913
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public final getArmyCivIDS(I)Ljava/lang/String;
    .registers 4
    .param p1, "nCivID"  # I

    .line 4917
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    if-ge v0, v1, :cond_29

    .line 4918
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_26

    .line 4919
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmyS()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4917
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4923
    .end local v0  # "i":I
    :cond_29
    const-string v0, "0"

    return-object v0
.end method

.method public final getArmyID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 4993
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v0

    return v0
.end method

.method public final getArmyObject(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;
    .registers 3
    .param p1, "i"  # I

    .line 4988
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    return-object v0
.end method

.method public final getArmyS(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 4997
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmyS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getArmyWasRecruited()I
    .registers 2

    .line 5557
    iget-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iArmyWasRecruited:B

    return v0
.end method

.method public final getArmyWi(I)I
    .registers 3
    .param p1, "i"  # I

    .line 4964
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmyWidth()I

    move-result v0

    return v0
.end method

.method public final getBalance_LastTurn()I
    .registers 3

    .line 316
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeTaxation:F

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeProduction:F

    add-float/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->administrationCost:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getBasinID()I
    .registers 2

    .line 4846
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iBasin:I

    return v0
.end method

.method public final getBordersWithEnemy()Z
    .registers 2

    .line 5577
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->bordersWithEnemy:Z

    return v0
.end method

.method public final getCeShX()I
    .registers 3

    .line 4780
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->ceX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->shiftX:I

    add-int/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getCeShY()I
    .registers 3

    .line 4785
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->ceY:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->shiftY:I

    add-int/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getCeX()I
    .registers 3

    .line 4789
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->ceX:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getCeXR()I
    .registers 2

    .line 4798
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->ceX:I

    return v0
.end method

.method public final getCeY()I
    .registers 3

    .line 4793
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->ceY:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getCeYR()I
    .registers 2

    .line 4803
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->ceY:I

    return v0
.end method

.method public final getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;
    .registers 3
    .param p1, "i"  # I

    .line 4387
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->cities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/City;

    return-object v0
.end method

.method public final getCitSize()I
    .registers 2

    .line 4391
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->citiesSize:I

    return v0
.end method

.method public final getCivId()I
    .registers 3

    .line 3840
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v1

    if-gez v1, :cond_27

    .line 3841
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v1

    if-lez v1, :cond_23

    .line 3842
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivIdJust(I)V

    .line 3843
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v0

    return v0

    .line 3846
    :cond_23
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivIdJust(I)V

    .line 3847
    return v0

    .line 3851
    :cond_27
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v0
    :try_end_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_35} :catch_36

    return v0

    .line 3852
    :catch_36
    move-exception v1

    .line 3853
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3854
    return v0
.end method

.method public final getCivId(I)I
    .registers 4
    .param p1, "i"  # I

    .line 3860
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v0
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 3861
    :catch_f
    move-exception v0

    .line 3863
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    return v1
.end method

.method public final getCivRegionID()I
    .registers 2

    .line 355
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCivRegionID:I

    return v0
.end method

.method public final getCivsSize()I
    .registers 2

    .line 4959
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    return v0
.end method

.method public final getContinent()I
    .registers 2

    .line 5033
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    return v0
.end method

.method public final getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;
    .registers 2

    .line 4509
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    return-object v0
.end method

.method public final getDangerLevel_WithArmy()I
    .registers 2

    .line 5544
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel_WithArmy:I

    return v0
.end method

.method public final getDangerLvl()I
    .registers 2

    .line 5535
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel:I

    return v0
.end method

.method public final getDefensivePosition()I
    .registers 3

    .line 5844
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getDeveLvl()F
    .registers 2

    .line 4668
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fDevLevel:F

    return v0
.end method

.method public final getDrawCitiesInProv()Z
    .registers 2

    .line 4400
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawCitiesInProv:Z

    return v0
.end method

.method public final getDrawProv()Z
    .registers 2

    .line 4950
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawProvince:Z

    return v0
.end method

.method public final getEco()I
    .registers 2

    .line 4534
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->economy:I

    return v0
.end method

.method public final getGrowthRate_NewColony()F
    .registers 5

    .line 379
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iNewColonyBonus:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvColonize:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->NEW_COLONY_GROWTH_RATE_BONUS_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvColonize:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->NEW_COLONY_GROWTH_RATE_BONUS_PERC_OF_PROVINCE_GROWTH:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public final getGrowthRate_Pop()F
    .registers 2

    .line 371
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    return v0
.end method

.method public final getGrowthRate_Pop_WithFarm()F
    .registers 3

    .line 375
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFarm()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getFarm_GrowthRateBonus(I)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wonderBuilt:Z

    if-eqz v1, :cond_16

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWonder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Wonder;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Wonder;->GROWTH_RATE:F

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    add-float/2addr v0, v1

    return v0
.end method

.method public final getGrowthRate_Pop_WithFarm_WithTerrain()F
    .registers 4

    .line 383
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFarm()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getFarm_GrowthRateBonus(I)F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_NewColony()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wonderBuilt:Z

    if-eqz v1, :cond_26

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWonder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Wonder;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Wonder;->GROWTH_RATE:F

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    add-float/2addr v0, v1

    const v1, 0x3ca3d70a  # 0.02f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final getHappi()F
    .registers 2

    .line 4682
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fHappiness:F

    return v0
.end method

.method public final getIsBelowZero()Z
    .registers 2

    .line 4879
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->isBelowZeroPosX:Z

    return v0
.end method

.method public final getIsCapital2()Z
    .registers 3

    .line 4465
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public final getIsCapital_Just()Z
    .registers 2

    .line 4469
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isCapital:Z

    return v0
.end method

.method public final getIsNotSuppliedForXTurns()I
    .registers 2

    .line 5764
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isNotSuppliedForYTurns:I

    return v0
.end method

.method public final getIsPartOfHolyRomanEmpire()Z
    .registers 2

    .line 5619
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isPartOfHolyRomaEmpire:Z

    return v0
.end method

.method public final getIsSupplied()Z
    .registers 3

    .line 4567
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getIsSupplied()Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return v0

    .line 4568
    :catch_17
    move-exception v0

    .line 4569
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 4570
    const/4 v1, 0x1

    return v1
.end method

.method public final getLvlOfArmoury()I
    .registers 2

    .line 5385
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iArmoury:I

    return v0
.end method

.method public final getLvlOfFarm()I
    .registers 2

    .line 5353
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iFarm:I

    return v0
.end method

.method public final getLvlOfFort()I
    .registers 2

    .line 4457
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iFort:I

    return v0
.end method

.method public final getLvlOfLibrary()I
    .registers 2

    .line 5377
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iLibrary:I

    return v0
.end method

.method public final getLvlOfMarket()I
    .registers 2

    .line 5369
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iMarket:I

    return v0
.end method

.method public final getLvlOfPort()I
    .registers 2

    .line 4441
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iPort:I

    return v0
.end method

.method public final getLvlOfSupply()I
    .registers 2

    .line 5397
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iSupply:I

    return v0
.end method

.method public final getLvlOfWatchTower()I
    .registers 2

    .line 4453
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iWatchTower:I

    return v0
.end method

.method public final getLvlOfWorkshop()I
    .registers 2

    .line 5361
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iWorkshop:I

    return v0
.end method

.method public final getMaX7()I
    .registers 3

    .line 4722
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maX:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getMaY6()I
    .registers 3

    .line 4732
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maY:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getMiX2()I
    .registers 3

    .line 4717
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getMiY4()I
    .registers 3

    .line 4727
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getMountain(I)Lage/of/civilizations2/jakowski/lukasz/MapA/Mountains/Mountain;
    .registers 3
    .param p1, "i"  # I

    .line 4414
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->mountains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mountains/Mountain;

    return-object v0
.end method

.method public final getMountainsSize()I
    .registers 2

    .line 4418
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->mountains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 5122
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v0

    if-lez v0, :cond_18

    .line 5123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5126
    :cond_18
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeighProvinceOfCivWasLost()I
    .registers 2

    .line 5606
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-byte v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->neighProvinceOfCivicWasLost:B

    return v0
.end method

.method public final getNeighProvinces(I)I
    .registers 3
    .param p1, "i"  # I

    .line 4871
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public final getNeighProvincesSize()I
    .registers 2

    .line 4822
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->neighboringProvincesSize:I

    return v0
.end method

.method public final getNeighSeaProvinces(I)I
    .registers 3
    .param p1, "i"  # I

    .line 4875
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public final getNeighSeaProvincesSize()I
    .registers 2

    .line 4826
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->neighboringSeaProvincesSize:I

    return v0
.end method

.method public final getNumOfNeighboringNeutralProvinces()I
    .registers 2

    .line 5565
    iget-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNumOfNeighboringNeutralProvinces:B

    return v0
.end method

.method public final getPoX9(I)I
    .registers 4
    .param p1, "i"  # I

    .line 4737
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getPoY2(I)I
    .registers 4
    .param p1, "i"  # I

    .line 4742
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getPointsSize()I
    .registers 2

    .line 4817
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsSize:I

    return v0
.end method

.method public final getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;
    .registers 2

    .line 4485
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->pops:Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    return-object v0
.end method

.method public final getPortShiftPX()I
    .registers 3

    .line 5407
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->getShiftX()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5408
    :catch_7
    move-exception v0

    .line 5409
    .local v0, "ex":Ljava/lang/NullPointerException;
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v1, :cond_f

    .line 5410
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 5413
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public final getPortShiftPY()I
    .registers 3

    .line 5420
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->getShiftY()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5421
    :catch_7
    move-exception v0

    .line 5422
    .local v0, "ex":Ljava/lang/NullPointerException;
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v1, :cond_f

    .line 5423
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 5426
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public final getPotential()I
    .registers 2

    .line 5433
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    return v0
.end method

.method public final getPotentialModified(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 5453
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v1

    if-ne v1, p1, :cond_16

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_POTENTIAL_MODIFIED_OWN_LOST_PROVINCE:F

    goto :goto_18

    :cond_16
    const/high16 v1, 0x3f800000  # 1.0f

    :goto_18
    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getPotentialModified_WAR_MoveFrom(I)I
    .registers 12
    .param p1, "nCivID"  # I

    .line 5457
    const/4 v0, 0x0

    .line 5458
    .local v0, "nProvinces":I
    const/4 v1, 0x0

    .line 5459
    .local v1, "nPotential":I
    const/4 v2, 0x0

    .line 5462
    .local v2, "rebels":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    const/16 v4, 0xa

    const/4 v5, 0x1

    :try_start_7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v6

    if-ge v3, v6, :cond_d1

    .line 5463
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, p1, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 5464
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_PROVINCES:I

    if-ge v6, v7, :cond_9e

    .line 5465
    int-to-float v6, v1

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 5467
    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_EXTRA_SCORE:F

    mul-float v7, v7, v8

    .line 5469
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v8

    if-ne v8, p1, :cond_96

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_POTENTIAL_MODIFIED_OWN_LOST_PROVINCE:F

    goto :goto_98

    :cond_96
    const/high16 v8, 0x3f800000  # 1.0f

    :goto_98
    mul-float v7, v7, v8

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 5471
    add-int/lit8 v0, v0, 0x1

    .line 5474
    :cond_9e
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-eqz v6, :cond_cd

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget v4, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->REBELS_ID:I
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_ca} :catch_e9

    if-ne v6, v4, :cond_cd

    .line 5475
    const/4 v2, 0x1

    .line 5462
    :cond_cd
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 5481
    .end local v3  # "i":I
    :cond_d1
    nop

    .line 5483
    if-lez v0, :cond_e0

    .line 5484
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    div-int v6, v1, v0

    add-int/2addr v3, v6

    if-eqz v2, :cond_dc

    goto :goto_dd

    :cond_dc
    const/4 v4, 0x1

    :goto_dd
    mul-int v3, v3, v4

    return v3

    .line 5487
    :cond_e0
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    if-eqz v2, :cond_e5

    goto :goto_e6

    :cond_e5
    const/4 v4, 0x1

    :goto_e6
    mul-int v3, v3, v4

    return v3

    .line 5479
    :catch_e9
    move-exception v3

    .line 5480
    .local v3, "ex":Ljava/lang/Exception;
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    if-eqz v2, :cond_ef

    goto :goto_f0

    :cond_ef
    const/4 v4, 0x1

    :goto_f0
    mul-int v6, v6, v4

    return v6
.end method

.method public final getPotentialModified_WAR_MoveTo(I)I
    .registers 10
    .param p1, "nCivID"  # I

    .line 5493
    const/16 v0, 0xa

    const/4 v1, 0x1

    :try_start_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_PROVINCES:I

    if-ge v2, v3, :cond_55

    .line 5494
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 5496
    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_EXTRA_SCORE:F

    mul-float v2, v2, v3

    .line 5498
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->REBELS_ID:I

    if-ne v3, v4, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v0, 0x1

    :goto_50
    int-to-float v0, v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 5494
    return v0

    .line 5501
    :cond_55
    const/4 v2, 0x0

    .line 5502
    .local v2, "ownProvinces":I
    const/4 v3, 0x0

    .line 5504
    .local v3, "enemyProvinces":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_58
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_92

    .line 5505
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, p1, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->isAlly(II)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 5506
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 5508
    :cond_77
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, p1, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 5509
    add-int/lit8 v3, v3, 0x1

    .line 5504
    :cond_8f
    :goto_8f
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 5513
    .end local v4  # "i":I
    :cond_92
    if-le v3, v1, :cond_b7

    if-ne v2, v1, :cond_b7

    .line 5514
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    int-to-float v4, v4

    const/high16 v5, 0x3e800000  # 0.25f

    mul-float v4, v4, v5

    float-to-int v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->REBELS_ID:I

    if-ne v5, v6, :cond_b3

    goto :goto_b4

    :cond_b3
    const/4 v0, 0x1

    :goto_b4
    mul-int v4, v4, v0

    return v4

    .line 5517
    :cond_b7
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->REBELS_ID:I
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_cb} :catch_d2

    if-ne v5, v6, :cond_ce

    goto :goto_cf

    :cond_ce
    const/4 v0, 0x1

    :goto_cf
    mul-int v4, v4, v0

    return v4

    .line 5519
    .end local v2  # "ownProvinces":I
    .end local v3  # "enemyProvinces":I
    :catch_d2
    move-exception v2

    .line 5520
    .local v2, "ex":Ljava/lang/Exception;
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->REBELS_ID:I

    if-ne v4, v5, :cond_ea

    goto :goto_eb

    :cond_ea
    const/4 v0, 0x1

    :goto_eb
    mul-int v3, v3, v0

    return v3
.end method

.method public final getPotentialRegion()I
    .registers 3

    .line 5438
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return v0

    .line 5439
    :catch_15
    move-exception v0

    .line 5440
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v1

    return v1
.end method

.method public final getProvBG()Lage/of/civilizations2/jakowski/lukasz/Image;
    .registers 2

    .line 4001
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method public final getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;
    .registers 6
    .param p1, "withProvinceID"  # I

    .line 4889
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_1f

    .line 4890
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_1c

    .line 4891
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    return-object v1

    .line 4889
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4897
    .end local v0  # "i":I
    :cond_1f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final getProvBordersLandByLand()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;",
            ">;"
        }
    .end annotation

    .line 4884
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    return-object v0
.end method

.method public final getProvBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;
    .registers 6
    .param p1, "withProvinceID"  # I

    .line 1748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandBySeaSize:I

    if-ge v0, v1, :cond_1f

    .line 1749
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_1c

    .line 1750
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    return-object v1

    .line 1748
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1756
    .end local v0  # "i":I
    :cond_1f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final getProvBordersLandBySea()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;",
            ">;"
        }
    .end annotation

    .line 4902
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    return-object v0
.end method

.method public final getProvBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;
    .registers 6
    .param p1, "withProvinceID"  # I

    .line 4928
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_1f

    .line 4929
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_1c

    .line 4930
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    return-object v1

    .line 4928
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4936
    .end local v0  # "i":I
    :cond_1f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final getProvBordersSeaBySea()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;",
            ">;"
        }
    .end annotation

    .line 1773
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    return-object v0
.end method

.method public final getProvID()I
    .registers 2

    .line 4548
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    return v0
.end method

.method public final getProvName()Ljava/lang/String;
    .registers 2

    .line 5131
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v0

    if-lez v0, :cond_18

    .line 5132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5135
    :cond_18
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvNameUpperCase()Ljava/lang/String;
    .registers 2

    .line 5140
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->sProvinceNameUpperCase:Ljava/lang/String;

    return-object v0
.end method

.method public final getProviStability()F
    .registers 2

    .line 5627
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    return v0
.end method

.method public final getProvinceArmyBoxes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;",
            ">;"
        }
    .end annotation

    .line 4558
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    return-object v0
.end method

.method public final getProvinceBordersLandByLandSize()I
    .registers 2

    .line 5001
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    return v0
.end method

.method public final getProvinceBordersLandBySeaSize()I
    .registers 2

    .line 5005
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandBySeaSize:I

    return v0
.end method

.method public final getProvinceBordersLandBySea_ID(I)I
    .registers 4
    .param p1, "withProvinceID"  # I

    .line 1760
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandBySeaSize:I

    if-ge v0, v1, :cond_17

    .line 1761
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_14

    .line 1762
    return v0

    .line 1760
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1768
    .end local v0  # "i":I
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public final getProvinceBordersSeaBySeaSize()I
    .registers 2

    .line 5009
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    return v0
.end method

.method public final getRegion()I
    .registers 2

    .line 5041
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iRegionID:I

    return v0
.end method

.method public final getRegion_NumOfProvinces()I
    .registers 3

    .line 5446
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return v0

    .line 5447
    :catch_17
    move-exception v0

    .line 5448
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method public final getRevRisk()F
    .registers 2

    .line 4697
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fRevolutionaryRisk:F

    return v0
.end method

.method public final getSeaProv()Z
    .registers 2

    .line 5024
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->seaProvince:Z

    return v0
.end method

.method public final getShPX()I
    .registers 2

    .line 4808
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->shiftX:I

    return v0
.end method

.method public final getShPY()I
    .registers 2

    .line 4813
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->shiftY:I

    return v0
.end method

.method public final getTerrainTypeID()I
    .registers 2

    .line 367
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    return v0
.end method

.method public final getTranslateProvPosX()I
    .registers 2

    .line 4941
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    return v0
.end method

.method public final getTrueOwnerOfProv()I
    .registers 2

    .line 3826
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->trueOwnerOfProvince:I

    return v0
.end method

.method public final getWasAttacked()I
    .registers 2

    .line 5585
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-byte v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wasAttacked:B

    return v0
.end method

.method public final getWasConquered()I
    .registers 2

    .line 5593
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-byte v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wasConquered:B

    return v0
.end method

.method public final getWastelandLvl()I
    .registers 2

    .line 5049
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wastelandLevel:I

    return v0
.end method

.method public final getWonder(I)Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;
    .registers 3
    .param p1, "i"  # I

    .line 4429
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->wonders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;

    return-object v0
.end method

.method public final getWonderSize()I
    .registers 2

    .line 4437
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iWondersSize:I

    return v0
.end method

.method public final incNumOfNeighboringNeutralProvinces()V
    .registers 2

    .line 5573
    iget-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNumOfNeighboringNeutralProvinces:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNumOfNeighboringNeutralProvinces:B

    .line 5574
    return-void
.end method

.method public final initProvinceArmyBoxes()V
    .registers 2

    .line 4552
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    if-nez v0, :cond_b

    .line 4553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    .line 4555
    :cond_b
    return-void
.end method

.method public final isCapital()Z
    .registers 3

    .line 4461
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isCapital:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public final isOccupied()Z
    .registers 3

    .line 3835
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final loadProvinceBG()V
    .registers 6

    .line 3962
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->LOAD_SEA_PROVINCES_IMAGES:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3964
    const-string v0, "UI/pixEmpty.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadImage(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 3965
    return-void

    .line 3968
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scales/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "provinces/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getOceanContinentID()I

    move-result v2

    if-ne v1, v2, :cond_52

    const/4 v1, 0x1

    goto :goto_5c

    :cond_52
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapScale_PreExtra()I

    move-result v1

    :goto_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    .line 3987
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 3989
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_8b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_8b} :catch_8c

    .line 3997
    .end local v0  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    goto :goto_9b

    .line 3990
    :catch_8c
    move-exception v0

    .line 3991
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildProvinceBG(Z)V

    .line 3992
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->loadProvinceBG()V

    .line 3994
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v1, :cond_9b

    .line 3995
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3998
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :cond_9b
    :goto_9b
    return-void
.end method

.method public final loadProvinceInfo()V
    .registers 4

    .line 325
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "provinces/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 327
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;

    .line 329
    .local v1, "nProvinceGameData2":Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->provinceInfo:Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->loadProvinceInfo(Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;)V
    :try_end_3e
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3e} :catch_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3e} :catch_49
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3e} :catch_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 330
    return-void

    .line 337
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "nProvinceGameData2":Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;
    :catch_3f
    move-exception v0

    .line 338
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_53

    .line 335
    .end local v0  # "ex":Ljava/lang/Exception;
    :catch_44
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .end local v0  # "e":Ljava/io/IOException;
    goto :goto_52

    .line 333
    :catch_49
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .end local v0  # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_52

    .line 331
    :catch_4e
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 339
    .end local v0  # "e":Ljava/lang/ClassCastException;
    :goto_52
    nop

    .line 341
    :goto_53
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    .line 342
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    .line 344
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v1

    const/4 v2, -0x1

    if-lt v1, v2, :cond_64

    .line 345
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    goto :goto_67

    .line 348
    :cond_64
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    .line 350
    :goto_67
    return-void
.end method

.method public final loadProvinceInfo(Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;)V
    .registers 13
    .param p1, "tempGameData"  # Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    .line 3871
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->fGrowthRate:F

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    .line 3874
    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iContinentID:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    .line 3875
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getContinentsSize()I

    move-result v3

    if-lt v2, v3, :cond_18

    .line 3876
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    .line 3879
    :cond_18
    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iRegionID:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iRegionID:I

    .line 3881
    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iShiftX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v3

    mul-int v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->shiftX:I

    .line 3882
    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iShiftY:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v3

    mul-int v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->shiftY:I

    .line 3885
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 3886
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_62} :catch_10a

    .line 3889
    :try_start_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "army_boxes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 3890
    .local v0, "fileBoxes":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3892
    .local v1, "sFileBoxes":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3894
    .local v2, "tempData":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    .line 3896
    array-length v3, v2

    add-int/lit8 v3, v3, -0x4

    .local v3, "i":I
    :goto_9f
    if-ltz v3, :cond_fc

    .line 3897
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v7

    mul-int v6, v6, v7

    add-int/lit8 v7, v3, 0x1

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v8

    mul-int v7, v7, v8

    add-int/lit8 v8, v3, 0x2

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v9

    mul-int v8, v8, v9

    add-int/lit8 v9, v3, 0x3

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v10

    mul-int v9, v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;-><init>(IIII)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_f9} :catch_fd

    .line 3896
    add-int/lit8 v3, v3, -0x4

    goto :goto_9f

    .end local v0  # "fileBoxes":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "sFileBoxes":Ljava/lang/String;
    .end local v2  # "tempData":[Ljava/lang/String;
    .end local v3  # "i":I
    :cond_fc
    goto :goto_fe

    .line 3899
    :catch_fd
    move-exception v0

    .line 3901
    :goto_fe
    goto :goto_109

    .line 3904
    :cond_ff
    :try_start_ff
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    iget-object v3, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->sTerrainTAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getTerrainTypeID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_109} :catch_10a

    .line 3906
    :goto_109
    return-void

    .line 3907
    :catch_10a
    move-exception v2

    .line 3908
    .local v2, "ex":Ljava/lang/Exception;
    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v3, :cond_112

    .line 3909
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3913
    .end local v2  # "ex":Ljava/lang/Exception;
    :cond_112
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    .line 3914
    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    .line 3916
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v2

    const/4 v3, -0x1

    if-lt v2, v3, :cond_122

    .line 3917
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    goto :goto_124

    .line 3920
    :cond_122
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    .line 3922
    :goto_124
    return-void
.end method

.method public final removeArmies()V
    .registers 4

    .line 4352
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-lez v0, :cond_1c

    .line 4353
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 4354
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    .line 4352
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 4357
    .end local v0  # "i":I
    :cond_1c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmyInProv()V

    .line 4358
    return-void
.end method

.method public final removeArmy(I)V
    .registers 6
    .param p1, "iCivID"  # I

    .line 4336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    if-ge v0, v1, :cond_4a

    .line 4337
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_47

    .line 4338
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeCiv(I)V

    .line 4339
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeArmyInAnotherProvinP(I)V

    .line 4341
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_26
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 4342
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->isPlayerAlly_FogOfWarCheck(II)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 4343
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateFogOfWar(I)V

    .line 4341
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 4346
    .end local v1  # "j":I
    :cond_46
    goto :goto_4a

    .line 4336
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4349
    .end local v0  # "i":I
    :cond_4a
    :goto_4a
    return-void
.end method

.method public final removeArmy_ID(I)V
    .registers 4
    .param p1, "nID"  # I

    .line 4362
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeArmyInAnotherProvinP(I)V

    .line 4363
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeCiv(I)V
    :try_end_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_12} :catch_13

    .line 4368
    goto :goto_1b

    .line 4364
    :catch_13
    move-exception v0

    .line 4365
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v1, :cond_1b

    .line 4366
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 4369
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public final removeCapitalCityIcon()V
    .registers 4

    .line 4477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 4478
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityLevel()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v2

    if-ne v1, v2, :cond_22

    .line 4479
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/City;->setCityLevel(I)V

    .line 4477
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4482
    .end local v0  # "i":I
    :cond_25
    return-void
.end method

.method public final removeCiv(I)V
    .registers 4
    .param p1, "i"  # I

    .line 4198
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 4199
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    .line 4201
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmyInProv()V

    .line 4202
    return-void
.end method

.method public final removeNeighboringProv(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 4835
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->neighboringProvincesSize:I

    if-ge v0, v1, :cond_1c

    .line 4836
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    if-ne p1, v1, :cond_19

    .line 4837
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4838
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->neighboringProvincesSize:I

    .line 4840
    return-void

    .line 4835
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4843
    .end local v0  # "i":I
    :cond_1c
    return-void
.end method

.method public final removeNeighboringSeaProvince(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 4859
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->neighboringSeaProvincesSize:I

    if-ge v0, v1, :cond_1c

    .line 4860
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v1

    if-ne p1, v1, :cond_19

    .line 4861
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4862
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->neighboringSeaProvincesSize:I

    .line 4864
    return-void

    .line 4859
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4867
    .end local v0  # "i":I
    :cond_1c
    return-void
.end method

.method public final removeProvBorder(I)V
    .registers 4
    .param p1, "withProvinceID"  # I

    .line 1722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    if-ge v0, v1, :cond_24

    .line 1723
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_21

    .line 1724
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1725
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandByLandSize:I

    .line 1726
    return-void

    .line 1722
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1730
    .end local v0  # "i":I
    :cond_24
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_25
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandBySeaSize:I

    if-ge v0, v1, :cond_48

    .line 1731
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_45

    .line 1732
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1733
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProviBordersLandBySeaSize:I

    .line 1734
    return-void

    .line 1730
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 1738
    .end local v0  # "i":I
    :cond_48
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_49
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_6c

    .line 1739
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_69

    .line 1740
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1741
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvBordersSeaBySeaSize:I

    .line 1742
    return-void

    .line 1738
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 1745
    .end local v0  # "i":I
    :cond_6c
    return-void
.end method

.method public final resetArmiesAll(I)V
    .registers 7
    .param p1, "iArmy"  # I

    .line 4219
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    .line 4221
    .local v0, "nCivID":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 4222
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNumberOfUnits(I)V

    .line 4221
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4225
    .end local v1  # "i":I
    :cond_50
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 4226
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-direct {v2, v0, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4227
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    .line 4229
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    const/4 v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    .line 4230
    return-void
.end method

.method public final resetArmiesNewGame(I)V
    .registers 6
    .param p1, "iArmy"  # I

    .line 4233
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    .line 4235
    .local v0, "nCivID":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 4236
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-direct {v2, v0, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4237
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    .line 4239
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    const/4 v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    .line 4240
    return-void
.end method

.method public final resetCore()V
    .registers 3

    .line 4504
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    const/4 v1, 0x0

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    .line 4505
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    .line 4506
    return-void
.end method

.method public final runSupportRebels()V
    .registers 16

    .line 4598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4600
    .local v0, "runCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iSupportRebelsSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1f5

    .line 4601
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-lez v2, :cond_38

    .line 4602
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4603
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iSupportRebelsSize:I

    goto/16 :goto_1f1

    .line 4606
    :cond_38
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    .line 4608
    const/4 v2, 0x0

    .line 4610
    .local v2, "alreadyDone":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "k":I
    :goto_4f
    if-ltz v3, :cond_6e

    .line 4611
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_6b

    .line 4612
    const/4 v2, 0x1

    .line 4613
    goto :goto_6e

    .line 4610
    :cond_6b
    add-int/lit8 v3, v3, -0x1

    goto :goto_4f

    .line 4617
    .end local v3  # "k":I
    :cond_6e
    :goto_6e
    if-nez v2, :cond_1d2

    .line 4618
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4620
    const/4 v3, 0x0

    .line 4621
    .local v3, "iNumOfSupporters":I
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iSupportRebelsSize:I

    add-int/lit8 v4, v4, -0x1

    .local v4, "k":I
    :goto_8a
    if-ltz v4, :cond_ab

    .line 4622
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    if-ne v5, v6, :cond_a8

    .line 4623
    add-int/lit8 v3, v3, 0x1

    .line 4621
    :cond_a8
    add-int/lit8 v4, v4, -0x1

    goto :goto_8a

    .line 4627
    .end local v4  # "k":I
    :cond_ab
    const/4 v4, 0x0

    .line 4628
    .local v4, "popToAssimilate":I
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 4630
    .local v5, "ownerPop":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_c3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNatsSize()I

    move-result v7

    if-ge v6, v7, :cond_ef

    .line 4631
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    if-eq v7, v8, :cond_ec

    .line 4632
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 4630
    :cond_ec
    add-int/lit8 v6, v6, 0x1

    goto :goto_c3

    .line 4636
    .end local v6  # "j":I
    :cond_ef
    const/4 v6, 0x0

    .line 4638
    .local v6, "assimilatedPop":I
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNatsSize()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    const/4 v8, 0x0

    .local v8, "tCurrentPopChange":I
    :goto_fb
    if-ltz v7, :cond_1aa

    .line 4639
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v9

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v9

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    if-eq v9, v10, :cond_1a6

    .line 4640
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebelsSupport:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_BASE_POPULATION:F

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebelsSupport:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_BASE_RANDOM:F

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebelsSupport:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_RANDOM_OF_10000:I

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x461c4000  # 10000.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    int-to-float v11, v5

    add-int v12, v4, v5

    int-to-float v12, v12

    div-float/2addr v11, v12

    mul-float v10, v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebelsSupport:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_MIN_HAPPINESS_MODIFIER:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebelsSupport:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_HAPPINESS_MODIFIER:F

    mul-float v12, v12, v13

    const/high16 v13, 0x3f800000  # 1.0f

    sub-float v12, v13, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    mul-float v10, v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebelsSupport:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_MIN_DEVELOPMENT_MODIFIER:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v12

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebelsSupport:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;

    iget v14, v14, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_DEVELOPMENT_MODIFIER:F

    mul-float v12, v12, v14

    sub-float v12, v13, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebelsSupport:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_PER_REV_RISK_MODIFIER:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v11

    mul-float v10, v10, v11

    add-float/2addr v10, v13

    mul-float v9, v9, v10

    .line 4642
    .local v9, "tPerc":F
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->getSUPPORT_REBELS_ASSIMILATE_PERC(I)F

    move-result v10

    mul-float v9, v9, v10

    .line 4644
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v10

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v9

    float-to-int v8, v10

    .line 4645
    if-nez v8, :cond_18d

    .line 4646
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 4649
    :cond_18d
    add-int/2addr v6, v8

    .line 4651
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v12

    sub-int/2addr v12, v8

    invoke-virtual {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 4638
    .end local v9  # "tPerc":F
    :cond_1a6
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_fb

    .line 4655
    .end local v7  # "j":I
    .end local v8  # "tCurrentPopChange":I
    :cond_1aa
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v9

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 4658
    .end local v3  # "iNumOfSupporters":I
    .end local v4  # "popToAssimilate":I
    .end local v5  # "ownerPop":I
    .end local v6  # "assimilatedPop":I
    :cond_1d2
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    if-gtz v3, :cond_1f1

    .line 4660
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4661
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iSupportRebelsSize:I

    .line 4600
    .end local v2  # "alreadyDone":Z
    :cond_1f1
    :goto_1f1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_b

    .line 4665
    .end local v1  # "i":I
    :cond_1f5
    return-void
.end method

.method public final setArmyWasRecruited(I)V
    .registers 3
    .param p1, "iArmyWasRecruited"  # I

    .line 5561
    int-to-byte v0, p1

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iArmyWasRecruited:B

    .line 5562
    return-void
.end method

.method public final setBG(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 6
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 4011
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 4012
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 4013
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 4014
    return-void
.end method

.method public final setBasin(I)V
    .registers 2
    .param p1, "iBasin"  # I

    .line 4850
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iBasin:I

    .line 4851
    return-void
.end method

.method public final setBordersWithEnemy(Z)V
    .registers 2
    .param p1, "bordersWithEnemy"  # Z

    .line 5581
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->bordersWithEnemy:Z

    .line 5582
    return-void
.end method

.method public final setCivId(IZ)V
    .registers 4
    .param p1, "nCivID"  # I
    .param p2, "conquered"  # Z

    .line 4035
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId(IZZ)V

    .line 4036
    return-void
.end method

.method public final setCivId(IZZ)V
    .registers 26
    .param p1, "nCivID"  # I
    .param p2, "conquered"  # Z
    .param p3, "isInGame"  # Z

    .line 5181
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-ne v2, v0, :cond_b

    .line 5182
    return-void

    .line 5188
    :cond_b
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_e
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v3, :cond_28

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v6

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProv(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 5189
    const/4 v0, -0x1

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    goto :goto_3c

    .line 5191
    :cond_28
    if-eqz v2, :cond_3c

    .line 5192
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    .line 5193
    iput-boolean v5, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z
    :try_end_3c
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_3c} :catch_3d

    .line 5204
    :cond_3c
    :goto_3c
    goto :goto_59

    .line 5195
    :catch_3d
    move-exception v0

    .line 5196
    .local v0, "ex":Ljava/lang/NullPointerException;
    if-eqz v2, :cond_52

    .line 5197
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v6

    iput v6, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    .line 5198
    iput-boolean v5, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    .line 5201
    :cond_52
    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v6, :cond_59

    .line 5202
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 5208
    .end local v0  # "ex":Ljava/lang/NullPointerException;
    :cond_59
    :goto_59
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v6

    .line 5209
    .local v6, "oldCivID":I
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->setCivID(I)V

    .line 5211
    if-eqz v6, :cond_8d

    .line 5212
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v7

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeProv(I)V

    .line 5213
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V

    goto :goto_90

    .line 5215
    :cond_8d
    invoke-virtual/range {p0 .. p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setTrueOwnerOfProv(I)V

    .line 5220
    :goto_90
    if-eqz v2, :cond_a8

    .line 5221
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v7

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addProv(I)V

    .line 5222
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V

    .line 5227
    :cond_a8
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProviBorder_OwnerAnimation()V

    .line 5230
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmyInProv()V

    .line 5234
    if-eqz p3, :cond_1cb

    .line 5236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b1
    :try_start_b1
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v7

    if-ge v0, v7, :cond_d0

    .line 5237
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iput-boolean v5, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_cd} :catch_d1

    .line 5236
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 5241
    .end local v0  # "i":I
    :cond_d0
    goto :goto_d2

    .line 5239
    :catch_d1
    move-exception v0

    .line 5243
    :goto_d2
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-eq v6, v0, :cond_19f

    .line 5244
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v7

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v0, :cond_19f

    .line 5245
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v0

    if-nez v0, :cond_193

    .line 5246
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v0

    if-ltz v0, :cond_179

    .line 5247
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v0

    if-ltz v0, :cond_179

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v7

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-eq v0, v6, :cond_179

    .line 5248
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_127
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitSize()I

    move-result v7

    if-ge v0, v7, :cond_179

    .line 5249
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityLevel()I

    move-result v7

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v8

    if-ne v7, v8, :cond_176

    .line 5250
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCit(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v7

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/City;->setCityLevel(I)V

    .line 5248
    :cond_176
    add-int/lit8 v0, v0, 0x1

    goto :goto_127

    .line 5256
    .end local v0  # "i":I
    :cond_179
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_17a
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v7

    if-ge v0, v7, :cond_192

    .line 5257
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v7

    if-eqz v7, :cond_18f

    .line 5258
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->whitePeace(II)V

    .line 5256
    :cond_18f
    add-int/lit8 v0, v0, 0x1

    goto :goto_17a

    .end local v0  # "i":I
    :cond_192
    goto :goto_19f

    .line 5263
    :cond_193
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v7, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iRevolt_LastTurnLostProvince:I

    .line 5268
    :cond_19f
    :goto_19f
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lez v0, :cond_1be

    .line 5269
    invoke-direct {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getUpdateView_SetCivID(I)Ljava/util/List;

    move-result-object v0

    .line 5271
    .local v0, "updateView":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1a8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1be

    .line 5272
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateFogOfWar(I)V

    .line 5271
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a8

    .line 5276
    .end local v0  # "updateView":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7  # "i":I
    :cond_1be
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v8

    invoke-virtual {v0, v7, v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->addChange(IIZ)V

    .line 5281
    :cond_1cb
    if-eqz p2, :cond_3d6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-eq v6, v0, :cond_3d6

    .line 5282
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput-byte v4, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->neighProvinceOfCivicWasLost:B

    .line 5284
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v0, :cond_206

    .line 5285
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v0

    const v3, 0x3f766080

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000  # 1000.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float v0, v0, v3

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    goto/16 :goto_3d6

    .line 5288
    :cond_206
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v7

    if-ne v4, v7, :cond_214

    const/4 v4, 0x3

    goto :goto_215

    :cond_214
    const/4 v4, 0x4

    :goto_215
    iput-byte v4, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wasConquered:B

    .line 5290
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    sub-int/2addr v4, v5

    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    .line 5291
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    add-int/2addr v4, v5

    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    .line 5293
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_3b8

    .line 5294
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->numOfConqueredProvinces:I

    add-int/2addr v4, v5

    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->numOfConqueredProvinces:I

    .line 5296
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->ARMY_EXPERIENCE_PER_CONQUERED_PROVINCE:F

    invoke-virtual {v0, v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addArmyExperience(IF)V

    .line 5298
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_3b8

    .line 5299
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_26b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v0

    if-ge v4, v0, :cond_3b8

    .line 5300
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    if-ne v0, v7, :cond_3b4

    .line 5302
    :try_start_283
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Player;->statsCiv:Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Player;->statsCiv:Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getConqueredProvs()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->setConqueredProvinces(I)V
    :try_end_29b
    .catch Ljava/lang/Exception; {:try_start_283 .. :try_end_29b} :catch_29c

    .line 5309
    goto :goto_2c6

    .line 5303
    :catch_29c
    move-exception v0

    .line 5304
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->loadStatistics_Civ(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    move-result-object v8

    iput-object v8, v7, Lage/of/civilizations2/jakowski/lukasz/Player;->statsCiv:Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    .line 5306
    sget-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v7, :cond_2c6

    .line 5307
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 5311
    .end local v0  # "ex":Ljava/lang/Exception;
    :cond_2c6
    :goto_2c6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Player;->statsCiv:Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getConqueredProvs()I

    move-result v7

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->check_Request_ConquredProvinces(I)Z

    move-result v0

    if-eqz v0, :cond_3b8

    .line 5312
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Player;->statsCiv:Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    iget-object v9, v7, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v13, "ConqueredProvinces"

    invoke-virtual {v10, v13}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, ": "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Player;->statsCiv:Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getConqueredProvs()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Player;->statsCiv:Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getConqueredProvs()I

    move-result v12

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces_Level(I)I

    move-result v7

    add-int/lit8 v12, v7, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->achievementGD:Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;

    .line 5313
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v17

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Player;->statsCiv:Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v9, v13}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Player;->statsCiv:Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getConqueredProvs()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Player;->statsCiv:Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getConqueredProvs()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces_Level(I)I

    move-result v8

    add-int/lit8 v21, v8, -0x1

    move-object/from16 v16, v0

    move-object/from16 v18, v7

    invoke-direct/range {v16 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->achievementGD:Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;

    .line 5315
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->ACHIEVEMENT_SERVICE_RIBBON_SAVE_GAME:Z

    if-eqz v0, :cond_3b8

    .line 5316
    sput-boolean v5, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->saveRequest:Z

    goto :goto_3b8

    .line 5299
    :cond_3b4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_26b

    .line 5325
    .end local v4  # "i":I
    :cond_3b8
    :goto_3b8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b9
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v4

    if-ge v0, v4, :cond_3d6

    .line 5326
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    if-ne v4, v6, :cond_3d3

    .line 5327
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput-byte v3, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->neighProvinceOfCivicWasLost:B

    .line 5325
    :cond_3d3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b9

    .line 5334
    .end local v0  # "i":I
    :cond_3d6
    :goto_3d6
    return-void
.end method

.method public final setCivIdJust(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 4018
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->setCivID(I)V

    .line 4019
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->trueOwnerOfProvince:I

    .line 4020
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    .line 4021
    return-void
.end method

.method public final setCivId_LoadScenario(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 4025
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 4026
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    .line 4027
    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    .line 4030
    :cond_16
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->setCivID(I)V

    .line 4031
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->trueOwnerOfProvince:I

    .line 4032
    return-void
.end method

.method public final setCivRegionID(I)V
    .registers 2
    .param p1, "iCivRegionID"  # I

    .line 359
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCivRegionID:I

    .line 360
    return-void
.end method

.method public final setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nCivID"  # I

    .line 2010
    if-nez p2, :cond_6

    const v0, 0x3d20a0a1

    goto :goto_e

    :cond_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->PROV_ALPHA:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    :goto_e
    invoke-virtual {p0, p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    .line 2011
    return-void
.end method

.method public final setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nCivID"  # I
    .param p3, "nAlpha"  # F

    .line 2014
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000  # 255.0f

    div-float/2addr v1, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-direct {v0, v1, v3, v4, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2015
    return-void
.end method

.method public final setContinent(I)V
    .registers 2
    .param p1, "iContinentID"  # I

    .line 5037
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    .line 5038
    return-void
.end method

.method public final setDangerLevel_WithArmy(I)V
    .registers 2
    .param p1, "iDangerLevel_WithArmy"  # I

    .line 5548
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel_WithArmy:I

    .line 5549
    return-void
.end method

.method public final setDangerLvl(I)V
    .registers 2
    .param p1, "iDangerLevel"  # I

    .line 5540
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel:I

    .line 5541
    return-void
.end method

.method public final setDevLvl(F)V
    .registers 5
    .param p1, "nDevelopmentLevel"  # F

    .line 4672
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fDevLevel:F

    .line 4674
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fDevLevel:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2d

    .line 4675
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fDevLevel:F

    goto :goto_3c

    .line 4676
    :cond_2d
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fDevLevel:F

    const v1, 0x3c23d70a  # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3c

    .line 4677
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fDevLevel:F

    .line 4679
    :cond_3c
    :goto_3c
    return-void
.end method

.method public final setDrawCitiesInProv(Z)V
    .registers 2
    .param p1, "drawCitiesInProv"  # Z

    .line 4404
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawCitiesInProv:Z

    .line 4405
    return-void
.end method

.method public final setDrawProv(Z)V
    .registers 2
    .param p1, "drawProvince"  # Z

    .line 4955
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawProvince:Z

    .line 4956
    return-void
.end method

.method public final setEco(I)V
    .registers 4
    .param p1, "iEconomy"  # I

    .line 4539
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->economy:I

    .line 4541
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->economy:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->ECONOMY_MIN:I

    if-ge v0, v1, :cond_16

    .line 4542
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->ECONOMY_MIN:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->economy:I

    .line 4544
    :cond_16
    return-void
.end method

.method public final setFromCivID(I)V
    .registers 3
    .param p1, "iFromCivID"  # I

    .line 5028
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    .line 5029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    .line 5030
    return-void
.end method

.method public final setGrowthRate_Population(F)V
    .registers 2
    .param p1, "fPopulationGrowthRate"  # F

    .line 387
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    .line 388
    return-void
.end method

.method public final setHappi(F)V
    .registers 4
    .param p1, "nHappiness"  # F

    .line 4686
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fHappiness:F

    .line 4688
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fHappiness:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvHappiness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Happiness;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Happiness;->HAPPINESS_MAX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    .line 4689
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvHappiness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Happiness;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Happiness;->HAPPINESS_MAX:F

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fHappiness:F

    goto :goto_2d

    .line 4691
    :cond_19
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fHappiness:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvHappiness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Happiness;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Happiness;->HAPPINESS_MIN:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2d

    .line 4692
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvHappiness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Happiness;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Happiness;->HAPPINESS_MIN:F

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fHappiness:F

    .line 4694
    :cond_2d
    :goto_2d
    return-void
.end method

.method public final setIsCapital(Z)V
    .registers 3
    .param p1, "isCapital"  # Z

    .line 4473
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput-boolean p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isCapital:Z

    .line 4474
    return-void
.end method

.method public final setIsNotSuppliedForXTurns(I)V
    .registers 3
    .param p1, "isNotSuppliedForXTurns"  # I

    .line 5768
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isNotSuppliedForYTurns:I

    .line 5769
    return-void
.end method

.method public final setIsPartOfHolyRomanEmpire(Z)V
    .registers 3
    .param p1, "isPartOfHolyRomaEmpire"  # Z

    .line 5623
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput-boolean p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isPartOfHolyRomaEmpire:Z

    .line 5624
    return-void
.end method

.method public final setLvlOfArmoury(I)V
    .registers 3
    .param p1, "iArmoury"  # I

    .line 5389
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iArmoury:I

    .line 5391
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iArmoury:I

    if-lez v0, :cond_e

    .line 5392
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDrawCitiesInProv(Z)V

    .line 5394
    :cond_e
    return-void
.end method

.method public final setLvlOfFarm(I)V
    .registers 3
    .param p1, "iFarm"  # I

    .line 5357
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iFarm:I

    .line 5358
    return-void
.end method

.method public final setLvlOfFort(I)V
    .registers 3
    .param p1, "iFort"  # I

    .line 4445
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iFort:I

    .line 4446
    return-void
.end method

.method public final setLvlOfLibrary(I)V
    .registers 3
    .param p1, "iLibrary"  # I

    .line 5381
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iLibrary:I

    .line 5382
    return-void
.end method

.method public final setLvlOfMarket(I)V
    .registers 3
    .param p1, "iMarket"  # I

    .line 5373
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iMarket:I

    .line 5374
    return-void
.end method

.method public final setLvlOfPort(I)V
    .registers 5
    .param p1, "iPort"  # I

    .line 5337
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iPort:I

    .line 5339
    if-lez p1, :cond_2d

    .line 5340
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDrawCitiesInProv(Z)V

    .line 5342
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v1

    if-ltz v1, :cond_2d

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-lez v1, :cond_2d

    .line 5344
    :try_start_16
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->setSeaAccess_HavePort(Z)V
    :try_end_2b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_2b} :catch_2c

    .line 5347
    goto :goto_2d

    .line 5345
    :catch_2c
    move-exception v0

    .line 5350
    :cond_2d
    :goto_2d
    return-void
.end method

.method public final setLvlOfSupply(I)V
    .registers 3
    .param p1, "iSupply"  # I

    .line 5401
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iSupply:I

    .line 5402
    return-void
.end method

.method public final setLvlOfWatchTower(I)V
    .registers 3
    .param p1, "iWatchTower"  # I

    .line 4449
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iWatchTower:I

    .line 4450
    return-void
.end method

.method public final setLvlOfWorkshop(I)V
    .registers 3
    .param p1, "iWorkshop"  # I

    .line 5365
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iWorkshop:I

    .line 5366
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sProvinceName"  # Ljava/lang/String;

    .line 5163
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    .line 5164
    return-void
.end method

.method public final setName2(Ljava/lang/String;)V
    .registers 4
    .param p1, "sProvinceName"  # Ljava/lang/String;

    .line 5167
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceName:Ljava/lang/String;

    .line 5169
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->sProvinceNameUpperCase:Ljava/lang/String;

    .line 5170
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceNameLength_Minus1:I

    .line 5173
    :try_start_10
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->bPND(IZ)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_18

    .line 5176
    goto :goto_1c

    .line 5174
    :catch_18
    move-exception v0

    .line 5175
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 5177
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method

.method public final setNeighProvinceOfCivWasLost(B)V
    .registers 4
    .param p1, "neighProvinceOfCivWasLost"  # B

    .line 5610
    if-gez p1, :cond_8

    .line 5611
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    const/4 v1, 0x0

    iput-byte v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->neighProvinceOfCivicWasLost:B

    goto :goto_c

    .line 5614
    :cond_8
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput-byte p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->neighProvinceOfCivicWasLost:B

    .line 5616
    :goto_c
    return-void
.end method

.method public final setNumOfNeighboringNeutralProvinces(I)V
    .registers 3
    .param p1, "iNumOfNeighboringNeutralProvinces"  # I

    .line 5569
    int-to-byte v0, p1

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNumOfNeighboringNeutralProvinces:B

    .line 5570
    return-void
.end method

.method public final setPoints(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 4746
    .local p1, "nPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    .local p2, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4747
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4749
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 4750
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4751
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsY:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4749
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 4754
    .end local v0  # "i":I
    :cond_3a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsSize:I

    .line 4756
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    .line 4757
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsY:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    .line 4759
    const/4 v0, 0x0

    .restart local v0  # "i":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_6a
    if-ge v0, v1, :cond_e7

    .line 4760
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    if-le v2, v3, :cond_8a

    .line 4761
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miX:I

    .line 4764
    :cond_8a
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maX:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    if-ge v2, v3, :cond_a8

    .line 4765
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsX:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maX:I

    .line 4768
    :cond_a8
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsY:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    if-le v2, v3, :cond_c6

    .line 4769
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->miY:I

    .line 4772
    :cond_c6
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maY:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsY:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    if-ge v2, v3, :cond_e4

    .line 4773
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->pointsY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->maY:I

    .line 4759
    :cond_e4
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 4776
    .end local v0  # "i":I
    .end local v1  # "iSize":I
    :cond_e7
    return-void
.end method

.method public final setPopsData(Lage/of/civilizations2/jakowski/lukasz/Province_Population;)V
    .registers 3
    .param p1, "nProvince_Population"  # Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    .line 4490
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput-object p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->pops:Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    .line 4491
    return-void
.end method

.method public final setPotential(I)V
    .registers 2
    .param p1, "iPotential"  # I

    .line 5525
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    .line 5526
    return-void
.end method

.method public final setProvColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 755
    :try_start_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    if-ltz v0, :cond_f2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-lez v0, :cond_f2

    .line 756
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    if-eqz v0, :cond_17

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lColorTime:J

    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    .line 761
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lColorTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceAnimation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;->PROVINCE_ANIMATION_OWNER_COLOR_INTERVAL:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 763
    .local v0, "tempStepID":I
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    const/high16 v2, 0x437f0000  # 255.0f

    if-nez v1, :cond_6f

    .line 764
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    const/16 v2, 0x19

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->PROV_ALPHA:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceAnimation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;->PROVINCE_ANIMATION_OWNER_COLOR_INTERVAL:I

    invoke-static {v2, v5, v0, v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v2

    invoke-virtual {p1, v1, v3, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    goto :goto_de

    .line 767
    :cond_6f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceAnimation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;->PROVINCE_ANIMATION_OWNER_COLOR_INTERVAL:I

    invoke-static {v1, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceAnimation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;->PROVINCE_ANIMATION_OWNER_COLOR_INTERVAL:I

    invoke-static {v3, v4, v0, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceAnimation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;->PROVINCE_ANIMATION_OWNER_COLOR_INTERVAL:I

    invoke-static {v4, v5, v0, v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->PROV_ALPHA:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 770
    :goto_de
    iget-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lColorTime:J

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceAnimation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;->PROVINCE_ANIMATION_OWNER_COLOR_INTERVAL:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_f1

    .line 771
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fromCivID:I

    .line 773
    .end local v0  # "tempStepID":I
    :cond_f1
    goto :goto_f9

    .line 775
    :cond_f2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f9} :catch_fa

    .line 779
    :goto_f9
    goto :goto_101

    .line 777
    :catch_fa
    move-exception v0

    .line 778
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 780
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_101
    return-void
.end method

.method public final setProvColor_FoG_Discovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 740
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 741
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_DISCOVERY_ALPHA:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3f

    .line 744
    :cond_2f
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setProvColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_32} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_3f

    .line 748
    :catch_33
    move-exception v0

    .line 749
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    goto :goto_40

    .line 746
    .end local v0  # "ex":Ljava/lang/Exception;
    :catch_3b
    move-exception v0

    .line 747
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setProvColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 750
    .end local v0  # "ex":Ljava/lang/NullPointerException;
    :goto_3f
    nop

    .line 751
    :goto_40
    return-void
.end method

.method public final setProvinceArmyBoxes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;",
            ">;)V"
        }
    .end annotation

    .line 4562
    .local p1, "nSet":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;>;"
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    .line 4563
    return-void
.end method

.method public final setProvinceStability(F)V
    .registers 2
    .param p1, "nProvinceStability"  # F

    .line 5631
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    .line 5632
    return-void
.end method

.method public final setRegion(I)V
    .registers 2
    .param p1, "iRegionID"  # I

    .line 5045
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iRegionID:I

    .line 5046
    return-void
.end method

.method public final setRevRisk(F)V
    .registers 4
    .param p1, "nRevolutionaryRisk"  # F

    .line 4701
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRevolutionaryRisk:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REV_RISK_MAX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_11

    .line 4702
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRevolutionaryRisk:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REV_RISK_MAX:F

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fRevolutionaryRisk:F

    goto :goto_1f

    .line 4704
    :cond_11
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1b

    .line 4705
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fRevolutionaryRisk:F

    goto :goto_1f

    .line 4708
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fRevolutionaryRisk:F

    .line 4710
    :goto_1f
    return-void
.end method

.method public final setShiftArmyX(I)V
    .registers 2
    .param p1, "iShiftArmyX"  # I

    .line 5014
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->shiftX:I

    .line 5015
    return-void
.end method

.method public final setShiftArmyY(I)V
    .registers 2
    .param p1, "iShiftArmyY"  # I

    .line 5019
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->shiftY:I

    .line 5020
    return-void
.end method

.method public final setTerrainTypeID(I)V
    .registers 2
    .param p1, "iTerrainTypeID"  # I

    .line 363
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    .line 364
    return-void
.end method

.method public final setTranslateProvPosX(I)V
    .registers 2
    .param p1, "iTranslateProvincePosX"  # I

    .line 4946
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    .line 4947
    return-void
.end method

.method public final setTrueOwnerOfProv(I)V
    .registers 3
    .param p1, "iTrueOwnerOfProvince"  # I

    .line 3831
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->trueOwnerOfProvince:I

    .line 3832
    return-void
.end method

.method public final setWasAttacked(I)V
    .registers 4
    .param p1, "wasAttacked"  # I

    .line 5589
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wasAttacked:B

    .line 5590
    return-void
.end method

.method public final setWasConquered(B)V
    .registers 4
    .param p1, "wasConquered"  # B

    .line 5597
    if-gez p1, :cond_8

    .line 5598
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    const/4 v1, 0x0

    iput-byte v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wasConquered:B

    goto :goto_c

    .line 5601
    :cond_8
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput-byte p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wasConquered:B

    .line 5603
    :goto_c
    return-void
.end method

.method public final setWastelandLvl(I)V
    .registers 9
    .param p1, "wastelandLevel"  # I

    .line 5053
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wastelandLevel:I

    .line 5055
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_277

    .line 5056
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_123

    .line 5057
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_2d

    goto/16 :goto_a4

    .line 5066
    :cond_2d
    if-ltz p1, :cond_53

    .line 5067
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v3

    if-gez v3, :cond_49

    const/4 v3, 0x1

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    goto/16 :goto_d8

    .line 5070
    :cond_53
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_73

    .line 5071
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    goto :goto_d8

    .line 5074
    :cond_73
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-eq v3, v5, :cond_9b

    const/4 v3, 0x1

    goto :goto_9c

    :cond_9b
    const/4 v3, 0x0

    :goto_9c
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    goto :goto_d8

    .line 5058
    :cond_a4
    :goto_a4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_c9

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_b9

    goto :goto_c9

    .line 5062
    :cond_b9
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    goto :goto_d8

    .line 5059
    :cond_c9
    :goto_c9
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    .line 5079
    :goto_d8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_112

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_ed

    goto :goto_112

    .line 5083
    :cond_ed
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    if-gez p1, :cond_109

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v3

    if-ltz v3, :cond_108

    goto :goto_109

    :cond_108
    const/4 v2, 0x0

    :cond_109
    :goto_109
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_273

    .line 5080
    :cond_112
    :goto_112
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_273

    .line 5087
    :cond_123
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_1cf

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_139

    goto/16 :goto_1cf

    .line 5096
    :cond_139
    if-ltz p1, :cond_169

    .line 5097
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v3

    if-gez v3, :cond_15f

    const/4 v3, 0x1

    goto :goto_160

    :cond_15f
    const/4 v3, 0x0

    :goto_160
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    goto/16 :goto_217

    .line 5100
    :cond_169
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-ltz v1, :cond_194

    .line 5101
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    goto/16 :goto_217

    .line 5104
    :cond_194
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-eq v3, v5, :cond_1c6

    const/4 v3, 0x1

    goto :goto_1c7

    :cond_1c6
    const/4 v3, 0x0

    :goto_1c7
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    goto :goto_217

    .line 5088
    :cond_1cf
    :goto_1cf
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_1fe

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_1e4

    goto :goto_1fe

    .line 5092
    :cond_1e4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    goto :goto_217

    .line 5089
    :cond_1fe
    :goto_1fe
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    .line 5109
    :goto_217
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v1

    if-eqz v1, :cond_25a

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v1

    if-nez v1, :cond_22c

    goto :goto_25a

    .line 5113
    :cond_22c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    if-gez p1, :cond_252

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v3

    if-ltz v3, :cond_251

    goto :goto_252

    :cond_251
    const/4 v2, 0x0

    :cond_252
    :goto_252
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto :goto_273

    .line 5110
    :cond_25a
    :goto_25a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsWastelandBorder(ZI)V

    .line 5055
    :goto_273
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 5118
    .end local v0  # "i":I
    :cond_277
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setuPRV(Z)V

    .line 5119
    return-void
.end method

.method public final updateArmy4(I)V
    .registers 7
    .param p1, "iArmy"  # I

    .line 4245
    int-to-float v0, p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDefensivePosition:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;->DEFENSIVE_POSITION_DONT_RESET_IF_ARMY:F

    mul-float v3, v3, v4

    cmpl-float v0, v0, v3

    if-gez v0, :cond_36

    int-to-float v0, p1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDefensivePosition:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;->DEFENSIVE_POSITION_DONT_RESET_IF_ARMY2:F

    mul-float v3, v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3a

    .line 4246
    :cond_36
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_3b

    .line 4251
    :cond_3a
    goto :goto_43

    .line 4248
    :catch_3b
    move-exception v0

    .line 4249
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3c
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput v1, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    .line 4250
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 4253
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_43
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->setArmy(II)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_54} :catch_55

    .line 4257
    goto :goto_5d

    .line 4254
    :catch_55
    move-exception v0

    .line 4255
    .restart local v0  # "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    .line 4256
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 4258
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_5d
    return-void
.end method

.method public final updateArmy4(II)V
    .registers 9
    .param p1, "iCivID"  # I
    .param p2, "iArmy"  # I

    .line 4262
    const/4 v0, 0x0

    if-gtz p2, :cond_1c

    :try_start_3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v1

    if-eq p1, v1, :cond_1c

    .line 4263
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeArmy(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_17

    .line 4264
    return-void

    .line 4266
    :catch_17
    move-exception v1

    .line 4267
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 4268
    .end local v1  # "ex":Ljava/lang/Exception;
    :cond_1c
    nop

    .line 4271
    :goto_1d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    :try_start_1e
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->civsSize:I

    if-ge v1, v2, :cond_8d

    .line 4272
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_32} :catch_8e

    if-ne v2, p1, :cond_8a

    .line 4273
    if-nez v1, :cond_78

    .line 4275
    int-to-float v2, p2

    const/4 v3, -0x1

    :try_start_38
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDefensivePosition:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;->DEFENSIVE_POSITION_DONT_RESET_IF_ARMY:F

    mul-float v4, v4, v5

    cmpl-float v2, v2, v4

    if-gez v2, :cond_6b

    int-to-float v2, p2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v0

    int-to-float v0, v0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDefensivePosition:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;->DEFENSIVE_POSITION_DONT_RESET_IF_ARMY2:F

    mul-float v0, v0, v4

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_6f

    .line 4276
    :cond_6b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_6f} :catch_70

    .line 4281
    :cond_6f
    goto :goto_78

    .line 4278
    :catch_70
    move-exception v0

    .line 4279
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_71
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    .line 4280
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 4284
    .end local v0  # "ex":Ljava/lang/Exception;
    :cond_78
    :goto_78
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->setArmy(II)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_89} :catch_8e

    .line 4285
    return-void

    .line 4271
    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 4290
    .end local v1  # "i":I
    :cond_8d
    goto :goto_92

    .line 4288
    :catch_8e
    move-exception v0

    .line 4289
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 4293
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_92
    :try_start_92
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->addArmy(II)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_96

    .line 4296
    goto :goto_9a

    .line 4294
    :catch_96
    move-exception v0

    .line 4295
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 4297
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_9a
    return-void
.end method

.method public final updateArmyWi(I)V
    .registers 3
    .param p1, "i"  # I

    .line 4969
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->updateArmyWidth_Just(I)V

    .line 4970
    return-void
.end method

.method public final updateArmyWi_ALL()V
    .registers 3

    .line 4978
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4979
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addLoadArmiesWidth_ErrorIDs(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 4983
    :cond_11
    goto :goto_13

    .line 4981
    :catch_12
    move-exception v0

    .line 4984
    :goto_13
    return-void
.end method

.method public final updateDefensivePosition()V
    .registers 3

    .line 5826
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsSupplied()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_34

    .line 5830
    :cond_e
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v0

    if-lez v0, :cond_2f

    .line 5831
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    .line 5833
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDefensivePosition:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;->MAX_DEFENSIVE_POSITION:I

    if-le v0, v1, :cond_38

    .line 5834
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDefensivePosition:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;->MAX_DEFENSIVE_POSITION:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    goto :goto_38

    .line 5838
    :cond_2f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    goto :goto_38

    .line 5827
    :cond_34
    :goto_34
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    .line 5841
    :cond_38
    :goto_38
    return-void
.end method

.method public final updateDrawArmyInProv()V
    .registers 6

    .line 2023
    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lez v0, :cond_1dd

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getFog(I)Z

    move-result v0

    if-nez v0, :cond_1dd

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelations:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->FRIENDLY_MIN_RELATION:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1dd

    .line 2024
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_14e

    .line 2025
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I
    :try_end_48
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_48} :catch_b92

    if-ne v0, v1, :cond_d6

    .line 2027
    :try_start_4a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 2028
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_76

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_76

    .line 2029
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_6e

    .line 2030
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_d4

    .line 2037
    :cond_6e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_d4

    .line 2044
    :cond_76
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_92

    .line 2045
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_8a

    .line 2046
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_d4

    .line 2053
    :cond_8a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_d4

    .line 2060
    :cond_92
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_ae

    .line 2061
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_a6

    .line 2062
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$5;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_d4

    .line 2069
    :cond_a6
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$6;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_d4

    .line 2077
    :cond_ae
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_bc

    .line 2078
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$7;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_d4

    .line 2085
    :cond_bc
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$8;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_d4

    .line 2094
    :cond_c4
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$9;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;
    :try_end_cb
    .catch Ljava/lang/NullPointerException; {:try_start_4a .. :try_end_cb} :catch_cc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4a .. :try_end_cb} :catch_b92

    goto :goto_d4

    .line 2100
    :catch_cc
    move-exception v0

    .line 2101
    .local v0, "ex":Ljava/lang/NullPointerException;
    :try_start_cd
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province$10;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    .line 2106
    .end local v0  # "ex":Ljava/lang/NullPointerException;
    :goto_d4
    goto/16 :goto_b90

    .line 2109
    :cond_d6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_fa

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_fa

    .line 2110
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_f1

    .line 2111
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$11;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2118
    :cond_f1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$12;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2125
    :cond_fa
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_118

    .line 2126
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_10f

    .line 2127
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$13;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2134
    :cond_10f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$14;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2141
    :cond_118
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_136

    .line 2142
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_12d

    .line 2143
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$15;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2150
    :cond_12d
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$16;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2158
    :cond_136
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_145

    .line 2159
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$17;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2166
    :cond_145
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$18;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2176
    :cond_14e
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_165

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v0

    if-nez v0, :cond_165

    .line 2177
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$19;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2184
    :cond_165
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_189

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_189

    .line 2185
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_180

    .line 2186
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$20;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2194
    :cond_180
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$21;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2202
    :cond_189
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_1a7

    .line 2203
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_19e

    .line 2204
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$22;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2212
    :cond_19e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$23;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2220
    :cond_1a7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_1c5

    .line 2221
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_1bc

    .line 2222
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$24;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$24;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2230
    :cond_1bc
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$25;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$25;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2239
    :cond_1c5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_1d4

    .line 2240
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$26;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$26;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2248
    :cond_1d4
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$27;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$27;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2260
    :cond_1dd
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v0

    if-eqz v0, :cond_222

    .line 2261
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    if-ne v0, v1, :cond_20a

    .line 2262
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmyWi_ALL()V

    .line 2264
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceArmyBoxes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_201

    .line 2265
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$28;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$28;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2276
    :cond_201
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$29;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$29;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2293
    :cond_20a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceArmyBoxes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_219

    .line 2294
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$30;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$30;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2305
    :cond_219
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$31;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$31;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2324
    :cond_222
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v0

    if-eqz v0, :cond_5da

    .line 2326
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v0

    if-lez v0, :cond_38d

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v1

    if-eq v0, v1, :cond_38d

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v1

    if-ne v0, v1, :cond_38d

    .line 2327
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    if-eq v0, v1, :cond_312

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29a

    goto/16 :goto_312

    .line 2404
    :cond_29a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_2be

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_2be

    .line 2405
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_2b5

    .line 2406
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$40;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$40;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2414
    :cond_2b5
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$41;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$41;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2422
    :cond_2be
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_2dc

    .line 2423
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_2d3

    .line 2424
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$42;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$42;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2432
    :cond_2d3
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$43;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$43;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2440
    :cond_2dc
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_2fa

    .line 2441
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_2f1

    .line 2442
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$44;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$44;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2450
    :cond_2f1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$45;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$45;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2459
    :cond_2fa
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_309

    .line 2460
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$46;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$46;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2468
    :cond_309
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$47;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$47;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2328
    :cond_312
    :goto_312
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmyWi_ALL()V

    .line 2330
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_339

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_339

    .line 2331
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_330

    .line 2332
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$32;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$32;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2340
    :cond_330
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$33;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$33;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2348
    :cond_339
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_357

    .line 2349
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_34e

    .line 2350
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$34;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$34;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2358
    :cond_34e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$35;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$35;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2366
    :cond_357
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_375

    .line 2367
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_36c

    .line 2368
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$36;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$36;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2376
    :cond_36c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$37;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$37;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2385
    :cond_375
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_384

    .line 2386
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$38;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$38;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2394
    :cond_384
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$39;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$39;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2478
    :cond_38d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-lez v0, :cond_4c5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v0

    float-to-int v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->RELATION_AT_WAR:I

    if-ne v0, v1, :cond_4c5

    .line 2479
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmyWi_ALL()V

    .line 2481
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    if-eq v0, v1, :cond_44d

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d5

    goto/16 :goto_44d

    .line 2556
    :cond_3d5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_3f9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_3f9

    .line 2557
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_3f0

    .line 2558
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$56;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$56;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2566
    :cond_3f0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$57;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$57;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2574
    :cond_3f9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_417

    .line 2575
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_40e

    .line 2576
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$58;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$58;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2584
    :cond_40e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$59;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$59;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2592
    :cond_417
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_435

    .line 2593
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_42c

    .line 2594
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$60;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$60;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2602
    :cond_42c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$61;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$61;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2611
    :cond_435
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_444

    .line 2612
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$62;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$62;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2620
    :cond_444
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$63;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$63;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2482
    :cond_44d
    :goto_44d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_471

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_471

    .line 2483
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_468

    .line 2484
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$48;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$48;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2492
    :cond_468
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$49;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$49;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2500
    :cond_471
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_48f

    .line 2501
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_486

    .line 2502
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$50;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$50;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2510
    :cond_486
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$51;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$51;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2518
    :cond_48f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_4ad

    .line 2519
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_4a4

    .line 2520
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$52;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$52;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2528
    :cond_4a4
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$53;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$53;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2537
    :cond_4ad
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_4bc

    .line 2538
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$54;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$54;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2546
    :cond_4bc
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$55;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$55;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2631
    :cond_4c5
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    if-eq v0, v1, :cond_55f

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e7

    goto/16 :goto_55f

    .line 2708
    :cond_4e7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_50b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_50b

    .line 2709
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_502

    .line 2710
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$72;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$72;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2718
    :cond_502
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$73;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$73;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2726
    :cond_50b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_529

    .line 2727
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_520

    .line 2728
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$74;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$74;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2736
    :cond_520
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$75;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$75;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2744
    :cond_529
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_547

    .line 2745
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_53e

    .line 2746
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$76;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$76;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2754
    :cond_53e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$77;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$77;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2763
    :cond_547
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_556

    .line 2764
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$78;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$78;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2772
    :cond_556
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$79;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$79;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2632
    :cond_55f
    :goto_55f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmyWi_ALL()V

    .line 2634
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_586

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_586

    .line 2635
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_57d

    .line 2636
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$64;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$64;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2644
    :cond_57d
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$65;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$65;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2652
    :cond_586
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_5a4

    .line 2653
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_59b

    .line 2654
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$66;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$66;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2662
    :cond_59b
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$67;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$67;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2670
    :cond_5a4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_5c2

    .line 2671
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_5b9

    .line 2672
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$68;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$68;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2680
    :cond_5b9
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$69;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$69;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2689
    :cond_5c2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_5d1

    .line 2690
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$70;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$70;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2698
    :cond_5d1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$71;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$71;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2785
    :cond_5da
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    if-eq v0, v1, :cond_b1e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5fc

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5fc

    goto/16 :goto_b1e

    .line 2863
    :cond_5fc
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenProvinceID:I

    if-ne v0, v1, :cond_67a

    .line 2864
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_626

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_626

    .line 2865
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_61d

    .line 2866
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$88;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$88;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2874
    :cond_61d
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$89;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$89;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2882
    :cond_626
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_644

    .line 2883
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_63b

    .line 2884
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$90;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$90;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2892
    :cond_63b
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$91;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$91;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2900
    :cond_644
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_662

    .line 2901
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_659

    .line 2902
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$92;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$92;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2910
    :cond_659
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$93;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$93;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2919
    :cond_662
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_671

    .line 2920
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$94;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$94;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2928
    :cond_671
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$95;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$95;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2938
    :cond_67a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-ne v0, v1, :cond_713

    .line 2939
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_6b0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_6b0

    .line 2940
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_6a7

    .line 2941
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$96;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$96;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2949
    :cond_6a7
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$97;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$97;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2957
    :cond_6b0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_6ce

    .line 2958
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_6c5

    .line 2959
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$98;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$98;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2967
    :cond_6c5
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$99;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$99;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2975
    :cond_6ce
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_6ec

    .line 2976
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_6e3

    .line 2977
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$100;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$100;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2985
    :cond_6e3
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$101;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$101;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2994
    :cond_6ec
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_6fb

    .line 2995
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$102;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$102;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3003
    :cond_6fb
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-nez v0, :cond_70a

    .line 3004
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$103;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$103;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3012
    :cond_70a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$104;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$104;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3024
    :cond_713
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_85a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    if-eq v0, v2, :cond_85a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v2

    if-ne v0, v2, :cond_85a

    .line 3025
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    if-le v0, v1, :cond_7e2

    .line 3026
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_78e

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_78e

    .line 3027
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_785

    .line 3028
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$105;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$105;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3036
    :cond_785
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$106;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$106;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3044
    :cond_78e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_7ac

    .line 3045
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_7a3

    .line 3046
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$107;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$107;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3054
    :cond_7a3
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$108;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$108;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3062
    :cond_7ac
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_7ca

    .line 3063
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_7c1

    .line 3064
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$109;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$109;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3072
    :cond_7c1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$110;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$110;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3081
    :cond_7ca
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_7d9

    .line 3082
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$111;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$111;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3090
    :cond_7d9
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$112;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$112;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3100
    :cond_7e2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_806

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_806

    .line 3101
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_7fd

    .line 3102
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$113;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$113;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3115
    :cond_7fd
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$114;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$114;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3128
    :cond_806
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_824

    .line 3129
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_81b

    .line 3130
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$115;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$115;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3143
    :cond_81b
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$116;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$116;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3156
    :cond_824
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_842

    .line 3157
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_839

    .line 3158
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$117;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$117;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3171
    :cond_839
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$118;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$118;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3185
    :cond_842
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_851

    .line 3186
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$119;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$119;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3196
    :cond_851
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$120;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$120;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3210
    :cond_85a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    if-eq v0, v2, :cond_97e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v2

    if-ne v0, v2, :cond_97e

    .line 3211
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    if-le v0, v1, :cond_906

    .line 3212
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_8b2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_8b2

    .line 3213
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_8a9

    .line 3214
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$121;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$121;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3222
    :cond_8a9
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$122;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$122;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3230
    :cond_8b2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_8d0

    .line 3231
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_8c7

    .line 3232
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$123;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$123;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3240
    :cond_8c7
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$124;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$124;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3248
    :cond_8d0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_8ee

    .line 3249
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_8e5

    .line 3250
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$125;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$125;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3258
    :cond_8e5
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$126;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$126;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3267
    :cond_8ee
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_8fd

    .line 3268
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$127;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$127;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3276
    :cond_8fd
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$128;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$128;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3286
    :cond_906
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_92a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_92a

    .line 3287
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_921

    .line 3288
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$129;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$129;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3301
    :cond_921
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$130;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$130;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3314
    :cond_92a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_948

    .line 3315
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_93f

    .line 3316
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$131;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$131;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3329
    :cond_93f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$132;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$132;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3342
    :cond_948
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_966

    .line 3343
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_95d

    .line 3344
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$133;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$133;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3357
    :cond_95d
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$134;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$134;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3371
    :cond_966
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_975

    .line 3372
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$135;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$135;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3382
    :cond_975
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$136;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$136;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3396
    :cond_97e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-lez v0, :cond_a19

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v0

    float-to-int v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->RELATION_AT_WAR:I

    if-ne v0, v2, :cond_a19

    .line 3397
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_9c5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_9c5

    .line 3398
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_9bc

    .line 3399
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$137;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$137;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3407
    :cond_9bc
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$138;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$138;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3415
    :cond_9c5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_9e3

    .line 3416
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_9da

    .line 3417
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$139;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$139;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3425
    :cond_9da
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$140;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$140;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3433
    :cond_9e3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_a01

    .line 3434
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_9f8

    .line 3435
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$141;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$141;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3443
    :cond_9f8
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$142;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$142;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3452
    :cond_a01
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_a10

    .line 3453
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$143;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$143;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3461
    :cond_a10
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$144;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$144;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3472
    :cond_a19
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    if-le v0, v1, :cond_a97

    .line 3473
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_a43

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_a43

    .line 3474
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_a3a

    .line 3475
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$145;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$145;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3483
    :cond_a3a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$146;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$146;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3491
    :cond_a43
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_a61

    .line 3492
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_a58

    .line 3493
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$147;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$147;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3501
    :cond_a58
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$148;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$148;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3509
    :cond_a61
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_a7f

    .line 3510
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_a76

    .line 3511
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$149;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$149;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3519
    :cond_a76
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$150;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$150;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3528
    :cond_a7f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_a8e

    .line 3529
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$151;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$151;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3537
    :cond_a8e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$152;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$152;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3547
    :cond_a97
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_abb

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_abb

    .line 3548
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_ab2

    .line 3549
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$153;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$153;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3562
    :cond_ab2
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$154;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$154;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3575
    :cond_abb
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_ad9

    .line 3576
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_ad0

    .line 3577
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$155;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$155;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3590
    :cond_ad0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$156;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$156;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3603
    :cond_ad9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_af7

    .line 3604
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_aee

    .line 3605
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$157;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$157;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3618
    :cond_aee
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$158;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$158;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3632
    :cond_af7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_b06

    .line 3633
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$159;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$159;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3643
    :cond_b06
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-nez v0, :cond_b15

    .line 3644
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$160;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$160;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 3654
    :cond_b15
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$161;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$161;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto/16 :goto_b90

    .line 2786
    :cond_b1e
    :goto_b1e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmyWi_ALL()V

    .line 2788
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_b43

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_b43

    .line 2789
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_b3b

    .line 2790
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$80;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$80;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_b90

    .line 2798
    :cond_b3b
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$81;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$81;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_b90

    .line 2806
    :cond_b43
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_b5f

    .line 2807
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_b57

    .line 2808
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$82;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$82;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_b90

    .line 2816
    :cond_b57
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$83;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$83;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_b90

    .line 2824
    :cond_b5f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v0

    if-lez v0, :cond_b7b

    .line 2825
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_b73

    .line 2826
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$84;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$84;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_b90

    .line 2834
    :cond_b73
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$85;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$85;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_b90

    .line 2843
    :cond_b7b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v0

    if-lez v0, :cond_b89

    .line 2844
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$86;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$86;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_b90

    .line 2852
    :cond_b89
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$87;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$87;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;
    :try_end_b90
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_cd .. :try_end_b90} :catch_b92

    .line 3772
    :goto_b90
    goto/16 :goto_c02

    .line 3667
    :catch_b92
    move-exception v0

    .line 3668
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v1

    if-lez v1, :cond_bb5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v1

    if-lez v1, :cond_bb5

    .line 3669
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v1

    if-lez v1, :cond_bad

    .line 3670
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province$162;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$162;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_c02

    .line 3682
    :cond_bad
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province$163;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$163;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_c02

    .line 3694
    :cond_bb5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v1

    if-lez v1, :cond_bd1

    .line 3695
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v1

    if-lez v1, :cond_bc9

    .line 3696
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province$164;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$164;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_c02

    .line 3709
    :cond_bc9
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province$165;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$165;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_c02

    .line 3722
    :cond_bd1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v1

    if-lez v1, :cond_bed

    .line 3723
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v1

    if-lez v1, :cond_be5

    .line 3724
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province$166;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$166;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_c02

    .line 3737
    :cond_be5
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province$167;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$167;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_c02

    .line 3751
    :cond_bed
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v1

    if-lez v1, :cond_bfb

    .line 3752
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province$168;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$168;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    goto :goto_c02

    .line 3762
    :cond_bfb
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province$169;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$169;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    .line 3773
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_c02
    return-void
.end method

.method public final updateDrawArmy_ShowsIDs()V
    .registers 2

    .line 3776
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$170;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$170;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmyInProv:Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;

    .line 3782
    return-void
.end method

.method public final updateFogOfWar(I)V
    .registers 13
    .param p1, "nPlayerID"  # I

    .line 1136
    const/4 v0, 0x0

    .line 1138
    .local v0, "bProvinceView":Z
    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_157

    .line 1139
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->haveArmy_FogOfWarCheck(II)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 1140
    const/4 v0, 0x1

    .line 1142
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_20
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_e2

    .line 1143
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1144
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setFogOfWar(IZ)V

    .line 1147
    :cond_43
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetProv(IZ)V

    .line 1149
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    .line 1151
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_5e
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_de

    .line 1152
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetProv(IZ)V

    .line 1154
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    .line 1156
    const/4 v4, 0x0

    .local v4, "o":I
    :goto_9d
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v5

    if-ge v4, v5, :cond_db

    .line 1157
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v6

    invoke-virtual {v5, v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetCiv(IZ)V

    .line 1156
    add-int/lit8 v4, v4, 0x1

    goto :goto_9d

    .line 1151
    .end local v4  # "o":I
    :cond_db
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 1142
    .end local v3  # "k":I
    :cond_de
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_20

    .line 1164
    .end local v1  # "j":I
    :cond_e2
    if-nez v0, :cond_65f

    .line 1165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_155

    .line 1166
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v3

    if-eqz v3, :cond_152

    .line 1167
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->haveArmy_FogOfWarCheck(II)Z

    move-result v3

    .line 1169
    .local v3, "nState":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_110
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_145

    .line 1170
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->haveArmy_FogOfWarCheck(II)Z

    move-result v5

    if-eqz v5, :cond_142

    .line 1171
    const/4 v3, 0x1

    .line 1172
    goto :goto_145

    .line 1169
    :cond_142
    add-int/lit8 v4, v4, 0x1

    goto :goto_110

    .line 1176
    .end local v4  # "j":I
    :cond_145
    :goto_145
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->setFogOfWar_ExtraCheck(IZ)V

    .line 1165
    .end local v3  # "nState":Z
    :cond_152
    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    .end local v1  # "i":I
    :cond_155
    goto/16 :goto_65f

    .line 1182
    :cond_157
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_158
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_396

    .line 1183
    const/4 v3, 0x0

    .line 1185
    .restart local v3  # "nState":Z
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-eq v4, v5, :cond_34c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1186
    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v5

    if-eq v4, v5, :cond_34c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1187
    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-eq v4, v5, :cond_34c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1188
    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v4

    if-lez v4, :cond_205

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v5

    if-eq v4, v5, :cond_34c

    :cond_205
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1189
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->haveArmy_FogOfWarCheck(II)Z

    move-result v4

    if-eqz v4, :cond_21d

    goto/16 :goto_34c

    .line 1198
    :cond_21d
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_21e
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_364

    .line 1199
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v5

    if-lez v5, :cond_348

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v5

    if-ge v5, v2, :cond_348

    .line 1200
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    if-eq v5, v6, :cond_346

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1201
    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v6

    if-eq v5, v6, :cond_346

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1202
    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    if-eq v5, v6, :cond_346

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1203
    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v5

    if-lez v5, :cond_326

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v6

    if-eq v5, v6, :cond_346

    :cond_326
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1204
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->haveArmy_FogOfWarCheck(II)Z

    move-result v5

    if-eqz v5, :cond_348

    .line 1206
    :cond_346
    const/4 v3, 0x1

    .line 1207
    goto :goto_364

    .line 1198
    :cond_348
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_21e

    .line 1191
    .end local v4  # "j":I
    :cond_34c
    :goto_34c
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v4

    if-lez v4, :cond_363

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v4

    if-ge v4, v2, :cond_363

    .line 1192
    const/4 v0, 0x1

    .line 1195
    :cond_363
    const/4 v3, 0x1

    .line 1213
    :cond_364
    :goto_364
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getFog(I)Z

    move-result v4

    if-eq v4, v3, :cond_392

    .line 1214
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->setFogOfWar_ExtraCheck(IZ)V

    .line 1216
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    if-ne p1, v4, :cond_392

    .line 1217
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmyInProv()V

    .line 1182
    .end local v3  # "nState":Z
    :cond_392
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_158

    .line 1222
    .end local v1  # "i":I
    :cond_396
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_397
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_65f

    .line 1223
    const/4 v3, 0x0

    .line 1225
    .restart local v3  # "nState":Z
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-eq v4, v5, :cond_62c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1226
    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v5

    if-eq v4, v5, :cond_62c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1227
    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-eq v4, v5, :cond_62c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1228
    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v4

    if-lez v4, :cond_41e

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v5

    if-ne v4, v5, :cond_41e

    goto/16 :goto_62c

    .line 1233
    :cond_41e
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_41f
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_62d

    .line 1234
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v5

    if-eqz v5, :cond_549

    .line 1235
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_44a
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v6

    if-ge v5, v6, :cond_547

    .line 1236
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v7

    if-eq v6, v7, :cond_537

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1237
    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v7

    if-eq v6, v7, :cond_537

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1238
    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v7

    if-eq v6, v7, :cond_537

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1239
    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v6

    if-lez v6, :cond_533

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v7

    if-ne v6, v7, :cond_533

    goto :goto_537

    .line 1235
    :cond_533
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_44a

    .line 1241
    :cond_537
    :goto_537
    const/4 v3, 0x1

    .line 1242
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v6

    move v4, v6

    .line 1235
    .end local v5  # "k":I
    :cond_547
    goto/16 :goto_618

    .line 1248
    :cond_549
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    if-eq v5, v6, :cond_61b

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1249
    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v6

    if-eq v5, v6, :cond_61b

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1250
    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    if-eq v5, v6, :cond_61b

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1251
    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v5

    if-lez v5, :cond_618

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v6

    if-ne v5, v6, :cond_618

    goto :goto_61b

    .line 1233
    :cond_618
    :goto_618
    add-int/2addr v4, v2

    goto/16 :goto_41f

    .line 1253
    :cond_61b
    :goto_61b
    const/4 v3, 0x1

    .line 1254
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v5

    move v4, v5

    .line 1255
    goto :goto_62d

    .line 1230
    .end local v4  # "j":I
    :cond_62c
    :goto_62c
    const/4 v3, 0x1

    .line 1261
    :cond_62d
    :goto_62d
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getFog(I)Z

    move-result v4

    if-eq v4, v3, :cond_65b

    .line 1262
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->setFogOfWar_ExtraCheck(IZ)V

    .line 1264
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    if-ne p1, v4, :cond_65b

    .line 1265
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmyInProv()V

    .line 1222
    .end local v3  # "nState":Z
    :cond_65b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_397

    .line 1271
    .end local v1  # "i":I
    :cond_65f
    :goto_65f
    if-nez v0, :cond_6f8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    if-eq v1, v3, :cond_6f8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1272
    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v3

    if-eq v1, v3, :cond_6f8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1273
    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    if-eq v1, v3, :cond_6f8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1274
    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v1

    if-lez v1, :cond_6df

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v3

    if-eq v1, v3, :cond_6f5

    :cond_6df
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->haveArmy_FogOfWarCheck(II)Z

    move-result v1

    if-eqz v1, :cond_6f6

    :cond_6f5
    goto :goto_6f8

    :cond_6f6
    const/4 v1, 0x0

    goto :goto_6f9

    :cond_6f8
    :goto_6f8
    const/4 v1, 0x1

    :goto_6f9
    move v0, v1

    .line 1276
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->setFogOfWar_ExtraCheck(IZ)V

    .line 1278
    if-eqz v0, :cond_7da

    .line 1279
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_70a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_7da

    .line 1280
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetProv(IZ)V

    .line 1282
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    .line 1284
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_72b
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_7ab

    .line 1285
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetProv(IZ)V

    .line 1287
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    .line 1289
    const/4 v4, 0x0

    .local v4, "o":I
    :goto_76a
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v5

    if-ge v4, v5, :cond_7a8

    .line 1290
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v6

    invoke-virtual {v5, v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetCiv(IZ)V

    .line 1289
    add-int/lit8 v4, v4, 0x1

    goto :goto_76a

    .line 1284
    .end local v4  # "o":I
    :cond_7a8
    add-int/lit8 v3, v3, 0x1

    goto :goto_72b

    .line 1294
    .end local v3  # "k":I
    :cond_7ab
    const/4 v3, 0x0

    .restart local v3  # "k":I
    :goto_7ac
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_7d6

    .line 1295
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetCiv(IZ)V
    :try_end_7d3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7d3} :catch_7db

    .line 1294
    add-int/lit8 v3, v3, 0x1

    goto :goto_7ac

    .line 1279
    .end local v3  # "k":I
    :cond_7d6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_70a

    .line 1301
    .end local v0  # "bProvinceView":Z
    .end local v1  # "i":I
    :cond_7da
    goto :goto_7df

    .line 1299
    :catch_7db
    move-exception v0

    .line 1300
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1302
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_7df
    return-void
.end method

.method public final updateIsNotSuppliedForXTurns()V
    .registers 9

    .line 5772
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsSupplied()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_187

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v0, :cond_21

    goto/16 :goto_187

    .line 5776
    :cond_21
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isNotSuppliedForYTurns:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isNotSuppliedForYTurns:I

    .line 5778
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 5779
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/NotSupplied/Message_ProvincesNotSupplied;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/NotSupplied/Message_ProvincesNotSupplied;-><init>(II)V

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 5782
    :cond_59
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isNotSuppliedForYTurns:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceNotSupplied:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;->NOT_SUPPLIED_PROVINCE_STARVATION_START_TURN_THRESHOLD:I

    if-le v0, v2, :cond_f9

    .line 5783
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_68
    if-ltz v0, :cond_f9

    .line 5784
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v2

    if-lez v2, :cond_f5

    .line 5785
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceNotSupplied:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;->NOT_SUPPLIED_PROVINCE_STARVATION_PENALTY_PER_TURN:F

    mul-float v2, v2, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isNotSuppliedForYTurns:I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceNotSupplied:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;->NOT_SUPPLIED_PROVINCE_STARVATION_START_TURN_THRESHOLD:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v2, v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L  # 10.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v2, v4

    .line 5787
    .local v2, "armyStrave":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5789
    if-lez v2, :cond_f5

    .line 5790
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNumberOfUnits(I)V

    .line 5791
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V

    .line 5793
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 5794
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/NotSupplied/Message_ProvincesNotSupplied_Straves;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v7

    invoke-direct {v5, v6, v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/NotSupplied/Message_ProvincesNotSupplied_Straves;-><init>(III)V

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 5783
    .end local v2  # "armyStrave":I
    :cond_f5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_68

    .line 5801
    .end local v0  # "i":I
    :cond_f9
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isNotSuppliedForYTurns:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceNotSupplied:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceNotSupplied;->NOT_SUPPLIED_PROVINCE_LOSE_CONTROL_AFTER_TURNS:I

    if-lt v0, v2, :cond_18b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 5802
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceArmy(I)I

    move-result v0

    if-gtz v0, :cond_18b

    .line 5804
    :try_start_115
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 5805
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/NotSupplied/Message_ProvincesNotSupplied_LostControl;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/NotSupplied/Message_ProvincesNotSupplied_LostControl;-><init>(II)V

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 5807
    :cond_145
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_175

    .line 5808
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/NotSupplied/Message_ProvincesNotSupplied_LostControl_EnemyLost;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/NotSupplied/Message_ProvincesNotSupplied_LostControl_EnemyLost;-><init>(II)V

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_175} :catch_176

    .line 5812
    :cond_175
    goto :goto_177

    .line 5810
    :catch_176
    move-exception v0

    .line 5814
    :goto_177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->resetArmiesAll(I)V

    .line 5816
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v2

    invoke-virtual {p0, v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId(IZZ)V

    .line 5817
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isNotSuppliedForYTurns:I

    goto :goto_18b

    .line 5773
    :cond_187
    :goto_187
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isNotSuppliedForYTurns:I

    .line 5821
    :cond_18b
    :goto_18b
    return-void
.end method

.method public final updateNewColony()V
    .registers 3

    .line 5848
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iNewColonyBonus:I

    if-lez v0, :cond_1c

    .line 5849
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iNewColonyBonus:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iNewColonyBonus:I

    .line 5851
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iNewColonyBonus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1c

    .line 5852
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ColonizationManager;->autoExpand(I)V

    .line 5855
    :cond_1c
    return-void
.end method

.method public final updateProvStability()V
    .registers 4

    .line 5637
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_b

    .line 5638
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    .line 5639
    return-void

    .line 5642
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    .line 5644
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Population()F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    .line 5646
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_RevRisk()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    .line 5647
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Core()F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    .line 5648
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Occupied()F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    .line 5651
    cmpg-float v2, v0, v1

    if-gez v2, :cond_35

    .line 5652
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Army()F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    .line 5655
    :cond_35
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    .line 5657
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Disease()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    .line 5659
    const v1, 0x3c23d70a  # 0.01f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    .line 5661
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-nez v0, :cond_a0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_PROVINCE_STABILITY:F

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceStability:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a0

    .line 5662
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->MIN_HAPPINESS_TO_ASSIMILATE_PROVINCE:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAssimilateOrganized(I)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 5663
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5668
    :cond_a0
    return-void
.end method

.method public final updateProviBorder_OwnerAnimation()V
    .registers 8

    .line 4166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 4167
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_38

    .line 4168
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-eq v2, v5, :cond_30

    const/4 v3, 0x1

    :cond_30
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder_OwnerAnimation(ZI)V

    goto :goto_66

    .line 4173
    :cond_38
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-eq v2, v5, :cond_5f

    const/4 v3, 0x1

    :cond_5f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder_OwnerAnimation(ZI)V

    .line 4166
    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4178
    .end local v0  # "i":I
    :cond_69
    return-void
.end method

.method public final updateProvinceBorder()V
    .registers 9

    .line 4087
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1bc

    .line 4089
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_1bb

    .line 4091
    :try_start_e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    .line 4093
    .local v3, "provinceNeighI":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 4094
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v4

    if-gez v4, :cond_7f

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v4

    if-ltz v4, :cond_39

    goto :goto_7f

    .line 4099
    :cond_39
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    if-ge v4, v5, :cond_61

    .line 4100
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    if-eq v5, v6, :cond_57

    const/4 v5, 0x1

    goto :goto_58

    :cond_57
    const/4 v5, 0x0

    :goto_58
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    goto/16 :goto_165

    .line 4103
    :cond_61
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    if-eq v5, v6, :cond_75

    const/4 v5, 0x1

    goto :goto_76

    :cond_75
    const/4 v5, 0x0

    :goto_76
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    goto/16 :goto_165

    .line 4095
    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWastelandLvl(I)V

    .line 4096
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWastelandLvl(I)V

    goto/16 :goto_165

    .line 4108
    :cond_8f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v4

    if-gez v4, :cond_151

    .line 4109
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v4

    if-gez v4, :cond_f7

    .line 4110
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    if-ge v4, v5, :cond_ce

    .line 4111
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v5

    if-nez v5, :cond_c4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v5

    if-eqz v5, :cond_c2

    goto :goto_c4

    :cond_c2
    const/4 v5, 0x0

    goto :goto_c5

    :cond_c4
    :goto_c4
    const/4 v5, 0x1

    :goto_c5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    goto/16 :goto_165

    .line 4114
    :cond_ce
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v5

    if-nez v5, :cond_ed

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v5

    if-eqz v5, :cond_eb

    goto :goto_ed

    :cond_eb
    const/4 v5, 0x0

    goto :goto_ee

    :cond_ed
    :goto_ed
    const/4 v5, 0x1

    :goto_ee
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    goto/16 :goto_165

    .line 4118
    :cond_f7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    if-ge v4, v5, :cond_129

    .line 4119
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v5

    if-nez v5, :cond_120

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v5

    if-eqz v5, :cond_11e

    goto :goto_120

    :cond_11e
    const/4 v5, 0x0

    goto :goto_121

    :cond_120
    :goto_120
    const/4 v5, 0x1

    :goto_121
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    goto :goto_165

    .line 4122
    :cond_129
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v5

    if-nez v5, :cond_148

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProv(I)Z

    move-result v5

    if-eqz v5, :cond_146

    goto :goto_148

    :cond_146
    const/4 v5, 0x0

    goto :goto_149

    :cond_148
    :goto_148
    const/4 v5, 0x1

    :goto_149
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    goto :goto_165

    .line 4129
    :cond_151
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWastelandLvl(I)V

    .line 4131
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v4

    if-ltz v4, :cond_165

    .line 4132
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWastelandLvl(I)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_165} :catch_166

    .line 4147
    .end local v3  # "provinceNeighI":Lage/of/civilizations2/jakowski/lukasz/Province;
    :cond_165
    :goto_165
    goto :goto_1b7

    .line 4136
    :catch_166
    move-exception v3

    .line 4137
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    .line 4139
    .local v4, "provinceNeighI":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    if-ge v5, v6, :cond_198

    .line 4140
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    if-eq v6, v7, :cond_18f

    const/4 v6, 0x1

    goto :goto_190

    :cond_18f
    const/4 v6, 0x0

    :goto_190
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    goto :goto_1b4

    .line 4143
    :cond_198
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    if-eq v6, v7, :cond_1ac

    const/4 v6, 0x1

    goto :goto_1ad

    :cond_1ac
    const/4 v6, 0x0

    :goto_1ad
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    .line 4146
    :goto_1b4
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 4089
    .end local v3  # "ex":Ljava/lang/Exception;
    .end local v4  # "provinceNeighI":Lage/of/civilizations2/jakowski/lukasz/Province;
    :goto_1b7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .end local v0  # "i":I
    :cond_1bb
    goto :goto_227

    .line 4152
    :cond_1bc
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_1bd
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_227

    .line 4153
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    if-ge v3, v4, :cond_1f4

    .line 4154
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-eq v4, v5, :cond_1eb

    const/4 v4, 0x1

    goto :goto_1ec

    :cond_1eb
    const/4 v4, 0x0

    :goto_1ec
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    goto :goto_224

    .line 4157
    :cond_1f4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-eq v4, v5, :cond_21c

    const/4 v4, 0x1

    goto :goto_21d

    :cond_21c
    const/4 v4, 0x0

    :goto_21d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    .line 4152
    :goto_224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1bd

    .line 4161
    .end local v0  # "i":I
    :cond_227
    :goto_227
    return-void
.end method

.method public final updateProvinceEconomyLosses(IF)V
    .registers 5
    .param p1, "nLosses"  # I
    .param p2, "fLossesModifier"  # F

    .line 4525
    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 4527
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvBattle:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_ECONOMY_LOSSES_MAX_PERC:F

    mul-float v0, v0, v1

    int-to-float v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int p1, v0

    .line 4529
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->ECONOMY_MIN:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEco(I)V

    .line 4530
    return-void
.end method

.method public final updateProvincePopulationLosses(IF)V
    .registers 10
    .param p1, "nLosses"  # I
    .param p2, "fLossesModifier"  # F

    .line 4513
    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 4515
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v0

    .line 4517
    .local v0, "nStartPopulation":I
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->MIN_POPULATION_IN_PROVINCE:I

    if-le v1, v2, :cond_5a

    .line 4518
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNatsSize()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 4519
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    int-to-float v6, p1

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 4518
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 4522
    .end local v1  # "i":I
    :cond_5a
    return-void
.end method

.method public final updateProvincePort(II)V
    .registers 4
    .param p1, "nX"  # I
    .param p2, "nY"  # I

    .line 733
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    invoke-direct {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;-><init>(II)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    .line 734
    return-void
.end method

.method public final updateStability_Score_Army()F
    .registers 6

    .line 5719
    const/4 v0, 0x0

    .line 5721
    .local v0, "tempNeighbooringArmy":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 5722
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    if-ne v2, v3, :cond_27

    .line 5723
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceArmy(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 5721
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5727
    .end local v1  # "i":I
    :cond_2a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_ARMY:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceArmy(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_ARMY_NEIGH_ARMY:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x417f8f86

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v1, v1, v2

    return v1
.end method

.method public final updateStability_Score_Core()F
    .registers 3

    .line 5671
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getHaveACore(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5672
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_CORE:F

    return v0

    .line 5675
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final updateStability_Score_Disease()F
    .registers 2

    .line 5689
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;

    if-eqz v0, :cond_b

    .line 5690
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_DISEASE:F

    return v0

    .line 5693
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public final updateStability_Score_Happiness()F
    .registers 4

    .line 5702
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_HAPPINESS_MIN:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_24

    .line 5703
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5704
    const/4 v0, 0x0

    return v0

    .line 5706
    :cond_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_HAPPINESS_MIN_LOWER_STABILITY:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_HAPPINESS_MIN:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0

    .line 5710
    :cond_24
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5711
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_HAPPINESS:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v1

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    return v0

    .line 5713
    :cond_38
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_HAPPINESS:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public final updateStability_Score_Occupied()F
    .registers 6

    .line 5680
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 5681
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_OCCUPIED:F

    const v1, 0x3f59999a  # 0.85f

    const v2, 0x3e4ccccd  # 0.2f

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v3

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    mul-float v0, v0, v3

    return v0

    .line 5684
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public final updateStability_Score_Population()F
    .registers 9

    .line 5731
    const/4 v0, 0x0

    .line 5733
    .local v0, "out":F
    const/4 v1, 0x0

    .line 5734
    .local v1, "nOurPeople":I
    const/4 v2, 0x0

    .line 5735
    .local v2, "largestGroup":I
    const/4 v3, 0x0

    .line 5737
    .local v3, "totalPop":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNatsSize()I

    move-result v5

    if-ge v4, v5, :cond_5f

    .line 5738
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    if-ne v5, v6, :cond_27

    .line 5739
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_53

    .line 5741
    :cond_27
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v5

    if-nez v5, :cond_41

    .line 5742
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f400000  # 0.75f

    mul-float v5, v5, v6

    float-to-int v5, v5

    add-int/2addr v1, v5

    goto :goto_53

    .line 5744
    :cond_41
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v5

    if-ge v2, v5, :cond_53

    .line 5745
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v2

    .line 5748
    :cond_53
    :goto_53
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 5737
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 5751
    .end local v4  # "j":I
    :cond_5f
    if-ge v1, v2, :cond_6c

    .line 5752
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_LARGEST_GROUP:F

    int-to-float v5, v1

    int-to-float v6, v2

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    add-float/2addr v0, v4

    goto :goto_76

    .line 5755
    :cond_6c
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_LARGEST_GROUP:F

    int-to-float v5, v2

    int-to-float v6, v1

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    add-float/2addr v0, v4

    .line 5758
    :goto_76
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_PERC_OF_TOTAL:F

    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    const v5, 0x3f39999a  # 0.725f

    const v6, 0x3e8ccccd  # 0.275f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v7

    mul-float v7, v7, v6

    add-float/2addr v7, v5

    mul-float v4, v4, v7

    add-float/2addr v0, v4

    .line 5760
    return v0
.end method

.method public final updateStability_Score_RevRisk()F
    .registers 3

    .line 5698
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvStability:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_REV_RISK:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iSupportRebelsSize:I

    if-lez v1, :cond_14

    const v1, 0x3d4ccccd  # 0.05f

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    add-float/2addr v0, v1

    return v0
.end method
