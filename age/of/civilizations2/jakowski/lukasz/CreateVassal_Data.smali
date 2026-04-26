.class public Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;
.super Ljava/lang/Object;
.source "CreateVassal_Data.java"


# instance fields
.field private flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;

.field private flagOfCivilizationH:Lage/of/civilizations2/jakowski/lukasz/Image;

.field public iCapitalProvinceID:I

.field public oColor:Lcom/badlogic/gdx/graphics/Color;

.field public playAsVassal:Z

.field public sCivTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->iCapitalProvinceID:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    .line 21
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->oColor:Lcom/badlogic/gdx/graphics/Color;

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->playAsVassal:Z

    .line 27
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 28
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilizationH:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 3

    .line 129
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilizationH:Lage/of/civilizations2/jakowski/lukasz/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 130
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 131
    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilizationH:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 134
    :cond_e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_1b

    .line 135
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 136
    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 138
    :cond_1b
    return-void
.end method

.method public final getFlagOfCiv()Lage/of/civilizations2/jakowski/lukasz/Image;
    .registers 2

    .line 115
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method public final getFlagOfCivH()Lage/of/civilizations2/jakowski/lukasz/Image;
    .registers 2

    .line 119
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilizationH:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-nez v0, :cond_7

    .line 120
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0

    .line 122
    :cond_7
    return-object v0
.end method

.method public final loadFlag()V
    .registers 15

    .line 39
    const-string v0, "game/flags/"

    const-string v1, "game/flagsH/"

    const-string v2, "game/flagsXH/"

    const-string v3, "/"

    const-string v4, "game/civilizations_editor/"

    const-string v5, ".png"

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->dispose()V

    .line 41
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    if-nez v6, :cond_14

    .line 42
    return-void

    .line 47
    :cond_14
    :try_start_14
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilizationH:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_3d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_14 .. :try_end_3d} :catch_45
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3d} :catch_42
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_3d} :catch_3f

    .line 71
    goto/16 :goto_1a8

    .line 74
    :catch_3f
    move-exception v1

    goto/16 :goto_1a1

    .line 72
    :catch_42
    move-exception v1

    goto/16 :goto_1a5

    .line 48
    :catch_45
    move-exception v6

    .line 51
    .local v6, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_46
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v7, v8, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilizationH:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_75} :catch_78
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_46 .. :try_end_75} :catch_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_46 .. :try_end_75} :catch_3f

    .line 58
    goto :goto_d3

    .line 59
    :catch_76
    move-exception v1

    goto :goto_d5

    .line 52
    :catch_78
    move-exception v1

    .line 54
    .local v1, "exr":Ljava/lang/Exception;
    :try_start_79
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilizationH:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_a2} :catch_a3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_79 .. :try_end_a2} :catch_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_79 .. :try_end_a2} :catch_3f

    .line 57
    goto :goto_d3

    .line 55
    :catch_a3
    move-exception v7

    .line 56
    .local v7, "exrrr":Ljava/lang/Exception;
    :try_start_a4
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v9, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v12, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilizationH:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_d3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a4 .. :try_end_d3} :catch_76
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_d3} :catch_42
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a4 .. :try_end_d3} :catch_3f

    .line 70
    .end local v1  # "exr":Ljava/lang/Exception;
    .end local v7  # "exrrr":Ljava/lang/Exception;
    :goto_d3
    goto/16 :goto_1a8

    .line 60
    .local v1, "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_d5
    :try_start_d5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v7
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d9} :catch_42
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d5 .. :try_end_d9} :catch_3f

    const-string v8, "_FLH.png"

    if-eqz v7, :cond_161

    .line 62
    :try_start_dd
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v9, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v10, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v13, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v13, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v7, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilizationH:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_11e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_dd .. :try_end_11e} :catch_120
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_11e} :catch_42
    .catch Ljava/lang/OutOfMemoryError; {:try_start_dd .. :try_end_11e} :catch_3f

    .line 65
    :goto_11e
    goto/16 :goto_1a8

    .line 63
    :catch_120
    move-exception v7

    .line 64
    .local v7, "eq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_121
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v10, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v13, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v13, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v9, v10, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilizationH:Lage/of/civilizations2/jakowski/lukasz/Image;

    .end local v7  # "eq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    goto :goto_11e

    .line 68
    :cond_161
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v9, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v12, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v12, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v7, v9, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilizationH:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_1a0} :catch_42
    .catch Ljava/lang/OutOfMemoryError; {:try_start_121 .. :try_end_1a0} :catch_3f

    goto :goto_1a8

    .line 75
    .end local v6  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :goto_1a1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->dispose()V

    goto :goto_1a9

    .line 73
    .local v1, "ex":Ljava/lang/Exception;
    :goto_1a5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->dispose()V

    .line 76
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_1a8
    nop

    .line 80
    :goto_1a9
    :try_start_1a9
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v1, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_1d2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1a9 .. :try_end_1d2} :catch_1d7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a9 .. :try_end_1d2} :catch_1d4

    .line 104
    goto/16 :goto_33b

    .line 107
    :catch_1d4
    move-exception v0

    goto/16 :goto_333

    .line 81
    :catch_1d7
    move-exception v1

    .line 84
    .local v1, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_1d8
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v6, v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_207} :catch_20a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1d8 .. :try_end_207} :catch_208
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d8 .. :try_end_207} :catch_1d4

    .line 91
    goto :goto_265

    .line 92
    :catch_208
    move-exception v0

    goto :goto_267

    .line 85
    :catch_20a
    move-exception v0

    .line 87
    .local v0, "exr":Ljava/lang/Exception;
    :try_start_20b
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_234} :catch_235
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_20b .. :try_end_234} :catch_208
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20b .. :try_end_234} :catch_1d4

    .line 90
    goto :goto_265

    .line 88
    :catch_235
    move-exception v6

    .line 89
    .local v6, "exrr":Ljava/lang/Exception;
    :try_start_236
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v7, v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_265
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_236 .. :try_end_265} :catch_208
    .catch Ljava/lang/OutOfMemoryError; {:try_start_236 .. :try_end_265} :catch_1d4

    .line 103
    .end local v0  # "exr":Ljava/lang/Exception;
    .end local v6  # "exrr":Ljava/lang/Exception;
    :goto_265
    goto/16 :goto_33b

    .line 93
    .local v0, "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_267
    :try_start_267
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v2
    :try_end_26b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_267 .. :try_end_26b} :catch_337
    .catch Ljava/lang/OutOfMemoryError; {:try_start_267 .. :try_end_26b} :catch_1d4

    const-string v5, "_FL.png"

    if-eqz v2, :cond_2f3

    .line 95
    :try_start_26f
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_2b0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_26f .. :try_end_2b0} :catch_2b2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26f .. :try_end_2b0} :catch_1d4

    .line 98
    :goto_2b0
    goto/16 :goto_33b

    .line 96
    :catch_2b2
    move-exception v2

    .line 97
    .local v2, "eq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_2b3
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v6, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;

    .end local v2  # "eq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    goto :goto_2b0

    .line 101
    :cond_2f3
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->flagOfCivilization:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_332
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2b3 .. :try_end_332} :catch_337
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b3 .. :try_end_332} :catch_1d4

    goto :goto_33b

    .line 108
    .end local v1  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :goto_333
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->dispose()V

    goto :goto_33c

    .line 105
    .end local v0  # "e":Ljava/lang/OutOfMemoryError;
    :catch_337
    move-exception v0

    .line 106
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->dispose()V

    .line 109
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_33b
    nop

    .line 110
    :goto_33c
    return-void
.end method

.method public final setCivTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "nTag"  # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->sCivTag:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->loadFlag()V

    .line 36
    return-void
.end method
