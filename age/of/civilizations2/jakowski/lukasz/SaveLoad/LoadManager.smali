.class public Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager;
.super Ljava/lang/Object;
.source "LoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;,
        Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ConfigJson;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final loadProvinceNamesPoints()V
    .registers 9

    .line 37
    const-string v0, "ProvinceNamePoints.json"

    const-string v1, "data/"

    const-string v2, "map/"

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 40
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 42
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 43
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 45
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v2  # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 46
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;

    .line 50
    .local v5, "tempData":Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;
    iget v6, v5, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fX:F

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->NULL_INDICATOR:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_87

    .line 51
    const/4 v6, 0x0

    .local v6, "nData":Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;
    goto :goto_f2

    .line 54
    .end local v6  # "nData":Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;
    :cond_87
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    invoke-direct {v6}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;-><init>()V

    .line 56
    .restart local v6  # "nData":Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;
    iget v7, v5, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fX:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX:F

    .line 57
    iget v7, v5, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fX2:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX2:F

    .line 58
    iget v7, v5, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fY:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY:F

    .line 59
    iget v7, v5, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->fY2:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY2:F

    .line 60
    iget v7, v5, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->cx:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterX:F

    .line 61
    iget v7, v5, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;->cy:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterY:F

    .line 64
    :goto_f2
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    nop

    .line 67
    .end local v4  # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5  # "tempData":Lage/of/civilizations2/jakowski/lukasz/SaveLoad/LoadManager$ProvinceNamesPoints;
    .end local v6  # "nData":Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;
    goto/16 :goto_68

    .line 69
    :cond_fa
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_fd
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_fd} :catch_fe

    .line 74
    .end local v0  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_fd
    goto :goto_102

    .line 72
    :catch_fe
    move-exception v0

    .line 73
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOG(Ljava/lang/Throwable;)V

    .line 75
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_102
    return-void
.end method
