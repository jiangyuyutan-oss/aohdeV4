.class public Lage/of/civilizations2/jakowski/lukasz/Map_Regions;
.super Ljava/lang/Object;
.source "Map_Regions.java"


# instance fields
.field private iRegionsSize:I

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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->loadRegions(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final getColor(I)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "i"  # I

    .line 66
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->lColor:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 67
    :catch_9
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 71
    .end local v0  # "ex":Ljava/lang/Exception;
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public final getName(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 61
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->lName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRegionsSize()I
    .registers 2

    .line 75
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->iRegionsSize:I

    return v0
.end method

.method public final loadRegions(Ljava/lang/String;)V
    .registers 13
    .param p1, "nTag"  # Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->lName:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->lColor:Ljava/util/List;

    .line 37
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/data/regions/packges/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 38
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Package_RegionsData;

    .line 40
    .local v1, "tempPackageRegionGameData":Lage/of/civilizations2/jakowski/lukasz/Package_RegionsData;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Package_RegionsData;->getRegionsTagsSize()I

    move-result v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_34} :catch_8c

    if-ge v2, v3, :cond_8b

    .line 42
    :try_start_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/data/regions/packges_data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Package_RegionsData;->getRegionTag(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 43
    .local v3, "fileRegion":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;

    .line 45
    .local v4, "tempregionGameData":Lage/of/civilizations2/jakowski/lukasz/Region_GameData;
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->lName:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->lColor:Ljava/util/List;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->getR()F

    move-result v7

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->getG()F

    move-result v8

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->getB()F

    move-result v9

    const v10, 0x3ee66666  # 0.45f

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_83} :catch_84

    .line 49
    .end local v3  # "fileRegion":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "tempregionGameData":Lage/of/civilizations2/jakowski/lukasz/Region_GameData;
    goto :goto_88

    .line 47
    :catch_84
    move-exception v3

    .line 48
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_85
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_8c

    .line 40
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_88
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 53
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "tempPackageRegionGameData":Lage/of/civilizations2/jakowski/lukasz/Package_RegionsData;
    .end local v2  # "i":I
    :cond_8b
    goto :goto_90

    .line 51
    :catch_8c
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 55
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_90
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->lName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->iRegionsSize:I

    .line 56
    return-void
.end method
