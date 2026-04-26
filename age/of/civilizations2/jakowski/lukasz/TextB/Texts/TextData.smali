.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextData;
.super Ljava/lang/Object;
.source "TextData.java"


# instance fields
.field private iWidth:I

.field private sText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextData;->sText:Ljava/lang/String;

    .line 21
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 22
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextData;->iWidth:I

    .line 23
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextData;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 32
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextData;->iWidth:I

    return v0
.end method
