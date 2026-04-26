.class public Lage/of/civilizations2/jakowski/lukasz/Game_Cities;
.super Ljava/lang/Object;
.source "Game_Cities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;,
        Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readCities(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;
    .registers 6
    .param p1, "nFileName"  # Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 98
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v1, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;

    const-class v2, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;

    const-string v3, "cities"

    invoke-virtual {v0, v1, v3, v2}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 103
    const-class v1, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;

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

    const-string v3, "cities/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    const-string v3, "UTF8"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;

    return-object v1
.end method


# virtual methods
.method public final loadCities()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/City;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "nCities":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/City;>;"
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;-><init>()V

    .line 37
    .local v1, "citiesData":Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;
    :try_start_a
    const-string v2, "cities.json"

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Cities;->readCities(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;

    move-result-object v2

    move-object v1, v2

    .line 38
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;->access$000(Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 39
    .local v3, "e":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;

    .line 41
    .local v4, "oCityData":Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/City;

    iget-object v6, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->Name:Ljava/lang/String;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->x:I

    iget v8, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->y:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->city:I

    invoke-direct {v5, v6, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/City;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a .. :try_end_36} :catch_39

    .line 42
    nop

    .end local v3  # "e":Ljava/lang/Object;
    .end local v4  # "oCityData":Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;
    goto :goto_19

    .line 45
    :cond_38
    goto :goto_3a

    .line 43
    :catch_39
    move-exception v2

    .line 48
    :goto_3a
    :try_start_3a
    const-string v2, "cities_1.json"

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Cities;->readCities(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;

    move-result-object v2

    move-object v1, v2

    .line 49
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;->access$000(Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 50
    .restart local v3  # "e":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;

    .line 52
    .restart local v4  # "oCityData":Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/City;

    iget-object v6, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->Name:Ljava/lang/String;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->x:I

    iget v8, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->y:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->city2:I

    invoke-direct {v5, v6, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/City;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3a .. :try_end_66} :catch_69

    .line 53
    nop

    .end local v3  # "e":Ljava/lang/Object;
    .end local v4  # "oCityData":Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;
    goto :goto_49

    .line 56
    :cond_68
    goto :goto_6a

    .line 54
    :catch_69
    move-exception v2

    .line 59
    :goto_6a
    :try_start_6a
    const-string v2, "cities_2.json"

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Cities;->readCities(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;

    move-result-object v2

    move-object v1, v2

    .line 60
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;->access$000(Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 61
    .restart local v3  # "e":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;

    .line 63
    .restart local v4  # "oCityData":Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/City;

    iget-object v6, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->Name:Ljava/lang/String;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->x:I

    iget v8, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->y:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->city3:I

    invoke-direct {v5, v6, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/City;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6a .. :try_end_96} :catch_99

    .line 64
    nop

    .end local v3  # "e":Ljava/lang/Object;
    .end local v4  # "oCityData":Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;
    goto :goto_79

    .line 67
    :cond_98
    goto :goto_9a

    .line 65
    :catch_99
    move-exception v2

    .line 70
    :goto_9a
    :try_start_9a
    const-string v2, "cities_3.json"

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Cities;->readCities(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;

    move-result-object v2

    move-object v1, v2

    .line 71
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;->access$000(Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 72
    .restart local v3  # "e":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;

    .line 74
    .restart local v4  # "oCityData":Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/City;

    iget-object v6, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->Name:Ljava/lang/String;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->x:I

    iget v8, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->y:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->city4:I

    invoke-direct {v5, v6, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/City;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9a .. :try_end_c6} :catch_c9

    .line 75
    nop

    .end local v3  # "e":Ljava/lang/Object;
    .end local v4  # "oCityData":Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;
    goto :goto_a9

    .line 78
    :cond_c8
    goto :goto_ca

    .line 76
    :catch_c9
    move-exception v2

    .line 81
    :goto_ca
    :try_start_ca
    const-string v2, "cities_4.json"

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Cities;->readCities(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;

    move-result-object v2

    move-object v1, v2

    .line 82
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;->access$000(Lage/of/civilizations2/jakowski/lukasz/Game_Cities$Config;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 83
    .restart local v3  # "e":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;

    .line 85
    .restart local v4  # "oCityData":Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/City;

    iget-object v6, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->Name:Ljava/lang/String;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->x:I

    iget v8, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;->y:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->city5:I

    invoke-direct {v5, v6, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/City;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_ca .. :try_end_f6} :catch_f9

    .line 86
    nop

    .end local v3  # "e":Ljava/lang/Object;
    .end local v4  # "oCityData":Lage/of/civilizations2/jakowski/lukasz/Game_Cities$GameCity;
    goto :goto_d9

    .line 89
    :cond_f8
    goto :goto_fa

    .line 87
    :catch_f9
    move-exception v2

    .line 91
    :goto_fa
    return-object v0
.end method
