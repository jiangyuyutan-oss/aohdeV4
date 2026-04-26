.class public Lage/of/civilizations2/jakowski/lukasz/SaveLoad/SPNM;
.super Ljava/lang/Object;
.source "SPNM.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getJson()Lcom/badlogic/gdx/utils/Json;
    .registers 2

    .line 18
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 19
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setTypeName(Ljava/lang/String;)V

    .line 20
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setUsePrototypes(Z)V

    .line 21
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setIgnoreUnknownFields(Z)V

    .line 22
    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->javascript:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 24
    return-object v0
.end method

.method public static final saveProvinceNamesPoints()V
    .registers 5

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v0, "tempData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v2

    if-ge v1, v2, :cond_d5

    .line 33
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;-><init>()V

    .line 35
    .local v2, "provincePoints":Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_ae

    .line 36
    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->pid:I

    .line 37
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fX:F

    .line 38
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fY:F

    .line 39
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX2:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fX2:F

    .line 40
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY2:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fY2:F

    .line 41
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterX:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->cx:F

    .line 42
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterY:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->cy:F

    goto :goto_ce

    .line 46
    :cond_ae
    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->pid:I

    .line 47
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->NULL_INDICATOR:I

    int-to-float v3, v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fX:F

    .line 48
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->NULL_INDICATOR:I

    int-to-float v3, v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fY:F

    .line 49
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->NULL_INDICATOR:I

    int-to-float v3, v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fX2:F

    .line 50
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->NULL_INDICATOR:I

    int-to-float v3, v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fY2:F

    .line 51
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->NULL_INDICATOR:I

    int-to-float v3, v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->cx:F

    .line 52
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->NULL_INDICATOR:I

    int-to-float v3, v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->cy:F

    .line 55
    :goto_ce
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .end local v2  # "provincePoints":Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 58
    .end local v1  # "i":I
    :cond_d5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/SPNM;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 60
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ConfigJson;

    const-class v3, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;

    const-string v4, "Data"

    invoke-virtual {v1, v2, v4, v3}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ProvinceNamePoints.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 64
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method
