.class public Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;
.super Ljava/lang/Object;
.source "ServiceRibbon_Manager.java"


# instance fields
.field private iSRImagesSize:I

.field private iSROverlayImagesSize:I

.field private iSRSize:I

.field private lSR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;",
            ">;"
        }
    .end annotation
.end field

.field private lSRImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;>;"
        }
    .end annotation
.end field

.field private lSROverlayImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field private lTags:Ljava/util/List;
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
    .registers 2

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    .line 34
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    .line 230
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->loadSR()V

    .line 231
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->loadSRImages()V

    .line 232
    return-void
.end method

.method private final loadSRImages()V
    .registers 18

    .line 392
    move-object/from16 v1, p0

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    if-eqz v0, :cond_47

    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_42

    .line 394
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_10
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 395
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 396
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_10

    .line 393
    .end local v2  # "j":I
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 400
    .end local v0  # "i":I
    :cond_42
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 403
    :cond_47
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    if-eqz v0, :cond_69

    .line 404
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_4c
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_69

    .line 405
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 406
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4c

    .line 410
    .end local v0  # "i":I
    :cond_69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sr/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Age_of_Civilizations"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 414
    .local v5, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, "tempT":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 417
    .local v8, "tagsSPLITED":[Ljava/lang/String;
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_aa
    array-length v0, v8

    const-string v10, ".png"

    if-ge v9, v0, :cond_102

    .line 419
    :try_start_af
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v0, "tempSRImages":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Image;>;"
    const/4 v11, 0x1

    .local v11, "j":I
    :goto_b5
    const/4 v12, 0x6

    if-ge v11, v12, :cond_f7

    .line 422
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v13, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v8, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v12, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v11, v11, 0x1

    goto :goto_b5

    .line 425
    .end local v11  # "j":I
    :cond_f7
    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fc
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_af .. :try_end_fc} :catch_fe

    .line 428
    nop

    .end local v0  # "tempSRImages":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Image;>;"
    goto :goto_ff

    .line 426
    :catch_fe
    move-exception v0

    .line 417
    :goto_ff
    add-int/lit8 v9, v9, 0x1

    goto :goto_aa

    .line 431
    .end local v9  # "i":I
    :cond_102
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge2:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->mainMenuEdge2:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 433
    .local v3, "oRa":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "sr_over/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .line 434
    .local v4, "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v11

    .line 435
    .local v11, "tempT2":Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 437
    .local v7, "tagsSPLITED2":[Ljava/lang/String;
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_144
    array-length v0, v7

    if-ge v12, v0, :cond_188

    .line 439
    :try_start_147
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v14, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15
    :try_end_156
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_147 .. :try_end_156} :catch_180

    move-object/from16 v16, v2

    :try_start_158
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v15, v7, v12

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v13, v14, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_158 .. :try_end_17d} :catch_17e

    .line 442
    goto :goto_183

    .line 440
    :catch_17e
    move-exception v0

    goto :goto_183

    :catch_180
    move-exception v0

    move-object/from16 v16, v2

    .line 437
    :goto_183
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v16

    goto :goto_144

    .line 445
    .end local v12  # "i":I
    :cond_188
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSRImagesSize:I

    .line 446
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSROverlayImagesSize:I

    .line 448
    const/16 v0, 0x132

    if-eq v3, v0, :cond_1be

    const/16 v0, 0x116

    if-eq v3, v0, :cond_1be

    const/16 v0, 0x226

    if-eq v3, v0, :cond_1be

    .line 449
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->disposeImages()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 450
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->disposeImages()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->disposeImages()Ljava/util/List;

    move-result-object v2

    const/4 v9, 0x1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_1be
    return-void
.end method


# virtual methods
.method public check_RequestTurns(I)Z
    .registers 3
    .param p1, "nNumOfTurns"  # I

    .line 109
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns_Level(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v0

    if-ne p1, v0, :cond_c

    .line 110
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public check_Request_ConquredProvinces(I)Z
    .registers 3
    .param p1, "nNum"  # I

    .line 187
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces_Level(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 188
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final drawSR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILjava/util/List;)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nID"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "III",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p5, "nColors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 264
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v6

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSROverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;Lcom/badlogic/gdx/graphics/Color;I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2e

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    .end local v0  # "i":I
    :cond_2d
    goto :goto_2f

    .line 266
    :catch_2e
    move-exception v0

    .line 270
    :goto_2f
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 271
    return-void
.end method

.method public final drawSR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;Ljava/util/List;I)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nSR"  # Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;
    .param p6, "nExtraScale"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "II",
            "Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;I)V"
        }
    .end annotation

    .line 275
    .local p5, "nColors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 276
    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v6

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSROverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;Lcom/badlogic/gdx/graphics/Color;I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1e

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    .end local v0  # "i":I
    :cond_1d
    goto :goto_1f

    .line 278
    :catch_1e
    move-exception v0

    .line 282
    :goto_1f
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 283
    return-void
.end method

.method public final drawSRLevel(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIILjava/util/List;)V
    .registers 25
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "iSRLevel"  # I
    .param p5, "iSRStyle"  # I
    .param p6, "iSROverStyle"  # I
    .param p7, "nID"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIIIII",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;)V"
        }
    .end annotation

    .local p8, "nColors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move/from16 v14, p2

    move/from16 v13, p5

    move/from16 v12, p6

    .line 309
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p7

    move-object/from16 v6, p8

    :try_start_16
    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILjava/util/List;)V

    .line 310
    iget-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 312
    if-lez p4, :cond_6f

    .line 313
    iget-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    add-int/lit8 v1, p4, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    add-int/lit8 v2, p4, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 316
    :cond_6f
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f266666  # 0.65f

    const/4 v11, 0x0

    invoke-direct {v0, v11, v11, v11, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 317
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v6, v0, 0x4

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 318
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v0, p3, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v2, v2, 0x4
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_ba} :catch_f6

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v9, p1

    move/from16 v10, p2

    const/4 v5, 0x0

    move v11, v0

    move v12, v1

    move v13, v2

    move v1, v14

    move v14, v3

    move-object v2, v15

    move v15, v4

    :try_start_c8
    invoke-virtual/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 320
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f0ccccd  # 0.55f

    invoke-direct {v0, v5, v5, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 321
    add-int/lit8 v0, p3, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    invoke-static {v2, v1, v0, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 322
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 323
    add-int/lit8 v0, v1, -0x1

    add-int/lit8 v3, p3, -0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    add-int/lit8 v4, v4, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    add-int/lit8 v5, v5, 0x2

    invoke-static {v2, v0, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_f3} :catch_f4

    .line 326
    goto :goto_f9

    .line 324
    :catch_f4
    move-exception v0

    goto :goto_f9

    :catch_f6
    move-exception v0

    move v1, v14

    move-object v2, v15

    .line 328
    :goto_f9
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 329
    return-void
.end method

.method public final drawSROver(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nExtraScale"  # I

    .line 301
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v5, p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    mul-int v6, v0, p4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    mul-int v7, v0, p4

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 304
    goto :goto_27

    .line 302
    :catch_26
    move-exception v0

    .line 305
    :goto_27
    return-void
.end method

.method public final drawSROverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;Lcom/badlogic/gdx/graphics/Color;I)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nSROverlay"  # Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;
    .param p5, "nColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "nExtraScale"  # I

    .line 286
    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 288
    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getReflected()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 289
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v0, v0, v2

    int-to-float v2, p6

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int v3, p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v0, v0, v2

    int-to-float v2, p6

    mul-float v0, v0, v2

    float-to-int v5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    mul-int v6, v0, p6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 290
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    mul-int v0, v0, p6

    add-int/2addr v0, p2

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v2, v2, v3

    int-to-float v3, p6

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v2, v2, v3

    int-to-float v3, p6

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v3, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v0, v0, v2

    int-to-float v2, p6

    mul-float v0, v0, v2

    float-to-int v5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    mul-int v6, v0, p6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_bf

    .line 293
    :cond_89
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v0, v0, v2

    int-to-float v2, p6

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int v3, p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v0, v0, v2

    int-to-float v2, p6

    mul-float v0, v0, v2

    float-to-int v5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    mul-int v6, v0, p6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 295
    :goto_bf
    return-void
.end method

.method public getRequestProvinces(I)I
    .registers 3
    .param p1, "i"  # I

    .line 195
    packed-switch p1, :pswitch_data_1e

    .line 208
    const/4 v0, 0x0

    return v0

    .line 205
    :pswitch_5  #0x4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_PROVINCES_4:I

    return v0

    .line 203
    :pswitch_a  #0x3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_PROVINCES_3:I

    return v0

    .line 201
    :pswitch_f  #0x2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_PROVINCES_2:I

    return v0

    .line 199
    :pswitch_14  #0x1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_PROVINCES_1:I

    return v0

    .line 197
    :pswitch_19  #0x0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_PROVINCES_0:I

    return v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19  #00000000
        :pswitch_14  #00000001
        :pswitch_f  #00000002
        :pswitch_a  #00000003
        :pswitch_5  #00000004
    .end packed-switch
.end method

.method public getRequestProvinces_Level(I)I
    .registers 5
    .param p1, "nNum"  # I

    .line 212
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v1

    if-lt p1, v1, :cond_9

    .line 213
    const/4 v0, 0x5

    return v0

    .line 214
    :cond_9
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v2

    if-lt p1, v2, :cond_11

    .line 215
    return v0

    .line 216
    :cond_11
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v2

    if-lt p1, v2, :cond_19

    .line 217
    return v1

    .line 218
    :cond_19
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v2

    if-lt p1, v2, :cond_21

    .line 219
    return v0

    .line 220
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v2

    if-lt p1, v2, :cond_29

    .line 221
    return v1

    .line 223
    :cond_29
    return v0
.end method

.method public getRequestRecruitedArmy(I)I
    .registers 3
    .param p1, "iLevel"  # I

    .line 152
    packed-switch p1, :pswitch_data_1e

    .line 165
    const/4 v0, 0x0

    return v0

    .line 162
    :pswitch_5  #0x4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_RECRUITED_ARMY_4:I

    return v0

    .line 160
    :pswitch_a  #0x3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_RECRUITED_ARMY_3:I

    return v0

    .line 158
    :pswitch_f  #0x2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_RECRUITED_ARMY_2:I

    return v0

    .line 156
    :pswitch_14  #0x1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_RECRUITED_ARMY_1:I

    return v0

    .line 154
    :pswitch_19  #0x0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_RECRUITED_ARMY_0:I

    return v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19  #00000000
        :pswitch_14  #00000001
        :pswitch_f  #00000002
        :pswitch_a  #00000003
        :pswitch_5  #00000004
    .end packed-switch
.end method

.method public getRequestRecruitedArmy_Level(I)I
    .registers 5
    .param p1, "nNumOfTurns"  # I

    .line 169
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy(I)I

    move-result v1

    if-lt p1, v1, :cond_9

    .line 170
    const/4 v0, 0x5

    return v0

    .line 171
    :cond_9
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy(I)I

    move-result v2

    if-lt p1, v2, :cond_11

    .line 172
    return v0

    .line 173
    :cond_11
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy(I)I

    move-result v2

    if-lt p1, v2, :cond_19

    .line 174
    return v1

    .line 175
    :cond_19
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy(I)I

    move-result v2

    if-lt p1, v2, :cond_21

    .line 176
    return v0

    .line 177
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy(I)I

    move-result v2

    if-lt p1, v2, :cond_29

    .line 178
    return v1

    .line 180
    :cond_29
    return v0
.end method

.method public getRequestTurns(I)I
    .registers 3
    .param p1, "iLevel"  # I

    .line 117
    packed-switch p1, :pswitch_data_1e

    .line 130
    const/4 v0, 0x0

    return v0

    .line 127
    :pswitch_5  #0x4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_TURNS_4:I

    return v0

    .line 125
    :pswitch_a  #0x3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_TURNS_3:I

    return v0

    .line 123
    :pswitch_f  #0x2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_TURNS_2:I

    return v0

    .line 121
    :pswitch_14  #0x1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_TURNS_1:I

    return v0

    .line 119
    :pswitch_19  #0x0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvServiceRibbon:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ServiceRibbon;->REQUIRED_TURNS_0:I

    return v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19  #00000000
        :pswitch_14  #00000001
        :pswitch_f  #00000002
        :pswitch_a  #00000003
        :pswitch_5  #00000004
    .end packed-switch
.end method

.method public getRequestTurns_Level(I)I
    .registers 5
    .param p1, "nNumOfTurns"  # I

    .line 134
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v1

    if-lt p1, v1, :cond_9

    .line 135
    const/4 v0, 0x5

    return v0

    .line 136
    :cond_9
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v2

    if-lt p1, v2, :cond_11

    .line 137
    return v0

    .line 138
    :cond_11
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v2

    if-lt p1, v2, :cond_19

    .line 139
    return v1

    .line 140
    :cond_19
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v2

    if-lt p1, v2, :cond_21

    .line 141
    return v0

    .line 142
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v2

    if-lt p1, v2, :cond_29

    .line 143
    return v1

    .line 145
    :cond_29
    return v0
.end method

.method public final getSR(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;
    .registers 3
    .param p1, "i"  # I

    .line 457
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    return-object v0
.end method

.method public final getSR(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 471
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSRSize:I

    if-ge v0, v1, :cond_1f

    .line 472
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lTags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 473
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    return-object v1

    .line 471
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 477
    .end local v0  # "i":I
    :cond_1f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    return-object v0
.end method

.method public final getSRID(Ljava/lang/String;)I
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSRSize:I

    if-ge v0, v1, :cond_17

    .line 462
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lTags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 463
    return v0

    .line 461
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 467
    .end local v0  # "i":I
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public final getSRImagesSize()I
    .registers 2

    .line 489
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSRImagesSize:I

    return v0
.end method

.method public final getSROverlayImagesSize()I
    .registers 2

    .line 493
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSROverlayImagesSize:I

    return v0
.end method

.method public final getSRSize()I
    .registers 2

    .line 485
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSRSize:I

    return v0
.end method

.method public final getTag(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 481
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final loadSR()V
    .registers 8

    .line 236
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lTags:Ljava/util/List;

    .line 239
    const-string v0, "game/service_ribbons/Age_of_Civilizations"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 240
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "tempT":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "tagsSPLITED":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v4, v2
    :try_end_20
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_20} :catch_5f

    if-ge v3, v4, :cond_56

    .line 245
    :try_start_22
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/service_ribbons/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lTags:Ljava/util/List;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_51} :catch_52
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_22 .. :try_end_51} :catch_5f

    .line 250
    goto :goto_53

    .line 248
    :catch_52
    move-exception v4

    .line 243
    :goto_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 253
    .end local v3  # "i":I
    :cond_56
    :try_start_56
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSRSize:I
    :try_end_5e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_56 .. :try_end_5e} :catch_5f

    .line 256
    .end local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "tempT":Ljava/lang/String;
    .end local v2  # "tagsSPLITED":[Ljava/lang/String;
    goto :goto_60

    .line 254
    :catch_5f
    move-exception v0

    .line 257
    :goto_60
    return-void
.end method

.method public final loadStatistics_Civ(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 41
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saves/stats/civ/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-object v0

    .line 42
    :catch_22
    move-exception v0

    .line 46
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    invoke-direct {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final saveData()V
    .registers 11

    .line 360
    const-string v0, ";"

    const-string v1, "game/service_ribbons/Age_of_Civilizations"

    const/4 v2, 0x0

    .line 363
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game/service_ribbons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 364
    .local v3, "fileData":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_28} :catch_81
    .catchall {:try_start_5 .. :try_end_28} :catchall_78

    .line 367
    :try_start_28
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .line 368
    .local v4, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, "tempTags":Ljava/lang/String;
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_56

    .line 371
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 372
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

    .line 377
    .end local v4  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6  # "tempTags":Ljava/lang/String;
    .end local v7  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :cond_56
    goto :goto_72

    .line 374
    :catch_57
    move-exception v4

    .line 375
    .local v4, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_58
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 376
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

    .line 381
    .end local v1  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "fileData":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_72
    if-eqz v2, :cond_8a

    .line 383
    :try_start_74
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_88

    goto :goto_87

    .line 381
    :catchall_78
    move-exception v0

    if-eqz v2, :cond_80

    .line 383
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 386
    goto :goto_80

    .line 384
    :catch_7f
    move-exception v1

    .line 388
    :cond_80
    :goto_80
    throw v0

    .line 378
    :catch_81
    move-exception v0

    .line 381
    if-eqz v2, :cond_8a

    .line 383
    :try_start_84
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    .line 386
    :goto_87
    goto :goto_8a

    .line 384
    :catch_88
    move-exception v0

    goto :goto_87

    .line 389
    :cond_8a
    :goto_8a
    return-void
.end method

.method public final saveStatistics_Civ(Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;)V
    .registers 14
    .param p1, "stats_Civ_GD"  # Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    .line 50
    const-string v0, ";"

    const-string v1, "saves/stats/civ/Age_of_Civilizations"

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 51
    return-void

    .line 54
    :cond_d
    const/4 v2, 0x0

    .line 58
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_e
    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_10} :catch_c7
    .catchall {:try_start_e .. :try_end_10} :catchall_be

    const-string v4, "saves/stats/civ/"

    if-eqz v3, :cond_2e

    .line 59
    :try_start_14
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .local v3, "fileData":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_47

    .line 61
    .end local v3  # "fileData":Lcom/badlogic/gdx/files/FileHandle;
    :cond_2e
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 64
    .restart local v3  # "fileData":Lcom/badlogic/gdx/files/FileHandle;
    :goto_47
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_4f} :catch_c7
    .catchall {:try_start_14 .. :try_end_4f} :catchall_be

    .line 68
    :try_start_4f
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-eqz v4, :cond_5a

    .line 69
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v4, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .local v4, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_60

    .line 71
    .end local v4  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_5a
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v4, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .line 73
    .restart local v4  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_60
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "tempTags":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "tData":[Ljava/lang/String;
    const/4 v8, 0x1

    .line 78
    .local v8, "tAdd":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6a
    array-length v10, v7

    if-ge v9, v10, :cond_7c

    .line 79
    aget-object v10, v7, v9

    iget-object v11, p1, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_79

    .line 80
    const/4 v8, 0x0

    .line 81
    goto :goto_7c

    .line 78
    :cond_79
    add-int/lit8 v9, v9, 0x1

    goto :goto_6a

    .line 85
    .end local v9  # "i":I
    :cond_7c
    :goto_7c
    if-eqz v8, :cond_9c

    .line 86
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    .line 87
    .local v9, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_9c
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4f .. :try_end_9c} :catch_9d
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_9c} :catch_c7
    .catchall {:try_start_4f .. :try_end_9c} :catchall_be

    .line 92
    .end local v4  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6  # "tempTags":Ljava/lang/String;
    .end local v7  # "tData":[Ljava/lang/String;
    .end local v8  # "tAdd":Z
    .end local v9  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :cond_9c
    goto :goto_b8

    .line 89
    :catch_9d
    move-exception v4

    .line 90
    .local v4, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_9e
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 91
    .local v1, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_b8} :catch_c7
    .catchall {:try_start_9e .. :try_end_b8} :catchall_be

    .line 96
    .end local v1  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "fileData":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_b8
    if-eqz v2, :cond_d0

    .line 98
    :try_start_ba
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bd} :catch_ce

    goto :goto_cd

    .line 96
    :catchall_be
    move-exception v0

    if-eqz v2, :cond_c6

    .line 98
    :try_start_c1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_c5

    .line 101
    goto :goto_c6

    .line 99
    :catch_c5
    move-exception v1

    .line 103
    :cond_c6
    :goto_c6
    throw v0

    .line 93
    :catch_c7
    move-exception v0

    .line 96
    if-eqz v2, :cond_d0

    .line 98
    :try_start_ca
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_ce

    .line 101
    :goto_cd
    goto :goto_d0

    .line 99
    :catch_ce
    move-exception v0

    goto :goto_cd

    .line 104
    :cond_d0
    :goto_d0
    return-void
.end method
