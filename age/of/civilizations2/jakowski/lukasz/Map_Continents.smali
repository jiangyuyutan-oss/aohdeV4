.class public Lage/of/civilizations2/jakowski/lukasz/Map_Continents;
.super Ljava/lang/Object;
.source "Map_Continents.java"


# static fields
.field public static final OCEAN_CONTINENT_TAG:Ljava/lang/String; = "1486419009922xximucak"


# instance fields
.field private iContinentsSize:I

.field private iOceanContinentID:I

.field private lColor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "nTag"  # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->loadContinents(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final getColor(I)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "i"  # I

    .line 78
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->lColor:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public final getContinentsSize()I
    .registers 2

    .line 82
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->iContinentsSize:I

    return v0
.end method

.method public final getName(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 74
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->lName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getOceanContinentID()I
    .registers 2

    .line 86
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->iOceanContinentID:I

    return v0
.end method

.method public final loadContinents(Ljava/lang/String;)V
    .registers 13
    .param p1, "nTag"  # Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->lName:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->lColor:Ljava/util/List;

    .line 42
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/data/continents/packges/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 43
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;

    .line 45
    .local v1, "tempPackageContinentGameData":Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->getContinentsTagsSize()I

    move-result v3
    :try_end_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_34} :catch_9c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_34} :catch_9a

    if-ge v2, v3, :cond_99

    .line 47
    :try_start_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/data/continents/packges_data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->getContinentTag(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 48
    .local v3, "fileContinent":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;

    .line 50
    .local v4, "tempContinentGameData":Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->lName:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->lColor:Ljava/util/List;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;->getR()F

    move-result v7

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;->getG()F

    move-result v8

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;->getB()F

    move-result v9

    const v10, 0x3f333333  # 0.7f

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;->getContinentTag(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1486419009922xximucak"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 54
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->iOceanContinentID:I
    :try_end_91
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_91} :catch_94
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_91} :catch_92

    goto :goto_95

    .line 58
    .end local v3  # "fileContinent":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "tempContinentGameData":Lage/of/civilizations2/jakowski/lukasz/Continent_GameData;
    :catch_92
    move-exception v3

    goto :goto_96

    .line 56
    :catch_94
    move-exception v3

    .line 60
    :cond_95
    :goto_95
    nop

    .line 45
    :goto_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "tempPackageContinentGameData":Lage/of/civilizations2/jakowski/lukasz/Package_ContinentsData;
    .end local v2  # "i":I
    :cond_99
    goto :goto_9d

    .line 64
    :catch_9a
    move-exception v0

    goto :goto_9e

    .line 62
    :catch_9c
    move-exception v0

    .line 66
    :goto_9d
    nop

    .line 68
    :goto_9e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->lName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->iContinentsSize:I

    .line 69
    return-void
.end method
