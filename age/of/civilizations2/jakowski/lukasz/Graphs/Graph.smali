.class public Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;
.super Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
.source "Graph.java"


# static fields
.field private static final ANIMATION_TIME:I = 0x3b6

.field private static final AUTO_MOVE_TURN_TIME:I = 0x5aa

.field public static final DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

.field public static POINTS_TEXT_SCALE:F

.field public static final TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private bDecimal:B

.field private fAvaragePoint:F

.field private iActiveButtonID:I

.field private iAvaragePosY:I

.field private iBestCivID:I

.field private iBestDescDataID:I

.field private iBestDescDataTextWidth:I

.field private iButtonsPosY:I

.field private iDataSize:I

.field private iDescOfTurnID:I

.field private iFixPosY:I

.field private iHoveredID:I

.field private iMaxPoint:I

.field private iMaxSize:I

.field private iMaxTextWidth:I

.field private iMinPoint:I

.field private iMinTextWidth:I

.field private iPointsPosXSize:I

.field private iWidthTextX:I

.field private iWidthTextX2:I

.field private iWidthTextY:I

.field private iWorstCivID:I

.field private iWorstDescDataID:I

.field private iWorstDescDataTextWidth:I

.field private iZeroPosY:I

.field private lAuto_Move_Turn_Time:J

.field public lData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsPosX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lSortedData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J

.field private lessThanTen:Z

.field private moveable:Z

.field private sTextX:Ljava/lang/String;

.field private sTextX2:Ljava/lang/String;

.field private sTextY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 31
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d23d70a  # 0.04f

    const v2, 0x3ca3d70a  # 0.02f

    const v3, 0x3cf5c28f  # 0.03f

    const v4, 0x3ecccccd  # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f733333  # 0.95f

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666  # 0.9f

    const/high16 v2, 0x3e000000  # 0.125f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f4ccccd  # 0.8f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 41
    const v0, 0x3f266666  # 0.65f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;I)V
    .registers 15
    .param p1, "sTextX"  # Ljava/lang/String;
    .param p2, "sTextY"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "visible"  # Z
    .param p9, "nLoadSize"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 125
    .local p8, "nCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxSize:I

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iHoveredID:I

    .line 85
    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->bDecimal:B

    .line 86
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lessThanTen:Z

    .line 90
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    .line 111
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lTime:J

    .line 114
    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lAuto_Move_Turn_Time:J

    .line 118
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->moveable:Z

    .line 119
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    .line 121
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    .line 126
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->sTextX:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->sTextY:Ljava/lang/String;

    .line 129
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v2, 0x3f333333  # 0.7f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 131
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 132
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWidthTextX:I

    .line 134
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 135
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWidthTextY:I

    .line 137
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 139
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->setPosX(I)V

    .line 140
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->setPosY(I)V

    .line 141
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->setWidthE(I)V

    .line 142
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->setHeightE(I)V

    .line 144
    invoke-virtual {p0, p7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->setVisibleE(Z)V

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lPointsPosX:Ljava/util/List;

    .line 150
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    .line 152
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->GRAPH:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_95
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b5

    .line 155
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-interface {p8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;-><init>(ILjava/util/List;I)V

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->addDataGraph(Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 158
    .end local v1  # "i":I
    :cond_b5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b6
    if-ge v0, p9, :cond_c6

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c6

    .line 159
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->loadData(I)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    .line 162
    .end local v0  # "i":I
    :cond_c6
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    .line 163
    return-void
.end method

.method private final actionUp(I)V
    .registers 8
    .param p1, "nPosY"  # I

    .line 1047
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1049
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    if-ltz v0, :cond_124

    .line 1050
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsPosY(I)I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_124

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsPosY(I)I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_124

    .line 1051
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getDrawData()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a5

    .line 1052
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getDrawData()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->setDrawData(Z)V

    .line 1053
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getDrawData()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1054
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->loadData(I)V

    .line 1056
    :cond_a0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->buildGraph()V

    goto/16 :goto_124

    .line 1058
    :cond_a5
    const/4 v0, 0x0

    .line 1060
    .local v0, "numOfActiveDatas":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a7
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v2, v3, :cond_be

    .line 1061
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getDrawData()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 1062
    add-int/lit8 v0, v0, 0x1

    .line 1060
    :cond_bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 1066
    .end local v2  # "j":I
    :cond_be
    if-le v0, v1, :cond_124

    .line 1067
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getDrawData()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->setDrawData(Z)V

    .line 1068
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getDrawData()Z

    move-result v1

    if-eqz v1, :cond_121

    .line 1069
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->loadData(I)V

    .line 1072
    :cond_121
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->buildGraph()V

    .line 1078
    .end local v0  # "numOfActiveDatas":I
    :cond_124
    :goto_124
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    .line 1079
    return-void
.end method

.method private final drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I

    .line 628
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    move v11, v1

    .local v11, "tempFixPosY":I
    :goto_8
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v0, v1, :cond_10b

    .line 629
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getDrawData()Z

    move-result v1

    const v2, 0x3f333333  # 0.7f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7d

    .line 630
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    .line 631
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v2

    float-to-int v2, v6

    add-int/2addr v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v2

    add-int/2addr v5, p2

    .line 632
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v2

    add-int v6, v2, p3

    .line 633
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v7

    .line 634
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v8

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lPointsPosX:Ljava/util/List;

    .line 636
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    if-ltz v2, :cond_5c

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_6f

    :goto_5a
    const/4 v10, 0x1

    goto :goto_70

    :cond_5c
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iHoveredID:I

    if-ltz v2, :cond_6f

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_6f

    goto :goto_5a

    :cond_6f
    const/4 v10, 0x0

    .line 630
    :goto_70
    move-object v2, v1

    move-object v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v0

    invoke-virtual/range {v2 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    goto/16 :goto_107

    .line 638
    :cond_7d
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBackAnimation()Z

    move-result v1

    if-eqz v1, :cond_107

    .line 639
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x2ee

    add-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gtz v1, :cond_ae

    .line 640
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->setBackAnimation(Z)V

    goto :goto_107

    .line 643
    :cond_ae
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    .line 644
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v2

    float-to-int v2, v6

    add-int/2addr v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v2

    add-int/2addr v5, p2

    .line 645
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v2

    add-int v6, v2, p3

    .line 646
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v7

    .line 647
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v8

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lPointsPosX:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    .line 649
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v2, v10, :cond_fa

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iHoveredID:I

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v2, v10, :cond_f8

    goto :goto_fa

    :cond_f8
    const/4 v10, 0x0

    goto :goto_fb

    :cond_fa
    :goto_fa
    const/4 v10, 0x1

    .line 643
    :goto_fb
    move-object v2, p1

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move v8, v0

    move v9, v10

    move v10, v11

    invoke-virtual/range {v1 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    .line 628
    :cond_107
    :goto_107
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 653
    .end local v0  # "i":I
    .end local v11  # "tempFixPosY":I
    :cond_10b
    return-void
.end method

.method private final getButtonsHeight()I
    .registers 4

    .line 1112
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    mul-int v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private final getButtonsPosY(I)I
    .registers 4
    .param p1, "i"  # I

    .line 1108
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v0

    mul-int v0, v0, p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int v1, v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private final getDataLastPoint(I)I
    .registers 5
    .param p1, "id"  # I

    .line 789
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iPointsPosXSize:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_1d} :catch_1e

    return v0

    .line 790
    :catch_1e
    move-exception v0

    .line 791
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    return v1
.end method

.method public static final getGraphButtonHeight()I
    .registers 1

    .line 66
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static final getGraphButtonWidth()I
    .registers 1

    .line 62
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private final getMinPoint()I
    .registers 2

    .line 1156
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinPoint:I

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    return v0
.end method

.method private final incrementTurnDescInfo()V
    .registers 4

    .line 1164
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    .line 1165
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxSize:I

    if-lt v0, v2, :cond_d

    .line 1166
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    .line 1169
    :cond_d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateDescInfo()V

    .line 1170
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 1171
    return-void
.end method

.method private final roundAverage()V
    .registers 5

    .line 1118
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->fAvaragePoint:F

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_36

    .line 1119
    float-to-int v1, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->bDecimal:B

    .line 1120
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->fAvaragePoint:F

    float-to-int v3, v1

    int-to-float v3, v3

    sub-float v3, v1, v3

    sub-float/2addr v1, v3

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->fAvaragePoint:F

    .line 1121
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lessThanTen:Z

    .line 1122
    rem-int/lit8 v1, v0, 0xa

    const/16 v2, 0xa

    if-nez v1, :cond_30

    .line 1123
    div-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->bDecimal:B

    goto :goto_38

    .line 1124
    :cond_30
    if-ge v0, v2, :cond_38

    .line 1125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lessThanTen:Z

    goto :goto_38

    .line 1128
    :cond_36
    iput-byte v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->bDecimal:B

    .line 1130
    :cond_38
    :goto_38
    return-void
.end method

.method private final setHoveredID(I)V
    .registers 3
    .param p1, "nHoveredID"  # I

    .line 182
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iHoveredID:I

    if-eq v0, p1, :cond_9

    .line 183
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iHoveredID:I

    .line 184
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->buildElemHover()V

    .line 186
    :cond_9
    return-void
.end method

.method private final sortCivsByLastPoint()V
    .registers 4

    .line 781
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 782
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v0, v1, :cond_16

    .line 783
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 785
    .end local v0  # "i":I
    :cond_16
    return-void
.end method

.method private final updateButtonsInView()V
    .registers 5

    .line 1010
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v0, v1, :cond_88

    .line 1011
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-ltz v1, :cond_34

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsPosY(I)I

    move-result v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v3

    if-gt v1, v3, :cond_34

    .line 1012
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->setVisible(Z)V

    goto :goto_84

    .line 1014
    :cond_34
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    add-int/2addr v1, v3

    if-ltz v1, :cond_6c

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v3

    if-gt v1, v3, :cond_6c

    .line 1015
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->setVisible(Z)V

    goto :goto_84

    .line 1018
    :cond_6c
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->setVisible(Z)V

    .line 1010
    :goto_84
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1021
    .end local v0  # "i":I
    :cond_88
    return-void
.end method

.method private final updateMoveTurnTime()V
    .registers 3

    .line 1160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lAuto_Move_Turn_Time:J

    .line 1161
    return-void
.end method


# virtual methods
.method public final addDataGraph(Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;)V
    .registers 5
    .param p1, "nData"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    .line 670
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v0, v1, :cond_1b

    .line 671
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_18

    .line 672
    return-void

    .line 670
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 676
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    .line 679
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateMoveable()V

    .line 680
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->buildGraph()V

    .line 683
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->sortCivsByLastPoint()V

    .line 684
    return-void
.end method

.method public buildElemHover()V
    .registers 7

    .line 190
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iHoveredID:I

    if-ltz v0, :cond_91

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iHoveredID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v2

    if-gez v2, :cond_46

    .line 195
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image_Big;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image_Big;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Undiscovered"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_89

    .line 201
    :cond_46
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Flag_Big;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iHoveredID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Flag_Big;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iHoveredID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 207
    :goto_89
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 208
    .end local v0  # "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    .end local v1  # "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    goto :goto_97

    .line 210
    :cond_91
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;->resetAnimation_2()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 213
    :goto_97
    return-void
.end method

.method public final buildGraph()V
    .registers 11

    .line 891
    const-string v0, ""

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinPoint:I

    .line 892
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->fAvaragePoint:F

    .line 894
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstCivID:I

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestCivID:I

    .line 896
    const/4 v3, 0x0

    .line 897
    .local v3, "tempAvarageSize":I
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxSize:I

    .line 899
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v4, v5, :cond_1ab

    .line 900
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getDrawData()Z

    move-result v5

    if-eqz v5, :cond_105

    .line 901
    const/4 v5, 0x0

    .line 903
    .local v5, "tempAverage":F
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3e
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointsSize()I

    move-result v7

    if-ge v6, v7, :cond_b5

    .line 904
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v7

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    if-le v7, v8, :cond_78

    .line 905
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v7

    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    .line 906
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v7

    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestCivID:I

    .line 909
    :cond_78
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v7

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinPoint:I

    if-gt v7, v8, :cond_a4

    .line 910
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v7

    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinPoint:I

    .line 911
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v7

    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstCivID:I

    .line 914
    :cond_a4
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    .line 903
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 917
    .end local v6  # "j":I
    :cond_b5
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->fAvaragePoint:F

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointsSize()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v5, v7

    add-float/2addr v6, v7

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->fAvaragePoint:F

    .line 918
    add-int/lit8 v3, v3, 0x1

    .line 920
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxSize:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointsSize()I

    move-result v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_103

    .line 921
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointsSize()I

    move-result v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxSize:I

    .line 923
    .end local v5  # "tempAverage":F
    :cond_103
    goto/16 :goto_1a7

    .line 925
    :cond_105
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_106
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointsSize()I

    move-result v6

    if-ge v5, v6, :cond_16f

    .line 926
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    if-le v6, v7, :cond_140

    .line 927
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    .line 928
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestCivID:I

    .line 931
    :cond_140
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinPoint:I

    if-gt v6, v7, :cond_16c

    .line 932
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinPoint:I

    .line 933
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstCivID:I

    .line 925
    :cond_16c
    add-int/lit8 v5, v5, 0x1

    goto :goto_106

    .line 937
    .end local v5  # "j":I
    :cond_16f
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxSize:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointsSize()I

    move-result v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_1a7

    .line 938
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointsSize()I

    move-result v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxSize:I

    .line 899
    :cond_1a7
    :goto_1a7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2a

    .line 943
    .end local v4  # "i":I
    :cond_1ab
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->fAvaragePoint:F

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->fAvaragePoint:F

    .line 946
    const/high16 v4, 0x42c80000  # 100.0f

    const v5, 0x3f333333  # 0.7f

    :try_start_1b6
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinPoint:I

    if-gez v6, :cond_215

    .line 947
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v5

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v4

    mul-float v6, v6, v7

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    div-float/2addr v6, v4

    float-to-int v6, v6

    neg-int v6, v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    .line 949
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v5

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

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

    mul-float v7, v7, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v1, v1

    div-float/2addr v7, v1

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    float-to-int v1, v6

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iZeroPosY:I

    goto :goto_265

    .line 951
    :cond_215
    if-lez v6, :cond_263

    .line 952
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sub-int/2addr v1, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v5

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v4

    mul-float v6, v6, v7

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    div-float/2addr v6, v4

    sub-float/2addr v1, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v5

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    goto :goto_265

    .line 955
    :cond_263
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I
    :try_end_265
    .catch Ljava/lang/ArithmeticException; {:try_start_1b6 .. :try_end_265} :catch_266

    .line 960
    :goto_265
    goto :goto_269

    .line 958
    :catch_266
    move-exception v1

    .line 959
    .local v1, "ex":Ljava/lang/ArithmeticException;
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    .line 962
    .end local v1  # "ex":Ljava/lang/ArithmeticException;
    :goto_269
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sub-int/2addr v1, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v5

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->fAvaragePoint:F

    mul-float v7, v7, v4

    mul-float v6, v6, v7

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    div-float/2addr v6, v4

    sub-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iAvaragePosY:I

    .line 963
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->roundAverage()V

    .line 968
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lPointsPosX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 971
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lPointsPosX:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2b1
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxSize:I

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2e1

    .line 974
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lPointsPosX:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

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

    int-to-float v8, v1

    mul-float v8, v8, v4

    mul-float v7, v7, v8

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxSize:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    div-float/2addr v7, v4

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b1

    .line 978
    .end local v1  # "i":I
    :cond_2e1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lPointsPosX:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    sub-int/2addr v4, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lPointsPosX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iPointsPosXSize:I

    .line 985
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_303
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v1, v4, :cond_32d

    .line 986
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v5

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lPointsPosX:Ljava/util/List;

    invoke-virtual {v4, v6, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->buildGraph(IIILjava/util/List;)V

    .line 985
    add-int/lit8 v1, v1, 0x1

    goto :goto_303

    .line 990
    .end local v1  # "i":I
    :cond_32d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 993
    :try_start_33e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinPoint:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 994
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinTextWidth:I

    .line 996
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 997
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxTextWidth:I
    :try_end_38c
    .catch Ljava/lang/Exception; {:try_start_33e .. :try_end_38c} :catch_38d

    .line 1000
    goto :goto_38e

    .line 998
    :catch_38d
    move-exception v0

    .line 1002
    :goto_38e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1004
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateDescInfo()V

    .line 1005
    return-void
.end method

.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 23
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 227
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, ""

    iget-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lAuto_Move_Turn_Time:J

    const-wide/16 v4, 0x5aa

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_16

    .line 228
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->incrementTurnDescInfo()V

    .line 232
    :cond_16
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 233
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    const v10, 0x3f333333  # 0.7f

    mul-float v4, v4, v10

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    add-int v5, v3, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sub-int/2addr v3, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    sub-int/2addr v3, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v3, v7

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 236
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 239
    const/high16 v12, 0x40000000  # 2.0f

    :try_start_75
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->sTextY:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v4

    add-int v4, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWidthTextY:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int v5, v2, p3

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v7, 0x42b40000  # 90.0f

    move-object/from16 v2, p1

    move-object v6, v13

    invoke-static/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    .line 240
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->sTextX:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWidthTextX:I

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWidthTextX2:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v10

    div-float/2addr v4, v12

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sub-int/2addr v4, v5

    add-int v4, v4, p3

    invoke-static {v8, v2, v3, v4, v13}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 241
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->sTextX2:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWidthTextX:I

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWidthTextX2:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    mul-float v5, v5, v10

    div-float/2addr v5, v12

    float-to-int v5, v5

    sub-int/2addr v3, v5

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sub-int/2addr v4, v5

    add-int v4, v4, p3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v8, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_137} :catch_138

    .line 244
    goto :goto_13d

    .line 242
    :catch_138
    move-exception v0

    move-object v2, v0

    .line 243
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 246
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_13d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    const/high16 v13, 0x3f800000  # 1.0f

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 248
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 249
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int v4, v4, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v5

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iAvaragePosY:I

    add-int/2addr v5, v6

    add-int v5, v5, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v3, v8, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 251
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 253
    const/4 v14, 0x1

    const/high16 v15, 0x42c80000  # 100.0f

    :try_start_192
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line44:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v14

    add-int v4, v4, p2

    .line 254
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v5

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v16, v16, 0x2

    add-int v7, v7, v16

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v13, v11

    invoke-virtual {v7, v13}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v15

    mul-float v6, v6, v7

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v11

    sub-int/2addr v7, v11

    int-to-float v7, v7

    div-float/2addr v6, v7

    div-float/2addr v6, v15

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int v5, v5, p3

    .line 255
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    sub-int/2addr v6, v14

    .line 253
    invoke-virtual {v3, v8, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 257
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line44:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v14

    add-int v4, v4, p2

    .line 258
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v5

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v7, v11

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v7, v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v15

    mul-float v6, v6, v7

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v11

    sub-int/2addr v7, v11

    int-to-float v7, v7

    div-float/2addr v6, v7

    div-float/2addr v6, v15

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int v5, v5, p3

    .line 259
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    sub-int/2addr v6, v14

    .line 257
    invoke-virtual {v3, v8, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 261
    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 262
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lPointsPosX:Ljava/util/List;

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    .line 263
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    const/4 v6, 0x1

    .line 264
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v7, v11

    sub-int/2addr v3, v7

    int-to-float v3, v3

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v7, v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v15

    mul-float v3, v3, v7

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v11

    sub-int/2addr v7, v11

    int-to-float v7, v7

    div-float/2addr v3, v7

    div-float/2addr v3, v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v11, v11

    mul-float v11, v11, v10

    float-to-int v11, v11

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    sub-int/2addr v7, v11

    int-to-float v7, v7

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v14, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v15

    mul-float v7, v7, v11

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v7, v11

    div-float/2addr v7, v15

    add-float/2addr v3, v7

    float-to-int v3, v3

    neg-int v7, v3

    .line 262
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_3b2
    .catch Ljava/lang/ArithmeticException; {:try_start_192 .. :try_end_3b2} :catch_3b3

    .line 268
    goto :goto_3b4

    .line 266
    :catch_3b3
    move-exception v0

    .line 277
    :goto_3b4
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v2

    const-string v11, "0"

    if-gez v2, :cond_496

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    if-lez v2, :cond_496

    .line 278
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 279
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v4, v5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iZeroPosY:I

    add-int/2addr v4, v5

    add-int v4, v4, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v2, v8, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 280
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 281
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v5

    sub-int/2addr v5, v4

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iZeroPosY:I

    add-int/2addr v5, v6

    add-int v5, v5, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v6, v4

    invoke-virtual {v2, v8, v3, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 283
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 286
    :try_start_444
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v4, 0x40000000  # 2.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v2, v2, p2

    .line 287
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iZeroPosY:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 286
    invoke-static {v8, v11, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_482
    .catch Ljava/lang/Exception; {:try_start_444 .. :try_end_482} :catch_483

    .line 291
    goto :goto_484

    .line 289
    :catch_483
    move-exception v0

    .line 293
    :goto_484
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 296
    :cond_496
    iget-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lTime:J

    const-wide/16 v4, 0x3b6

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_4ea

    .line 298
    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    add-int v3, v3, p2

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v4, v4, p3

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lTime:J

    sub-long/2addr v6, v12

    long-to-float v6, v6

    const v7, 0x446d8000  # 950.0f

    div-float/2addr v6, v7

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 299
    .local v2, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 300
    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 302
    invoke-direct/range {p0 .. p3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 303
    const/4 v3, 0x1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 307
    :try_start_4e1
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 308
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_4e7
    .catch Ljava/lang/IllegalStateException; {:try_start_4e1 .. :try_end_4e7} :catch_4e8

    .line 311
    goto :goto_4e9

    .line 309
    :catch_4e8
    move-exception v0

    .line 312
    .end local v2  # "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    :goto_4e9
    goto :goto_4ed

    .line 314
    :cond_4ea
    invoke-direct/range {p0 .. p3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 318
    :goto_4ed
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4ee
    :try_start_4ee
    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v2, v3, :cond_630

    .line 319
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getDrawData()Z

    move-result v3

    if-eqz v3, :cond_62c

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v4

    if-lt v3, v4, :cond_62c

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointsSize()I

    move-result v5
    :try_end_52a
    .catch Ljava/lang/ArithmeticException; {:try_start_4ee .. :try_end_52a} :catch_631

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_62c

    .line 321
    const/high16 v3, 0x3f400000  # 0.75f

    :try_start_52f
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000  # 255.0f

    div-float/2addr v5, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v12

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v6

    invoke-direct {v4, v5, v7, v12, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_581
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_52f .. :try_end_581} :catch_582
    .catch Ljava/lang/ArithmeticException; {:try_start_52f .. :try_end_581} :catch_631

    .line 324
    goto :goto_58f

    .line 322
    :catch_582
    move-exception v0

    move-object v4, v0

    .line 323
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_584
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3d70f0f1

    invoke-direct {v5, v6, v6, v6, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 325
    .end local v4  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_58f
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->circle55:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    .line 326
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lPointsPosX:Ljava/util/List;

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->circle55:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int v4, v4, p2

    .line 327
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v5

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v7, v12

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v15

    mul-float v6, v6, v7

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v12

    sub-int/2addr v7, v12

    int-to-float v7, v7

    div-float/2addr v6, v7

    div-float/2addr v6, v15

    sub-float/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->circle55:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int v5, v5, p3

    .line 325
    invoke-virtual {v3, v8, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_62c
    .catch Ljava/lang/ArithmeticException; {:try_start_584 .. :try_end_62c} :catch_631

    .line 318
    :cond_62c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4ee

    .line 332
    .end local v2  # "i":I
    :cond_630
    goto :goto_632

    .line 330
    :catch_631
    move-exception v0

    .line 334
    :goto_632
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 337
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v5

    add-int/2addr v5, v4

    add-int v5, v5, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v6, v4

    invoke-virtual {v2, v8, v3, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 339
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v5

    sub-int/2addr v5, v4

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iAvaragePosY:I

    add-int/2addr v5, v6

    add-int v5, v5, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v6, v4

    invoke-virtual {v2, v8, v3, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 341
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v3, v5

    const/4 v5, 0x1

    add-int/2addr v3, v5

    add-int v6, v3, p3

    const/4 v7, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v12, v3, -0x1

    move-object/from16 v3, p1

    move v5, v6

    move v6, v7

    move v7, v12

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 344
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 347
    :try_start_6d8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v3, v3, p2

    .line 348
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    add-int v4, v4, p3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 347
    invoke-static {v8, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v4, v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v3, v3, p2

    .line 352
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v7, 0x40000000  # 2.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    add-int/2addr v4, v6

    add-int v4, v4, p3

    .line 351
    invoke-static {v8, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 355
    iget-byte v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->bDecimal:B

    if-nez v2, :cond_791

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->fAvaragePoint:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_78c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7ca

    :cond_791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->fAvaragePoint:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lessThanTen:Z

    if-eqz v3, :cond_7bf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->bDecimal:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7c5

    :cond_7bf
    iget-byte v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->bDecimal:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    :goto_7c5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_78c

    :goto_7ca
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v4, v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v3, v3, p2

    .line 356
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v7, v7, v6

    float-to-int v6, v7

    sub-int/2addr v4, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    sub-int/2addr v4, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v4, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iAvaragePosY:I

    add-int/2addr v4, v6

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    add-int v4, v4, p3

    .line 355
    invoke-static {v8, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_806
    .catch Ljava/lang/Exception; {:try_start_6d8 .. :try_end_806} :catch_807

    .line 360
    goto :goto_808

    .line 358
    :catch_807
    move-exception v0

    .line 362
    :goto_808
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 365
    :try_start_80d
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v15

    mul-float v3, v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float/2addr v3, v15

    sub-float/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_dc1

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    .line 367
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int v4, v4, p3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 366
    invoke-static {v8, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 370
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I
    :try_end_92e
    .catch Ljava/lang/ArithmeticException; {:try_start_80d .. :try_end_92e} :catch_1f0c

    if-ge v2, v3, :cond_bd8

    .line 372
    :try_start_930
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 373
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 374
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 375
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v7, v11

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 372
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_a2b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_930 .. :try_end_a2b} :catch_a2d
    .catch Ljava/lang/ArithmeticException; {:try_start_930 .. :try_end_a2b} :catch_1f0c

    .line 381
    goto/16 :goto_b07

    .line 376
    :catch_a2d
    move-exception v0

    move-object v2, v0

    move-object v11, v2

    .line 377
    .local v11, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_a30
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 378
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 379
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v12

    sub-int/2addr v7, v12

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 380
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v12, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v12

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v12, v12

    div-float/2addr v7, v12

    mul-float v3, v3, v7

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 377
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 383
    .end local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_b07
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 384
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 385
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 386
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v7, v11

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 383
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_bd6
    .catch Ljava/lang/ArithmeticException; {:try_start_a30 .. :try_end_bd6} :catch_1f0c

    goto/16 :goto_1369

    .line 389
    :cond_bd8
    :try_start_bd8
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 390
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    .line 391
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int v4, v4, p3

    .line 389
    invoke-virtual {v2, v8, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_c85
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_bd8 .. :try_end_c85} :catch_c87
    .catch Ljava/lang/ArithmeticException; {:try_start_bd8 .. :try_end_c85} :catch_1f0c

    .line 396
    goto/16 :goto_d24

    .line 392
    :catch_c87
    move-exception v0

    move-object v2, v0

    .line 393
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_c89
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    .line 394
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v4, v5

    add-int v4, v4, p2

    .line 395
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v5

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v7, v11

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v7, v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v15

    mul-float v6, v6, v7

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v11

    sub-int/2addr v7, v11

    int-to-float v7, v7

    div-float/2addr v6, v7

    div-float/2addr v6, v15

    sub-float/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v7, 0x40000000  # 2.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int v5, v5, p3

    .line 393
    invoke-virtual {v3, v8, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 398
    .end local v2  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_d24
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 399
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    .line 400
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int v4, v4, p3

    .line 398
    invoke-virtual {v2, v8, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto/16 :goto_1369

    .line 403
    :cond_dc1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    .line 404
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int v4, v4, p3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 403
    invoke-static {v8, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 407
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I
    :try_end_e85
    .catch Ljava/lang/ArithmeticException; {:try_start_c89 .. :try_end_e85} :catch_1f0c

    if-ge v2, v3, :cond_114d

    .line 409
    :try_start_e87
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 410
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 411
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 412
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v7, v11

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 409
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_f8c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e87 .. :try_end_f8c} :catch_f8e
    .catch Ljava/lang/ArithmeticException; {:try_start_e87 .. :try_end_f8c} :catch_1f0c

    .line 418
    goto/16 :goto_1072

    .line 413
    :catch_f8e
    move-exception v0

    move-object v2, v0

    move-object v11, v2

    .line 414
    .restart local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_f91
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 415
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 416
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v12

    sub-int/2addr v7, v12

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 417
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v12, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v12

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v12, v12

    div-float/2addr v7, v12

    mul-float v3, v3, v7

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 414
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 420
    .end local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_1072
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 421
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 422
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 423
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v7, v11

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 420
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_114b
    .catch Ljava/lang/ArithmeticException; {:try_start_f91 .. :try_end_114b} :catch_1f0c

    goto/16 :goto_1369

    .line 426
    :cond_114d
    :try_start_114d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 427
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 428
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    .line 426
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_121d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_114d .. :try_end_121d} :catch_121f
    .catch Ljava/lang/ArithmeticException; {:try_start_114d .. :try_end_121d} :catch_1f0c

    .line 433
    goto/16 :goto_12ce

    .line 429
    :catch_121f
    move-exception v0

    move-object v2, v0

    move-object v11, v2

    .line 430
    .restart local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1222
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 431
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 432
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v12

    sub-int/2addr v7, v12

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    .line 430
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 435
    .end local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_12ce
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 436
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    .line 437
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int v4, v4, p3

    .line 435
    invoke-virtual {v2, v8, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 441
    :goto_1369
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v15

    mul-float v3, v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float/2addr v3, v15

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_198b

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    .line 443
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int v4, v4, p3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 442
    invoke-static {v8, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 446
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I
    :try_end_14a5
    .catch Ljava/lang/ArithmeticException; {:try_start_1222 .. :try_end_14a5} :catch_1f0c

    if-ge v2, v3, :cond_176d

    .line 448
    :try_start_14a7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 449
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 450
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 451
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 448
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_15ac
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14a7 .. :try_end_15ac} :catch_15ae
    .catch Ljava/lang/ArithmeticException; {:try_start_14a7 .. :try_end_15ac} :catch_1f0c

    .line 457
    goto/16 :goto_1692

    .line 452
    :catch_15ae
    move-exception v0

    move-object v2, v0

    move-object v9, v2

    .line 453
    .local v9, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_15b1
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 454
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 455
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 456
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v7, v11

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 453
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 459
    .end local v9  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_1692
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 460
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 461
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 462
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 459
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_176b
    .catch Ljava/lang/ArithmeticException; {:try_start_15b1 .. :try_end_176b} :catch_1f0c

    goto/16 :goto_1f0b

    .line 465
    :cond_176d
    :try_start_176d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 466
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 467
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    .line 465
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_183d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_176d .. :try_end_183d} :catch_183f
    .catch Ljava/lang/ArithmeticException; {:try_start_176d .. :try_end_183d} :catch_1f0c

    .line 472
    goto/16 :goto_18ee

    .line 468
    :catch_183f
    move-exception v0

    move-object v2, v0

    move-object v9, v2

    .line 469
    .restart local v9  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1842
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 470
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 471
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    .line 469
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 474
    .end local v9  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_18ee
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 475
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    .line 476
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int v4, v4, p3

    .line 474
    invoke-virtual {v2, v8, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto/16 :goto_1f0b

    .line 479
    :cond_198b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    .line 480
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int v4, v4, p3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 479
    invoke-static {v8, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 483
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I
    :try_end_1a45
    .catch Ljava/lang/ArithmeticException; {:try_start_1842 .. :try_end_1a45} :catch_1f0c

    if-ge v2, v3, :cond_1cef

    .line 485
    :try_start_1a47
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 486
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 487
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 488
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 485
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1b42
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a47 .. :try_end_1b42} :catch_1b44
    .catch Ljava/lang/ArithmeticException; {:try_start_1a47 .. :try_end_1b42} :catch_1f0c

    .line 494
    goto/16 :goto_1c1e

    .line 489
    :catch_1b44
    move-exception v0

    move-object v2, v0

    move-object v9, v2

    .line 490
    .restart local v9  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1b47
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 491
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 492
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 493
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v7, v11

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 490
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 496
    .end local v9  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_1c1e
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 497
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 498
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 499
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 496
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1ced
    .catch Ljava/lang/ArithmeticException; {:try_start_1b47 .. :try_end_1ced} :catch_1f0c

    goto/16 :goto_1f0b

    .line 502
    :cond_1cef
    :try_start_1cef
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 503
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 504
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    .line 502
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1dbf
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1cef .. :try_end_1dbf} :catch_1dc1
    .catch Ljava/lang/ArithmeticException; {:try_start_1cef .. :try_end_1dbf} :catch_1f0c

    .line 509
    goto/16 :goto_1e70

    .line 505
    :catch_1dc1
    move-exception v0

    move-object v2, v0

    move-object v9, v2

    .line 506
    .restart local v9  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1dc4
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 507
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    .line 508
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    .line 506
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 511
    .end local v9  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_1e70
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 512
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    .line 513
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iFixPosY:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    mul-float v5, v5, v6

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v15

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int v4, v4, p3

    .line 511
    invoke-virtual {v2, v8, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_1f0b
    .catch Ljava/lang/ArithmeticException; {:try_start_1dc4 .. :try_end_1f0b} :catch_1f0c

    .line 518
    :goto_1f0b
    goto :goto_1f0d

    .line 516
    :catch_1f0c
    move-exception v0

    .line 520
    :goto_1f0d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 523
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 524
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    if-ge v2, v3, :cond_2244

    .line 525
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinPoint:I

    if-gtz v2, :cond_20de

    .line 527
    :try_start_1f34
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 528
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinTextWidth:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    .line 529
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 530
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v7, v11

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 527
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1fcb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f34 .. :try_end_1fcb} :catch_1fcd

    .line 536
    goto/16 :goto_205b

    .line 531
    :catch_1fcd
    move-exception v0

    move-object v2, v0

    move-object v11, v2

    .line 532
    .restart local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 533
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinTextWidth:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    .line 534
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 535
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v12, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v12

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v12, v12

    div-float/2addr v7, v12

    mul-float v3, v3, v7

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 532
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 538
    .end local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_205b
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 539
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinTextWidth:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    .line 540
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 541
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v7, v11

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 538
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 545
    :cond_20de
    :try_start_20de
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 546
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxTextWidth:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    .line 547
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    add-int/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-double v6, v3

    .line 548
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v7, v7, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v7, v11

    mul-float v3, v3, v7

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    .line 545
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_215d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20de .. :try_end_215d} :catch_215f

    .line 554
    goto/16 :goto_21d6

    .line 549
    :catch_215f
    move-exception v0

    move-object v2, v0

    move-object v11, v2

    .line 550
    .restart local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 551
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxTextWidth:I

    add-int/2addr v3, v5

    add-int v5, v3, p2

    .line 552
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v6, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    mul-float v3, v3, v4

    float-to-double v3, v3

    .line 553
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v7, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    sget v12, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v12

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v12, v12

    div-float/2addr v4, v12

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v12, v3

    .line 550
    move-object/from16 v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v12

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 556
    .end local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_21d6
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 557
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxTextWidth:I

    add-int/2addr v3, v5

    add-int v5, v3, p2

    .line 558
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v3, v4

    add-int v6, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    mul-float v3, v3, v4

    float-to-double v3, v3

    .line 559
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v7, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v4, v11

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v11, v3

    .line 556
    move-object/from16 v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v11

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_2492

    .line 562
    :cond_2244
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinPoint:I

    if-gtz v2, :cond_2385

    .line 564
    :try_start_2248
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 565
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinTextWidth:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    .line 566
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    .line 564
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_22be
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2248 .. :try_end_22be} :catch_22bf

    .line 571
    goto :goto_232c

    .line 567
    :catch_22bf
    move-exception v0

    move-object v2, v0

    move-object v11, v2

    .line 568
    .restart local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 569
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinTextWidth:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    .line 570
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    .line 568
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 573
    .end local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_232c
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 574
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMinTextWidth:I

    add-int/2addr v3, v4

    add-int v3, v3, p2

    .line 575
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int v4, v4, p3

    .line 573
    invoke-virtual {v2, v8, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 579
    :cond_2385
    :try_start_2385
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 580
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxTextWidth:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    .line 581
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x1

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    .line 579
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_23ec
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2385 .. :try_end_23ec} :catch_23ed

    .line 586
    goto :goto_244b

    .line 582
    :catch_23ed
    move-exception v0

    move-object v2, v0

    move-object v11, v2

    .line 583
    .restart local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 584
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxTextWidth:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    .line 585
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x1

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    .line 583
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 588
    .end local v11  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_244b
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    .line 589
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxTextWidth:I

    add-int/2addr v3, v5

    add-int v3, v3, p2

    .line 590
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v5

    add-int/2addr v5, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v6

    float-to-int v4, v4

    add-int/2addr v5, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v6

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v5, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    add-int v5, v5, p3

    .line 588
    invoke-virtual {v2, v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 593
    :goto_2492
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 595
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    add-int v5, v3, p3

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    sub-int/2addr v3, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v3, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 596
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    sub-int/2addr v3, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v6, v3

    const/4 v7, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 598
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    add-int v4, v4, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-virtual {v2, v8, v3, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 599
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    add-int/2addr v3, v5

    add-int v6, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v11, v3, -0x1

    move-object/from16 v3, p1

    move v5, v6

    move v6, v7

    move v7, v11

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 601
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    if-lez v2, :cond_25b4

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iPointsPosXSize:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_25b4

    .line 602
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lPointsPosX:Ljava/util/List;

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sub-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v3, v5

    const/4 v11, 0x1

    add-int/2addr v3, v11

    add-int v5, v3, p3

    const/4 v6, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v7, v3, -0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_25b5

    .line 601
    :cond_25b4
    const/4 v11, 0x1

    .line 606
    :goto_25b5
    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v3

    add-int v3, v3, p2

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v4, v4, p3

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getWidthE()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    neg-int v6, v6

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 607
    .local v2, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 608
    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 610
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25eb
    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v3, v4, :cond_264d

    .line 611
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_264a

    .line 612
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getWidthE()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonWidth()I

    move-result v6

    sub-int/2addr v5, v6

    add-int v5, v5, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v6

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v7

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v7, v10

    mul-int v7, v7, v3

    add-int/2addr v6, v7

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    add-int/2addr v6, v7

    add-int v6, v6, p3

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    if-ne v7, v3, :cond_2646

    const/4 v7, 0x1

    goto :goto_2647

    :cond_2646
    const/4 v7, 0x0

    :goto_2647
    invoke-virtual {v4, v8, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawCivButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 610
    :cond_264a
    add-int/lit8 v3, v3, 0x1

    goto :goto_25eb

    .line 618
    .end local v3  # "i":I
    :cond_264d
    :try_start_264d
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 619
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_2653
    .catch Ljava/lang/IllegalStateException; {:try_start_264d .. :try_end_2653} :catch_2654

    .line 622
    goto :goto_2655

    .line 620
    :catch_2654
    move-exception v0

    .line 624
    :goto_2655
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 625
    return-void
.end method

.method public getCurr()I
    .registers 2

    .line 1083
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    return v0
.end method

.method public final getGraphWidth()I
    .registers 3

    .line 1152
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getWidthE()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isMoveable()Z
    .registers 2

    .line 1104
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->moveable:Z

    return v0
.end method

.method public loadData(I)V
    .registers 8
    .param p1, "i"  # I

    .line 718
    const/4 v0, -0x1

    .line 720
    .local v0, "nStartTurnID":I
    const/4 v1, 0x0

    .local v1, "j":I
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsProvinces:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "jSize":I
    :goto_c
    if-ge v1, v2, :cond_31

    .line 721
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsProvinces:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v4

    if-le v3, v4, :cond_2e

    .line 722
    move v0, v1

    .line 723
    goto :goto_31

    .line 720
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 727
    .end local v1  # "j":I
    .end local v2  # "jSize":I
    :cond_31
    :goto_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v1, "tempPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-ltz v0, :cond_69

    .line 730
    move v2, v0

    .local v2, "j":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsProvinces:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "jSize":I
    :goto_43
    if-ge v2, v3, :cond_69

    .line 731
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsProvinces:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 735
    .end local v2  # "j":I
    .end local v3  # "jSize":I
    :cond_69
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_97

    .line 736
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v4

    invoke-direct {v3, v4, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 737
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->setDrawData(Z)V

    .line 739
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateMoveable()V

    .line 740
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->buildGraph()V

    .line 746
    :cond_97
    return-void
.end method

.method public final removeData(I)V
    .registers 4
    .param p1, "iCivID"  # I

    .line 687
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_32

    .line 688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v0, v1, :cond_32

    .line 689
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_2f

    .line 690
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 691
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    .line 693
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateMoveable()V

    .line 694
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->buildGraph()V

    .line 695
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateButtonsInView()V

    .line 696
    return-void

    .line 688
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 701
    .end local v0  # "i":I
    :cond_32
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->sortCivsByLastPoint()V

    .line 702
    return-void
.end method

.method public setCheckboxSt(Z)V
    .registers 2
    .param p1, "checkboxState"  # Z

    .line 1176
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->buildGraph()V

    .line 1177
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateMoveable()V

    .line 1178
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateButtonsInView()V

    .line 1179
    return-void
.end method

.method public setCurr(I)V
    .registers 6
    .param p1, "nButtonsPosY"  # I

    .line 1088
    if-ltz p1, :cond_4

    .line 1089
    const/4 p1, 0x0

    goto :goto_35

    .line 1090
    :cond_4
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    const v3, 0x3f333333  # 0.7f

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    neg-int v0, v0

    if-gt p1, v0, :cond_35

    .line 1091
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    neg-int p1, v0

    .line 1094
    :cond_35
    :goto_35
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    if-eq v0, p1, :cond_42

    .line 1095
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    .line 1096
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateButtonsInView()V

    .line 1098
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 1100
    :cond_42
    return-void
.end method

.method public final setDataGraph(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;",
            ">;)V"
        }
    .end annotation

    .line 658
    .local p1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;>;"
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 661
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 664
    .end local v0  # "i":I
    :cond_1a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    .line 666
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->buildGraph()V

    .line 667
    return-void
.end method

.method public setMin(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 706
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 707
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_42

    .line 708
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getDrawData()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->setDrawData(Z)V

    .line 709
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getDrawData()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 710
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->loadData(I)V

    goto :goto_45

    .line 706
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 715
    .end local v0  # "i":I
    :cond_45
    :goto_45
    return-void
.end method

.method public final setScrollPosY(I)V
    .registers 5
    .param p1, "nPosY"  # I

    .line 1035
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1037
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v0, v1, :cond_27

    .line 1038
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    if-gt v1, p1, :cond_24

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_24

    .line 1039
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iActiveButtonID:I

    .line 1041
    goto :goto_27

    .line 1037
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1044
    .end local v0  # "i":I
    :cond_27
    :goto_27
    return-void
.end method

.method public setVisibleE(Z)V
    .registers 6
    .param p1, "isVisible"  # Z

    .line 1134
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 1135
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    if-eqz v1, :cond_a

    .line 1136
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateSlider(I)V

    .line 1138
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lTime:J

    .line 1139
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 1140
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateMoveTurnTime()V

    goto :goto_21

    .line 1143
    :cond_1b
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lTime:J

    .line 1144
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    .line 1147
    :goto_21
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setVisibleE(Z)V

    .line 1148
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->setHoveredID(I)V

    .line 1149
    return-void
.end method

.method public final updateDescInfo()V
    .registers 12

    .line 836
    const-string v0, ""

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getMinPoint()I

    move-result v1

    .line 837
    .local v1, "tempBestResult":I
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iMaxPoint:I

    .line 839
    .local v2, "tempWorstResult":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v3, v4, :cond_c0

    .line 840
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getDrawData()Z

    move-result v4

    if-eqz v4, :cond_bc

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v5

    if-lt v4, v5, :cond_bc

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointsSize()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_bc

    .line 841
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v4

    if-le v4, v1, :cond_82

    .line 842
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v1

    .line 843
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    .line 846
    :cond_82
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v4

    if-gt v4, v2, :cond_bc

    .line 847
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v2

    .line 848
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    .line 839
    :cond_bc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 853
    .end local v3  # "i":I
    :cond_c0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 856
    :try_start_d2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 857
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v3, v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWorstDescDataTextWidth:I

    .line 859
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lData:Ljava/util/List;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getBeginTurnID()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getPointY(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 860
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iBestDescDataTextWidth:I
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_15a} :catch_15b

    .line 863
    goto :goto_15c

    .line 861
    :catch_15b
    move-exception v0

    .line 865
    :goto_15c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 867
    const/4 v0, 0x1

    .line 869
    .local v0, "tempRealTurnID":I
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iPointsPosXSize:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    const/4 v6, 0x1

    if-ge v3, v5, :cond_180

    .line 870
    sget v3, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iPointsPosXSize:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v6

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .end local v0  # "tempRealTurnID":I
    .local v3, "tempRealTurnID":I
    goto :goto_183

    .line 872
    .end local v3  # "tempRealTurnID":I
    .restart local v0  # "tempRealTurnID":I
    :cond_180
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    add-int/2addr v3, v6

    .line 875
    .end local v0  # "tempRealTurnID":I
    .restart local v3  # "tempRealTurnID":I
    :goto_183
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->sTextX:Ljava/lang/String;

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v7, "Turn"

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->sTextX2:Ljava/lang/String;

    .line 878
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->sTextX:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 879
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWidthTextX:I

    .line 881
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->sTextX2:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 882
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iWidthTextX2:I

    .line 884
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateMoveTurnTime()V

    .line 885
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 886
    return-void
.end method

.method public updateHover(IIII)V
    .registers 8
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "menuPosX"  # I
    .param p4, "menuPosY"  # I

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDataSize:I

    if-ge v0, v1, :cond_4e

    .line 170
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    if-gt v1, p1, :cond_4b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    if-lt v1, p1, :cond_4b

    .line 171
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    if-gt v1, p2, :cond_4b

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    if-lt v1, p2, :cond_4b

    .line 172
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->setHoveredID(I)V

    .line 173
    return-void

    .line 169
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    .end local v0  # "i":I
    :cond_4e
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->setHoveredID(I)V

    .line 179
    return-void
.end method

.method public final updateMoveable()V
    .registers 3

    .line 1024
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getHeightE()I

    move-result v1

    if-le v0, v1, :cond_e

    .line 1025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->moveable:Z

    goto :goto_13

    .line 1027
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->moveable:Z

    .line 1028
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iButtonsPosY:I

    .line 1030
    :goto_13
    return-void
.end method

.method public updateSlider(I)V
    .registers 6
    .param p1, "nPosX"  # I

    .line 799
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateMoveTurnTime()V

    .line 801
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getGraphButtonMode2()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 802
    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->actionUp(I)V

    goto :goto_78

    .line 805
    :cond_f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v0

    if-ge p1, v0, :cond_1c

    .line 806
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    .line 807
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateDescInfo()V

    .line 808
    return-void

    .line 809
    :cond_1c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-le p1, v0, :cond_31

    .line 810
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iPointsPosXSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    .line 811
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateDescInfo()V

    .line 812
    return-void

    .line 816
    :cond_31
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v1, v1

    const v2, 0x3f333333  # 0.7f

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iPointsPosXSize:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 817
    .local v0, "tempWidth":F
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getPosXE()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 819
    .local v1, "tempX":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5d
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iPointsPosXSize:I

    if-ge v2, v3, :cond_78

    .line 820
    if-nez v2, :cond_69

    .line 821
    const/high16 v3, 0x40000000  # 2.0f

    div-float v3, v0, v3

    add-float/2addr v1, v3

    goto :goto_6a

    .line 823
    :cond_69
    add-float/2addr v1, v0

    .line 826
    :goto_6a
    int-to-float v3, p1

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_75

    .line 827
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->iDescOfTurnID:I

    .line 828
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->updateDescInfo()V

    .line 829
    return-void

    .line 819
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 833
    .end local v0  # "tempWidth":F
    .end local v1  # "tempX":F
    .end local v2  # "i":I
    :cond_78
    :goto_78
    return-void
.end method
