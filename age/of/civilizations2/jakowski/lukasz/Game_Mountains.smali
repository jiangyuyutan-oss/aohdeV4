.class public Lage/of/civilizations2/jakowski/lukasz/Game_Mountains;
.super Ljava/lang/Object;
.source "Game_Mountains.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;,
        Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readMountains(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;
    .registers 8
    .param p1, "nFileName"  # Ljava/lang/String;

    .line 53
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

    const-string v1, "cities/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 54
    .local v0, "handle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "fileContent":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 56
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v3, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;

    const-class v4, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;

    const-string v5, "mountains"

    invoke-virtual {v2, v3, v5, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 59
    const-class v3, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;

    return-object v3
.end method


# virtual methods
.method public final loadMountains()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MapA/Mountains/Mountain;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "nMountains":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MapA/Mountains/Mountain;>;"
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;-><init>()V

    .line 39
    .local v1, "mountainsData":Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;
    :try_start_a
    const-string v2, "mountains.json"

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains;->readMountains(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;

    move-result-object v2

    move-object v1, v2

    .line 40
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;->access$000(Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 41
    .local v3, "e":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;

    .line 43
    .local v4, "oMountainData":Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mountains/Mountain;

    iget-object v6, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;->Name:Ljava/lang/String;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;->Elevation:I

    iget v8, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;->x:I

    iget v9, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;->y:I

    invoke-direct {v5, v6, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mountains/Mountain;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a .. :try_end_36} :catch_39

    .line 44
    nop

    .end local v3  # "e":Ljava/lang/Object;
    .end local v4  # "oMountainData":Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;
    goto :goto_19

    .line 47
    :cond_38
    goto :goto_3a

    .line 45
    :catch_39
    move-exception v2

    .line 49
    :goto_3a
    return-object v0
.end method
