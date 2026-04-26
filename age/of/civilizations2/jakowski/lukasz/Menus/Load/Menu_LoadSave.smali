.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_LoadSave.java"


# static fields
.field public static iLoadID:I

.field public static loadStepID:I

.field public static loadStepID_TEXT:I

.field public static pause:Z

.field public static tFileID:I

.field public static tFileID2:I


# instance fields
.field public tSplted:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID:I

    .line 32
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID_TEXT:I

    .line 34
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tFileID:I

    .line 35
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tFileID2:I

    .line 37
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->pause:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 41
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 42
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v6, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 46
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID:I

    .line 47
    const/4 v1, 0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID_TEXT:I

    .line 48
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->pause:Z

    .line 49
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3f19999a  # 0.6f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 56
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    neg-int v0, v0

    add-int v4, v0, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v0, 0x3

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 57
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v0, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 59
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v0, v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLOAPAD()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int v2, v0, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v1, v1

    const v3, 0x3f4ccccd  # 0.8f

    mul-float v1, v1, v3

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLOAPAD()F

    move-result v4

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float/2addr v5, v4

    mul-float v1, v1, v5

    float-to-int v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID:I

    int-to-float v1, v1

    const/high16 v3, 0x42240000  # 41.0f

    div-float v6, v1, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID_TEXT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move v3, v0

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drLOA(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFLjava/lang/String;)V

    .line 63
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawJakowskiGames_RIGHT_BOT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 65
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawVersionLB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 69
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadSave()V

    .line 70
    return-void
.end method

.method public final loadSave()V
    .registers 6

    .line 74
    const/4 v0, 0x1

    :try_start_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID_TEXT:I

    add-int/2addr v1, v0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID_TEXT:I

    .line 76
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->pause:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 77
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->pause:Z

    .line 78
    return-void

    .line 81
    :cond_e
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID:I

    if-nez v1, :cond_73

    .line 82
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SAVED_GAME_LOADED:Z

    .line 83
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SAVED_GAME_LOADED_2:Z

    .line 85
    sput v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tFileID:I

    .line 86
    sput v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tFileID2:I

    .line 90
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_43b

    const-string v2, "Age_of_Civilizations"

    const-string v3, "saves/games/"

    if-eqz v1, :cond_46

    .line 91
    :try_start_24
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .local v1, "file2":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_65

    .line 94
    .end local v1  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 97
    .restart local v1  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    :goto_65
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "tempTags":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    .line 99
    .end local v1  # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "tempTags":Ljava/lang/String;
    goto/16 :goto_43a

    .line 100
    :cond_73
    if-ne v1, v0, :cond_80

    .line 101
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_1(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 103
    :cond_80
    const/4 v3, 0x2

    if-ne v1, v3, :cond_92

    .line 104
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_2(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43a

    .line 105
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->pause:Z

    .line 106
    return-void

    .line 109
    :cond_92
    const/4 v4, 0x3

    if-ne v1, v4, :cond_a0

    .line 110
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_3(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 112
    :cond_a0
    const/4 v4, 0x4

    if-ne v1, v4, :cond_ae

    .line 113
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_4(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 115
    :cond_ae
    const/4 v4, 0x5

    if-ne v1, v4, :cond_bc

    .line 116
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_5(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 118
    :cond_bc
    const/4 v4, 0x6

    if-ne v1, v4, :cond_ce

    .line 119
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_6(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43a

    .line 120
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->pause:Z

    .line 121
    return-void

    .line 124
    :cond_ce
    const/4 v4, 0x7

    if-ne v1, v4, :cond_dc

    .line 125
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_7(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 127
    :cond_dc
    const/16 v4, 0x8

    if-ne v1, v4, :cond_eb

    .line 128
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_8(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 130
    :cond_eb
    const/16 v4, 0x9

    if-ne v1, v4, :cond_fa

    .line 131
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_9(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 133
    :cond_fa
    const/16 v4, 0xa

    if-ne v1, v4, :cond_109

    .line 134
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_10(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 136
    :cond_109
    const/16 v4, 0xb

    if-ne v1, v4, :cond_118

    .line 137
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_11(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 139
    :cond_118
    const/16 v4, 0xc

    if-ne v1, v4, :cond_127

    .line 140
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_12(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 142
    :cond_127
    const/16 v4, 0xd

    if-ne v1, v4, :cond_136

    .line 143
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_13(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 145
    :cond_136
    const/16 v4, 0xe

    if-ne v1, v4, :cond_145

    .line 146
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_14(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 148
    :cond_145
    const/16 v4, 0xf

    if-ne v1, v4, :cond_154

    .line 149
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_15(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 151
    :cond_154
    const/16 v4, 0x10

    if-ne v1, v4, :cond_163

    .line 152
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_16(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 154
    :cond_163
    const/16 v4, 0x11

    if-ne v1, v4, :cond_172

    .line 155
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_16_B(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 157
    :cond_172
    const/16 v4, 0x12

    if-ne v1, v4, :cond_181

    .line 158
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_16_C(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 160
    :cond_181
    const/16 v4, 0x13

    if-ne v1, v4, :cond_190

    .line 161
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_16_D(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 163
    :cond_190
    const/16 v4, 0x14

    if-ne v1, v4, :cond_19f

    .line 164
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_17(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 166
    :cond_19f
    const/16 v4, 0x15

    if-ne v1, v4, :cond_1ae

    .line 167
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_18(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 169
    :cond_1ae
    const/16 v4, 0x16

    if-ne v1, v4, :cond_1bd

    .line 170
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_19(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 172
    :cond_1bd
    const/16 v4, 0x17

    if-ne v1, v4, :cond_1cc

    .line 173
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_20(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 175
    :cond_1cc
    const/16 v4, 0x18

    if-ne v1, v4, :cond_1db

    .line 176
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_20_A(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 178
    :cond_1db
    const/16 v4, 0x19

    if-ne v1, v4, :cond_1ea

    .line 179
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_20_B(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 181
    :cond_1ea
    const/16 v4, 0x1a

    if-ne v1, v4, :cond_1f9

    .line 182
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_20_C(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 184
    :cond_1f9
    const/16 v4, 0x1b

    if-ne v1, v4, :cond_208

    .line 185
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_20_D(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 187
    :cond_208
    const/16 v4, 0x1c

    if-ne v1, v4, :cond_217

    .line 188
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_20_E(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 190
    :cond_217
    const/16 v4, 0x1d

    if-ne v1, v4, :cond_226

    .line 191
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->iLoadID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->tSplted:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadSavedGame_NEW_21(I[Ljava/lang/String;)V

    goto/16 :goto_43a

    .line 193
    :cond_226
    const/16 v4, 0x1e

    if-ne v1, v4, :cond_234

    .line 194
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->sortCivilizationsAZ()V

    .line 195
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewGameManager;->buildFormableCivilizations()V

    goto/16 :goto_43a

    .line 198
    :cond_234
    const/16 v4, 0x1f

    if-ne v1, v4, :cond_277

    .line 199
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-eqz v1, :cond_241

    .line 200
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewGameManager;->newGame_InitPlayers_SpectatorMode()V

    goto/16 :goto_43a

    .line 203
    :cond_241
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_242
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_256

    .line 204
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIsPlayer(Z)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_242

    .line 207
    .end local v1  # "i":I
    :cond_256
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_257
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v2

    if-ge v1, v2, :cond_275

    .line 208
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIsPlayer(Z)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_257

    .end local v1  # "i":I
    :cond_275
    goto/16 :goto_43a

    .line 212
    :cond_277
    const/16 v4, 0x20

    if-ne v1, v4, :cond_282

    .line 213
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->updateExpand()V
    :try_end_280
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_280} :catch_43b

    goto/16 :goto_43a

    .line 215
    :cond_282
    const/16 v4, 0x21

    if-ne v1, v4, :cond_2bc

    .line 217
    :try_start_286
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->centerToProvID(I)V
    :try_end_2a3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_286 .. :try_end_2a3} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_2a3} :catch_43b

    .line 220
    goto :goto_2a5

    .line 218
    :catch_2a4
    move-exception v1

    .line 222
    :goto_2a5
    const/4 v1, 0x1

    .restart local v1  # "i":I
    :goto_2a6
    :try_start_2a6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_2ba

    .line 223
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateNumberOfUnits()V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a6

    .end local v1  # "i":I
    :cond_2ba
    goto/16 :goto_43a

    .line 226
    :cond_2bc
    const/16 v4, 0x22

    if-ne v1, v4, :cond_2fe

    .line 228
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setDisableMovingMap(Z)V

    .line 229
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v1

    if-ltz v1, :cond_43a

    .line 230
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setActiveProvID(I)V

    goto/16 :goto_43a

    .line 233
    :cond_2fe
    const/16 v4, 0x23

    if-ne v1, v4, :cond_30e

    .line 234
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateCivsMovementPoints()V

    .line 235
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateIsSupplied()V

    goto/16 :goto_43a

    .line 237
    :cond_30e
    const/16 v4, 0x24

    if-ne v1, v4, :cond_331

    .line 238
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewGameManager;->build_ArmyInAnotherProvince()V
    :try_end_315
    .catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_315} :catch_43b

    .line 241
    const/4 v1, 0x1

    .restart local v1  # "i":I
    :goto_316
    :try_start_316
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_32a

    .line 242
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality_NonSavable()V
    :try_end_327
    .catch Ljava/lang/Exception; {:try_start_316 .. :try_end_327} :catch_32b

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_316

    .end local v1  # "i":I
    :cond_32a
    goto :goto_32f

    .line 244
    :catch_32b
    move-exception v1

    .line 245
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_32c
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 246
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_32f
    goto/16 :goto_43a

    .line 248
    :cond_331
    const/16 v4, 0x25

    if-ne v1, v4, :cond_383

    .line 250
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lez v1, :cond_43a

    .line 251
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v3, :cond_36c

    .line 252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v3

    if-ge v1, v3, :cond_350

    .line 253
    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    .line 254
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->buildFogOfWar(I)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_33e

    .line 259
    .end local v1  # "i":I
    :cond_350
    sput v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    .line 261
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_353
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v2

    if-ge v1, v2, :cond_367

    .line 262
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_353

    .line 264
    .end local v1  # "i":I
    :cond_367
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Render;->updateDrawCivRegionNames_FogOfWar()V

    goto/16 :goto_43a

    .line 267
    :cond_36c
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_36d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v3

    if-ge v1, v3, :cond_37f

    .line 268
    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    .line 269
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->buildFogOfWar(I)V

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_36d

    .line 272
    .end local v1  # "i":I
    :cond_37f
    sput v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    goto/16 :goto_43a

    .line 276
    :cond_383
    const/16 v3, 0x26

    if-ne v1, v3, :cond_3a3

    .line 277
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_388
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v2

    if-ge v1, v2, :cond_39c

    .line 278
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmyInProv()V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_388

    .line 281
    .end local v1  # "i":I
    :cond_39c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->moveRegroupArmy()V

    goto/16 :goto_43a

    .line 283
    :cond_3a3
    const/16 v3, 0x27

    if-ne v1, v3, :cond_3c3

    .line 284
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateCivsHappiness_AllCivs()V

    .line 285
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->updateProvinceStabilityAllProvinces()V

    .line 286
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewGameManager;->updateBudgetSpendings()V

    .line 287
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->updateInflationPeakValueAllCivs()V

    .line 288
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->updatePlayableProvinces()V

    .line 289
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TechManager;->updateAverageTechLevel()V

    goto/16 :goto_43a

    .line 291
    :cond_3c3
    const/16 v3, 0x28

    if-ne v1, v3, :cond_3f6

    .line 292
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    if-eqz v1, :cond_3d2

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v1, :cond_3d2

    .line 293
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewGameManager;->sandboxMode()V

    .line 295
    :cond_3d2
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE_AI:Z

    if-eqz v1, :cond_3d9

    .line 296
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewGameManager;->sandboxMode_AI()V
    :try_end_3d9
    .catch Ljava/lang/Exception; {:try_start_32c .. :try_end_3d9} :catch_43b

    .line 300
    :cond_3d9
    :try_start_3d9
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v1, :cond_3e0

    .line 301
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_Tribute;->updateVassalsSpendings()V
    :try_end_3e0
    .catch Ljava/lang/Exception; {:try_start_3d9 .. :try_end_3e0} :catch_3e1

    .line 305
    :cond_3e0
    goto :goto_3e2

    .line 303
    :catch_3e1
    move-exception v1

    .line 307
    :goto_3e2
    :try_start_3e2
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setActiveCivInfoId(I)V

    .line 308
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->disposeMinimapOfCivilizations()V

    .line 311
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->gameCanBeContinued:Z
    :try_end_3f0
    .catch Ljava/lang/Exception; {:try_start_3e2 .. :try_end_3f0} :catch_43b

    .line 314
    :try_start_3f0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Images;->updateGold()V
    :try_end_3f3
    .catch Ljava/lang/Exception; {:try_start_3f0 .. :try_end_3f3} :catch_3f4

    .line 317
    :goto_3f3
    goto :goto_43a

    .line 315
    :catch_3f4
    move-exception v1

    goto :goto_3f3

    .line 319
    :cond_3f6
    const/16 v3, 0x29

    if-ne v1, v3, :cond_43a

    .line 320
    :try_start_3fa
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->reset()V

    .line 322
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->disableDrawCivlizationsRegions_Players()V

    .line 323
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->disableAllViews()V

    .line 325
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapScale;->STANDARD_SCALE:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_422

    .line 326
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapScale;->STANDARD_SCALE:F

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->setCurrScale(F)V

    .line 329
    :cond_422
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "SavedGame"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    .line 331
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;

    invoke-direct {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;-><init>(Z)V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->startTheGameData:Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;

    .line 333
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/View;->eSTART_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuIDWithoutAnim(Lage/of/civilizations2/jakowski/lukasz/View;)V
    :try_end_43a
    .catch Ljava/lang/Exception; {:try_start_3fa .. :try_end_43a} :catch_43b

    .line 337
    :cond_43a
    :goto_43a
    goto :goto_43f

    .line 335
    :catch_43b
    move-exception v1

    .line 336
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_43f
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID:I

    add-int/2addr v1, v0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadSave;->loadStepID:I

    .line 340
    return-void
.end method
