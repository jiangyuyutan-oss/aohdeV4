.class public Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;
.super Ljava/lang/Object;
.source "Graph_Vertical_Info.java"


# instance fields
.field private iTextPosX:I

.field private iTextWidth:I

.field private iTextsSize:I

.field private lColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lSortedIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTextWidths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J

.field private moveRight:Z

.field private moveable:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;IZ)V
    .registers 13
    .param p3, "iWidth"  # I
    .param p4, "nSortText"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;IZ)V"
        }
    .end annotation

    .line 39
    .local p1, "nTexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "nColors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    .line 24
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextsSize:I

    .line 25
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTextWidths:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lColors:Ljava/util/List;

    .line 28
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->moveable:Z

    .line 29
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->moveRight:Z

    .line 30
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextWidth:I

    .line 31
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextPosX:I

    .line 33
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTime:J

    .line 35
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextsSize:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lColors:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "tempAdded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextsSize:I

    if-ge v2, v3, :cond_53

    .line 49
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 52
    .end local v2  # "i":I
    :cond_53
    const/4 v2, 0x1

    if-eqz p4, :cond_cf

    .line 53
    :goto_56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_d3

    .line 54
    const/4 v3, 0x0

    .line 56
    .local v3, "nMinID":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_64
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextsSize:I

    if-ge v4, v5, :cond_79

    .line 57
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_76

    .line 58
    move v3, v4

    .line 59
    goto :goto_79

    .line 56
    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 63
    .end local v4  # "i":I
    :cond_79
    :goto_79
    add-int/lit8 v4, v3, 0x1

    .restart local v4  # "i":I
    :goto_7b
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextsSize:I

    if-ge v4, v5, :cond_a1

    .line 64
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_9e

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 65
    move v3, v4

    .line 63
    :cond_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 69
    .end local v4  # "i":I
    :cond_a1
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v3  # "nMinID":I
    goto :goto_56

    .line 78
    :cond_cf
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    .line 79
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lColors:Ljava/util/List;

    .line 83
    :cond_d3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTextWidths:Ljava/util/List;

    .line 85
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    const v4, 0x3f333333  # 0.7f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 87
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ed
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextsSize:I

    if-ge v3, v5, :cond_121

    .line 88
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 89
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextWidth:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextWidth:I

    .line 90
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTextWidths:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_ed

    .line 93
    .end local v3  # "i":I
    :cond_121
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 95
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextWidth:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextsSize:I

    mul-int v3, v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextsSize:I

    sub-int/2addr v6, v2

    mul-int v5, v5, v6

    add-int/2addr v3, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextsSize:I

    int-to-float v4, v4

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextWidth:I

    .line 97
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->updateMoveable(I)V

    .line 98
    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I

    .line 115
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->moveable:Z

    const v1, 0x3f333333  # 0.7f

    if-eqz v0, :cond_63

    .line 117
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v2, p2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int/2addr v3, p3

    int-to-float v3, v3

    int-to-float v4, p4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v5, v5

    neg-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 118
    .local v0, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 119
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 121
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2d

    sub-long/2addr v4, v6

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-gez v7, :cond_60

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTime:J

    .line 124
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->moveRight:Z

    if-eqz v2, :cond_52

    .line 125
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextPosX:I

    sub-int/2addr v2, v6

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextPosX:I

    .line 127
    neg-int v2, v2

    add-int/2addr v2, p4

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextWidth:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_4e

    .line 128
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->moveRight:Z

    xor-int/2addr v2, v6

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->moveRight:Z

    .line 131
    :cond_4e
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    goto :goto_63

    .line 134
    :cond_52
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextPosX:I

    add-int/2addr v3, v6

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextPosX:I

    .line 136
    if-ltz v3, :cond_5c

    .line 137
    xor-int/2addr v2, v6

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->moveRight:Z

    .line 140
    :cond_5c
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    goto :goto_63

    .line 144
    :cond_60
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 148
    .end local v0  # "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    :cond_63
    :goto_63
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "tempOffsetX":I
    :goto_65
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextsSize:I

    if-ge v0, v3, :cond_13b

    .line 149
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 150
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    add-int v3, p2, v2

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextPosX:I

    add-int v6, v3, v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v7, p3, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v8, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v9, v3

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 151
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 152
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    add-int v3, p2, v2

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextPosX:I

    add-int v6, v3, v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v7, p3, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v8, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v9, v3

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 154
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 156
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int v4, p2, v2

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextPosX:I

    add-int/2addr v4, v5

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v3, v4, p3, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefaultWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 158
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTextWidths:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_65

    .line 161
    .end local v0  # "i":I
    .end local v2  # "tempOffsetX":I
    :cond_13b
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->moveable:Z

    if-eqz v0, :cond_147

    .line 164
    :try_start_13f
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 165
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_145
    .catch Ljava/lang/IllegalStateException; {:try_start_13f .. :try_end_145} :catch_146

    .line 168
    goto :goto_147

    .line 166
    :catch_146
    move-exception v0

    .line 170
    :cond_147
    :goto_147
    return-void
.end method

.method public final getColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lColors:Ljava/util/List;

    return-object v0
.end method

.method public final getSortedID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 188
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getText(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 184
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTextSize()I
    .registers 2

    .line 180
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextsSize:I

    return v0
.end method

.method public final resetMoveable()V
    .registers 2

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextPosX:I

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->moveRight:Z

    .line 175
    return-void
.end method

.method public final updateMoveable(I)V
    .registers 4
    .param p1, "iWidth"  # I

    .line 101
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextWidth:I

    if-le v0, p1, :cond_b

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->moveable:Z

    .line 103
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->resetMoveable()V

    goto :goto_1a

    .line 106
    :cond_b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->resetMoveable()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->moveable:Z

    .line 108
    div-int/lit8 v0, p1, 0x2

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->iTextPosX:I

    .line 110
    :goto_1a
    return-void
.end method
