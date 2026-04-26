.class public Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;
.super Ljava/lang/Object;
.source "Wonder.java"


# instance fields
.field public iPosX:I

.field public iPosY:I

.field public iSinceYear:I

.field public iUntilYear:I

.field public isAvailable:Z

.field public nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

.field public sName:Ljava/lang/String;

.field public sWiki:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 12
    .param p1, "sName"  # Ljava/lang/String;
    .param p2, "sImage"  # Ljava/lang/String;
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "iSinceYear"  # I
    .param p6, "iUntilYear"  # I
    .param p7, "sWiki"  # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->sName:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->isAvailable:Z

    .line 34
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->sName:Ljava/lang/String;

    .line 35
    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->iSinceYear:I

    .line 36
    iput p6, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->iUntilYear:I

    .line 38
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->iPosX:I

    .line 39
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->iPosY:I

    .line 40
    iput-object p7, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->sWiki:Ljava/lang/String;

    .line 43
    :try_start_15
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wonders/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "images/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_50} :catch_51

    .line 46
    goto :goto_66

    .line 44
    :catch_51
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    const-string v3, "UI/pix"

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 47
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_66
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    .line 71
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 75
    goto :goto_a

    .line 73
    :catch_9
    move-exception v0

    .line 76
    :goto_a
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .registers 10
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"  # I
    .param p3, "nScale"  # F

    .line 52
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000  # 1.0f

    const v1, 0x3f59999a  # 0.85f

    invoke-direct {v4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->mount:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFLcom/badlogic/gdx/graphics/Color;I)V

    .line 53
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFI)V
    .registers 11
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"  # I
    .param p3, "nScale"  # F
    .param p4, "nImageID"  # I

    .line 56
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000  # 1.0f

    const v1, 0x3f59999a  # 0.85f

    invoke-direct {v4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFLcom/badlogic/gdx/graphics/Color;I)V

    .line 57
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFLcom/badlogic/gdx/graphics/Color;)V
    .registers 11
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"  # I
    .param p3, "nScale"  # F
    .param p4, "nColor"  # Lcom/badlogic/gdx/graphics/Color;

    .line 60
    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->mount:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFLcom/badlogic/gdx/graphics/Color;I)V

    .line 61
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFLcom/badlogic/gdx/graphics/Color;I)V
    .registers 10
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"  # I
    .param p3, "nScale"  # F
    .param p4, "nColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "nImageID"  # I

    .line 64
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->iPosX:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 65
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v2

    mul-int v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->iPosY:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 66
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v3

    mul-int v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p3

    float-to-int v2, v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 64
    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 67
    return-void
.end method
