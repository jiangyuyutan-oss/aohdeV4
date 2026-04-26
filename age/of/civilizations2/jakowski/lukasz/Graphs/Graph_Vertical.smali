.class public Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;
.super Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
.source "Graph_Vertical.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;
    }
.end annotation


# instance fields
.field private GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

.field private bDecimal:B

.field private drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

.field private fAvaragePoint:F

.field private fScrollNewMenuPosY:F

.field private iAvaragePosY:I

.field private iButtonsPosX:I

.field private iButtonsPosY:I

.field private iDataWidth:I

.field private iHoveredID:I

.field private iMaxPoint:I

.field private iMinPoint:I

.field private iScrollPosX:I

.field private iScrollPosX2:I

.field private iValuesSize:I

.field private iValuesTotal:I

.field private iWidthTextY:I

.field private lValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;",
            ">;"
        }
    .end annotation
.end field

.field private lessThanTen:Z

.field private moveable:Z

.field private sTextX:Ljava/lang/String;

.field private sTextY:Ljava/lang/String;

.field private scrollModeY:Z

.field private splitBy100:Z

.field private statisticsMode:Z

.field private verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;)V
    .registers 14
    .param p1, "nType"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;
    .param p2, "sTextX"  # Ljava/lang/String;
    .param p3, "sTextY"  # Ljava/lang/String;
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "visible"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIZ",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p9, "nValues":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;>;"
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    .line 37
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesTotal:I

    .line 40
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    .line 45
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->splitBy100:Z

    .line 49
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->statisticsMode:Z

    .line 65
    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->bDecimal:B

    .line 66
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lessThanTen:Z

    .line 70
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->moveable:Z

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    .line 78
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->scrollModeY:Z

    .line 81
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iScrollPosX:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iScrollPosX2:I

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fScrollNewMenuPosY:F

    .line 97
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    .line 99
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne p1, v1, :cond_2f

    .line 100
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$1;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_f0

    .line 126
    :cond_2f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->POPULATION_OF_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v1, v2, :cond_3e

    .line 127
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_f0

    .line 167
    :cond_3e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->POPULATION_OF_CIVILIZATION_ALL_AROUND_WORLD:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v1, v2, :cond_4d

    .line 168
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_f0

    .line 194
    :cond_4d
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->ARMIES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v1, v2, :cond_5c

    .line 195
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$4;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_f0

    .line 219
    :cond_5c
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->ARMY_PER_CAPITA:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6e

    .line 220
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$5;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    .line 244
    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->splitBy100:Z

    goto/16 :goto_f0

    .line 245
    :cond_6e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->TECHNOLOGY_LEVELS:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v1, v2, :cond_7f

    .line 246
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$6;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    .line 270
    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->splitBy100:Z

    goto/16 :goto_f0

    .line 272
    :cond_7f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->POPULATION_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v1, v2, :cond_8d

    .line 273
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$7;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    goto :goto_f0

    .line 300
    :cond_8d
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->CONQUERED_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v1, v2, :cond_9b

    .line 301
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$8;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    goto :goto_f0

    .line 328
    :cond_9b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->CONSTRUCTED_BUILDINGS:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v1, v2, :cond_a9

    .line 329
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$9;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    goto :goto_f0

    .line 357
    :cond_a9
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->ECONOMY_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v1, v2, :cond_b7

    .line 358
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$10;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    goto :goto_f0

    .line 385
    :cond_b7
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->ARMY_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v1, v2, :cond_c5

    .line 386
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$11;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    goto :goto_f0

    .line 413
    :cond_c5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->TECHNOLOGY_LEVELS_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v1, v2, :cond_d5

    .line 414
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$12;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    .line 441
    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->splitBy100:Z

    goto :goto_f0

    .line 443
    :cond_d5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->ECONOMY_OF_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v1, v2, :cond_e3

    .line 444
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$13;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    goto :goto_f0

    .line 470
    :cond_e3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->POPULATION_OF_CIVILIZATION_BY_NATIONALITIES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v1, v2, :cond_f0

    .line 471
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$14;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    .line 498
    :cond_f0
    :goto_f0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    .line 500
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setPosX(I)V

    .line 501
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setPosY(I)V

    .line 502
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setWidthE(I)V

    .line 503
    invoke-virtual {p0, p7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setHeightE(I)V

    .line 504
    invoke-virtual {p0, p8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setVisibleE(Z)V

    .line 506
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->sTextX:Ljava/lang/String;

    .line 507
    iput-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->sTextY:Ljava/lang/String;

    .line 509
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v2, 0x3f333333  # 0.7f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 511
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 512
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iWidthTextY:I

    .line 514
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 516
    iput-object p9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    .line 517
    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    .line 519
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->buildData()V

    .line 520
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->buildValuesHeights()V

    .line 522
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->GRAPH_VERTICAL:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 523
    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    .line 31
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    .line 31
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    .line 31
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    return-object v0
.end method

.method static synthetic access$300(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V
    .registers 5
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;
    .param p1, "x1"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I
    .param p4, "x4"  # I

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;

    .line 31
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesTotal:I

    return v0
.end method

.method static synthetic access$500(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .registers 6
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;
    .param p1, "x1"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I

    .line 31
    invoke-direct/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsValueWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    return-void
.end method

.method private final drawStatisticsBegan(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 25
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 788
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v14, 0x3f333333  # 0.7f

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 790
    const/4 v0, 0x0

    .line 792
    .local v0, "tempOffsetX":I
    iget-object v3, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->sTextX:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v5, v1, p3

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getStatisticsWidth()I

    move-result v1

    mul-int/lit8 v6, v1, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    .line 793
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getStatisticsWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 795
    const/4 v1, 0x0

    move/from16 v17, v0

    move v0, v1

    .local v0, "i":I
    .local v17, "tempOffsetX":I
    :goto_4a
    iget-object v1, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->getTextSize()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 796
    iget-object v1, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    add-int v1, v1, v17

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v5, v1, p3

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getStatisticsWidth()I

    move-result v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    .line 797
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getStatisticsWidth()I

    move-result v1

    add-int v17, v17, v1

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 800
    .end local v0  # "i":I
    :cond_86
    iget-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;->getTotal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v1, v1

    mul-float v1, v1, v14

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int v0, v0, v17

    add-int v4, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v0

    sub-int v0, v0, v17

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v1, v1

    mul-float v1, v1, v14

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v6, v0, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    .line 802
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int v1, v1, p2

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v14

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2

    sub-int v2, v2, p3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v14

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v4

    neg-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v14

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    move-object/from16 v18, v0

    .line 803
    .local v18, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 804
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 806
    iget v0, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    add-int v4, v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZI)V

    .line 809
    :try_start_136
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 810
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_13c
    .catch Ljava/lang/IllegalStateException; {:try_start_136 .. :try_end_13c} :catch_13d

    .line 813
    goto :goto_13e

    .line 811
    :catch_13d
    move-exception v0

    .line 816
    :goto_13e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 817
    const/4 v0, -0x1

    .restart local v0  # "i":I
    :goto_144
    iget-object v1, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->getTextSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1bd

    .line 818
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Vertical:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getStatisticsWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getStatisticsWidth()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int v11, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Vertical:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v12, v1, p3

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/16 v16, 0x1

    move-object/from16 v10, p1

    const v3, 0x3f333333  # 0.7f

    move v14, v1

    move-object v1, v15

    move v15, v2

    invoke-virtual/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 817
    add-int/lit8 v0, v0, 0x1

    move-object v15, v1

    const v14, 0x3f333333  # 0.7f

    goto :goto_144

    :cond_1bd
    move-object v1, v15

    const v3, 0x3f333333  # 0.7f

    .line 821
    .end local v0  # "i":I
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getStatisticsWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getStatisticsWidth()I

    move-result v2

    iget-object v4, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->getTextSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, 0x1

    mul-int v2, v2, v4

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int v11, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int v12, v0, p3

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v14, v0, v2

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 823
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 824
    return-void
.end method

.method private final drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .registers 18
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nText"  # Ljava/lang/String;
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "nWidth"  # I

    .line 881
    move-object v9, p1

    move v10, p3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d4ccccd  # 0.05f

    const v11, 0x3f333333  # 0.7f

    invoke-direct {v0, v1, v1, v1, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 882
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    mul-float v0, v0, v11

    float-to-int v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v0, v2

    move-object v2, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 884
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dc08312  # 0.094f

    const v2, 0x3ecccccd  # 0.4f

    const v3, 0x3f19999a  # 0.6f

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 885
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v0, p4, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    mul-float v0, v0, v11

    float-to-int v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v6, v0, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move v3, p3

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 887
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 888
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    mul-float v0, v0, v11

    float-to-int v0, v0

    add-int v0, p4, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int v4, v0, v2

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 889
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 890
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Vertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int/lit8 v0, v10, -0x1

    add-int v3, v0, p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Vertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v4, p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    mul-float v0, v0, v11

    float-to-int v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v0, v2

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 892
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v1, v10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int v2, v2, p4

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v3, p5, v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    float-to-int v4, v4

    neg-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    move-object v1, v0

    .line 893
    .local v1, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 894
    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 896
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v2, p4, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, p2

    invoke-static {p1, p2, v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 900
    :try_start_f8
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 901
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_fe
    .catch Ljava/lang/IllegalStateException; {:try_start_f8 .. :try_end_fe} :catch_ff

    .line 904
    goto :goto_100

    .line 902
    :catch_ff
    move-exception v0

    .line 905
    :goto_100
    return-void
.end method

.method private final drawStatisticsEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZI)V
    .registers 20
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z
    .param p6, "tempOffsetX"  # I

    .line 827
    move-object v6, p0

    move-object v7, p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    const v8, 0x3f333333  # 0.7f

    mul-float v0, v0, v8

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 829
    .local v9, "tempFlagScale":F
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_11
    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v10, v0, :cond_207

    .line 830
    iget-object v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getInView()Z

    move-result v0

    if-nez v0, :cond_25

    .line 831
    goto/16 :goto_203

    .line 834
    :cond_25
    rem-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_63

    .line 835
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v10, 0x1

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int v1, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsRowBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 838
    :cond_63
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_a9

    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_a9

    .line 839
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v10, 0x1

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int v1, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsRowHoverBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 842
    :cond_a9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v10, 0x1

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int v1, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsRowLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 844
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 845
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v1, v10}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;->getStatsLPCivFlagID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    .line 846
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_W:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v2, v1, p2

    .line 847
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v4, v10, 0x1

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;->getStatsLPCivFlagID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    float-to-double v4, v1

    .line 848
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    float-to-double v11, v1

    .line 849
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v5, v11

    .line 845
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 851
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    .line 852
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_W:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v2, v1, p2

    .line 853
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v4, v10, 0x1

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    float-to-double v4, v1

    .line 854
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    float-to-double v11, v1

    .line 855
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v5, v11

    .line 851
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 857
    iget-object v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;->getStatsLP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_W:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/lit8 v4, v10, 0x1

    mul-int v1, v1, v4

    add-int/2addr v0, v1

    add-int v4, v0, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_W:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsValue2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    .line 859
    iget-object v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;

    move v2, v10

    move/from16 v3, p6

    move v4, p2

    move/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical$DrawStatisticsData;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 829
    :goto_203
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_11

    .line 862
    .end local v10  # "i":I
    :cond_207
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 863
    return-void
.end method

.method private final drawStatisticsRowBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I

    .line 871
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d4ccccd  # 0.05f

    const v2, 0x3f333333  # 0.7f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 872
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    add-int/lit8 v7, p4, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int v8, v0, v1

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 873
    return-void
.end method

.method private final drawStatisticsRowHoverBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I

    .line 876
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 877
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int/lit8 v5, p4, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    const v2, 0x3f333333  # 0.7f

    mul-float v0, v0, v2

    float-to-int v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v0, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 878
    return-void
.end method

.method private final drawStatisticsRowLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I

    .line 866
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 867
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    const v2, 0x3f333333  # 0.7f

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/2addr v0, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int v4, v0, v2

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 868
    return-void
.end method

.method private final drawStatisticsValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V
    .registers 10
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nText"  # Ljava/lang/String;
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I

    .line 908
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, p4

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000  # 1.0f

    const v4, 0x3ee66666  # 0.45f

    invoke-direct {v2, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p2, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 909
    return-void
.end method

.method private final drawStatisticsValue2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .registers 11
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nText"  # Ljava/lang/String;
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "nWidth"  # I

    .line 931
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v1, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int/2addr v2, p4

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v3, p5, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 932
    .local v0, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 933
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 935
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_W:I

    add-int/2addr v1, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, p4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p2, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 939
    :try_start_26
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 940
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2c} :catch_2d

    .line 943
    goto :goto_2e

    .line 941
    :catch_2d
    move-exception v1

    .line 944
    :goto_2e
    return-void
.end method

.method private final drawStatisticsValueWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nText"  # Ljava/lang/String;
    .param p3, "nCivID"  # I
    .param p4, "nPosX"  # I
    .param p5, "nPosY"  # I

    .line 912
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    const v1, 0x3f333333  # 0.7f

    mul-float v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 914
    .local v0, "tempFlagScale":F
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 915
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v4, p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, p5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 917
    invoke-virtual {v3, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v5, v1, v3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-double v6, v1

    .line 918
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-double v7, v1

    .line 919
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 915
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 921
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v4, p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, p5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int v5, v1, v3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-double v6, v1

    .line 924
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-double v7, v1

    .line 925
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 921
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 927
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, p5

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3ee66666  # 0.45f

    invoke-direct {v3, v4, v4, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p2, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 928
    return-void
.end method

.method private final getButtonsPosX(I)I
    .registers 4
    .param p1, "i"  # I

    .line 982
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    mul-int v1, v1, p1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    mul-int v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getButtonsPosY(I)I
    .registers 4
    .param p1, "i"  # I

    .line 986
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    const v1, 0x3f333333  # 0.7f

    mul-float v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int v0, v0, p1

    return v0
.end method

.method private final getButtonsWidth()I
    .registers 4

    .line 1022
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    mul-int v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private final getStatisticsWidth()I
    .registers 4

    .line 947
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v1, v1

    const v2, 0x3f333333  # 0.7f

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->getTextSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    return v0
.end method

.method private final roundAverage()V
    .registers 5

    .line 1293
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fAvaragePoint:F

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_36

    .line 1294
    float-to-int v1, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->bDecimal:B

    .line 1295
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fAvaragePoint:F

    float-to-int v3, v1

    int-to-float v3, v3

    sub-float v3, v1, v3

    sub-float/2addr v1, v3

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fAvaragePoint:F

    .line 1296
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lessThanTen:Z

    .line 1297
    rem-int/lit8 v1, v0, 0xa

    const/16 v2, 0xa

    if-nez v1, :cond_30

    .line 1298
    div-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->bDecimal:B

    goto :goto_38

    .line 1299
    :cond_30
    if-ge v0, v2, :cond_38

    .line 1300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lessThanTen:Z

    goto :goto_38

    .line 1303
    :cond_36
    iput-byte v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->bDecimal:B

    .line 1305
    :cond_38
    :goto_38
    return-void
.end method

.method private final setHoveredID(I)V
    .registers 3
    .param p1, "nHoveredID"  # I

    .line 556
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    if-eq v0, p1, :cond_9

    .line 557
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    .line 558
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->buildElemHover()V

    .line 560
    :cond_9
    return-void
.end method

.method private final updateMoveable()V
    .registers 7

    .line 990
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x1

    const v2, 0x3f333333  # 0.7f

    const/4 v3, 0x0

    if-eqz v0, :cond_2c

    .line 991
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getButtonsPosY(I)I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v5, v2

    float-to-int v2, v5

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_27

    .line 992
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->moveable:Z

    goto :goto_49

    .line 995
    :cond_27
    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->moveable:Z

    .line 996
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    goto :goto_49

    .line 1000
    :cond_2c
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getButtonsWidth()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_45

    .line 1001
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->moveable:Z

    goto :goto_49

    .line 1003
    :cond_45
    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->moveable:Z

    .line 1004
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    .line 1007
    :goto_49
    return-void
.end method


# virtual methods
.method public final buildData()V
    .registers 16

    .line 1028
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 1029
    return-void

    .line 1032
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    .local v0, "nTexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    .local v1, "nColors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    const/4 v4, 0x0

    const v5, 0x3f333333  # 0.7f

    const/4 v6, 0x1

    if-ne v2, v3, :cond_80

    .line 1036
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_31

    .line 1037
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildContintentData()V

    .line 1036
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1040
    .end local v2  # "i":I
    :cond_31
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_32
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getContinentsSize()I

    move-result v3

    if-ge v2, v3, :cond_67

    .line 1041
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getOceanContinentID()I

    move-result v3

    if-eq v2, v3, :cond_64

    .line 1042
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getColor(I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1047
    .end local v2  # "i":I
    :cond_67
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v5

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    goto/16 :goto_5a7

    .line 1049
    :cond_80
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->POPULATION_OF_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_f6

    .line 1050
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_87
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_99

    .line 1051
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildPopulationData()V

    .line 1050
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 1054
    .end local v2  # "i":I
    :cond_99
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Native"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POP_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POP_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Second"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POP_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POP_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Rest"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POP_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    aget-object v2, v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    goto/16 :goto_5a7

    .line 1065
    :cond_f6
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->POPULATION_OF_CIVILIZATION_ALL_AROUND_WORLD:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    const-string v7, "]"

    const-string v8, "["

    const/high16 v9, 0x3f800000  # 1.0f

    const/high16 v10, 0x437f0000  # 255.0f

    if-ne v2, v3, :cond_1dd

    .line 1066
    const/4 v2, 0x0

    .line 1068
    .local v2, "nOfCivID":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v3

    if-ltz v3, :cond_130

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v11

    invoke-virtual {v3, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    if-lez v3, :cond_130

    .line 1069
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v11

    invoke-virtual {v3, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    goto :goto_13c

    .line 1072
    :cond_130
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    .line 1075
    :goto_13c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13d
    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v3, v11, :cond_14f

    .line 1076
    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildPopulationOfCivilizationAllAroundTheWorldData(I)V

    .line 1075
    add-int/lit8 v3, v3, 0x1

    goto :goto_13d

    .line 1079
    .end local v3  # "i":I
    :cond_14f
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    .restart local v3  # "i":I
    :goto_156
    if-ltz v3, :cond_16e

    .line 1080
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v6

    if-nez v6, :cond_16b

    .line 1081
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1079
    :cond_16b
    add-int/lit8 v3, v3, -0x1

    goto :goto_156

    .line 1085
    .end local v3  # "i":I
    :cond_16e
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    .line 1087
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v5

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-direct {v3, v0, v1, v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    .line 1091
    .end local v2  # "nOfCivID":I
    goto/16 :goto_5a7

    .line 1092
    :cond_1dd
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->ARMIES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_22a

    .line 1093
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e4
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_1f6

    .line 1094
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildArmiesData()V

    .line 1093
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e4

    .line 1097
    .end local v2  # "i":I
    :cond_1f6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "ArmySize"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f400000  # 0.75f

    const v6, 0x3de147ae  # 0.11f

    const v7, 0x3da3d70a  # 0.08f

    invoke-direct {v2, v3, v6, v7, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    goto/16 :goto_5a7

    .line 1102
    :cond_22a
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->ARMY_PER_CAPITA:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    const v11, 0x3e0f5c29  # 0.14f

    const v12, 0x3e3851ec  # 0.18f

    if-ne v2, v3, :cond_275

    .line 1103
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_237
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_249

    .line 1104
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildArmyPerCapitaData()V

    .line 1103
    add-int/lit8 v2, v2, 0x1

    goto :goto_237

    .line 1107
    .end local v2  # "i":I
    :cond_249
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "ArmyPerCapita"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v5, v12, v11, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1110
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    goto/16 :goto_5a7

    .line 1112
    :cond_275
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->TECHNOLOGY_LEVELS:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    const-string v13, "TechnologyLevels"

    if-ne v2, v3, :cond_2c1

    .line 1113
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_27e
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_290

    .line 1114
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildTechnologyLevelsData()V

    .line 1113
    add-int/lit8 v2, v2, 0x1

    goto :goto_27e

    .line 1117
    .end local v2  # "i":I
    :cond_290
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    goto/16 :goto_5a7

    .line 1122
    :cond_2c1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->POPULATION_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_30d

    .line 1123
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_2c8
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_2da

    .line 1124
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildPopulationByProvincesData()V

    .line 1123
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c8

    .line 1127
    .end local v2  # "i":I
    :cond_2da
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Population"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POP_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POP_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    goto/16 :goto_5a7

    .line 1132
    :cond_30d
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->ECONOMY_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    const-string v14, "Economy"

    if-ne v2, v3, :cond_359

    .line 1133
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_316
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_328

    .line 1134
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildEconomyByProvincesData()V

    .line 1133
    add-int/lit8 v2, v2, 0x1

    goto :goto_316

    .line 1137
    .end local v2  # "i":I
    :cond_328
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v14}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    goto/16 :goto_5a7

    .line 1142
    :cond_359
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->CONQUERED_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_3a5

    .line 1143
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_360
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_372

    .line 1144
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildConqueredProvincesData()V

    .line 1143
    add-int/lit8 v2, v2, 0x1

    goto :goto_360

    .line 1147
    .end local v2  # "i":I
    :cond_372
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "ConqueredProvinces"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    goto/16 :goto_5a7

    .line 1152
    :cond_3a5
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->CONSTRUCTED_BUILDINGS:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_3f1

    .line 1153
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_3ac
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_3be

    .line 1154
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildConstructedBuildingsData()V

    .line 1153
    add-int/lit8 v2, v2, 0x1

    goto :goto_3ac

    .line 1157
    .end local v2  # "i":I
    :cond_3be
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "ConstructedBuildings"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    goto/16 :goto_5a7

    .line 1162
    :cond_3f1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->ARMY_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_436

    .line 1163
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_3f8
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_40a

    .line 1164
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildArmyByProvincesData()V

    .line 1163
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f8

    .line 1167
    .end local v2  # "i":I
    :cond_40a
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Army"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v5, v12, v11, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    goto/16 :goto_5a7

    .line 1172
    :cond_436
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->TECHNOLOGY_LEVELS_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_480

    .line 1173
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_43d
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_44f

    .line 1174
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildTechnologyLevelsByProvincesData()V

    .line 1173
    add-int/lit8 v2, v2, 0x1

    goto :goto_43d

    .line 1177
    .end local v2  # "i":I
    :cond_44f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    goto/16 :goto_5a7

    .line 1182
    :cond_480
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->ECONOMY_OF_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_4ca

    .line 1183
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_487
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_499

    .line 1184
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildEconomyData()V

    .line 1183
    add-int/lit8 v2, v2, 0x1

    goto :goto_487

    .line 1187
    .end local v2  # "i":I
    :cond_499
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v14}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY_GRADIENT:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    goto/16 :goto_5a7

    .line 1192
    :cond_4ca
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->POPULATION_OF_CIVILIZATION_BY_NATIONALITIES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_5a7

    .line 1193
    const/4 v2, 0x0

    .line 1195
    .local v2, "nOfCivID":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v3

    if-ltz v3, :cond_4fc

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v11

    invoke-virtual {v3, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    if-lez v3, :cond_4fc

    .line 1196
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v11

    invoke-virtual {v3, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    goto :goto_508

    .line 1199
    :cond_4fc
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    .line 1202
    :goto_508
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_509
    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v3, v11, :cond_51b

    .line 1203
    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildPopulationOfCivByNationalitiesData(I)V

    .line 1202
    add-int/lit8 v3, v3, 0x1

    goto :goto_509

    .line 1206
    .end local v3  # "i":I
    :cond_51b
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    .restart local v3  # "i":I
    :goto_522
    if-ltz v3, :cond_53a

    .line 1207
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v6

    if-nez v6, :cond_537

    .line 1208
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1206
    :cond_537
    add-int/lit8 v3, v3, -0x1

    goto :goto_522

    .line 1212
    .end local v3  # "i":I
    :cond_53a
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    .line 1214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v5

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-direct {v3, v0, v1, v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    .line 1220
    .end local v2  # "nOfCivID":I
    :cond_5a7
    :goto_5a7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    .local v2, "tempData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;>;"
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_5ad
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v3, v6, :cond_5bf

    .line 1223
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    add-int/lit8 v3, v3, 0x1

    goto :goto_5ad

    .line 1225
    .end local v3  # "i":I
    :cond_5bf
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1227
    :goto_5c4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5fb

    .line 1228
    const/4 v3, 0x0

    .line 1230
    .local v3, "tempMaxID":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_5cc
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5ec

    .line 1231
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v8

    if-le v7, v8, :cond_5e9

    .line 1232
    move v3, v6

    .line 1230
    :cond_5e9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5cc

    .line 1236
    .end local v6  # "i":I
    :cond_5ec
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1238
    .end local v3  # "tempMaxID":I
    goto :goto_5c4

    .line 1241
    :cond_5fb
    :try_start_5fb
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iMaxPoint:I

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iMinPoint:I
    :try_end_60b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5fb .. :try_end_60b} :catch_60c

    .line 1244
    goto :goto_60f

    .line 1242
    :catch_60c
    move-exception v3

    .line 1243
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iMinPoint:I

    .line 1245
    .end local v3  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_60f
    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fAvaragePoint:F

    .line 1247
    const-wide/16 v3, 0x0

    .line 1248
    .local v3, "tempAvarage":J
    const/4 v6, 0x0

    .line 1250
    .local v6, "tempAvarageSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_616
    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v7, v8, :cond_677

    .line 1251
    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iMaxPoint:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v9

    if-ge v8, v9, :cond_638

    .line 1252
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v8

    iput v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iMaxPoint:I

    .line 1255
    :cond_638
    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iMinPoint:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v9

    if-le v8, v9, :cond_656

    .line 1256
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v8

    iput v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iMinPoint:I

    .line 1259
    :cond_656
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v8

    if-lez v8, :cond_674

    .line 1260
    add-int/lit8 v6, v6, 0x1

    .line 1261
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v3, v8

    .line 1250
    :cond_674
    add-int/lit8 v7, v7, 0x1

    goto :goto_616

    .line 1265
    .end local v7  # "i":I
    :cond_677
    long-to-float v7, v3

    int-to-float v8, v6

    div-float/2addr v7, v8

    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fAvaragePoint:F

    .line 1267
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v8, v8

    mul-float v8, v8, v5

    float-to-int v8, v8

    sub-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v8

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v9, v9

    mul-float v9, v9, v5

    float-to-int v5, v9

    sub-int/2addr v8, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v8, v5

    int-to-float v5, v8

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fAvaragePoint:F

    const/high16 v9, 0x42c80000  # 100.0f

    mul-float v8, v8, v9

    mul-float v5, v5, v8

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iMaxPoint:I

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iMinPoint:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    div-float/2addr v5, v8

    div-float/2addr v5, v9

    sub-float/2addr v7, v5

    float-to-int v5, v7

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iAvaragePosY:I

    .line 1268
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->roundAverage()V

    .line 1270
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->updateMoveable()V

    .line 1271
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->updateInView()V

    .line 1273
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->countValuesTotal()V

    .line 1274
    return-void
.end method

.method public buildElemHover()V
    .registers 13

    .line 564
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    if-ltz v0, :cond_350

    .line 565
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Type;

    if-ne v0, v1, :cond_356

    .line 566
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->statisticsMode:Z

    const-string v1, "Provinces"

    const-string v2, "]"

    const-string v3, "/"

    const-string v4, " ["

    const-string v5, ": "

    const-string v6, ""

    if-nez v0, :cond_1d6

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v7, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    :try_start_24
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Flag_Big;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getCivID()I

    move-result v9

    invoke-direct {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Flag_Big;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-interface {v7}, Ljava/util/List;->clear()V
    :try_end_94
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_24 .. :try_end_94} :catch_95

    .line 582
    goto :goto_ea

    .line 576
    :catch_95
    move-exception v8

    .line 577
    .local v8, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image_Big;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-direct {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image_Big;-><init>(I)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v11, "Undiscovered"

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 584
    .end local v8  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_ea
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;-><init>()V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 588
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 593
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_151
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValuesSize()I

    move-result v2

    if-ge v1, v2, :cond_1cd

    .line 594
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v4

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValueDataTypeID(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_151

    .line 601
    .end local v1  # "i":I
    :cond_1cd
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 602
    .end local v0  # "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    .end local v7  # "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    goto/16 :goto_356

    .line 604
    :cond_1d6
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_356

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .restart local v0  # "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .restart local v7  # "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Flag_Big;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getCivID()I

    move-result v9

    invoke-direct {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Flag_Big;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 614
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;-><init>()V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 618
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 623
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_2c5
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValuesSize()I

    move-result v2

    if-ge v1, v2, :cond_348

    .line 624
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v4

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValueDataTypeID(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2c5

    .line 631
    .end local v1  # "i":I
    :cond_348
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 632
    .end local v0  # "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    .end local v7  # "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    goto :goto_356

    .line 637
    :cond_350
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->resetAnimation_2()V

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 640
    :cond_356
    :goto_356
    return-void
.end method

.method public final buildValuesHeights()V
    .registers 6

    .line 1285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v0, v1, :cond_30

    .line 1286
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    const v4, 0x3f333333  # 0.7f

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iMaxPoint:I

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->buildHeights(II)V

    .line 1285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1288
    .end local v0  # "i":I
    :cond_30
    return-void
.end method

.method public final countValuesTotal()V
    .registers 4

    .line 1277
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesTotal:I

    .line 1279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v0, v1, :cond_1c

    .line 1280
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesTotal:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesTotal:I

    .line 1279
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1282
    .end local v0  # "i":I
    :cond_1c
    return-void
.end method

.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 663
    move-object/from16 v7, p0

    move-object/from16 v15, p1

    iget-boolean v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->scrollModeY:Z

    const/4 v14, 0x0

    const/high16 v13, 0x3f800000  # 1.0f

    const/16 v16, 0x1

    if-eqz v0, :cond_50

    .line 664
    iget-boolean v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->statisticsMode:Z

    const v1, 0x3f7851ec  # 0.97f

    if-eqz v0, :cond_31

    .line 665
    iget v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v13

    if-lez v0, :cond_2e

    .line 666
    iget v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    iget v2, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fScrollNewMenuPosY:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setCurr(I)V

    .line 667
    iget v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fScrollNewMenuPosY:F

    mul-float v0, v0, v1

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fScrollNewMenuPosY:F

    goto :goto_4d

    .line 669
    :cond_2e
    iput-boolean v14, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->scrollModeY:Z

    goto :goto_4d

    .line 673
    :cond_31
    iget v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v13

    if-lez v0, :cond_4b

    .line 674
    iget v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    iget v2, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fScrollNewMenuPosY:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setCurr(I)V

    .line 675
    iget v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fScrollNewMenuPosY:F

    mul-float v0, v0, v1

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fScrollNewMenuPosY:F

    goto :goto_4d

    .line 677
    :cond_4b
    iput-boolean v14, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->scrollModeY:Z

    .line 681
    :goto_4d
    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 686
    :cond_50
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 687
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    const v12, 0x3f333333  # 0.7f

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v0, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v6, v0, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 688
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d99999a  # 0.075f

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 689
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patternReversed:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->patternReversed:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v0, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v6, v0, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 691
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 693
    iget-object v2, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->sTextY:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v1

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iWidthTextY:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v4, v0, p3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v6, 0x42b40000  # 90.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    .line 696
    iget-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v12

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v2, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v0, v15, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 698
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 701
    iget-boolean v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->statisticsMode:Z

    if-eqz v0, :cond_193

    .line 702
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->drawStatisticsBegan(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    move-object v6, v15

    const v17, 0x3f333333  # 0.7f

    goto/16 :goto_5c5

    .line 705
    :cond_193
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v15, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 708
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 709
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0, v15, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 710
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v10, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    iget v1, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iAvaragePosY:I

    add-int/2addr v0, v1

    add-int v11, v0, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    neg-int v3, v3

    move-object/from16 v9, p1

    const v17, 0x3f333333  # 0.7f

    move v12, v0

    const/high16 v4, 0x3f800000  # 1.0f

    move v13, v1

    const/4 v1, 0x0

    move v14, v2

    move-object v6, v15

    move v15, v3

    invoke-virtual/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 712
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int v3, v3, p3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v5

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v8, v8

    mul-float v8, v8, v17

    float-to-int v8, v8

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-direct {v0, v2, v3, v5, v8}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    move-object v2, v0

    .line 713
    .local v2, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 714
    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 716
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_3ef

    iget v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    if-ltz v0, :cond_3ef

    .line 717
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 718
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v5, v5, 0x1

    mul-int v3, v3, v5

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    mul-int v3, v3, v5

    sub-int/2addr v0, v3

    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v5, v5, 0x1

    mul-int v3, v3, v5

    sub-int/2addr v0, v3

    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v3

    add-int v10, v0, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v3

    add-int/2addr v0, v3

    add-int v11, v0, p3

    iget v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v12, v0, 0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sub-int v13, v0, v3

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 719
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v9, 0x3ccccccd  # 0.025f

    invoke-direct {v0, v3, v5, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 720
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v5, v5, 0x1

    mul-int v3, v3, v5

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    mul-int v3, v3, v5

    sub-int/2addr v0, v3

    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v5, v5, 0x1

    mul-int v3, v3, v5

    sub-int/2addr v0, v3

    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v3

    add-int v10, v0, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v3

    add-int/2addr v0, v3

    add-int v11, v0, p3

    iget v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v12, v0, 0x4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sub-int v13, v0, v3

    const/4 v15, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 721
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v5, v3, 0x2

    add-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v5, v5, 0x1

    mul-int v3, v3, v5

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iHoveredID:I

    mul-int v3, v3, v5

    sub-int/2addr v0, v3

    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v5, v5, 0x1

    mul-int v3, v3, v5

    sub-int/2addr v0, v3

    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v3

    add-int v10, v0, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v3

    add-int/2addr v0, v3

    add-int v11, v0, p3

    iget v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v12, v0, 0x4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sub-int v13, v0, v3

    const/4 v14, 0x1

    invoke-virtual/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 722
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 727
    :cond_3ef
    iget-boolean v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->splitBy100:Z

    if-eqz v0, :cond_458

    .line 728
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3f4
    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v0, v3, :cond_457

    .line 729
    iget-object v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getInView()Z

    move-result v3

    if-eqz v3, :cond_454

    .line 730
    iget-object v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v9, v0, 0x1

    mul-int v5, v5, v9

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int v5, v5, v0

    sub-int/2addr v3, v5

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v9, v0, 0x1

    mul-int v5, v5, v9

    sub-int/2addr v3, v5

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v3, v5

    add-int v10, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v3

    add-int v11, v3, p3

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v17

    float-to-int v5, v5

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    sub-int v13, v3, v5

    iget-object v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->getColors()Ljava/util/List;

    move-result-object v14

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->drawData_ONLY_SPLTTED(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;)V

    .line 728
    :cond_454
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f4

    .end local v0  # "i":I
    :cond_457
    goto :goto_4bc

    .line 734
    :cond_458
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_459
    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v0, v3, :cond_4bc

    .line 735
    iget-object v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getInView()Z

    move-result v3

    if-eqz v3, :cond_4b9

    .line 736
    iget-object v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v9, v0, 0x1

    mul-int v5, v5, v9

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int v5, v5, v0

    sub-int/2addr v3, v5

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v9, v0, 0x1

    mul-int v5, v5, v9

    sub-int/2addr v3, v5

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v3, v5

    add-int v10, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v3

    add-int v11, v3, p3

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v17

    float-to-int v5, v5

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    sub-int v13, v3, v5

    iget-object v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->getColors()Ljava/util/List;

    move-result-object v14

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;)V

    .line 734
    :cond_4b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_459

    .line 743
    .end local v0  # "i":I
    :cond_4bc
    :goto_4bc
    :try_start_4bc
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 744
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_4c2
    .catch Ljava/lang/IllegalStateException; {:try_start_4bc .. :try_end_4c2} :catch_4c3

    .line 747
    goto :goto_4c4

    .line 745
    :catch_4c3
    move-exception v0

    .line 750
    :goto_4c4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iMaxPoint:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v5

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v8, v8

    mul-float v8, v8, v17

    float-to-int v8, v8

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x1

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v9, 0x40000000  # 2.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    add-int/2addr v5, v8

    add-int v5, v5, p2

    .line 757
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v8

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    add-int/2addr v8, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    add-int/lit8 v8, v8, 0x1

    add-int v8, v8, p3

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v10, v10, v9

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v12, v12

    mul-float v11, v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v8, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 756
    invoke-static {v6, v0, v5, v8, v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 760
    iget-byte v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->bDecimal:B

    if-nez v0, :cond_542

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fAvaragePoint:F

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_53d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_57d

    :cond_542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fAvaragePoint:F

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lessThanTen:Z

    if-eqz v3, :cond_572

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v5, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->bDecimal:B

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_578

    :cond_572
    iget-byte v3, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->bDecimal:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    :goto_578
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_53d

    :goto_57d
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v17

    float-to-int v5, v5

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v5, v5, v9

    float-to-int v5, v5

    add-int/2addr v3, v5

    add-int v3, v3, p2

    .line 761
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v5

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    sub-int/2addr v5, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v8, v8

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    sub-int/2addr v5, v8

    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iAvaragePosY:I

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x1

    add-int v5, v5, p3

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 760
    invoke-static {v6, v0, v3, v5, v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 764
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 767
    .end local v2  # "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    :goto_5c5
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f19999a  # 0.6f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 769
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v2

    move-object/from16 v2, p1

    move-object v8, v6

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 770
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v5, v0, v2

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 772
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 774
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v6, v0, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 775
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v5, v0, v2

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 777
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-virtual {v0, v8, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 778
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v4, v0, p3

    const/4 v5, 0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v6, v0, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 780
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v8, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 781
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int v4, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v6, v0, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 782
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 783
    return-void
.end method

.method public getAnotherView()Z
    .registers 2

    .line 1390
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->statisticsMode:Z

    return v0
.end method

.method public getCurr()I
    .registers 2

    .line 1314
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->statisticsMode:Z

    if-eqz v0, :cond_7

    .line 1315
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    return v0

    .line 1318
    :cond_7
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    return v0
.end method

.method public getIsScrollable()Z
    .registers 2

    .line 1011
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->moveable:Z

    return v0
.end method

.method public isMoveable()Z
    .registers 2

    .line 1309
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->moveable:Z

    return v0
.end method

.method public final scrollTheMenu()V
    .registers 4

    .line 1366
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->moveable:Z

    if-eqz v0, :cond_2b

    .line 1367
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iScrollPosX:I

    if-lez v0, :cond_2b

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iScrollPosX2:I

    if-lez v1, :cond_2b

    .line 1368
    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000  # 3.0f

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v2, v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2b

    .line 1369
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iScrollPosX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iScrollPosX2:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000  # 1.25f

    mul-float v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->fScrollNewMenuPosY:F

    .line 1370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->scrollModeY:Z

    .line 1374
    :cond_2b
    return-void
.end method

.method public setAnotherView(Z)V
    .registers 4
    .param p1, "inAnotherView"  # Z

    .line 1395
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->statisticsMode:Z

    .line 1397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->scrollModeY:Z

    .line 1398
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    .line 1400
    if-nez p1, :cond_1e

    .line 1401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v0, v1, :cond_1e

    .line 1402
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->resetAnimation()V

    .line 1401
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1406
    .end local v0  # "i":I
    :cond_1e
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->updateMoveable()V

    .line 1407
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->updateInView()V

    .line 1409
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setHoveredID(I)V

    .line 1410
    return-void
.end method

.method public setCheckboxSt(Z)V
    .registers 6
    .param p1, "checkboxState"  # Z

    .line 646
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->buildValuesHeights()V

    .line 647
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->updateInView()V

    .line 649
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    const v3, 0x3f333333  # 0.7f

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Info;->updateMoveable(I)V

    .line 650
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->updateMoveable()V

    .line 652
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 653
    return-void
.end method

.method public setCurr(I)V
    .registers 9
    .param p1, "nButtonsPosX"  # I

    .line 1324
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3f333333  # 0.7f

    if-eqz v0, :cond_71

    .line 1325
    if-lez p1, :cond_14

    .line 1326
    const/4 p1, 0x0

    .line 1327
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    .line 1328
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->scrollModeY:Z

    goto :goto_64

    .line 1329
    :cond_14
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    neg-int v0, v0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    mul-int v0, v0, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    if-ge p1, v0, :cond_64

    .line 1330
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    neg-int v0, v0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    mul-int v0, v0, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    add-int p1, v0, v4

    .line 1331
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    .line 1332
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->scrollModeY:Z

    .line 1337
    :cond_64
    :goto_64
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    if-eq v0, p1, :cond_c8

    .line 1338
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    .line 1339
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->updateInView()V

    .line 1341
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    goto :goto_c8

    .line 1345
    :cond_71
    if-gez p1, :cond_7c

    .line 1346
    const/4 p1, 0x0

    .line 1347
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosX(Z)V

    .line 1348
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->scrollModeY:Z

    goto :goto_bc

    .line 1349
    :cond_7c
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getButtonsWidth()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    if-le p1, v0, :cond_bc

    .line 1350
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getButtonsWidth()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int p1, v0, v3

    .line 1351
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosX(Z)V

    .line 1352
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->scrollModeY:Z

    .line 1355
    :cond_bc
    :goto_bc
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    if-eq v0, p1, :cond_c8

    .line 1356
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    .line 1357
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->updateInView()V

    .line 1359
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 1362
    :cond_c8
    :goto_c8
    return-void
.end method

.method public final setScrollPosY(I)V
    .registers 3
    .param p1, "iScrollPosX"  # I

    .line 1377
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iScrollPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iScrollPosX2:I

    .line 1378
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iScrollPosX:I

    .line 1379
    return-void
.end method

.method public setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V
    .registers 3
    .param p1, "typeOfButton"  # Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    .line 1384
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iScrollPosX2:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iScrollPosX:I

    .line 1385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->scrollModeY:Z

    .line 1386
    return-void
.end method

.method public setVisibleE(Z)V
    .registers 3
    .param p1, "isVisible"  # Z

    .line 1414
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setVisibleE(Z)V

    .line 1415
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setHoveredID(I)V

    .line 1416
    return-void
.end method

.method public srollByWheel(I)V
    .registers 3
    .param p1, "nScoll"  # I

    .line 1016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->scrollModeY:Z

    .line 1018
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getCurr()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setCurr(I)V

    .line 1019
    return-void
.end method

.method public updateHover(IIII)V
    .registers 11
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "menuPosX"  # I
    .param p4, "menuPosY"  # I

    .line 529
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->statisticsMode:Z

    const/4 v1, -0x1

    if-nez v0, :cond_81

    .line 530
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    add-int/2addr v0, p3

    if-lt p1, v0, :cond_7c

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_7c

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/2addr v0, p4

    if-lt p2, v0, :cond_7c

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p2, v0, :cond_7c

    .line 531
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v0, v2, :cond_7c

    .line 532
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v4, v0, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int v3, v3, v0

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v4, v0, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_79

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v4, v0, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int v3, v3, v0

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v4, v0, 0x1

    mul-int v4, v4, v3

    sub-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_79

    .line 533
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setHoveredID(I)V

    .line 534
    return-void

    .line 531
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 539
    .end local v0  # "i":I
    :cond_7c
    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setHoveredID(I)V

    goto/16 :goto_f8

    .line 542
    :cond_81
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    add-int/2addr v0, p3

    if-lt p1, v0, :cond_f5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosXE()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_f5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/2addr v0, p4

    if-lt p2, v0, :cond_f5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p2, v0, :cond_f5

    .line 543
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_a8
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v0, v2, :cond_f5

    .line 544
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v2

    add-int/2addr v2, p4

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    const v4, 0x3f333333  # 0.7f

    mul-float v3, v3, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    mul-int v3, v3, v0

    add-int/2addr v2, v3

    if-lt p2, v2, :cond_f2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getPosY()I

    move-result v2

    add-int/2addr v2, p4

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    mul-int v3, v3, v0

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    if-gt p2, v2, :cond_f2

    .line 545
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setHoveredID(I)V

    .line 546
    return-void

    .line 543
    :cond_f2
    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    .line 551
    .end local v0  # "i":I
    :cond_f5
    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->setHoveredID(I)V

    .line 553
    :goto_f8
    return-void
.end method

.method public final updateInView()V
    .registers 9

    .line 953
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3f333333  # 0.7f

    if-eqz v0, :cond_a2

    .line 954
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v0, v4, :cond_a0

    .line 955
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_49

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_49

    .line 956
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_9c

    .line 958
    :cond_49
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    if-ltz v4, :cond_91

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_91

    .line 959
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_9c

    .line 962
    :cond_91
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->setInView(Z)V

    .line 954
    :goto_9c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    .end local v0  # "i":I
    :cond_a0
    goto/16 :goto_115

    .line 967
    :cond_a2
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_a3
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iValuesSize:I

    if-ge v0, v4, :cond_115

    .line 968
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_d4

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v5

    if-gt v4, v5, :cond_d4

    .line 969
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_112

    .line 971
    :cond_d4
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_107

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iDataWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->getWidthE()I

    move-result v5

    if-gt v4, v5, :cond_107

    .line 972
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_112

    .line 975
    :cond_107
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->setInView(Z)V

    .line 967
    :goto_112
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 979
    .end local v0  # "i":I
    :cond_115
    :goto_115
    return-void
.end method
