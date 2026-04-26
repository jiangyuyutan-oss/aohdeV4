.class public Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;
.super Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;
.source "Editor_TerrainType.java"


# static fields
.field public static currentTerrainTypeID:I

.field public static lUndo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->currentTerrainTypeID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->lUndo:Ljava/util/List;

    .line 56
    return-void
.end method

.method public static final actionSave(Z)V
    .registers 3
    .param p0, "addUndo"  # Z

    .line 85
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v0

    if-ltz v0, :cond_41

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v0

    if-nez v0, :cond_41

    .line 87
    if-eqz p0, :cond_25

    .line 88
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->addUndo(I)V

    .line 90
    :cond_25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->currentTerrainTypeID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setTerrainTypeID(I)V

    .line 92
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->saveProvince_Info_GameData(I)V

    .line 94
    :cond_41
    return-void
.end method

.method private static final addUndo(I)V
    .registers 4
    .param p0, "nProvinceID"  # I

    .line 18
    if-gez p0, :cond_3

    .line 19
    return-void

    .line 22
    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_65

    .line 23
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;->iProvinceID:I

    if-eq v0, p0, :cond_87

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->currentTerrainTypeID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v1

    if-eq v0, v1, :cond_87

    .line 24
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_50

    .line 25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->lUndo:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 26
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->lUndo:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 29
    :cond_50
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->lUndo:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 33
    :cond_65
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->currentTerrainTypeID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v1

    if-eq v0, v1, :cond_87

    .line 34
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->lUndo:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_87
    :goto_87
    return-void
.end method

.method public static popUndo()V
    .registers 3

    .line 39
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5f

    .line 40
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->lUndo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;->iProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setActiveProvID(I)V

    .line 41
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoTerrain;->iTerrainID:I

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->currentTerrainTypeID:I

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->actionSave(Z)V

    .line 44
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProv()Z

    move-result v0

    if-nez v0, :cond_54

    .line 45
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->centerToProvID(I)V

    .line 48
    :cond_54
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    :cond_5f
    return-void
.end method


# virtual methods
.method public keyDown(I)V
    .registers 5
    .param p1, "keycode"  # I

    .line 63
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x15

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    .line 64
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->currentTerrainTypeID:I

    sub-int/2addr v0, v1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->currentTerrainTypeID:I

    .line 66
    if-ge v0, v1, :cond_1b

    .line 67
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getTerrainsSize()I

    move-result v0

    sub-int/2addr v0, v1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->currentTerrainTypeID:I

    .line 71
    :cond_1b
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v2, 0x16

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 72
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->currentTerrainTypeID:I

    add-int/2addr v0, v1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->currentTerrainTypeID:I

    .line 74
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getTerrainsSize()I

    move-result v2

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_35

    .line 75
    sput v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->currentTerrainTypeID:I

    .line 79
    :cond_35
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v2, 0x3e

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 80
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->actionSave(Z)V

    .line 82
    :cond_42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TERRAIN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;->currentTerrainTypeID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
