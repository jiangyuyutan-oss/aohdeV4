.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;
.super Ljava/lang/Object;
.source "TextSlider_Line.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;
    }
.end annotation


# instance fields
.field private align:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

.field private iHeight:I

.field private lText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IILage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;F)V
    .registers 16
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "nWidth"  # I
    .param p3, "extraHeight"  # I
    .param p4, "nAlign"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;
    .param p5, "nFONT_SCALE"  # F

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->lText:Ljava/util/List;

    .line 35
    iput-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->align:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    .line 37
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "tempLine":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "currentW":I
    array-length v4, v1

    .local v4, "iSize":I
    const/4 v5, 0x0

    .local v5, "last":I
    :goto_16
    if-ge v2, v4, :cond_8e

    .line 40
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 42
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float v6, v6, p5

    float-to-int v6, v6

    add-int/2addr v3, v6

    .line 44
    if-ge v3, p2, :cond_49

    add-int/lit8 v6, v4, -0x1

    if-ne v2, v6, :cond_8b

    if-ge v3, p2, :cond_8b

    .line 45
    :cond_49
    const-string v6, ""

    .line 46
    .local v6, "addLine":Ljava/lang/String;
    move v7, v5

    .local v7, "j":I
    :goto_4c
    add-int/lit8 v8, v4, -0x1

    if-ne v2, v8, :cond_54

    if-ge v3, p2, :cond_54

    move v8, v4

    goto :goto_55

    :cond_54
    move v8, v2

    :goto_55
    if-ge v7, v8, :cond_71

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 46
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 50
    .end local v7  # "j":I
    :cond_71
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->lText:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    move v5, v2

    .line 54
    if-lt v3, p2, :cond_84

    add-int/lit8 v7, v4, -0x1

    if-ne v2, v7, :cond_84

    .line 55
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->lText:Ljava/util/List;

    aget-object v8, v1, v2

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_84
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float v7, v7, p5

    float-to-int v3, v7

    .line 39
    .end local v6  # "addLine":Ljava/lang/String;
    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 62
    .end local v2  # "i":I
    .end local v3  # "currentW":I
    .end local v4  # "iSize":I
    .end local v5  # "last":I
    :cond_8e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->lText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, p5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    mul-float v0, v0, v2

    int-to-float v2, p3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->iHeight:I

    .line 63
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILcom/badlogic/gdx/graphics/Color;I)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "oColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "fontID"  # I

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->lText:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_7
    if-ge v0, v1, :cond_25

    .line 69
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->lText:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v3

    mul-int v2, v2, v0

    add-int v7, p3, v2

    move-object v3, p1

    move v4, p6

    move v6, p2

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 71
    .end local v0  # "i":I
    .end local v1  # "iSize":I
    :cond_25
    return-void
.end method

.method public final getHeight()I
    .registers 2

    .line 80
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->iHeight:I

    return v0
.end method

.method public final setHeight(I)V
    .registers 2
    .param p1, "iHeight"  # I

    .line 76
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;->iHeight:I

    .line 77
    return-void
.end method
