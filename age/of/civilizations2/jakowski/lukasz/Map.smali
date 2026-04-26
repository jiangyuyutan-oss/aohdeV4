.class public Lage/of/civilizations2/jakowski/lukasz/Map;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Map$Config;,
        Lage/of/civilizations2/jakowski/lukasz/Map$Maps;,
        Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;,
        Lage/of/civilizations2/jakowski/lukasz/Map$Mapsrr;
    }
.end annotation


# instance fields
.field private MAP_PROVINCE_BORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private MAP_PROVINCE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private MAP_SCENARIO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private MAP_WORLD_MAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private activeMapID:I

.field private iMAP_DEFAULT_SCALE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private iMAP_EXTRA_SCALE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private iMAP_ICON:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field private iMAP_NUM_OF_PROVINCES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private iMAP_SCALE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private iMAP_SCALE_PRE_EXTRA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapContinents:Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

.field private mapRegions:Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

.field private mpB:Lage/of/civilizations2/jakowski/lukasz/MapBG;

.field private mpC:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

.field public mpOv:Lage/of/civilizations2/jakowski/lukasz/MapOv;

.field private mpS:Lage/of/civilizations2/jakowski/lukasz/MapScale;

.field private mpSl:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

.field public numOfBasins:I

.field private sMAP_AUTHOR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sMAP_BACKGROUND_NAME:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sMAP_CONTINENTS_PACKAGE_TAG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sMAP_LANG_KEY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sMAP_REGIONS_PACKAGE_TAG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sMAP_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sMAP_WIKI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private touchMgr:Lage/of/civilizations2/jakowski/lukasz/TouchManager;


# direct methods
.method public constructor <init>()V
    .registers 23

    .line 106
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v2, 0x0

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->activeMapID:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->mpB:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    .line 51
    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->mpC:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    .line 53
    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->mpSl:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    .line 55
    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->mpS:Lage/of/civilizations2/jakowski/lukasz/MapScale;

    .line 56
    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->mapContinents:Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    .line 57
    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->mapRegions:Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

    .line 59
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapOv;

    invoke-direct {v3}, Lage/of/civilizations2/jakowski/lukasz/MapOv;-><init>()V

    iput-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->mpOv:Lage/of/civilizations2/jakowski/lukasz/MapOv;

    .line 62
    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->numOfBasins:I

    .line 67
    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->touchMgr:Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    .line 107
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Map$Config;-><init>()V

    move-object v3, v0

    .line 108
    .local v3, "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    move-object v4, v0

    .line 109
    .local v4, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    const-class v5, Lage/of/civilizations2/jakowski/lukasz/Map$Maps;

    const-string v6, "Map"

    invoke-virtual {v4, v0, v6, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 111
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v0

    const-string v5, "map/Age_of_Civilizations.json"

    const-string v7, "UTF8"

    if-eqz v0, :cond_50

    .line 112
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    .end local v3  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .local v0, "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    goto :goto_76

    .line 116
    .end local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .restart local v3  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    :cond_50
    :try_start_50
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    const-string v8, "map/Age_of_Civilizations_Mobile.json"

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_62} :catch_63

    .line 119
    .end local v3  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .restart local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    goto :goto_76

    .line 117
    .end local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .restart local v3  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    :catch_63
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/Exception;
    const-class v8, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    move-object v0, v3

    .line 122
    .end local v3  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .local v0, "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    :goto_76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    .line 124
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map$Config;->access$000(Lage/of/civilizations2/jakowski/lukasz/Map$Config;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_85
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 125
    .local v5, "e":Ljava/lang/Object;
    move-object v8, v5

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Map$Maps;

    .line 126
    .local v8, "tempMapFolder":Lage/of/civilizations2/jakowski/lukasz/Map$Maps;
    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Map$Maps;->access$100(Lage/of/civilizations2/jakowski/lukasz/Map$Maps;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v5  # "e":Ljava/lang/Object;
    .end local v8  # "tempMapFolder":Lage/of/civilizations2/jakowski/lukasz/Map$Maps;
    goto :goto_85

    .line 129
    :cond_9c
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v3

    const-string v5, "/"

    const-string v8, "map/"

    if-eqz v3, :cond_29d

    .line 132
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a7
    sget v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFS:I

    const-string v10, "data"

    const-string v11, "/config.json"

    const-string v12, "backgrounds"

    const-string v13, "json"

    const-string v14, "txt"

    const-string v15, "jar"

    if-ge v3, v9, :cond_1b9

    .line 133
    sget-boolean v9, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-eqz v9, :cond_e1

    .line 134
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .local v16, "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "files":[Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_106

    .line 136
    .end local v16  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .local v0, "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    :cond_e1
    move-object/from16 v16, v0

    .end local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .restart local v16  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 139
    .local v0, "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_106
    array-length v2, v0

    const/4 v9, 0x0

    :goto_108
    if-ge v9, v2, :cond_1ae

    aget-object v17, v0, v9

    .line 140
    .local v17, "file":Lcom/badlogic/gdx/files/FileHandle;
    const/16 v18, 0x1

    .line 142
    .local v18, "addMap":Z
    move-object/from16 v19, v0

    .end local v0  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v19, "files":[Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_142

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_142

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_142

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_142

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 143
    :cond_142
    const/16 v18, 0x0

    .line 146
    :cond_144
    if-eqz v18, :cond_172

    .line 147
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_147
    move/from16 v20, v2

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_16f

    .line 148
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v21, v7

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_168

    .line 149
    const/16 v18, 0x0

    .line 150
    goto :goto_176

    .line 147
    :cond_168
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v20

    move-object/from16 v7, v21

    goto :goto_147

    :cond_16f
    move-object/from16 v21, v7

    goto :goto_176

    .line 146
    .end local v0  # "a":I
    :cond_172
    move/from16 v20, v2

    move-object/from16 v21, v7

    .line 155
    :goto_176
    if-eqz v18, :cond_1a4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 156
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v17  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18  # "addMap":Z
    :cond_1a4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v19

    move/from16 v2, v20

    move-object/from16 v7, v21

    goto/16 :goto_108

    .line 132
    .end local v19  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_1ae
    move-object/from16 v19, v0

    move-object/from16 v21, v7

    .end local v0  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .restart local v19  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    const/4 v2, 0x0

    goto/16 :goto_a7

    .end local v16  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .end local v19  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    :cond_1b9
    move-object/from16 v16, v0

    move-object/from16 v21, v7

    .line 161
    .end local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .end local v3  # "i":I
    .restart local v16  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1be
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUIIS:I

    if-ge v0, v2, :cond_2a1

    .line 162
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 164
    .local v2, "files":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v3, v2

    const/4 v7, 0x0

    :goto_1ef
    if-ge v7, v3, :cond_295

    aget-object v9, v2, v7

    .line 165
    .local v9, "file":Lcom/badlogic/gdx/files/FileHandle;
    const/16 v17, 0x1

    .line 167
    .local v17, "addMap":Z
    move-object/from16 v18, v2

    .end local v2  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v18, "files":[Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_229

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_229

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_229

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_229

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22b

    .line 168
    :cond_229
    const/16 v17, 0x0

    .line 171
    :cond_22b
    if-eqz v17, :cond_259

    .line 172
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_22e
    move/from16 v19, v3

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_256

    .line 173
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v20, v10

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24f

    .line 174
    const/16 v17, 0x0

    .line 175
    goto :goto_25d

    .line 172
    :cond_24f
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v19

    move-object/from16 v10, v20

    goto :goto_22e

    :cond_256
    move-object/from16 v20, v10

    goto :goto_25d

    .line 171
    .end local v2  # "a":I
    :cond_259
    move/from16 v19, v3

    move-object/from16 v20, v10

    .line 180
    :goto_25d
    if-eqz v17, :cond_28b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_28b

    .line 181
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v9  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "addMap":Z
    :cond_28b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v10, v20

    goto/16 :goto_1ef

    .line 161
    .end local v18  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v2, "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_295
    move-object/from16 v18, v2

    move-object/from16 v20, v10

    .end local v2  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1be

    .line 129
    .end local v16  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .end local v18  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    :cond_29d
    move-object/from16 v16, v0

    move-object/from16 v21, v7

    .line 187
    .end local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .restart local v16  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    :cond_2a1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_LANG_KEY:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_NUM_OF_PROVINCES:Ljava/util/List;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_SCALE:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_SCALE_PRE_EXTRA:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_EXTRA_SCALE:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_DEFAULT_SCALE:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_BACKGROUND_NAME:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_AUTHOR:Ljava/util/List;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_WIKI:Ljava/util/List;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_CONTINENTS_PACKAGE_TAG:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_REGIONS_PACKAGE_TAG:Ljava/util/List;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_ICON:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_WORLD_MAP:Ljava/util/List;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_SCENARIO:Ljava/util/List;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_PROVINCE_BORDER:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_PROVINCE_NAMES:Ljava/util/List;

    .line 206
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_313
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_509

    .line 208
    :try_start_31b
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Map$Config;-><init>()V

    move-object/from16 v16, v0

    .line 209
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    const-class v3, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    invoke-virtual {v4, v0, v6, v3}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 211
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v0
    :try_end_32d
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_32d} :catch_4fb

    const-string v3, "config"

    const-string v7, ".json"

    if-eqz v0, :cond_36d

    .line 212
    :try_start_333
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3
    :try_end_35e
    .catch Ljava/lang/Exception; {:try_start_333 .. :try_end_35e} :catch_4fb

    move-object/from16 v9, v21

    :try_start_360
    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    :try_end_36a
    .catch Ljava/lang/Exception; {:try_start_360 .. :try_end_36a} :catch_4f9

    move-object/from16 v16, v0

    .end local v16  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .restart local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    goto :goto_3e1

    .line 215
    .end local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .restart local v16  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    :cond_36d
    move-object/from16 v9, v21

    :try_start_36f
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "config_Mobile"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v10

    invoke-virtual {v4, v0, v10}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    :try_end_3a6
    .catch Ljava/lang/Exception; {:try_start_36f .. :try_end_3a6} :catch_3a9

    .line 218
    .end local v16  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .restart local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    move-object/from16 v16, v0

    goto :goto_3e1

    .line 216
    .end local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    .restart local v16  # "data":Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    :catch_3a9
    move-exception v0

    .line 217
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3aa
    const-class v10, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v4, v10, v3}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    move-object/from16 v16, v3

    .line 221
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_3e1
    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Map$Config;->access$000(Lage/of/civilizations2/jakowski/lukasz/Map$Config;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, "e":Ljava/lang/Object;
    move-object v3, v0

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 223
    .local v3, "tempMapFolder":Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_LANG_KEY:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$200(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_AUTHOR:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$300(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_BACKGROUND_NAME:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$400(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_CONTINENTS_PACKAGE_TAG:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$500(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_REGIONS_PACKAGE_TAG:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$600(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_NUM_OF_PROVINCES:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$700(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_EXTRA_SCALE:Ljava/util/List;

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$800(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_SCALE:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$900(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$800(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_SCALE_PRE_EXTRA:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$900(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_DEFAULT_SCALE:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$900(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_WORLD_MAP:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$1000(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_SCENARIO:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$1100(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_WIKI:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$1200(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_PROVINCE_BORDER:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$1300(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_PROVINCE_NAMES:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$1400(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4ab
    .catch Ljava/lang/Exception; {:try_start_3aa .. :try_end_4ab} :catch_4f9

    .line 242
    .end local v0  # "e":Ljava/lang/Object;
    .end local v3  # "tempMapFolder":Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;
    :cond_4ab
    :try_start_4ab
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_ICON:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ico.png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e1
    .catch Ljava/lang/Exception; {:try_start_4ab .. :try_end_4e1} :catch_4e2

    .line 245
    goto :goto_4f8

    .line 243
    :catch_4e2
    move-exception v0

    .line 244
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4e3
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_ICON:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v10, Lcom/badlogic/gdx/graphics/Texture;

    const-string v11, "UI/imageNotFound.png"

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f8
    .catch Ljava/lang/Exception; {:try_start_4e3 .. :try_end_4f8} :catch_4f9

    .line 248
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_4f8
    goto :goto_503

    .line 246
    :catch_4f9
    move-exception v0

    goto :goto_4fe

    :catch_4fb
    move-exception v0

    move-object/from16 v9, v21

    .line 247
    .restart local v0  # "ex":Ljava/lang/Exception;
    :goto_4fe
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 206
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_503
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v21, v9

    goto/16 :goto_313

    .line 251
    .end local v2  # "i":I
    :cond_509
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->mpB:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    .line 252
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->mpC:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    .line 253
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->touchMgr:Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    .line 254
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->mpSl:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    .line 255
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MapScale;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map;->mpS:Lage/of/civilizations2/jakowski/lukasz/MapScale;

    .line 256
    return-void
.end method


# virtual methods
.method public final drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 402
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpB:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->requestToDisposeMinimap:Z

    if-eqz v0, :cond_b

    .line 403
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpB:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->disposeMinimapOfCivilizations_Real()V

    .line 405
    :cond_b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpB:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMinimapTexture_Generate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 407
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpB:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpC:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpC:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 408
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpB:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpC:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpC:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 409
    return-void
.end method

.method public final getActiveMapIDN()I
    .registers 2

    .line 476
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->activeMapID:I

    return v0
.end method

.method public final getFileActiveMapPath()Ljava/lang/String;
    .registers 4

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->activeMapID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFileMapPath(I)Ljava/lang/String;
    .registers 4
    .param p1, "nMapID"  # I

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFile_ActiveMap_Path2()Ljava/lang/String;
    .registers 3

    .line 418
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->activeMapID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;
    .registers 3
    .param p1, "i"  # I

    .line 499
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_ICON:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method public final getIsMapWorldMap(I)Z
    .registers 3
    .param p1, "i"  # I

    .line 553
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_WORLD_MAP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getMapAuthor(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 507
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_AUTHOR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMapBGName(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 503
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_BACKGROUND_NAME:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;
    .registers 2

    .line 468
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapContinents:Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    return-object v0
.end method

.method public final getMapContinentsPackageTag(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 544
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_CONTINENTS_PACKAGE_TAG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMapDefaultScale(I)I
    .registers 3
    .param p1, "i"  # I

    .line 540
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_DEFAULT_SCALE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getMapDefaultScenario(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 557
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_SCENARIO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMapExtraScale(I)F
    .registers 3
    .param p1, "i"  # I

    .line 524
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_EXTRA_SCALE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getMapLangKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 487
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_LANG_KEY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMapName(I)Ljava/lang/String;
    .registers 5
    .param p1, "i"  # I

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapLangKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Provinces"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMapName_Just(I)Ljava/lang/String;
    .registers 4
    .param p1, "i"  # I

    .line 426
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapLangKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMapNumOfProvinces(I)I
    .registers 3
    .param p1, "i"  # I

    .line 491
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_NUM_OF_PROVINCES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getMapProvBorder(I)Z
    .registers 3
    .param p1, "i"  # I

    .line 528
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_PROVINCE_BORDER:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->USE_OLD_PROVINCE_BORDER:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public final getMapProvinceNames(I)Z
    .registers 3
    .param p1, "i"  # I

    .line 532
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_PROVINCE_NAMES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getMapRegions()Lage/of/civilizations2/jakowski/lukasz/Map_Regions;
    .registers 2

    .line 472
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapRegions:Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

    return-object v0
.end method

.method public final getMapRegionsPackageTag(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 548
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_REGIONS_PACKAGE_TAG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMapScale(I)I
    .registers 3
    .param p1, "i"  # I

    .line 520
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_SCALE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getMapScale_PreExtra(I)I
    .registers 3
    .param p1, "i"  # I

    .line 536
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_SCALE_PRE_EXTRA:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getMapWiki(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 511
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_WIKI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;
    .registers 2

    .line 446
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpB:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    return-object v0
.end method

.method public final getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;
    .registers 2

    .line 451
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpC:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    return-object v0
.end method

.method public final getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;
    .registers 2

    .line 464
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpS:Lage/of/civilizations2/jakowski/lukasz/MapScale;

    return-object v0
.end method

.method public final getMpSl()Lage/of/civilizations2/jakowski/lukasz/MapScroll;
    .registers 2

    .line 460
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpSl:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    return-object v0
.end method

.method public final getNumOfMaps()I
    .registers 2

    .line 495
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;
    .registers 2

    .line 456
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->touchMgr:Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    return-object v0
.end method

.method public final initMapContinents()V
    .registers 4

    .line 384
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_CONTINENTS_PACKAGE_TAG:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapContinents:Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    .line 385
    return-void
.end method

.method public final initMapRegions()V
    .registers 4

    .line 388
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_REGIONS_PACKAGE_TAG:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapRegions:Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

    .line 389
    return-void
.end method

.method public final loadSettings_ActiveMap()V
    .registers 18

    .line 262
    const-string v1, ";"

    const-string v2, "Age_of_Civilizations"

    const-string v3, "provinces/"

    const-string v4, "scales/"

    const-string v5, "data/"

    const-string v6, "map/"

    const-string v7, "settings/settings_mapAoH2DE"

    :try_start_e
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_1a

    .line 263
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v7}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v8, v0

    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_21

    .line 265
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1a
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v7}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v8, v0

    .line 268
    .local v8, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_21
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;

    move-object v9, v0

    .line 270
    .local v9, "tempActiveMapData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;
    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapID:I

    if-ltz v0, :cond_c9

    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getNumOfMaps()I

    move-result v10

    if-ge v0, v10, :cond_c9

    .line 272
    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapScale:I
    :try_end_3a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_e .. :try_end_3a} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3a} :catch_cb

    move v10, v0

    .line 275
    .local v10, "activeMapScale":I
    :try_start_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget v12, v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileMapPath(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 276
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v11

    .line 277
    .local v11, "tempT":Ljava/lang/String;
    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 279
    .local v12, "tagsSPLITED":[Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v13, "tempScales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_76
    array-length v15, v12

    if-ge v14, v15, :cond_89

    .line 282
    aget-object v15, v12, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v14, v14, 0x1

    goto :goto_76

    .line 285
    .end local v14  # "i":I
    :cond_89
    const/4 v14, 0x0

    .line 287
    .local v14, "scaleExists":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_8b
    move-object/from16 v16, v0

    .end local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_a6

    .line 288
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_a1

    .line 289
    const/4 v14, 0x1

    .line 290
    goto :goto_a6

    .line 287
    :cond_a1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    goto :goto_8b

    .line 294
    .end local v15  # "i":I
    :cond_a6
    :goto_a6
    if-nez v14, :cond_b9

    .line 295
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_b8} :catch_ba
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3b .. :try_end_b8} :catch_ce

    move v10, v0

    .line 299
    .end local v11  # "tempT":Ljava/lang/String;
    .end local v12  # "tagsSPLITED":[Ljava/lang/String;
    .end local v13  # "tempScales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14  # "scaleExists":Z
    .end local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_b9
    goto :goto_bb

    .line 297
    :catch_ba
    move-exception v0

    .line 302
    :goto_bb
    :try_start_bb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget v11, v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapID:I

    invoke-virtual {v0, v11, v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->setMapScale(II)I

    .line 303
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget v11, v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapID:I

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->setActiveMapIDN(I)V
    :try_end_c9
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_bb .. :try_end_c9} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c9} :catch_cb

    .line 344
    .end local v8  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "tempActiveMapData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;
    .end local v10  # "activeMapScale":I
    :cond_c9
    goto/16 :goto_179

    .line 345
    :catch_cb
    move-exception v0

    goto/16 :goto_179

    .line 305
    :catch_ce
    move-exception v0

    move-object v8, v0

    .line 306
    .local v8, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_d0
    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v7, v0

    .line 307
    .local v7, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;

    move-object v9, v0

    .line 309
    .restart local v9  # "tempActiveMapData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;
    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapID:I

    if-ltz v0, :cond_179

    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getNumOfMaps()I

    move-result v10

    if-ge v0, v10, :cond_179

    .line 311
    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapScale:I
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_ee} :catch_cb

    move v10, v0

    .line 314
    .restart local v10  # "activeMapScale":I
    :try_start_ef
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget v11, v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapScale:I

    invoke-virtual {v6, v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileMapPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 315
    .restart local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "tempT":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "tagsSPLITED":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v3, "tempScales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12a
    array-length v5, v1

    if-ge v4, v5, :cond_13d

    .line 321
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v4, v4, 0x1

    goto :goto_12a

    .line 324
    .end local v4  # "i":I
    :cond_13d
    const/4 v4, 0x0

    .line 326
    .local v4, "scaleExists":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_156

    .line 327
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v10, :cond_153

    .line 328
    const/4 v4, 0x1

    .line 329
    goto :goto_156

    .line 326
    :cond_153
    add-int/lit8 v5, v5, 0x1

    goto :goto_13f

    .line 333
    .end local v5  # "i":I
    :cond_156
    :goto_156
    if-nez v4, :cond_169

    .line 334
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_168} :catch_16a

    move v10, v5

    .line 338
    .end local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "tagsSPLITED":[Ljava/lang/String;
    .end local v2  # "tempT":Ljava/lang/String;
    .end local v3  # "tempScales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4  # "scaleExists":Z
    :cond_169
    goto :goto_16b

    .line 336
    :catch_16a
    move-exception v0

    .line 341
    :goto_16b
    :try_start_16b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget v1, v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapID:I

    invoke-virtual {v0, v1, v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->setMapScale(II)I

    .line 342
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget v1, v9, Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;->iActiveMapID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->setActiveMapIDN(I)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_179} :catch_cb

    .line 369
    .end local v7  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v8  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v9  # "tempActiveMapData":Lage/of/civilizations2/jakowski/lukasz/Save/SaveActiveMap_GameData;
    .end local v10  # "activeMapScale":I
    :cond_179
    :goto_179
    return-void
.end method

.method public final load_DeleteStatusFile()V
    .registers 1

    .line 381
    return-void
.end method

.method public final setActiveMapIDN(I)V
    .registers 3
    .param p1, "iActiveMapID"  # I

    .line 480
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->activeMapID:I

    if-eq v0, p1, :cond_9

    .line 481
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->activeMapID:I

    .line 482
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->updateWorldMap()V

    .line 484
    :cond_9
    return-void
.end method

.method public final setMapScale(II)I
    .registers 6
    .param p1, "i"  # I
    .param p2, "nMapScale"  # I

    .line 515
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_SCALE_PRE_EXTRA:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_SCALE:Ljava/util/List;

    int-to-float v1, p2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapExtraScale(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final update()V
    .registers 2

    .line 394
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpS:Lage/of/civilizations2/jakowski/lukasz/MapScale;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->update()V

    .line 395
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpSl:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->update()V

    .line 396
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpC:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->update()V

    .line 397
    return-void
.end method

.method public final updateWorldMap()V
    .registers 2

    .line 437
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpB:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->updateWM()V

    .line 438
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpC:Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->updateWorldMap()V

    .line 439
    return-void
.end method
