.class public Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;
.super Ljava/lang/Object;
.source "UnionFlagsToGenerate.java"


# instance fields
.field public iID:I

.field public lTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public typeOfAction:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->iID:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    .line 27
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->ACTIVE_CIV_INFO:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->typeOfAction:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    return-void
.end method


# virtual methods
.method public final generateFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)Z
    .registers 23
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 31
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v2, "game/flags/"

    const-string v3, "game/flagsH/"

    const-string v4, "/"

    const-string v5, "game/civilizations_editor/"

    const-string v6, "game/flagsXH/"

    const-string v7, ".png"

    :try_start_10
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v10, "tempFlags":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Image;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_16
    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_4b1

    .line 34
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v12

    if-eqz v12, :cond_7d

    .line 35
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v13, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v14, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v12, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v6

    goto/16 :goto_4a7

    .line 37
    :cond_7d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v12

    if-eqz v12, :cond_e8

    .line 38
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v13, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-direct {v13, v9}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v12, v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_e0} :catch_762

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v6

    goto/16 :goto_4a7

    .line 43
    :cond_e8
    :try_start_e8
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v12, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v13, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v9, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_118
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_e8 .. :try_end_118} :catch_125
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e8 .. :try_end_118} :catch_11e
    .catch Ljava/lang/RuntimeException; {:try_start_e8 .. :try_end_118} :catch_762

    .line 69
    move-object/from16 v16, v3

    move-object/from16 v18, v6

    goto/16 :goto_2f1

    .line 93
    :catch_11e
    move-exception v0

    move-object/from16 v16, v3

    :goto_121
    move-object/from16 v18, v6

    goto/16 :goto_2f9

    .line 44
    :catch_125
    move-exception v0

    move-object v9, v0

    .line 48
    .local v9, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_127
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v13, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_136} :catch_168
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_127 .. :try_end_136} :catch_162
    .catch Ljava/lang/OutOfMemoryError; {:try_start_127 .. :try_end_136} :catch_11e
    .catch Ljava/lang/RuntimeException; {:try_start_127 .. :try_end_136} :catch_762

    move-object/from16 v16, v3

    :try_start_138
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v13, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v12, v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_15f} :catch_160
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_138 .. :try_end_15f} :catch_19f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_138 .. :try_end_15f} :catch_19d
    .catch Ljava/lang/RuntimeException; {:try_start_138 .. :try_end_15f} :catch_762

    .line 51
    goto :goto_19c

    .line 49
    :catch_160
    move-exception v0

    goto :goto_16b

    .line 57
    :catch_162
    move-exception v0

    move-object/from16 v16, v3

    :goto_165
    move-object v3, v0

    goto/16 :goto_1df

    .line 49
    :catch_168
    move-exception v0

    move-object/from16 v16, v3

    :goto_16b
    move-object v3, v0

    .line 50
    .local v3, "exr":Ljava/lang/Exception;
    :try_start_16c
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v13, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v14, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v12, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_19c} :catch_1a1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_16c .. :try_end_19c} :catch_19f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16c .. :try_end_19c} :catch_19d
    .catch Ljava/lang/RuntimeException; {:try_start_16c .. :try_end_19c} :catch_762

    .line 54
    .end local v3  # "exr":Ljava/lang/Exception;
    :goto_19c
    goto :goto_1db

    .line 93
    .end local v9  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :catch_19d
    move-exception v0

    goto :goto_121

    .line 57
    .restart local v9  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :catch_19f
    move-exception v0

    goto :goto_165

    .line 52
    :catch_1a1
    move-exception v0

    move-object v3, v0

    .line 53
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1a3
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v13, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    move-object/from16 v17, v3

    .end local v3  # "ex":Ljava/lang/Exception;
    .local v17, "ex":Ljava/lang/Exception;
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v13, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v12, v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1db
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1a3 .. :try_end_1db} :catch_19f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a3 .. :try_end_1db} :catch_19d
    .catch Ljava/lang/RuntimeException; {:try_start_1a3 .. :try_end_1db} :catch_762

    .line 68
    .end local v17  # "ex":Ljava/lang/Exception;
    :goto_1db
    move-object/from16 v18, v6

    goto/16 :goto_2f1

    .line 58
    .local v3, "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_1df
    :try_start_1df
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v12
    :try_end_1e3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1df .. :try_end_1e3} :catch_2fd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1df .. :try_end_1e3} :catch_19d
    .catch Ljava/lang/RuntimeException; {:try_start_1df .. :try_end_1e3} :catch_762

    const-string v13, "_FLH.png"

    if-eqz v12, :cond_29f

    .line 60
    :try_start_1e7
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v14, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v15, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    :try_end_1ed
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1e7 .. :try_end_1ed} :catch_249
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e7 .. :try_end_1ed} :catch_19d
    .catch Ljava/lang/RuntimeException; {:try_start_1e7 .. :try_end_1ed} :catch_762

    move-object/from16 v17, v3

    .end local v3  # "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v17, "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_1ef
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_1f8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1ef .. :try_end_1f8} :catch_242
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1ef .. :try_end_1f8} :catch_19d
    .catch Ljava/lang/RuntimeException; {:try_start_1ef .. :try_end_1f8} :catch_762

    move-object/from16 v18, v6

    :try_start_1fa
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;
    :try_end_1fc
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1fa .. :try_end_1fc} :catch_240
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1fa .. :try_end_1fc} :catch_2f5
    .catch Ljava/lang/RuntimeException; {:try_start_1fa .. :try_end_1fc} :catch_762

    move-object/from16 v19, v9

    .end local v9  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v19, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_1fe
    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v14, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v12, v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1fe .. :try_end_23b} :catch_23d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1fe .. :try_end_23b} :catch_2f5
    .catch Ljava/lang/RuntimeException; {:try_start_1fe .. :try_end_23b} :catch_762

    .line 63
    goto/16 :goto_2f1

    .line 61
    :catch_23d
    move-exception v0

    move-object v3, v0

    goto :goto_251

    .end local v19  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v9  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :catch_240
    move-exception v0

    goto :goto_245

    :catch_242
    move-exception v0

    move-object/from16 v18, v6

    :goto_245
    move-object/from16 v19, v9

    move-object v3, v0

    .end local v9  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v19  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    goto :goto_251

    .end local v17  # "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v19  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v3  # "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v9  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :catch_249
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    move-object v3, v0

    .line 62
    .end local v9  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v3, "erq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v17  # "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v19  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_251
    :try_start_251
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v9, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v6, v9, v12}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    nop

    .end local v3  # "erq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    goto :goto_2f1

    .line 66
    .end local v17  # "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v19  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v3, "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v9  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :cond_29f
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    .end local v3  # "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v9  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v17  # "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v19  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v14}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v14}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_251 .. :try_end_2f1} :catch_2f7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_251 .. :try_end_2f1} :catch_2f5
    .catch Ljava/lang/RuntimeException; {:try_start_251 .. :try_end_2f1} :catch_762

    .line 95
    .end local v17  # "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v19  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_2f1
    move-object/from16 v17, v2

    goto/16 :goto_4a7

    .line 93
    :catch_2f5
    move-exception v0

    goto :goto_2f9

    .line 70
    :catch_2f7
    move-exception v0

    goto :goto_300

    .line 93
    :goto_2f9
    move-object/from16 v17, v2

    goto/16 :goto_4a7

    .line 70
    :catch_2fd
    move-exception v0

    move-object/from16 v18, v6

    :goto_300
    move-object v3, v0

    .line 73
    .local v3, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_301
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v9, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v6, v9, v12}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_331
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_301 .. :try_end_331} :catch_337
    .catch Ljava/lang/RuntimeException; {:try_start_301 .. :try_end_331} :catch_762

    .line 89
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    goto/16 :goto_487

    .line 74
    :catch_337
    move-exception v0

    move-object v6, v0

    .line 76
    .local v6, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_339
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v12, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v13, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v9, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_339 .. :try_end_36f} :catch_375
    .catch Ljava/lang/RuntimeException; {:try_start_339 .. :try_end_36f} :catch_762

    .line 88
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    goto/16 :goto_487

    .line 77
    :catch_375
    move-exception v0

    move-object v9, v0

    .line 78
    .local v9, "exw":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_377
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v12
    :try_end_37b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_377 .. :try_end_37b} :catch_48b
    .catch Ljava/lang/RuntimeException; {:try_start_377 .. :try_end_37b} :catch_762

    const-string v13, "_FL.png"

    if-eqz v12, :cond_435

    .line 80
    :try_start_37f
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v14, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v15, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    :try_end_385
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_37f .. :try_end_385} :catch_3df
    .catch Ljava/lang/RuntimeException; {:try_start_37f .. :try_end_385} :catch_762

    move-object/from16 v17, v2

    :try_start_387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_390
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_387 .. :try_end_390} :catch_3dd
    .catch Ljava/lang/RuntimeException; {:try_start_387 .. :try_end_390} :catch_762

    move-object/from16 v19, v3

    .end local v3  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v19, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_392
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;
    :try_end_394
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_392 .. :try_end_394} :catch_3d8
    .catch Ljava/lang/RuntimeException; {:try_start_392 .. :try_end_394} :catch_762

    move-object/from16 v20, v6

    .end local v6  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v20, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_396
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v12, v14, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_396 .. :try_end_3d3} :catch_3d5
    .catch Ljava/lang/RuntimeException; {:try_start_396 .. :try_end_3d3} :catch_762

    .line 83
    goto/16 :goto_487

    .line 81
    :catch_3d5
    move-exception v0

    move-object v2, v0

    goto :goto_3e7

    .end local v20  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v6  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :catch_3d8
    move-exception v0

    move-object/from16 v20, v6

    move-object v2, v0

    .end local v6  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v20  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    goto :goto_3e7

    .end local v19  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v20  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v3  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v6  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :catch_3dd
    move-exception v0

    goto :goto_3e2

    :catch_3df
    move-exception v0

    move-object/from16 v17, v2

    :goto_3e2
    move-object/from16 v19, v3

    move-object/from16 v20, v6

    move-object v2, v0

    .line 82
    .end local v3  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v6  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v2, "erq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v19  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v20  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_3e7
    :try_start_3e7
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    nop

    .end local v2  # "erq":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    goto :goto_487

    .line 86
    .end local v19  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v20  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v3  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v6  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :cond_435
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    .end local v3  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v6  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v19  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v20  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v14}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v14}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_487
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3e7 .. :try_end_487} :catch_488
    .catch Ljava/lang/RuntimeException; {:try_start_3e7 .. :try_end_487} :catch_762

    .line 92
    .end local v9  # "exw":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v20  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_487
    goto :goto_4a6

    .line 90
    :catch_488
    move-exception v0

    move-object v2, v0

    goto :goto_491

    .end local v19  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v3  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :catch_48b
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object v2, v0

    .line 91
    .end local v3  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v2, "exe":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v19  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_491
    :try_start_491
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    const-string v9, "game/flagsXH/ran.png"

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v2  # "exe":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v19  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_4a6
    nop

    .line 33
    :goto_4a7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    move-object/from16 v6, v18

    goto/16 :goto_16

    .line 99
    .end local v11  # "i":I
    :cond_4b1
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->typeOfAction:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->CIV_ID_SMALL:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    const v9, 0x84c0

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/16 v13, 0x9a

    const/4 v14, 0x1

    const/16 v15, 0x64

    if-ne v2, v3, :cond_58f

    .line 100
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 101
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    const/4 v4, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/16 v6, 0x9a

    const/16 v7, 0x64

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 102
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 104
    const/4 v2, 0x0

    move v7, v2

    .local v7, "i":I
    :goto_4e7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_537

    if-ge v7, v12, :cond_537

    .line 105
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha4:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 106
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags_H:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 107
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 108
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 110
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags_H:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x1

    move-object/from16 v3, p1

    move/from16 v17, v7

    .end local v7  # "i":I
    .local v17, "i":I
    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 111
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 104
    add-int/lit8 v7, v17, 0x1

    .end local v17  # "i":I
    .restart local v7  # "i":I
    goto :goto_4e7

    :cond_537
    move/from16 v17, v7

    .line 114
    .end local v7  # "i":I
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int/2addr v4, v15

    const/4 v5, 0x0

    invoke-static {v5, v4, v13, v15}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 116
    .local v2, "tGenerated":Lage/of/civilizations2/jakowski/lukasz/Image;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_554
    .catch Ljava/lang/RuntimeException; {:try_start_491 .. :try_end_554} :catch_762

    .line 119
    :try_start_554
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 120
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_55a
    .catch Ljava/lang/IllegalStateException; {:try_start_554 .. :try_end_55a} :catch_55b
    .catch Ljava/lang/RuntimeException; {:try_start_554 .. :try_end_55a} :catch_762

    .line 123
    goto :goto_55c

    .line 121
    :catch_55b
    move-exception v0

    .line 124
    :goto_55c
    :try_start_55c
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 126
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 128
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 129
    const/4 v2, 0x0

    .line 131
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int/2addr v5, v15

    const/4 v6, 0x0

    invoke-static {v6, v5, v13, v15}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object v2, v3

    .line 133
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->iID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setFlag(Lage/of/civilizations2/jakowski/lukasz/Image;)V

    .line 134
    .end local v2  # "tGenerated":Lage/of/civilizations2/jakowski/lukasz/Image;
    goto/16 :goto_746

    .line 135
    :cond_58f
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->typeOfAction:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->ACTIVE_CIV_INFO:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    if-ne v2, v3, :cond_65b

    .line 136
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 137
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    const/4 v4, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/16 v6, 0x9a

    const/16 v7, 0x64

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 138
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 140
    const/4 v2, 0x0

    move v7, v2

    .restart local v7  # "i":I
    :goto_5bb
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_60b

    if-ge v7, v12, :cond_60b

    .line 141
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha4:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 142
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags_H:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 143
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 144
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 146
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags_H:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x1

    move-object/from16 v3, p1

    move/from16 v17, v7

    .end local v7  # "i":I
    .restart local v17  # "i":I
    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 147
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 140
    add-int/lit8 v7, v17, 0x1

    .end local v17  # "i":I
    .restart local v7  # "i":I
    goto :goto_5bb

    :cond_60b
    move/from16 v17, v7

    .line 150
    .end local v7  # "i":I
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int/2addr v4, v15

    const/4 v5, 0x0

    invoke-static {v5, v4, v13, v15}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 152
    .restart local v2  # "tGenerated":Lage/of/civilizations2/jakowski/lukasz/Image;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_628
    .catch Ljava/lang/RuntimeException; {:try_start_55c .. :try_end_628} :catch_762

    .line 155
    :try_start_628
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 156
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_62e
    .catch Ljava/lang/IllegalStateException; {:try_start_628 .. :try_end_62e} :catch_62f
    .catch Ljava/lang/RuntimeException; {:try_start_628 .. :try_end_62e} :catch_762

    .line 159
    goto :goto_630

    .line 157
    :catch_62f
    move-exception v0

    .line 160
    :goto_630
    :try_start_630
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 162
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 164
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 165
    const/4 v2, 0x0

    .line 167
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int/2addr v5, v15

    const/4 v6, 0x0

    invoke-static {v6, v5, v13, v15}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object v2, v3

    .line 169
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setActiveCivInfoFlag(Lage/of/civilizations2/jakowski/lukasz/Image;)V

    .line 170
    .end local v2  # "tGenerated":Lage/of/civilizations2/jakowski/lukasz/Image;
    goto/16 :goto_746

    .line 171
    :cond_65b
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->typeOfAction:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->PLAYER_ID:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    if-ne v2, v3, :cond_746

    .line 172
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 173
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    const/4 v4, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/16 v6, 0x9a

    const/16 v7, 0x64

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 174
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 176
    const/4 v2, 0x0

    move v7, v2

    .restart local v7  # "i":I
    :goto_687
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_6d7

    if-ge v7, v12, :cond_6d7

    .line 177
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha4:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 178
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags_H:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 179
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 180
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 182
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags_H:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x1

    move-object/from16 v3, p1

    move/from16 v17, v7

    .end local v7  # "i":I
    .restart local v17  # "i":I
    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 183
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 176
    add-int/lit8 v7, v17, 0x1

    .end local v17  # "i":I
    .restart local v7  # "i":I
    goto :goto_687

    :cond_6d7
    move/from16 v17, v7

    .line 186
    .end local v7  # "i":I
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int/2addr v4, v15

    const/4 v5, 0x0

    invoke-static {v5, v4, v13, v15}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 188
    .restart local v2  # "tGenerated":Lage/of/civilizations2/jakowski/lukasz/Image;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_6f4
    .catch Ljava/lang/RuntimeException; {:try_start_630 .. :try_end_6f4} :catch_762

    .line 191
    :try_start_6f4
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 192
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_6fa
    .catch Ljava/lang/IllegalStateException; {:try_start_6f4 .. :try_end_6fa} :catch_6fb
    .catch Ljava/lang/RuntimeException; {:try_start_6f4 .. :try_end_6fa} :catch_762

    .line 195
    goto :goto_6fc

    .line 193
    :catch_6fb
    move-exception v0

    .line 196
    :goto_6fc
    :try_start_6fc
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 198
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 200
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 201
    const/4 v2, 0x0

    .line 203
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int/2addr v5, v15

    const/4 v6, 0x0

    invoke-static {v6, v5, v13, v15}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object v2, v3

    .line 205
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_723
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v4

    if-ge v3, v4, :cond_746

    .line 206
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->iID:I

    if-ne v4, v5, :cond_743

    .line 207
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->loadPlayersFlag(Lage/of/civilizations2/jakowski/lukasz/Image;)V

    .line 208
    goto :goto_746

    .line 205
    :cond_743
    add-int/lit8 v3, v3, 0x1

    goto :goto_723

    .line 214
    .end local v2  # "tGenerated":Lage/of/civilizations2/jakowski/lukasz/Image;
    .end local v3  # "i":I
    :cond_746
    :goto_746
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_747
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_75d

    .line 215
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_747

    .line 217
    .end local v2  # "i":I
    :cond_75d
    invoke-interface {v10}, Ljava/util/List;->clear()V
    :try_end_760
    .catch Ljava/lang/RuntimeException; {:try_start_6fc .. :try_end_760} :catch_762

    .line 218
    const/4 v2, 0x0

    .line 220
    .end local v10  # "tempFlags":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Image;>;"
    .local v2, "tempFlags":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Image;>;"
    return v14

    .line 221
    .end local v2  # "tempFlags":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Image;>;"
    :catch_762
    move-exception v0

    move-object v2, v0

    .line 222
    .local v2, "ex":Ljava/lang/RuntimeException;
    const/4 v3, 0x0

    return v3
.end method
