.class public Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;
.super Ljava/lang/Object;
.source "TerrainTypesManager.java"


# instance fields
.field private iTerrainTypesSize:I

.field private lBaseDevelopment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private lBaseProvinceValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lBuildCost:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private lColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lDefense:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private lEconomyGrowth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private lMilitaryUpkeep:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private lMovementCost:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private lNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lPopulationGrowth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private lTerrainIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field private lTerrainTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->loadTerrainTypes()V

    .line 46
    return-void
.end method

.method private addSea()V
    .registers 9

    .line 126
    const-string v0, "terrain/"

    const-string v1, "UI/"

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lNames:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Sea"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainTags:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lColors:Ljava/util/List;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    .line 130
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 128
    invoke-direct {v3, v4, v4, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lDefense:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lMilitaryUpkeep:Ljava/util/List;

    const v3, 0x3da3d70a  # 0.08f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lPopulationGrowth:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lEconomyGrowth:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lBuildCost:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lMovementCost:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lBaseDevelopment:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lBaseProvinceValue:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const/4 v2, 0x1

    :try_start_5e
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainIcons:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "sea.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v6, v7, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_94
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5e .. :try_end_94} :catch_95

    .line 143
    goto :goto_cc

    .line 141
    :catch_95
    move-exception v3

    .line 142
    .local v3, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainIcons:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notfound.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v6, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v5, v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v3  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_cc
    return-void
.end method


# virtual methods
.method public final getBaseDevelopmentModifier(I)F
    .registers 3
    .param p1, "i"  # I

    .line 240
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lBaseDevelopment:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getBaseProvinceValue(I)I
    .registers 3
    .param p1, "i"  # I

    .line 244
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lBaseProvinceValue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getBuildCost(I)F
    .registers 3
    .param p1, "i"  # I

    .line 232
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lBuildCost:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getColor(I)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "i"  # I

    .line 204
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lColors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public final getDefense(I)F
    .registers 3
    .param p1, "i"  # I

    .line 216
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lDefense:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getEconomyGrowth(I)F
    .registers 3
    .param p1, "i"  # I

    .line 228
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lEconomyGrowth:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;
    .registers 3
    .param p1, "i"  # I

    .line 208
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainIcons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method public final getMilitaryUpkeep(I)F
    .registers 3
    .param p1, "i"  # I

    .line 220
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lMilitaryUpkeep:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getMovementCost(I)F
    .registers 3
    .param p1, "i"  # I

    .line 236
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lMovementCost:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getName(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 196
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPopulationGrowth(I)F
    .registers 3
    .param p1, "i"  # I

    .line 224
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lPopulationGrowth:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getTag(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 200
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTerrainTypeID(Ljava/lang/String;)I
    .registers 4
    .param p1, "sTag"  # Ljava/lang/String;

    .line 149
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->iTerrainTypesSize:I

    if-ge v0, v1, :cond_13

    .line 150
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 151
    return v0

    .line 149
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    .end local v0  # "i":I
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public final getTerrainsSize()I
    .registers 2

    .line 212
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->iTerrainTypesSize:I

    return v0
.end method

.method public final loadTerrainTypes()V
    .registers 16

    .line 51
    const-string v0, "terrain/"

    const-string v1, "UI/"

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainIcons:Ljava/util/List;

    if-eqz v2, :cond_26

    .line 52
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainIcons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 53
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainIcons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 54
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainIcons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 57
    .end local v2  # "i":I
    :cond_26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lNames:Ljava/util/List;

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainTags:Ljava/util/List;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainIcons:Ljava/util/List;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lColors:Ljava/util/List;

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lDefense:Ljava/util/List;

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lMilitaryUpkeep:Ljava/util/List;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lPopulationGrowth:Ljava/util/List;

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lEconomyGrowth:Ljava/util/List;

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lBuildCost:Ljava/util/List;

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lMovementCost:Ljava/util/List;

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lBaseDevelopment:Ljava/util/List;

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lBaseProvinceValue:Ljava/util/List;

    .line 73
    :try_start_7a
    const-string v2, "game/terrain_types/Age_of_Civilizations"

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 74
    .local v2, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "tempT":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "tagsSPLITED":[Ljava/lang/String;
    array-length v5, v4

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->iTerrainTypesSize:I

    .line 80
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->addSea()V

    .line 84
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_91
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->iTerrainTypesSize:I

    if-ge v5, v6, :cond_1db

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "game/terrain_types/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6
    :try_end_ae
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7a .. :try_end_ae} :catch_1dd

    .line 89
    .local v6, "fileData":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_ae
    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    .line 91
    .local v7, "tempData":Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lNames:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainTags:Ljava/util/List;

    aget-object v9, v4, v5

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lColors:Ljava/util/List;

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v10

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v11

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v12

    const v13, 0x3f0ccccd  # 0.55f

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lDefense:Ljava/util/List;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getDefensiveModifier()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lMilitaryUpkeep:Ljava/util/List;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getMilitaryUpkeepModifier()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lPopulationGrowth:Ljava/util/List;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getPopulationGrowthModifier()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lEconomyGrowth:Ljava/util/List;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getEconomyGrowthModifier()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lBuildCost:Ljava/util/List;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getBuildCostModifier()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lMovementCost:Ljava/util/List;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getMovementCost()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lBaseDevelopment:Ljava/util/List;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getBaseDevelopmentLevel()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lBaseProvinceValue:Ljava/util/List;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getBaseProvinceValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ae .. :try_end_15b} :catch_1d5
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_15b} :catch_1d3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_ae .. :try_end_15b} :catch_1dd

    .line 106
    const/4 v8, 0x1

    :try_start_15c
    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainIcons:Ljava/util/List;

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v11, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getIconName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    sget-object v13, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v11, v12, v13, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_15c .. :try_end_19a} :catch_19b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15c .. :try_end_19a} :catch_1d5
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_19a} :catch_1d3

    .line 109
    goto :goto_1d2

    .line 107
    :catch_19b
    move-exception v9

    .line 108
    .local v9, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_19c
    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lTerrainIcons:Ljava/util/List;

    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v12, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "notfound.png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    sget-object v14, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v12, v13, v14, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v11, v12, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19c .. :try_end_1d2} :catch_1d5
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_1d2} :catch_1d3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_19c .. :try_end_1d2} :catch_1dd

    .line 114
    .end local v9  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_1d2
    goto :goto_1d7

    .line 112
    .end local v7  # "tempData":Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;
    :catch_1d3
    move-exception v7

    goto :goto_1d7

    .line 110
    :catch_1d5
    move-exception v7

    .line 114
    nop

    .line 84
    .end local v6  # "fileData":Lcom/badlogic/gdx/files/FileHandle;
    :goto_1d7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_91

    .line 117
    .end local v5  # "i":I
    :cond_1db
    nop

    .line 120
    .end local v2  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "tempT":Ljava/lang/String;
    .end local v4  # "tagsSPLITED":[Ljava/lang/String;
    goto :goto_1de

    .line 118
    :catch_1dd
    move-exception v0

    .line 122
    :goto_1de
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->lNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->iTerrainTypesSize:I

    .line 123
    return-void
.end method

.method public final saveTerrainData()V
    .registers 11

    .line 161
    const-string v0, ";"

    const-string v1, "game/terrain_types/Age_of_Civilizations"

    const/4 v2, 0x0

    .line 164
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game/terrain_types/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 165
    .local v3, "fileData":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_28} :catch_81
    .catchall {:try_start_5 .. :try_end_28} :catchall_78

    .line 169
    :try_start_28
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .line 170
    .local v4, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "tempTags":Ljava/lang/String;
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_56

    .line 173
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 174
    .local v7, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_56
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_28 .. :try_end_56} :catch_57
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_56} :catch_81
    .catchall {:try_start_28 .. :try_end_56} :catchall_78

    .line 179
    .end local v4  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6  # "tempTags":Ljava/lang/String;
    .end local v7  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :cond_56
    goto :goto_72

    .line 176
    :catch_57
    move-exception v4

    .line 177
    .local v4, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_58
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 178
    .local v1, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_72} :catch_81
    .catchall {:try_start_58 .. :try_end_72} :catchall_78

    .line 183
    .end local v1  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "fileData":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_72
    if-eqz v2, :cond_8a

    .line 185
    :try_start_74
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_88

    goto :goto_87

    .line 183
    :catchall_78
    move-exception v0

    if-eqz v2, :cond_80

    .line 185
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 188
    goto :goto_80

    .line 186
    :catch_7f
    move-exception v1

    .line 190
    :cond_80
    :goto_80
    throw v0

    .line 180
    :catch_81
    move-exception v0

    .line 183
    if-eqz v2, :cond_8a

    .line 185
    :try_start_84
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    .line 188
    :goto_87
    goto :goto_8a

    .line 186
    :catch_88
    move-exception v0

    goto :goto_87

    .line 191
    :cond_8a
    :goto_8a
    return-void
.end method
