.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide;
.source "TextLeftSide_Icon.java"


# instance fields
.field private iImageID:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iImageID"  # I

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide;-><init>(Ljava/lang/String;II)V

    .line 19
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->iImageID:I

    .line 20
    return-void
.end method

.method private final getImageScale(I)F
    .registers 4
    .param p1, "nImageHeight"  # I

    .line 30
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->getHeightE()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->getHeightE()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    div-float v1, v0, v1

    :cond_15
    return v1
.end method


# virtual methods
.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 24
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->getPosXE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->iImageID:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->getImageScale(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->getHeightE()I

    move-result v2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->iImageID:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->iImageID:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->getImageScale(I)F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->getImageScale(I)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v5, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide_Icon;->getImageScale(I)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v6, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 26
    invoke-super/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextLeftSide;->drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 27
    return-void
.end method
