.class public Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;
.super Ljava/lang/Object;
.source "EventTemplatesMGR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;,
        Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;
    }
.end annotation


# static fields
.field public static bgTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static btnTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static eventTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->eventTemplates:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->bgTemplates:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->btnTemplates:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadEventTemplates()V
    .registers 20

    .line 24
    const-string v1, "/"

    const-string v2, "Template"

    const-string v3, "EventTemplates.json"

    const-string v4, "templates/"

    const-string v5, "events/"

    const-string v6, "UI/"

    const-string v7, "UI/events/templates/"

    const/4 v0, 0x0

    .line 25
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_f
    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v9, "UI/events/templates/EventTemplates.json"

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    move-object v0, v8

    .line 27
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 28
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v8

    .line 29
    .local v8, "fileContent":Ljava/lang/String;
    new-instance v9, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v9}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 31
    .local v9, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v10, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    const-class v11, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;

    invoke-virtual {v9, v10, v2, v11}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 32
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    invoke-direct {v10}, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;-><init>()V

    .line 33
    .local v10, "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    const-class v11, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    invoke-virtual {v9, v11, v8}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    move-object v10, v11

    .line 35
    iget-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;->Template:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_42
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 36
    .local v12, "e":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;

    .line 38
    .local v13, "tempData":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->eventTemplates:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->bgTemplates:Ljava/util/List;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v0, v13, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->BG_IMG:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v15, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-object/from16 v17, v8

    .end local v8  # "fileContent":Ljava/lang/String;
    .local v17, "fileContent":Ljava/lang/String;
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-object/from16 v18, v9

    .end local v9  # "json":Lcom/badlogic/gdx/utils/Json;
    .local v18, "json":Lcom/badlogic/gdx/utils/Json;
    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v15, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->btnTemplates:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v13, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->BUTTON_IMG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v14, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v15, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v8, v9, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_9e} :catch_af

    .line 42
    move-object/from16 v0, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    .end local v12  # "e":Ljava/lang/Object;
    .end local v13  # "tempData":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;
    goto :goto_42

    .line 35
    .end local v16  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "fileContent":Ljava/lang/String;
    .end local v18  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v0  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v8  # "fileContent":Ljava/lang/String;
    .restart local v9  # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_a5
    move-object/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    .end local v0  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v8  # "fileContent":Ljava/lang/String;
    .end local v9  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v16  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17  # "fileContent":Ljava/lang/String;
    .restart local v18  # "json":Lcom/badlogic/gdx/utils/Json;
    goto :goto_ae

    .line 27
    .end local v10  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    .end local v16  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "fileContent":Ljava/lang/String;
    .end local v18  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v0  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    :cond_ac
    move-object/from16 v16, v0

    .line 46
    .end local v0  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    :goto_ae
    goto :goto_b3

    .line 44
    :catch_af
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 49
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_b3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b4
    :try_start_b4
    sget v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFS:I

    if-ge v0, v8, :cond_2a4

    .line 50
    sget-boolean v8, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-eqz v8, :cond_1af

    .line 51
    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v8

    if-eqz v8, :cond_2a0

    .line 52
    const/4 v8, 0x0

    .line 53
    .local v8, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    move-object v8, v9

    .line 55
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "fileContent":Ljava/lang/String;
    new-instance v10, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 58
    .local v10, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v11, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    const-class v12, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;

    invoke-virtual {v10, v11, v2, v12}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 59
    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    invoke-direct {v11}, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;-><init>()V

    .line 60
    .local v11, "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    const-class v12, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    invoke-virtual {v10, v12, v9}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    move-object v11, v12

    .line 62
    iget-object v12, v11, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;->Template:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_13e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 63
    .local v13, "e":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;

    .line 65
    .local v14, "tempData":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->eventTemplates:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->bgTemplates:Ljava/util/List;

    move-object/from16 v16, v8

    .end local v8  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v17, v9

    .end local v9  # "fileContent":Ljava/lang/String;
    .restart local v17  # "fileContent":Ljava/lang/String;
    iget-object v9, v14, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->BG_IMG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-object/from16 v18, v10

    .end local v10  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v18  # "json":Lcom/badlogic/gdx/utils/Json;
    sget-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-object/from16 v19, v11

    .end local v11  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    .local v19, "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v8, v9, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->btnTemplates:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v14, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->BUTTON_IMG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v15, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v9, v10, v11, v15}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    .end local v13  # "e":Ljava/lang/Object;
    .end local v14  # "tempData":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;
    goto :goto_13e

    .line 62
    .end local v16  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "fileContent":Ljava/lang/String;
    .end local v18  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    .restart local v8  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v9  # "fileContent":Ljava/lang/String;
    .restart local v10  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v11  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    :cond_1a5
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 70
    .end local v8  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "fileContent":Ljava/lang/String;
    .end local v10  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v11  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    goto/16 :goto_2a0

    .line 73
    :cond_1af
    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v8

    if-eqz v8, :cond_2a0

    .line 74
    const/4 v8, 0x0

    .line 75
    .restart local v8  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    move-object v8, v9

    .line 77
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 78
    .restart local v9  # "fileContent":Ljava/lang/String;
    new-instance v10, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 80
    .restart local v10  # "json":Lcom/badlogic/gdx/utils/Json;
    const-class v11, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    const-class v12, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;

    invoke-virtual {v10, v11, v2, v12}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 81
    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    invoke-direct {v11}, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;-><init>()V

    .line 82
    .restart local v11  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    const-class v12, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    invoke-virtual {v10, v12, v9}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    move-object v11, v12

    .line 84
    iget-object v12, v11, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;->Template:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_231
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_298

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 85
    .restart local v13  # "e":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;

    .line 87
    .restart local v14  # "tempData":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->eventTemplates:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->bgTemplates:Ljava/util/List;

    move-object/from16 v16, v8

    .end local v8  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v17, v9

    .end local v9  # "fileContent":Ljava/lang/String;
    .restart local v17  # "fileContent":Ljava/lang/String;
    iget-object v9, v14, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->BG_IMG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-object/from16 v18, v10

    .end local v10  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v18  # "json":Lcom/badlogic/gdx/utils/Json;
    sget-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-object/from16 v19, v11

    .end local v11  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    .restart local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v8, v9, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->btnTemplates:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v14, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->BUTTON_IMG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v15, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v9, v10, v11, v15}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28f
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_28f} :catch_2a5

    .line 91
    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    .end local v13  # "e":Ljava/lang/Object;
    .end local v14  # "tempData":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;
    goto :goto_231

    .line 84
    .end local v16  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "fileContent":Ljava/lang/String;
    .end local v18  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v19  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    .restart local v8  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v9  # "fileContent":Ljava/lang/String;
    .restart local v10  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v11  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    :cond_298
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 49
    .end local v8  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "fileContent":Ljava/lang/String;
    .end local v10  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v11  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    :cond_2a0
    :goto_2a0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b4

    .line 97
    .end local v0  # "i":I
    :cond_2a4
    goto :goto_2a9

    .line 95
    :catch_2a5
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 100
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2a9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2aa
    :try_start_2aa
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_3c8

    .line 101
    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v10}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v8

    if-eqz v8, :cond_3b4

    .line 102
    const/4 v8, 0x0

    .line 103
    .restart local v8  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v11}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    move-object v8, v9

    .line 105
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 106
    .restart local v9  # "fileContent":Ljava/lang/String;
    new-instance v10, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 108
    .restart local v10  # "json":Lcom/badlogic/gdx/utils/Json;
    const-class v11, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    const-class v12, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;

    invoke-virtual {v10, v11, v2, v12}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 109
    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    invoke-direct {v11}, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;-><init>()V

    .line 110
    .restart local v11  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    const-class v12, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    invoke-virtual {v10, v12, v9}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;

    move-object v11, v12

    .line 112
    iget-object v12, v11, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;->Template:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_344
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3ab

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 113
    .restart local v13  # "e":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;

    .line 115
    .restart local v14  # "tempData":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->eventTemplates:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->bgTemplates:Ljava/util/List;

    move-object/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v17, v2

    iget-object v2, v14, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->BG_IMG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-object/from16 v18, v3

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-object/from16 v19, v4

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;->btnTemplates:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->BUTTON_IMG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v15, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v2, v3, v4, v15}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a2
    .catch Ljava/lang/Exception; {:try_start_2aa .. :try_end_3a2} :catch_3c9

    .line 119
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    .end local v13  # "e":Ljava/lang/Object;
    .end local v14  # "tempData":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;
    goto :goto_344

    .line 112
    :cond_3ab
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    goto :goto_3bc

    .line 101
    .end local v8  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "fileContent":Ljava/lang/String;
    .end local v10  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v11  # "data":Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$ConfigTemplatesData;
    :cond_3b4
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 100
    :goto_3bc
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_2aa

    .line 124
    .end local v0  # "i":I
    :cond_3c8
    goto :goto_3cd

    .line 122
    :catch_3c9
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 125
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_3cd
    return-void
.end method
