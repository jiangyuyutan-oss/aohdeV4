.class public Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;
.super Ljava/lang/Object;
.source "Pallet_Manager.java"


# static fields
.field public static NUM_OF_COLORS:I


# instance fields
.field private final SAMPLE_COLORS_SIZE:I

.field private iActivePalletID:I

.field private iNumOfPallets:I

.field private isInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private lColorsInPallet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lPalletsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lSampleColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const/16 v0, 0x1f4

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->NUM_OF_COLORS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->iActivePalletID:I

    .line 33
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->iNumOfPallets:I

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->SAMPLE_COLORS_SIZE:I

    .line 43
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->updatePalletsOfCivsColorsTags()V

    .line 44
    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 1

    .line 355
    const-string v0, "QWdlIG9mIEhpc3Rvcnk"

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .registers 3

    .line 363
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .registers 1

    .line 359
    const-string v0, "gMjogRGVmaW5pdGl2ZSBFZGl0aW9u"

    return-object v0
.end method

.method private static z()Ljava/lang/String;
    .registers 2

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final drawSampleColors(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V
    .registers 19
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "nPalletID"  # I
    .param p7, "isActive"  # Z

    move-object v1, p0

    move-object v8, p1

    move/from16 v9, p6

    .line 374
    :try_start_4
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lSampleColors:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 375
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v5, p3, v0

    move-object v3, p1

    move v4, p2

    move v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 376
    const/4 v0, 0x1

    .local v0, "i":I
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lSampleColors:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v10, v2

    .local v10, "iSize":I
    :goto_3e
    if-ge v0, v10, :cond_74

    .line 377
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lSampleColors:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 378
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    div-int v3, p4, v10

    mul-int v3, v3, v0

    add-int v4, p2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v5, p3, v3

    div-int v6, p4, v10

    move-object v3, p1

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 381
    .end local v0  # "i":I
    .end local v10  # "iSize":I
    :cond_74
    invoke-virtual/range {p0 .. p7}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->drawSampleColors_BORDER(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_77} :catch_78

    .line 384
    goto :goto_79

    .line 382
    :catch_78
    move-exception v0

    .line 385
    :goto_79
    return-void
.end method

.method public final drawSampleColors_BORDER(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V
    .registers 21
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "nPalletID"  # I
    .param p7, "isActive"  # Z

    .line 399
    move-object v8, p1

    move v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    if-eqz p7, :cond_e

    const v1, 0x3f733333  # 0.95f

    goto :goto_11

    :cond_e
    const v1, 0x3f333333  # 0.7f

    :goto_11
    const/4 v12, 0x0

    invoke-direct {v0, v12, v12, v12, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 400
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    div-int/lit8 v5, v11, 0x4

    move-object v1, p1

    move v2, p2

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 401
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    add-int/2addr v1, v11

    div-int/lit8 v2, v11, 0x4

    sub-int v3, v1, v2

    div-int/lit8 v5, v11, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 404
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f0ccccd  # 0.55f

    invoke-direct {v0, v12, v12, v12, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 405
    add-int/lit8 v0, p3, -0x1

    invoke-static {p1, p2, v0, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 407
    if-eqz p7, :cond_68

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_6a

    :cond_68
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    :goto_6a
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 408
    add-int/lit8 v0, v9, -0x1

    add-int/lit8 v1, p3, -0x2

    add-int/lit8 v2, v10, 0x2

    add-int/lit8 v3, v11, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 410
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 411
    return-void
.end method

.method public final drawSampleColors_Standard(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V
    .registers 19
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "nPalletID"  # I
    .param p7, "isActive"  # Z

    .line 388
    move-object v6, p1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3eb6a8d3

    const/4 v7, 0x0

    const v8, 0x3e8f5c29  # 0.28f

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 389
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    move-object v1, p1

    move v2, p2

    move v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 390
    const/4 v0, 0x1

    move v10, v0

    .local v10, "i":I
    :goto_2e
    const/16 v0, 0xa

    if-ge v10, v0, :cond_67

    .line 391
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d04d7df

    rsub-int/lit8 v2, v10, 0xa

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-direct {v0, v2, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 392
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    div-int/lit8 v1, p4, 0xa

    mul-int v1, v1, v10

    add-int v2, p2, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    div-int/lit8 v4, p4, 0xa

    move-object v1, p1

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 390
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 395
    .end local v10  # "i":I
    :cond_67
    invoke-virtual/range {p0 .. p7}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->drawSampleColors_BORDER(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    .line 396
    return-void
.end method

.method public final getActivePalletID()I
    .registers 2

    .line 428
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->iActivePalletID:I

    return v0
.end method

.method public getImageHeight(I)I
    .registers 3
    .param p1, "image"  # I

    .line 211
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageHeight(I)I

    move-result v0

    return v0
.end method

.method public getImageWidth(I)I
    .registers 3
    .param p1, "image"  # I

    .line 207
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageWidth(I)I

    move-result v0

    return v0
.end method

.method public final getIsInternal(I)Z
    .registers 3
    .param p1, "i"  # I

    .line 420
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->isInternal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getNumOfColorsInPallet(I)I
    .registers 3
    .param p1, "i"  # I

    .line 436
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lColorsInPallet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getNumOfPallets()I
    .registers 2

    .line 424
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->iNumOfPallets:I

    return v0
.end method

.method public final getPalletTag(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 416
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final loadCivilizationPalletColor(II)V
    .registers 9
    .param p1, "nPaletteID"  # I
    .param p2, "nCivID"  # I

    .line 216
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v0

    if-eq v0, p2, :cond_d

    .line 217
    return-void

    .line 221
    :cond_d
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->isInternal:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_1b} :catch_10f

    const-string v1, "/"

    const-string v2, "game/pallets_of_civs_colors/"

    if-eqz v0, :cond_53

    .line 222
    :try_start_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_52
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_21 .. :try_end_52} :catch_10f

    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_ba

    .line 225
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_53
    :try_start_53
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_86} :catch_87
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_53 .. :try_end_86} :catch_10f

    .line 228
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_ba

    .line 226
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_87
    move-exception v0

    .line 227
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1
    :try_end_b9
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_88 .. :try_end_b9} :catch_10f

    move-object v0, v1

    .line 232
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_ba
    :try_start_ba
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    .line 233
    .local v1, "nCivColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v3

    const/high16 v4, 0x437f0000  # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 234
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 235
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_102
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ba .. :try_end_102} :catch_10a
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_102} :catch_105
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_ba .. :try_end_102} :catch_10f

    .line 242
    .end local v1  # "nCivColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    nop

    .line 247
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    nop

    .line 248
    return-void

    .line 239
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_105
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    :try_start_106
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V

    .line 241
    return-void

    .line 236
    .end local v1  # "e":Ljava/io/IOException;
    :catch_10a
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V
    :try_end_10e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_106 .. :try_end_10e} :catch_10f

    .line 238
    return-void

    .line 244
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "e":Ljava/lang/ClassNotFoundException;
    :catch_10f
    move-exception v0

    .line 245
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V

    .line 246
    return-void
.end method

.method public final loadCivilizationStandardColor(I)V
    .registers 14
    .param p1, "nCivID"  # I

    .line 276
    const-string v0, "/"

    const-string v1, "game/civilizations_editor/"

    const-string v2, "game/civilizations/"

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 277
    .local v3, "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    .line 279
    .local v4, "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 280
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 281
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_56
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_56} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_56} :catch_58

    .line 347
    .end local v3  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    goto/16 :goto_313

    .line 349
    :catch_58
    move-exception v0

    goto/16 :goto_314

    .line 282
    :catch_5b
    move-exception v3

    .line 284
    .local v3, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_5c
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .line 285
    .local v4, "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    .line 287
    .local v5, "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 288
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 289
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_ae
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5c .. :try_end_ae} :catch_b0
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_ae} :catch_58

    .line 346
    .end local v4  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5  # "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    goto/16 :goto_313

    .line 290
    :catch_b0
    move-exception v4

    .line 292
    .local v4, "ex2":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_b1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 293
    .local v5, "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    .line 295
    .local v6, "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 296
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 297
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_107
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_b1 .. :try_end_107} :catch_109
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_107} :catch_58

    .line 345
    .end local v5  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6  # "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    goto/16 :goto_313

    .line 298
    :catch_109
    move-exception v5

    .line 300
    .local v5, "exe":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_10a
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 301
    .local v2, "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    .line 303
    .restart local v6  # "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 304
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 305
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_162
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_10a .. :try_end_162} :catch_164
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_162} :catch_58

    .line 344
    .end local v2  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6  # "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    goto/16 :goto_313

    .line 306
    :catch_164
    move-exception v2

    .line 308
    .local v2, "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .line 309
    .local v6, "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    .line 311
    .local v7, "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 312
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 313
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_1c7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_165 .. :try_end_1c7} :catch_1c9
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_1c7} :catch_58

    .line 343
    .end local v6  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    .end local v7  # "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    goto/16 :goto_313

    .line 314
    :catch_1c9
    move-exception v6

    .line 316
    .local v6, "exd":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_1ca
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 317
    .local v7, "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    .line 319
    .local v8, "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 320
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 321
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_22e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1ca .. :try_end_22e} :catch_230
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_22e} :catch_58

    .line 342
    .end local v7  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    .end local v8  # "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    goto/16 :goto_313

    .line 322
    :catch_230
    move-exception v7

    .line 324
    .local v7, "exc":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_231
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    .line 325
    .local v8, "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    .line 327
    .local v9, "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 328
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 329
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_29f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_231 .. :try_end_29f} :catch_2a0
    .catch Ljava/lang/Exception; {:try_start_231 .. :try_end_29f} :catch_58

    .line 341
    .end local v8  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    goto :goto_313

    .line 330
    :catch_2a0
    move-exception v8

    .line 332
    .local v8, "exx":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_2a1
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 333
    .local v0, "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    .line 335
    .local v1, "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 336
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 337
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_311
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2a1 .. :try_end_311} :catch_312
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_311} :catch_58

    .line 340
    .end local v0  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "tempCivGameData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    goto :goto_313

    .line 338
    :catch_312
    move-exception v0

    .line 351
    .end local v2  # "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v3  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v4  # "ex2":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v5  # "exe":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v6  # "exd":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v7  # "exc":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v8  # "exx":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_313
    nop

    .line 352
    :goto_314
    return-void
.end method

.method public final loadCivilizationStandardColors()V
    .registers 6

    .line 251
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 252
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    .end local v0  # "i":I
    :cond_f
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_10
    :try_start_10
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_7c

    .line 257
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_22} :catch_7d

    if-eq v0, v1, :cond_79

    .line 259
    :try_start_24
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed_2(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 260
    .local v1, "nC":Lcom/badlogic/gdx/graphics/Color;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v4, 0x437f0000  # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 261
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 262
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_74} :catch_75

    .line 265
    .end local v1  # "nC":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_79

    .line 263
    :catch_75
    move-exception v1

    .line 264
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_76
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7d

    .line 256
    .end local v1  # "ex":Ljava/lang/Exception;
    :cond_79
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 270
    .end local v0  # "i":I
    :cond_7c
    goto :goto_7e

    .line 268
    :catch_7d
    move-exception v0

    .line 271
    :goto_7e
    return-void
.end method

.method public final loadCivilizationsPaletteOfColors(I)V
    .registers 11
    .param p1, "nPaletteID"  # I

    .line 147
    if-nez p1, :cond_7

    .line 148
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColors()V

    goto/16 :goto_198

    .line 151
    :cond_7
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_8
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    const/high16 v2, 0x437f0000  # 255.0f

    if-ge v0, v1, :cond_12b

    .line 152
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1

    if-eq v1, v0, :cond_20

    .line 153
    goto/16 :goto_127

    .line 156
    :cond_20
    const/4 v1, 0x0

    .line 159
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_21
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->isInternal:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_21 .. :try_end_2f} :catch_122

    const-string v4, "/"

    const-string v5, "game/pallets_of_civs_colors/"

    if-eqz v3, :cond_68

    .line 160
    :try_start_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3
    :try_end_66
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_35 .. :try_end_66} :catch_122

    move-object v1, v3

    goto :goto_d0

    .line 163
    :cond_68
    :try_start_68
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    add-int/lit8 v8, p1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_9b} :catch_9d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_68 .. :try_end_9b} :catch_122

    move-object v1, v3

    .line 166
    goto :goto_d0

    .line 164
    :catch_9d
    move-exception v3

    .line 165
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_9e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4
    :try_end_cf
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9e .. :try_end_cf} :catch_122

    move-object v1, v4

    .line 169
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_d0
    :try_start_d0
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    .line 170
    .local v3, "nCivColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v5

    mul-float v5, v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 171
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v5

    mul-float v5, v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 172
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v5

    mul-float v5, v5, v2

    float-to-int v2, v5

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_116
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d0 .. :try_end_116} :catch_11d
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_116} :catch_118
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_d0 .. :try_end_116} :catch_122

    .line 179
    .end local v3  # "nCivColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    nop

    .line 184
    goto :goto_127

    .line 176
    :catch_118
    move-exception v2

    .line 177
    .local v2, "e":Ljava/io/IOException;
    :try_start_119
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V

    .line 178
    goto :goto_127

    .line 173
    .end local v2  # "e":Ljava/io/IOException;
    :catch_11d
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V
    :try_end_121
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_119 .. :try_end_121} :catch_122

    .line 175
    goto :goto_127

    .line 181
    .end local v2  # "e":Ljava/lang/ClassNotFoundException;
    :catch_122
    move-exception v2

    .line 182
    .local v2, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V

    .line 183
    nop

    .line 151
    .end local v1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_127
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 188
    .end local v0  # "i":I
    :cond_12b
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_12c
    :try_start_12c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_196

    .line 189
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_13e} :catch_197

    if-eq v0, v1, :cond_193

    .line 191
    :try_start_140
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-static {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed_2(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 192
    .local v1, "nC":Lcom/badlogic/gdx/graphics/Color;
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v4, v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 193
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v4, v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 194
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v4, v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_18e} :catch_18f

    .line 197
    .end local v1  # "nC":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_193

    .line 195
    :catch_18f
    move-exception v1

    .line 196
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_190
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_193} :catch_197

    .line 188
    .end local v1  # "ex":Ljava/lang/Exception;
    :cond_193
    :goto_193
    add-int/lit8 v0, v0, 0x1

    goto :goto_12c

    .line 202
    .end local v0  # "i":I
    :cond_196
    goto :goto_198

    .line 200
    :catch_197
    move-exception v0

    .line 204
    :goto_198
    return-void
.end method

.method public final setActivePalletID(I)V
    .registers 2
    .param p1, "iActivePalletID"  # I

    .line 432
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->iActivePalletID:I

    .line 433
    return-void
.end method

.method public final updatePalletsOfCivsColorsTags()V
    .registers 20

    .line 50
    move-object/from16 v1, p0

    const-string v0, "game/pallets_of_civs_colors/Age_of_Civilizations"

    const-string v2, ";"

    :try_start_6
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 51
    .local v3, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "tempT":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "tagsSPLITED":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    .line 55
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->isInternal:Ljava/util/List;

    .line 56
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_21
    array-length v7, v5

    if-ge v6, v7, :cond_38

    .line 57
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    aget-object v8, v5, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->isInternal:Ljava/util/List;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 62
    .end local v6  # "i":I
    :cond_38
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v6
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3c} :catch_26c

    if-eqz v6, :cond_6c

    .line 64
    :try_start_3e
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 65
    .local v0, "tempFileT_Local":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "tempT_Local":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "tagsSPLITED_Local":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4d
    array-length v9, v7

    if-ge v8, v9, :cond_64

    .line 69
    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    aget-object v10, v7, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->isInternal:Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3e .. :try_end_61} :catch_65
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_61} :catch_26c

    .line 68
    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    .line 74
    .end local v0  # "tempFileT_Local":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6  # "tempT_Local":Ljava/lang/String;
    .end local v7  # "tagsSPLITED_Local":[Ljava/lang/String;
    .end local v8  # "i":I
    :cond_64
    goto :goto_66

    .line 72
    :catch_65
    move-exception v0

    .line 77
    :goto_66
    :try_start_66
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/16 v6, 0x8

    iput v6, v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->INIT_GAME:I

    .line 80
    :cond_6c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lSampleColors:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lColorsInPallet:Ljava/util/List;

    .line 83
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->iNumOfPallets:I

    .line 87
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_84
    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->iNumOfPallets:I

    if-ge v6, v0, :cond_254

    .line 89
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->isInternal:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_94} :catch_26c

    const-string v7, "Age_of_Civilizations"

    const-string v8, "/"

    const-string v9, "game/pallets_of_civs_colors/"

    if-eqz v0, :cond_c3

    .line 90
    :try_start_9c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_c1} :catch_26c

    move-object v7, v0

    .local v0, "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_112

    .line 93
    .end local v0  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    :cond_c3
    :try_start_c3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_ea} :catch_ec

    .line 96
    .restart local v0  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    move-object v7, v0

    goto :goto_112

    .line 94
    .end local v0  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    :catch_ec
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_ed
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 98
    .end local v0  # "ex":Ljava/lang/Exception;
    .local v7, "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    :goto_112
    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 99
    .local v10, "tempT2":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 101
    .local v11, "tagsSPLITED2":[Ljava/lang/String;
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lColorsInPallet:Ljava/util/List;

    array-length v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 104
    .local v12, "tempSampleColors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    const/4 v0, 0x0

    move v13, v0

    .local v13, "j":I
    :goto_12e
    const/16 v0, 0xa

    if-ge v13, v0, :cond_242

    array-length v0, v11
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_133} :catch_26c

    if-ge v13, v0, :cond_242

    .line 107
    :try_start_135
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->isInternal:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_141
    .catch Ljava/lang/ClassNotFoundException; {:try_start_135 .. :try_end_141} :catch_234
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_141} :catch_22e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_135 .. :try_end_141} :catch_228
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_141} :catch_26c

    if-eqz v0, :cond_176

    .line 108
    :try_start_143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v14, v11, v13

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    :try_end_174
    .catch Ljava/lang/ClassNotFoundException; {:try_start_143 .. :try_end_174} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_174} :catch_1b1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_143 .. :try_end_174} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_174} :catch_26c

    .local v0, "tempColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    goto/16 :goto_1f2

    .line 111
    .end local v0  # "tempColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    :cond_176
    :try_start_176
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v11, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_1a9} :catch_1bf
    .catch Ljava/lang/ClassNotFoundException; {:try_start_176 .. :try_end_1a9} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_1a9} :catch_1b1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_176 .. :try_end_1a9} :catch_1aa

    .line 114
    .restart local v0  # "tempColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    goto :goto_1f2

    .line 126
    .end local v0  # "tempColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    :catch_1aa
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    goto/16 :goto_22d

    .line 121
    :catch_1b1
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    goto/16 :goto_233

    .line 118
    :catch_1b8
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    goto/16 :goto_239

    .line 112
    :catch_1bf
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1c0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lPalletsTags:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v11, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    move-object v0, v14

    .line 116
    .local v0, "tempColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    :goto_1f2
    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v15

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v16
    :try_end_200
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c0 .. :try_end_200} :catch_234
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_200} :catch_22e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1c0 .. :try_end_200} :catch_228
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_200} :catch_26c

    move-object/from16 v17, v2

    :try_start_202
    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v16

    move-object/from16 v18, v0

    .end local v0  # "tempColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    .local v18, "tempColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v0
    :try_end_210
    .catch Ljava/lang/ClassNotFoundException; {:try_start_202 .. :try_end_210} :catch_226
    .catch Ljava/io/IOException; {:try_start_202 .. :try_end_210} :catch_224
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_202 .. :try_end_210} :catch_222
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_210} :catch_26c

    move-object/from16 v16, v3

    .end local v3  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    const/high16 v3, 0x3f800000  # 1.0f

    :try_start_214
    invoke-direct {v14, v15, v2, v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_214 .. :try_end_21a} :catch_220
    .catch Ljava/io/IOException; {:try_start_214 .. :try_end_21a} :catch_21e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_214 .. :try_end_21a} :catch_21c
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_21a} :catch_26c

    .line 124
    nop

    .line 129
    goto :goto_23a

    .line 126
    .end local v18  # "tempColor":Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
    :catch_21c
    move-exception v0

    goto :goto_22d

    .line 121
    :catch_21e
    move-exception v0

    goto :goto_233

    .line 118
    :catch_220
    move-exception v0

    goto :goto_239

    .line 126
    .end local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v3  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :catch_222
    move-exception v0

    goto :goto_22b

    .line 121
    :catch_224
    move-exception v0

    goto :goto_231

    .line 118
    :catch_226
    move-exception v0

    goto :goto_237

    .line 126
    :catch_228
    move-exception v0

    move-object/from16 v17, v2

    :goto_22b
    move-object/from16 v16, v3

    .line 128
    .end local v3  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :goto_22d
    goto :goto_23a

    .line 121
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v3  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :catch_22e
    move-exception v0

    move-object/from16 v17, v2

    :goto_231
    move-object/from16 v16, v3

    .line 123
    .end local v3  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :goto_233
    goto :goto_23a

    .line 118
    .end local v0  # "e":Ljava/io/IOException;
    .end local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v3  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :catch_234
    move-exception v0

    move-object/from16 v17, v2

    :goto_237
    move-object/from16 v16, v3

    .line 120
    .end local v3  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    .restart local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :goto_239
    nop

    .line 104
    .end local v0  # "e":Ljava/lang/ClassNotFoundException;
    :goto_23a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    goto/16 :goto_12e

    .end local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v3  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_242
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .line 132
    .end local v3  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v13  # "j":I
    .restart local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_246
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->lSampleColors:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    nop

    .end local v7  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10  # "tempT2":Ljava/lang/String;
    .end local v11  # "tagsSPLITED2":[Ljava/lang/String;
    .end local v12  # "tempSampleColors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    goto/16 :goto_84

    .end local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v3  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_254
    move-object/from16 v16, v3

    .line 136
    .end local v3  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6  # "i":I
    .restart local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game2;->getGlyphText()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26a

    .line 137
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/16 v2, 0xf

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->INIT_GAME:I
    :try_end_26a
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_26a} :catch_26c

    .line 140
    :cond_26a
    nop

    .line 143
    .end local v4  # "tempT":Ljava/lang/String;
    .end local v5  # "tagsSPLITED":[Ljava/lang/String;
    .end local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_26d

    .line 141
    :catch_26c
    move-exception v0

    .line 144
    :goto_26d
    return-void
.end method
