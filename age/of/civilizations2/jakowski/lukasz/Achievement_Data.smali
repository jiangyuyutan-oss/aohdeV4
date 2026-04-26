.class public Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;
.super Ljava/lang/Object;
.source "Achievement_Data.java"


# instance fields
.field private TIME_IN_VIEW:I

.field private TIME_IN_VIEW_HIDE_ANIMATION:I

.field private iCivID:I

.field private iLevelID:I

.field private iSRID:I

.field private iSROverID:I

.field private iTextNumWidth:I

.field private iTextWidth:I

.field private lColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J

.field private sText:Ljava/lang/String;

.field private sTextNum:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 23
    .param p1, "nCivID"  # I
    .param p2, "nTagID"  # Ljava/lang/String;
    .param p3, "nText"  # Ljava/lang/String;
    .param p4, "nTextNum"  # Ljava/lang/String;
    .param p5, "nLevelID"  # I

    .line 40
    move-object/from16 v1, p0

    const-string v2, "game/civilizations/"

    const-string v3, "/"

    const-string v4, "game/civilizations_editor/"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iTextWidth:I

    .line 26
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iTextNumWidth:I

    .line 30
    const/4 v0, 0x0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iSROverID:I

    .line 33
    const/16 v5, 0x1194

    iput v5, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->TIME_IN_VIEW:I

    .line 34
    const/16 v5, 0x1f4

    iput v5, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->TIME_IN_VIEW_HIDE_ANIMATION:I

    .line 36
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iSRID:I

    .line 37
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iLevelID:I

    .line 41
    move/from16 v5, p1

    iput v5, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iCivID:I

    .line 42
    move-object/from16 v6, p3

    iput-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->sText:Ljava/lang/String;

    .line 43
    move-object/from16 v7, p4

    iput-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->sTextNum:Ljava/lang/String;

    .line 44
    move/from16 v8, p5

    iput v8, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iLevelID:I

    .line 46
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->sText:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 47
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v9, v9, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v9, v9

    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iTextWidth:I

    .line 49
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->sTextNum:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 50
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v9, v9, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v9, v9

    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iTextNumWidth:I

    .line 52
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->lColors:Ljava/util/List;

    .line 54
    const/4 v9, 0x0

    .line 55
    .local v9, "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    move-object/from16 v10, p2

    .line 57
    .local v10, "tempTag":Ljava/lang/String;
    move-object/from16 v11, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSROverlayImagesSize()I

    move-result v13

    rem-int/2addr v12, v13

    iput v12, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iSROverID:I

    .line 59
    const-string v12, ";"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_86

    .line 60
    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, "tData":[Ljava/lang/String;
    aget-object v10, v12, v0

    .line 66
    .end local v12  # "tData":[Ljava/lang/String;
    :cond_86
    :try_start_86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 67
    .local v0, "fileSR":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_a5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_86 .. :try_end_a5} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a5} :catch_a9

    move-object v0, v12

    .line 91
    .end local v9  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .local v0, "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    move-object v9, v0

    goto/16 :goto_1a7

    .line 92
    .end local v0  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .restart local v9  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :catch_a9
    move-exception v0

    goto/16 :goto_1a8

    .line 68
    :catch_ac
    move-exception v0

    move-object v12, v0

    .line 70
    .local v12, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 71
    .local v0, "fileSR":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_d3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_ae .. :try_end_d3} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_d3} :catch_a9

    move-object v0, v2

    .line 90
    .end local v9  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .local v0, "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    move-object v9, v0

    goto/16 :goto_1a7

    .line 72
    .end local v0  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .restart local v9  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :catch_d7
    move-exception v0

    move-object v2, v0

    .line 74
    .local v2, "esx":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_d9
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 75
    .local v0, "fileSR":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v13

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_102
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_d9 .. :try_end_102} :catch_106
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_102} :catch_a9

    move-object v0, v13

    .line 89
    .end local v9  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .local v0, "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    move-object v9, v0

    goto/16 :goto_1a7

    .line 76
    .end local v0  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .restart local v9  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :catch_106
    move-exception v0

    move-object v13, v0

    .line 78
    .local v13, "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 79
    .local v0, "fileSR":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_12f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_108 .. :try_end_12f} :catch_133
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_12f} :catch_a9

    move-object v0, v14

    .line 88
    .end local v9  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .local v0, "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    move-object v9, v0

    goto/16 :goto_1a7

    .line 80
    .end local v0  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .restart local v9  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :catch_133
    move-exception v0

    move-object v14, v0

    .line 82
    .local v14, "eqr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_135
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15
    :try_end_140
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_135 .. :try_end_140} :catch_170
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_140} :catch_a9

    move-object/from16 v16, v2

    .end local v2  # "esx":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v16, "esx":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_142
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v15, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 83
    .local v0, "fileSR":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_16c
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_142 .. :try_end_16c} :catch_16e
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_16c} :catch_a9

    .line 87
    .end local v0  # "fileSR":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .local v2, "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    move-object v9, v2

    goto :goto_1a7

    .line 84
    .end local v2  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .restart local v9  # "tempSR":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :catch_16e
    move-exception v0

    goto :goto_173

    .end local v16  # "esx":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v2, "esx":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :catch_170
    move-exception v0

    move-object/from16 v16, v2

    .line 85
    .end local v2  # "esx":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v0, "eqrt":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v16  # "esx":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_173
    :try_start_173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v3, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 86
    .local v2, "fileSR":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_1a6} :catch_a9

    move-object v9, v3

    .line 96
    .end local v0  # "eqrt":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v2  # "fileSR":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v13  # "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v14  # "eqr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v16  # "esx":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_1a7
    goto :goto_1af

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    :goto_1a8
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v2, :cond_1af

    .line 94
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 98
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_1af
    :goto_1af
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    if-eqz v0, :cond_201

    .line 99
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    iget-object v2, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getSRTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSRID(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iSRID:I

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c2
    iget-object v2, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1fb

    .line 101
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->lColors:Ljava/util/List;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    iget-object v4, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColor(I)Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v4

    iget-object v12, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColor(I)Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v12

    iget-object v13, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColor(I)Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v13

    const/high16 v14, 0x3f800000  # 1.0f

    invoke-direct {v3, v4, v12, v13, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c2

    .line 104
    .end local v0  # "i":I
    :cond_1fb
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->lTime:J

    .line 106
    :cond_201
    return-void
.end method

.method private final getAlpha()F
    .registers 10

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->lTime:J

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->TIME_IN_VIEW:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->TIME_IN_VIEW_HIDE_ANIMATION:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    const/high16 v4, 0x3f800000  # 1.0f

    cmp-long v5, v0, v2

    if-lez v5, :cond_2d

    .line 158
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->lTime:J

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->TIME_IN_VIEW:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->TIME_IN_VIEW_HIDE_ANIMATION:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    sub-long/2addr v1, v5

    long-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    sub-float/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 161
    :cond_2d
    return v4
.end method

.method private final getHeight()I
    .registers 3

    .line 121
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private final getPosX()I
    .registers 3

    .line 109
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getPosY()I
    .registers 2

    .line 113
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private final getWidth()I
    .registers 5

    .line 117
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iTextWidth:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iTextNumWidth:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iLevelID:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iLevelID:I

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final canBeDisposed()Z
    .registers 7

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->lTime:J

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->TIME_IN_VIEW:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 17
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I

    .line 125
    move-object v0, p0

    move-object v10, p1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getAlpha()F

    move-result v11

    .line 127
    .local v11, "tAlpha":F
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v5, v5, v11

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 128
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getWidth()I

    move-result v5

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 130
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f800000  # 1.0f

    mul-float v5, v5, v11

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 131
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 132
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 134
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f266666  # 0.65f

    mul-float v2, v2, v11

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v7, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 135
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 136
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 138
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e99999a  # 0.3f

    mul-float v2, v2, v11

    invoke-direct {v1, v7, v7, v7, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 139
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 141
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float v2, v2, v11

    invoke-direct {v1, v7, v7, v7, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 142
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 143
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 145
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 148
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->sText:Ljava/lang/String;

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosX()I

    move-result v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iTextWidth:I

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iTextNumWidth:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosY()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    add-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v1, v5

    add-int v5, v1, p3

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v9, v9, v11

    invoke-direct {v6, v1, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 149
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->sTextNum:Ljava/lang/String;

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosX()I

    move-result v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iTextWidth:I

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iTextNumWidth:I

    add-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosY()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    add-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v1, v5

    add-int v5, v1, p3

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v9, v9, v11

    invoke-direct {v6, v1, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 151
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_23f
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iLevelID:I

    add-int/lit8 v1, v1, 0x1

    if-ge v12, v1, :cond_28a

    .line 152
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbonMgr:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosX()I

    move-result v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iLevelID:I

    add-int/lit8 v4, v4, 0x1

    mul-int v3, v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iLevelID:I

    mul-int v4, v4, v5

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    mul-int v3, v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int v3, v3, v12

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int v4, v2, p3

    const/4 v6, 0x0

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iSROverID:I

    iget v8, v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->iSRID:I

    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;->lColors:Ljava/util/List;

    move-object v2, p1

    move v5, v12

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSRLevel(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIILjava/util/List;)V

    .line 151
    add-int/lit8 v12, v12, 0x1

    goto :goto_23f

    .line 154
    .end local v12  # "i":I
    :cond_28a
    return-void
.end method
