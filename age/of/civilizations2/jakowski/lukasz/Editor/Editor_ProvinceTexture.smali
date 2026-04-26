.class public Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;
.super Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;
.source "Editor_ProvinceTexture.java"


# instance fields
.field private button:I

.field private iBrushScale:I

.field private theDoubleMode:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->iBrushScale:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->theDoubleMode:Z

    return-void
.end method

.method private final dragged(IIIZ)V
    .registers 22
    .param p1, "provID"  # I
    .param p2, "screenX"  # I
    .param p3, "screenY"  # I
    .param p4, "type"  # Z

    .line 297
    move/from16 v0, p1

    if-ltz v0, :cond_1e9

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "data/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "scales/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "provinces/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v1

    .line 300
    .local v1, "wtf":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v7, 0x0

    .line 302
    .local v7, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    move/from16 v8, p2

    int-to-float v9, v8

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v10

    div-float/2addr v9, v10

    float-to-int v8, v9

    .line 303
    .end local p2  # "screenX":I
    .local v8, "screenX":I
    move/from16 v9, p3

    int-to-float v10, v9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v11

    div-float/2addr v10, v11

    float-to-int v9, v10

    .line 305
    .end local p3  # "screenY":I
    .local v9, "screenY":I
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_6f
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_193

    .line 306
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_76
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v12

    if-ge v11, v12, :cond_18b

    .line 307
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v12

    sub-int v12, v8, v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getSecondSideOfMap()Z

    move-result v13

    if-eqz v13, :cond_9f

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v13

    goto :goto_a0

    :cond_9f
    const/4 v13, 0x0

    :goto_a0
    sub-int/2addr v12, v13

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v13

    sub-int/2addr v12, v13

    if-ne v11, v12, :cond_17f

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 308
    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v12

    sub-int v12, v9, v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v13

    sub-int/2addr v12, v13

    if-ne v10, v12, :cond_17a

    .line 310
    const/high16 v12, 0x3f800000  # 1.0f

    if-eqz p4, :cond_11b

    .line 311
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    invoke-static {v13}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v7

    .line 313
    new-instance v13, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 314
    invoke-virtual {v7, v11, v10}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    move/from16 p2, v8

    goto/16 :goto_185

    .line 316
    :cond_11b
    new-instance v13, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v15, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v14, 0x1

    invoke-direct {v13, v14, v14, v15}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 317
    .local v13, "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 318
    const/4 v14, 0x0

    invoke-virtual {v13, v14, v14}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    .line 320
    new-instance v14, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v15

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v12

    move-object/from16 v16, v7

    .end local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v16, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v7, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v14, v15, v12, v7}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v7, v14

    .line 322
    .end local v16  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v14, 0x3f800000  # 1.0f

    invoke-direct {v12, v14, v14, v14, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 326
    const/4 v12, 0x0

    .local v12, "yi":I
    :goto_14c
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v14

    if-ge v12, v14, :cond_177

    .line 327
    const/4 v14, 0x0

    .local v14, "xi":I
    :goto_153
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v15

    if-ge v14, v15, :cond_172

    .line 328
    move/from16 p2, v8

    const/4 v15, 0x0

    .end local v8  # "screenX":I
    .restart local p2  # "screenX":I
    invoke-virtual {v13, v15, v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v8

    invoke-virtual {v1, v14, v12}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v15

    if-ne v8, v15, :cond_16d

    .line 329
    if-ne v14, v11, :cond_16a

    if-eq v12, v10, :cond_16d

    .line 330
    :cond_16a
    invoke-virtual {v7, v14, v12}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    .line 327
    :cond_16d
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, p2

    goto :goto_153

    .end local p2  # "screenX":I
    .restart local v8  # "screenX":I
    :cond_172
    move/from16 p2, v8

    .line 326
    .end local v8  # "screenX":I
    .end local v14  # "xi":I
    .restart local p2  # "screenX":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_14c

    .end local p2  # "screenX":I
    .restart local v8  # "screenX":I
    :cond_177
    move/from16 p2, v8

    .end local v8  # "screenX":I
    .restart local p2  # "screenX":I
    goto :goto_185

    .line 308
    .end local v12  # "yi":I
    .end local v13  # "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local p2  # "screenX":I
    .restart local v8  # "screenX":I
    :cond_17a
    move-object/from16 v16, v7

    move/from16 p2, v8

    .end local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v8  # "screenX":I
    .restart local v16  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local p2  # "screenX":I
    goto :goto_183

    .line 307
    .end local v16  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local p2  # "screenX":I
    .restart local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v8  # "screenX":I
    :cond_17f
    move-object/from16 v16, v7

    move/from16 p2, v8

    .line 306
    .end local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v8  # "screenX":I
    .restart local v16  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local p2  # "screenX":I
    :goto_183
    move-object/from16 v7, v16

    .end local v16  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :goto_185
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, p2

    goto/16 :goto_76

    .end local p2  # "screenX":I
    .restart local v8  # "screenX":I
    :cond_18b
    move-object/from16 v16, v7

    move/from16 p2, v8

    .line 305
    .end local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v8  # "screenX":I
    .end local v11  # "x":I
    .restart local v16  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local p2  # "screenX":I
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6f

    .end local v16  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local p2  # "screenX":I
    .restart local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v8  # "screenX":I
    :cond_193
    move/from16 p2, v8

    .line 340
    .end local v8  # "screenX":I
    .end local v10  # "y":I
    .restart local p2  # "screenX":I
    if-nez v7, :cond_198

    .line 341
    return-void

    .line 344
    :cond_198
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setBG(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 346
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 348
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setActiveProvID(I)V

    move/from16 v8, p2

    goto :goto_1ed

    .line 297
    .end local v1  # "wtf":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v9  # "screenY":I
    .restart local p3  # "screenY":I
    :cond_1e9
    move/from16 v8, p2

    move/from16 v9, p3

    .line 350
    .end local p2  # "screenX":I
    .end local p3  # "screenY":I
    .restart local v8  # "screenX":I
    .restart local v9  # "screenY":I
    :goto_1ed
    return-void
.end method


# virtual methods
.method public keyDown(I)V
    .registers 22
    .param p1, "keycode"  # I

    .line 30
    move-object/from16 v0, p0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v2, 0x13

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    .line 32
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->theDoubleMode:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->theDoubleMode:Z

    .line 34
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    if-eq v1, v3, :cond_24

    .line 35
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    .line 39
    :cond_24
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x43

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    const/4 v3, -0x1

    if-nez v1, :cond_39

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v4, 0x42

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 40
    :cond_39
    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    .line 41
    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    .line 44
    :cond_3d
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v4, 0x2c

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_51

    .line 45
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    if-nez v1, :cond_4f

    .line 46
    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    goto :goto_51

    .line 49
    :cond_4f
    sput v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    .line 53
    :cond_51
    :goto_51
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x15

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 54
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->iBrushScale:I

    sub-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->iBrushScale:I

    .line 56
    if-ge v1, v2, :cond_79

    .line 57
    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->iBrushScale:I

    goto :goto_79

    .line 60
    :cond_65
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x16

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 61
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->iBrushScale:I

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->iBrushScale:I

    .line 63
    const/4 v3, 0x3

    if-le v1, v3, :cond_79

    .line 64
    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->iBrushScale:I

    .line 68
    :cond_79
    :goto_79
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x3e

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 69
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    .line 72
    :cond_8b
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x29

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 73
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    .line 74
    .local v1, "tempID":I
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    .line 75
    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    .line 78
    .end local v1  # "tempID":I
    :cond_9d
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x14

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 79
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    if-eq v1, v3, :cond_b9

    .line 80
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    .line 84
    :cond_b9
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x2e

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_e9

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    if-ltz v1, :cond_e9

    .line 85
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildProvinceBG(Z)V

    .line 86
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->loadProvinceBG()V

    .line 89
    :cond_e9
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x31

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_28d

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    if-ltz v1, :cond_28d

    .line 90
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    .line 92
    .local v1, "provID":I
    if-ltz v1, :cond_28d

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v3

    if-nez v3, :cond_28d

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "map/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "data/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "scales/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "provinces/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    .line 95
    .local v3, "wtf":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    invoke-static {v10}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v10

    .line 97
    .local v10, "wtf2":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v11, 0x0

    .line 99
    .local v11, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v12, 0x0

    .line 100
    .local v12, "screenX":I
    const/4 v13, 0x0

    .line 102
    .local v13, "screenY":I
    new-instance v14, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v15, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v14, v2, v2, v15}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v2, v14

    .line 103
    .local v2, "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v15, 0x3f800000  # 1.0f

    invoke-direct {v14, v15, v15, v15, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 104
    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    .line 106
    new-instance v14, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v15

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v14, v4, v15, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v0, v14

    .line 108
    .end local v11  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v11, 0x3f800000  # 1.0f

    invoke-direct {v4, v11, v11, v11, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 112
    const/4 v4, 0x0

    .local v4, "yi":I
    :goto_1d0
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v11

    if-ge v4, v11, :cond_23d

    .line 113
    const/4 v11, 0x0

    .local v11, "xi":I
    :goto_1d7
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v14

    if-ge v11, v14, :cond_234

    .line 114
    const/4 v14, 0x0

    invoke-virtual {v2, v14, v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v15

    int-to-float v14, v11

    move-object/from16 v16, v2

    .end local v2  # "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v16, "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    move-object/from16 v18, v10

    .end local v10  # "wtf2":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v18, "wtf2":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v10

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v2, v10

    mul-float v14, v14, v2

    float-to-int v2, v14

    int-to-float v10, v4

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    move/from16 v19, v12

    .end local v12  # "screenX":I
    .local v19, "screenX":I
    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v12

    invoke-virtual {v14, v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v12

    int-to-float v12, v12

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v12, v14

    mul-float v10, v10, v12

    float-to-int v10, v10

    invoke-virtual {v3, v2, v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v2

    if-ne v15, v2, :cond_22b

    .line 115
    invoke-virtual {v0, v11, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    .line 113
    :cond_22b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    move-object/from16 v10, v18

    move/from16 v12, v19

    goto :goto_1d7

    .end local v16  # "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v18  # "wtf2":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v19  # "screenX":I
    .restart local v2  # "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v10  # "wtf2":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v12  # "screenX":I
    :cond_234
    move-object/from16 v16, v2

    move-object/from16 v18, v10

    move/from16 v19, v12

    .line 112
    .end local v2  # "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v10  # "wtf2":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v11  # "xi":I
    .end local v12  # "screenX":I
    .restart local v16  # "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v18  # "wtf2":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v19  # "screenX":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d0

    .end local v16  # "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v18  # "wtf2":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v19  # "screenX":I
    .restart local v2  # "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v10  # "wtf2":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v12  # "screenX":I
    :cond_23d
    move-object/from16 v16, v2

    move-object/from16 v18, v10

    move/from16 v19, v12

    .line 120
    .end local v2  # "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v4  # "yi":I
    .end local v10  # "wtf2":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v12  # "screenX":I
    .restart local v16  # "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v18  # "wtf2":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v19  # "screenX":I
    nop

    .line 124
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setBG(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 129
    .end local v0  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v1  # "provID":I
    .end local v3  # "wtf":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v13  # "screenY":I
    .end local v16  # "omg":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v18  # "wtf2":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v19  # "screenX":I
    :cond_28d
    return-void
.end method

.method public setInUse(Z)V
    .registers 3
    .param p1, "inUse"  # Z

    .line 378
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    .line 379
    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    .line 380
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    .line 382
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->theDoubleMode:Z

    .line 383
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->iBrushScale:I

    .line 385
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;->setInUse(Z)V

    .line 386
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTIVE PROVINCE ID 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 362
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->theDoubleMode:Z

    if-eqz v2, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :cond_35
    const-string v1, ""

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBRUSH SCALE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->iBrushScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nSPACE -> SET ACTIVE PROVINCE 1\nDOWN -> SET ACTIVE PROVINCE 2\nBACKSPACE -> RESET ACTIVE PROVINCES\nP -> PAUSE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    if-gez v1, :cond_53

    const/4 v1, 0x1

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nUP -> DOUBLE MODE\nLEFT, RIGHT -> BRUSH SCALE\n\nR -> REBUILD BACKGROUND\nU -> REBUILD BG BASED ON DEFAULT SCALE\nAge of History 2: Definitive Edition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    return-object v0
.end method

.method public touchDown(IIII)V
    .registers 9
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 133
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-gt p1, v0, :cond_18

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    if-ge p2, v0, :cond_1c

    :cond_18
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    if-gez v0, :cond_29

    .line 134
    :cond_1c
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    .line 135
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setDisableMovingMap(Z)V

    .line 136
    return-void

    .line 139
    :cond_29
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    const/4 v2, 0x1

    if-ltz v0, :cond_3b

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    if-nez v0, :cond_3b

    .line 140
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setDisableMovingMap(Z)V

    .line 143
    :cond_3b
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    .line 145
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->theDoubleMode:Z

    if-eqz v0, :cond_54

    .line 146
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    if-ne p4, v2, :cond_47

    const/4 v3, 0x1

    goto :goto_48

    :cond_47
    const/4 v3, 0x0

    :goto_48
    invoke-direct {p0, v0, p1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 147
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    if-eq p4, v2, :cond_50

    const/4 v1, 0x1

    :cond_50
    invoke-direct {p0, v0, p1, p2, v1}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    goto :goto_5c

    .line 149
    :cond_54
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    if-ne p4, v2, :cond_59

    const/4 v1, 0x1

    :cond_59
    invoke-direct {p0, v0, p1, p2, v1}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 151
    :goto_5c
    return-void
.end method

.method public touchDragged(III)V
    .registers 12
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I

    .line 156
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    if-gt p1, v0, :cond_19

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    if-ge p2, v0, :cond_1d

    :cond_19
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    if-gez v0, :cond_2a

    .line 157
    :cond_1d
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    .line 158
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setDisableMovingMap(Z)V

    .line 159
    return-void

    .line 162
    :cond_2a
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->theDoubleMode:Z

    const/4 v3, 0x3

    const/high16 v4, 0x40000000  # 2.0f

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x1

    if-eqz v0, :cond_936

    .line 163
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_3c

    const/4 v7, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v7, 0x0

    :goto_3d
    invoke-direct {p0, v0, p1, p2, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 164
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_48

    const/4 v7, 0x1

    goto :goto_49

    :cond_48
    const/4 v7, 0x0

    :goto_49
    invoke-direct {p0, v0, p1, p2, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 166
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->iBrushScale:I

    if-ne v0, v1, :cond_26c

    .line 167
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v4, v6, :cond_76

    const/4 v4, 0x1

    goto :goto_77

    :cond_76
    const/4 v4, 0x0

    :goto_77
    invoke-direct {p0, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 168
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p2, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_91

    const/4 v3, 0x1

    goto :goto_92

    :cond_91
    const/4 v3, 0x0

    :goto_92
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 169
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v4, v6, :cond_ba

    const/4 v4, 0x1

    goto :goto_bb

    :cond_ba
    const/4 v4, 0x0

    :goto_bb
    invoke-direct {p0, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 171
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_d5

    const/4 v3, 0x1

    goto :goto_d6

    :cond_d5
    const/4 v3, 0x0

    :goto_d6
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 172
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_ef

    const/4 v3, 0x1

    goto :goto_f0

    :cond_ef
    const/4 v3, 0x0

    :goto_f0
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 174
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v4, v6, :cond_118

    const/4 v4, 0x1

    goto :goto_119

    :cond_118
    const/4 v4, 0x0

    :goto_119
    invoke-direct {p0, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 175
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_132

    const/4 v3, 0x1

    goto :goto_133

    :cond_132
    const/4 v3, 0x0

    :goto_133
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 176
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v4, v6, :cond_15a

    const/4 v4, 0x1

    goto :goto_15b

    :cond_15a
    const/4 v4, 0x0

    :goto_15b
    invoke-direct {p0, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 178
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v4, v6, :cond_184

    const/4 v4, 0x1

    goto :goto_185

    :cond_184
    const/4 v4, 0x0

    :goto_185
    invoke-direct {p0, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 179
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p2, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v3, v6, :cond_19f

    const/4 v3, 0x1

    goto :goto_1a0

    :cond_19f
    const/4 v3, 0x0

    :goto_1a0
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 180
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v4, v6, :cond_1c8

    const/4 v4, 0x1

    goto :goto_1c9

    :cond_1c8
    const/4 v4, 0x0

    :goto_1c9
    invoke-direct {p0, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 182
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v3, v6, :cond_1e3

    const/4 v3, 0x1

    goto :goto_1e4

    :cond_1e3
    const/4 v3, 0x0

    :goto_1e4
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 183
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v3, v6, :cond_1fd

    const/4 v3, 0x1

    goto :goto_1fe

    :cond_1fd
    const/4 v3, 0x0

    :goto_1fe
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 185
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v4, v6, :cond_226

    const/4 v4, 0x1

    goto :goto_227

    :cond_226
    const/4 v4, 0x0

    :goto_227
    invoke-direct {p0, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 186
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v3, v6, :cond_240

    const/4 v3, 0x1

    goto :goto_241

    :cond_240
    const/4 v3, 0x0

    :goto_241
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 187
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v4, v6, :cond_267

    const/4 v2, 0x1

    :cond_267
    invoke-direct {p0, v0, v1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    goto/16 :goto_db8

    .line 189
    :cond_26c
    if-ne v0, v3, :cond_db8

    .line 190
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_294

    const/4 v7, 0x1

    goto :goto_295

    :cond_294
    const/4 v7, 0x0

    :goto_295
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 191
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_2be

    const/4 v7, 0x1

    goto :goto_2bf

    :cond_2be
    const/4 v7, 0x0

    :goto_2bf
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 192
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p2, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_2d9

    const/4 v3, 0x1

    goto :goto_2da

    :cond_2d9
    const/4 v3, 0x0

    :goto_2da
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 193
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_302

    const/4 v7, 0x1

    goto :goto_303

    :cond_302
    const/4 v7, 0x0

    :goto_303
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 194
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_32b

    const/4 v7, 0x1

    goto :goto_32c

    :cond_32b
    const/4 v7, 0x0

    :goto_32c
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 196
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_355

    const/4 v7, 0x1

    goto :goto_356

    :cond_355
    const/4 v7, 0x0

    :goto_356
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 197
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_37f

    const/4 v7, 0x1

    goto :goto_380

    :cond_37f
    const/4 v7, 0x0

    :goto_380
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 198
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p2, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_39a

    const/4 v3, 0x1

    goto :goto_39b

    :cond_39a
    const/4 v3, 0x0

    :goto_39b
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 199
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_3c3

    const/4 v7, 0x1

    goto :goto_3c4

    :cond_3c3
    const/4 v7, 0x0

    :goto_3c4
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 200
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_3ec

    const/4 v7, 0x1

    goto :goto_3ed

    :cond_3ec
    const/4 v7, 0x0

    :goto_3ed
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 202
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_407

    const/4 v3, 0x1

    goto :goto_408

    :cond_407
    const/4 v3, 0x0

    :goto_408
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 203
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_422

    const/4 v3, 0x1

    goto :goto_423

    :cond_422
    const/4 v3, 0x0

    :goto_423
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 204
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_43c

    const/4 v3, 0x1

    goto :goto_43d

    :cond_43c
    const/4 v3, 0x0

    :goto_43d
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 205
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_456

    const/4 v3, 0x1

    goto :goto_457

    :cond_456
    const/4 v3, 0x0

    :goto_457
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 207
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_47f

    const/4 v7, 0x1

    goto :goto_480

    :cond_47f
    const/4 v7, 0x0

    :goto_480
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 208
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_4a8

    const/4 v7, 0x1

    goto :goto_4a9

    :cond_4a8
    const/4 v7, 0x0

    :goto_4a9
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 209
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_4c2

    const/4 v3, 0x1

    goto :goto_4c3

    :cond_4c2
    const/4 v3, 0x0

    :goto_4c3
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 210
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_4ea

    const/4 v7, 0x1

    goto :goto_4eb

    :cond_4ea
    const/4 v7, 0x0

    :goto_4eb
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 211
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_512

    const/4 v7, 0x1

    goto :goto_513

    :cond_512
    const/4 v7, 0x0

    :goto_513
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 213
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_53b

    const/4 v7, 0x1

    goto :goto_53c

    :cond_53b
    const/4 v7, 0x0

    :goto_53c
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 214
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_564

    const/4 v7, 0x1

    goto :goto_565

    :cond_564
    const/4 v7, 0x0

    :goto_565
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 215
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_57e

    const/4 v3, 0x1

    goto :goto_57f

    :cond_57e
    const/4 v3, 0x0

    :goto_57f
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 216
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_5a6

    const/4 v7, 0x1

    goto :goto_5a7

    :cond_5a6
    const/4 v7, 0x0

    :goto_5a7
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 217
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_5ce

    const/4 v7, 0x1

    goto :goto_5cf

    :cond_5ce
    const/4 v7, 0x0

    :goto_5cf
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 219
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_5f8

    const/4 v7, 0x1

    goto :goto_5f9

    :cond_5f8
    const/4 v7, 0x0

    :goto_5f9
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 220
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_622

    const/4 v7, 0x1

    goto :goto_623

    :cond_622
    const/4 v7, 0x0

    :goto_623
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 221
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p2, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v3, v6, :cond_63d

    const/4 v3, 0x1

    goto :goto_63e

    :cond_63d
    const/4 v3, 0x0

    :goto_63e
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 222
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_666

    const/4 v7, 0x1

    goto :goto_667

    :cond_666
    const/4 v7, 0x0

    :goto_667
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 223
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_68f

    const/4 v7, 0x1

    goto :goto_690

    :cond_68f
    const/4 v7, 0x0

    :goto_690
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 225
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_6b9

    const/4 v7, 0x1

    goto :goto_6ba

    :cond_6b9
    const/4 v7, 0x0

    :goto_6ba
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 226
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_6e3

    const/4 v7, 0x1

    goto :goto_6e4

    :cond_6e3
    const/4 v7, 0x0

    :goto_6e4
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 227
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p2, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v3, v6, :cond_6fe

    const/4 v3, 0x1

    goto :goto_6ff

    :cond_6fe
    const/4 v3, 0x0

    :goto_6ff
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 228
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_727

    const/4 v7, 0x1

    goto :goto_728

    :cond_727
    const/4 v7, 0x0

    :goto_728
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 229
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_750

    const/4 v7, 0x1

    goto :goto_751

    :cond_750
    const/4 v7, 0x0

    :goto_751
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 231
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v3, v6, :cond_76b

    const/4 v3, 0x1

    goto :goto_76c

    :cond_76b
    const/4 v3, 0x0

    :goto_76c
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 232
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v3, v6, :cond_786

    const/4 v3, 0x1

    goto :goto_787

    :cond_786
    const/4 v3, 0x0

    :goto_787
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 233
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v3, v6, :cond_7a0

    const/4 v3, 0x1

    goto :goto_7a1

    :cond_7a0
    const/4 v3, 0x0

    :goto_7a1
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 234
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v3, v6, :cond_7ba

    const/4 v3, 0x1

    goto :goto_7bb

    :cond_7ba
    const/4 v3, 0x0

    :goto_7bb
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 236
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_7e3

    const/4 v7, 0x1

    goto :goto_7e4

    :cond_7e3
    const/4 v7, 0x0

    :goto_7e4
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 237
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_80c

    const/4 v7, 0x1

    goto :goto_80d

    :cond_80c
    const/4 v7, 0x0

    :goto_80d
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 238
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v3, v6, :cond_826

    const/4 v3, 0x1

    goto :goto_827

    :cond_826
    const/4 v3, 0x0

    :goto_827
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 239
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_84e

    const/4 v7, 0x1

    goto :goto_84f

    :cond_84e
    const/4 v7, 0x0

    :goto_84f
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 240
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_876

    const/4 v7, 0x1

    goto :goto_877

    :cond_876
    const/4 v7, 0x0

    :goto_877
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 242
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_89f

    const/4 v7, 0x1

    goto :goto_8a0

    :cond_89f
    const/4 v7, 0x0

    :goto_8a0
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 243
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v7, v6, :cond_8c8

    const/4 v7, 0x1

    goto :goto_8c9

    :cond_8c8
    const/4 v7, 0x0

    :goto_8c9
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 244
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v3, v6, :cond_8e2

    const/4 v3, 0x1

    goto :goto_8e3

    :cond_8e2
    const/4 v3, 0x0

    :goto_8e3
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 245
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v5, v6, :cond_90a

    const/4 v5, 0x1

    goto :goto_90b

    :cond_90a
    const/4 v5, 0x0

    :goto_90b
    invoke-direct {p0, v0, v1, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 246
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-eq v4, v6, :cond_931

    const/4 v2, 0x1

    :cond_931
    invoke-direct {p0, v0, v1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    goto/16 :goto_db8

    .line 249
    :cond_936
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_93e

    const/4 v7, 0x1

    goto :goto_93f

    :cond_93e
    const/4 v7, 0x0

    :goto_93f
    invoke-direct {p0, v0, p1, p2, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 251
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->iBrushScale:I

    if-ne v0, v1, :cond_a54

    .line 252
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v4, v6, :cond_96c

    const/4 v4, 0x1

    goto :goto_96d

    :cond_96c
    const/4 v4, 0x0

    :goto_96d
    invoke-direct {p0, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 253
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p2, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_987

    const/4 v3, 0x1

    goto :goto_988

    :cond_987
    const/4 v3, 0x0

    :goto_988
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 254
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v4, v6, :cond_9b0

    const/4 v4, 0x1

    goto :goto_9b1

    :cond_9b0
    const/4 v4, 0x0

    :goto_9b1
    invoke-direct {p0, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 256
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_9cb

    const/4 v3, 0x1

    goto :goto_9cc

    :cond_9cb
    const/4 v3, 0x0

    :goto_9cc
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 257
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_9e5

    const/4 v3, 0x1

    goto :goto_9e6

    :cond_9e5
    const/4 v3, 0x0

    :goto_9e6
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 259
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v4, v6, :cond_a0e

    const/4 v4, 0x1

    goto :goto_a0f

    :cond_a0e
    const/4 v4, 0x0

    :goto_a0f
    invoke-direct {p0, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 260
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_a28

    const/4 v3, 0x1

    goto :goto_a29

    :cond_a28
    const/4 v3, 0x0

    :goto_a29
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 261
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v4, v6, :cond_a4f

    const/4 v2, 0x1

    :cond_a4f
    invoke-direct {p0, v0, v1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    goto/16 :goto_db8

    .line 263
    :cond_a54
    if-ne v0, v3, :cond_db8

    .line 264
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_a7c

    const/4 v7, 0x1

    goto :goto_a7d

    :cond_a7c
    const/4 v7, 0x0

    :goto_a7d
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 265
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_aa6

    const/4 v7, 0x1

    goto :goto_aa7

    :cond_aa6
    const/4 v7, 0x0

    :goto_aa7
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 266
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p2, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_ac1

    const/4 v3, 0x1

    goto :goto_ac2

    :cond_ac1
    const/4 v3, 0x0

    :goto_ac2
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 267
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_aea

    const/4 v7, 0x1

    goto :goto_aeb

    :cond_aea
    const/4 v7, 0x0

    :goto_aeb
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 268
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_b13

    const/4 v7, 0x1

    goto :goto_b14

    :cond_b13
    const/4 v7, 0x0

    :goto_b14
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 270
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_b3d

    const/4 v7, 0x1

    goto :goto_b3e

    :cond_b3d
    const/4 v7, 0x0

    :goto_b3e
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 271
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_b67

    const/4 v7, 0x1

    goto :goto_b68

    :cond_b67
    const/4 v7, 0x0

    :goto_b68
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 272
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p2, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_b82

    const/4 v3, 0x1

    goto :goto_b83

    :cond_b82
    const/4 v3, 0x0

    :goto_b83
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 273
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_bab

    const/4 v7, 0x1

    goto :goto_bac

    :cond_bab
    const/4 v7, 0x0

    :goto_bac
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 274
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int v3, p2, v3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_bd4

    const/4 v7, 0x1

    goto :goto_bd5

    :cond_bd4
    const/4 v7, 0x0

    :goto_bd5
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 276
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_bef

    const/4 v3, 0x1

    goto :goto_bf0

    :cond_bef
    const/4 v3, 0x0

    :goto_bf0
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 277
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_c0a

    const/4 v3, 0x1

    goto :goto_c0b

    :cond_c0a
    const/4 v3, 0x0

    :goto_c0b
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 278
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_c24

    const/4 v3, 0x1

    goto :goto_c25

    :cond_c24
    const/4 v3, 0x0

    :goto_c25
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 279
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_c3e

    const/4 v3, 0x1

    goto :goto_c3f

    :cond_c3e
    const/4 v3, 0x0

    :goto_c3f
    invoke-direct {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 281
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_c67

    const/4 v7, 0x1

    goto :goto_c68

    :cond_c67
    const/4 v7, 0x0

    :goto_c68
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 282
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_c90

    const/4 v7, 0x1

    goto :goto_c91

    :cond_c90
    const/4 v7, 0x0

    :goto_c91
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 283
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_caa

    const/4 v3, 0x1

    goto :goto_cab

    :cond_caa
    const/4 v3, 0x0

    :goto_cab
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 284
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_cd2

    const/4 v7, 0x1

    goto :goto_cd3

    :cond_cd2
    const/4 v7, 0x0

    :goto_cd3
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 285
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_cfa

    const/4 v7, 0x1

    goto :goto_cfb

    :cond_cfa
    const/4 v7, 0x0

    :goto_cfb
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 287
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_d23

    const/4 v7, 0x1

    goto :goto_d24

    :cond_d23
    const/4 v7, 0x0

    :goto_d24
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 288
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, p1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v7, v6, :cond_d4c

    const/4 v7, 0x1

    goto :goto_d4d

    :cond_d4c
    const/4 v7, 0x0

    :goto_d4d
    invoke-direct {p0, v0, v1, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 289
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v3, v6, :cond_d66

    const/4 v3, 0x1

    goto :goto_d67

    :cond_d66
    const/4 v3, 0x0

    :goto_d67
    invoke-direct {p0, v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 290
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v5, v6, :cond_d8e

    const/4 v5, 0x1

    goto :goto_d8f

    :cond_d8e
    const/4 v5, 0x0

    :goto_d8f
    invoke-direct {p0, v0, v1, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 291
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->button:I

    if-ne v4, v6, :cond_db5

    const/4 v2, 0x1

    :cond_db5
    invoke-direct {p0, v0, v1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;->dragged(IIIZ)V

    .line 294
    :cond_db8
    :goto_db8
    return-void
.end method

.method public touchUp(IIII)V
    .registers 7
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 354
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setDisableMovingMap(Z)V

    .line 355
    return-void
.end method
