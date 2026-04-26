.class public Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;
.super Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
.source "TitleM_TextSmallOpinion.java"


# instance fields
.field public iOpinionWidth:I

.field public opinionColor:Lcom/badlogic/gdx/graphics/Color;

.field public sDiplomacy:Ljava/lang/String;

.field public sOpinion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZILjava/lang/String;)V
    .registers 10
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iHeight"  # I
    .param p3, "moveable"  # Z
    .param p4, "resizable"  # Z
    .param p5, "iOpinion"  # I
    .param p6, "sDiplomacy"  # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;-><init>(Ljava/lang/String;IZZ)V

    .line 20
    iput-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->sDiplomacy:Ljava/lang/String;

    .line 22
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->RELATION_AT_WAR:I

    if-ne p5, v0, :cond_16

    .line 23
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v1, "AtWar"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->sOpinion:Ljava/lang/String;

    goto :goto_33

    .line 26
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-lez p5, :cond_25

    const-string v1, "+"

    :cond_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->sOpinion:Ljava/lang/String;

    .line 29
    :goto_33
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->sOpinion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 30
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->iOpinionWidth:I

    .line 32
    if-nez p5, :cond_52

    .line 33
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->opinionColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_5d

    .line 35
    :cond_52
    if-lez p5, :cond_59

    .line 36
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->opinionColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_5d

    .line 39
    :cond_59
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->opinionColor:Lcom/badlogic/gdx/graphics/Color;

    .line 41
    :goto_5d
    return-void
.end method


# virtual methods
.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "nWidth"  # I
    .param p6, "sliderMenuIsActive"  # Z

    .line 47
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->sText:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->setTextWidth(I)V

    .line 54
    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->getTextWidth()I

    move-result v0

    if-gez v0, :cond_2d

    .line 55
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->setTextWidth(I)V

    .line 58
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmallOpinion;->setTextHeight(I)V

    .line 60
    :cond_2d
    return-void
.end method
