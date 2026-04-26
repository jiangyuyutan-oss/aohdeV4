.class public Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;
.super Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
.source "Graph2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;
    }
.end annotation


# static fields
.field public static final ANIMATION_TIME:I = 0x0

.field public static final AUTO_MOVE_TURN_TIME:I = 0x5aa

.field protected static final DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final FONT_ID:I = 0x1

.field protected static final GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_LINE_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static POINTS_TEXT_SCALE:F

.field protected static final TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public bDecimal:B

.field public drawValues:Z

.field public fAvaragePoint:F

.field public graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

.field public iActiveButtonID:I

.field public iAvaragePosY:I

.field public iBestCivID:I

.field public iBestDescDataID:I

.field public iBestDescDataTextWidth:I

.field public iButtonsPosY:I

.field public iDataSize:I

.field public iDescOfTurnID:I

.field public iFixPosY:I

.field public iHoveredID:I

.field public iMaxPoint:J

.field public iMaxPoint_Text:J

.field public iMaxSize:I

.field public iMaxTextWidth:I

.field public iMinPoint:J

.field public iMinTextWidth:I

.field public iPointsPosXSize:I

.field public iWidthTextX:I

.field public iWidthTextY:I

.field public iWorstCivID:I

.field public iWorstDescDataID:I

.field public iWorstDescDataTextWidth:I

.field public iZeroPosY:I

.field public id:I

.field public lAuto_Move_Turn_Time:J

.field protected lData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;",
            ">;"
        }
    .end annotation
.end field

.field public lPointsPosX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lSortedData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lTime:J

.field public lessThanTen:Z

.field public moveable:Z

.field public sTextX:Ljava/lang/String;

.field public sTextY:Ljava/lang/String;

.field public split100:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 20
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e30b0b1

    const v2, 0x3e189899

    const v3, 0x3e088889

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 22
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3da0a0a1

    const v3, 0x3df0f0f1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 23
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666  # 0.9f

    const v2, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 25
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e19999a  # 0.15f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f52d2d3

    invoke-direct {v0, v2, v2, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_LINE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f2fafb0

    invoke-direct {v0, v1, v1, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 32
    const v0, 0x3f4ccccd  # 0.8f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->POINTS_TEXT_SCALE:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZILage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;ZIZ)V
    .registers 30
    .param p1, "sTextX"  # Ljava/lang/String;
    .param p2, "sTextY"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "visible"  # Z
    .param p8, "nLoadSize"  # I
    .param p9, "graphType"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;
    .param p10, "split100"  # Z
    .param p11, "id"  # I
    .param p12, "drawValues"  # Z

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 44
    const/4 v4, 0x0

    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxSize:I

    .line 48
    const/4 v5, -0x1

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iHoveredID:I

    .line 78
    iput-byte v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->bDecimal:B

    .line 79
    iput-boolean v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lessThanTen:Z

    .line 81
    iput-boolean v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->split100:Z

    .line 83
    const/4 v6, 0x1

    iput-boolean v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->drawValues:Z

    .line 87
    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    .line 106
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lTime:J

    .line 109
    iput-wide v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lAuto_Move_Turn_Time:J

    .line 113
    iput-boolean v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->moveable:Z

    .line 114
    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    .line 116
    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    .line 150
    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->sTextX:Ljava/lang/String;

    .line 151
    iput-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->sTextY:Ljava/lang/String;

    .line 152
    iput-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    .line 154
    move/from16 v5, p12

    iput-boolean v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->drawValues:Z

    .line 156
    move/from16 v7, p10

    iput-boolean v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->split100:Z

    .line 157
    move/from16 v8, p11

    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->id:I

    .line 159
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v9, "nCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_BALANCE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_58

    .line 162
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16d

    .line 164
    :cond_58
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_TREASURY:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_71

    .line 165
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16d

    .line 167
    :cond_71
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_8a

    .line 168
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16d

    .line 170
    :cond_8a
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_ARMY_SIZE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_a3

    .line 171
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16d

    .line 173
    :cond_a3
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_STABILITY:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_bc

    .line 174
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16d

    .line 176
    :cond_bc
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_INCOME:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_d5

    .line 177
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16d

    .line 179
    :cond_d5
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_EXPENSES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_ee

    .line 180
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16d

    .line 182
    :cond_ee
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_MILITARY_SPENDING:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_106

    .line 183
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 185
    :cond_106
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->CIV_POPULATION:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_112

    .line 186
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 188
    :cond_112
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->RELIGION_POPULATION:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_11e

    .line 189
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 191
    :cond_11e
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->GOVERNMENT_POPULATION:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_12a

    .line 192
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 194
    :cond_12a
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->CIV_ECONOMY:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_136

    .line 195
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 197
    :cond_136
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->CIV_RANK:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_142

    .line 198
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 200
    :cond_142
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->CIV_TECHNOLOGY:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_14e

    .line 201
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 203
    :cond_14e
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->CIV_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v3, v10, :cond_15a

    .line 204
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 207
    :cond_15a
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_16d
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v10

    const v11, 0x3f333333  # 0.7f

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 212
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v10, v11, v1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 213
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v10, v10

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iWidthTextX:I

    .line 215
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v10, v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 216
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v10, v10

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iWidthTextY:I

    .line 218
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v6

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 220
    move/from16 v6, p3

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->setPosX(I)V

    .line 221
    move/from16 v10, p4

    invoke-virtual {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->setPosY(I)V

    .line 222
    move/from16 v11, p5

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->setWidthE(I)V

    .line 223
    move/from16 v12, p6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->setHeightE(I)V

    .line 225
    move/from16 v13, p7

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->setVisibleE(Z)V

    .line 227
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    .line 228
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    .line 229
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lPointsPosX:Ljava/util/List;

    .line 231
    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iFixPosY:I

    .line 233
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->GRAPH:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 235
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1ed
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_213

    .line 236
    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v15, v4, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;-><init>(ILjava/util/List;I)V

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->addDataGraph2(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;)V

    .line 235
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x0

    goto :goto_1ed

    .line 239
    .end local v14  # "i":I
    :cond_213
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_214
    move/from16 v2, p8

    if-ge v1, v2, :cond_226

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_226

    .line 240
    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->loadData(I)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_214

    .line 243
    .end local v1  # "i":I
    :cond_226
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    .line 244
    return-void
.end method

.method protected static final getGraphButtonHeight()I
    .registers 1

    .line 59
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected static final getGraphButtonWidth()I
    .registers 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final actionUp(I)V
    .registers 8
    .param p1, "nPosY"  # I

    .line 1177
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1179
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    if-ltz v0, :cond_124

    .line 1180
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsPosY(I)I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_124

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsPosY(I)I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_124

    .line 1181
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getDrawData()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a5

    .line 1182
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getDrawData()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->setDrawData(Z)V

    .line 1183
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getDrawData()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1184
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->loadData(I)V

    .line 1186
    :cond_a0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->buildGraph()V

    goto/16 :goto_124

    .line 1188
    :cond_a5
    const/4 v0, 0x0

    .line 1190
    .local v0, "numOfActiveDatas":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a7
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    if-ge v2, v3, :cond_be

    .line 1191
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getDrawData()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 1192
    add-int/lit8 v0, v0, 0x1

    .line 1190
    :cond_bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 1196
    .end local v2  # "j":I
    :cond_be
    if-le v0, v1, :cond_124

    .line 1197
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getDrawData()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->setDrawData(Z)V

    .line 1198
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getDrawData()Z

    move-result v1

    if-eqz v1, :cond_121

    .line 1199
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->loadData(I)V

    .line 1202
    :cond_121
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->buildGraph()V

    .line 1208
    .end local v0  # "numOfActiveDatas":I
    :cond_124
    :goto_124
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    .line 1209
    return-void
.end method

.method public final addDataGraph2(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;)V
    .registers 5
    .param p1, "nData"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    .line 863
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    if-ge v0, v1, :cond_1b

    .line 864
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_18

    .line 865
    return-void

    .line 863
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 869
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    .line 872
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateMoveable()V

    .line 873
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->buildGraph()V

    .line 876
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->sortCivsByLastPoint()V

    .line 877
    return-void
.end method

.method public buildElemHover()V
    .registers 1

    .line 541
    return-void
.end method

.method protected final buildGraph()V
    .registers 14

    .line 1016
    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v3

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMinPoint:J

    .line 1017
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->fAvaragePoint:F

    .line 1019
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iWorstCivID:I

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iBestCivID:I

    .line 1021
    const/4 v3, 0x0

    .line 1022
    .local v3, "tempAvarageSize":I
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxSize:I

    .line 1024
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    if-ge v4, v5, :cond_1b3

    .line 1025
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getDrawData()Z

    move-result v5

    if-eqz v5, :cond_109

    .line 1026
    const/4 v5, 0x0

    .line 1028
    .local v5, "tempAverage":F
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3e
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointsSize()I

    move-result v7

    if-ge v6, v7, :cond_b9

    .line 1029
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v7

    iget-wide v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    cmp-long v11, v7, v9

    if-lez v11, :cond_7a

    .line 1030
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v7

    iput-wide v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    .line 1031
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v7

    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iBestCivID:I

    .line 1034
    :cond_7a
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v7

    iget-wide v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMinPoint:J

    cmp-long v11, v7, v9

    if-gtz v11, :cond_a8

    .line 1035
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v7

    iput-wide v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMinPoint:J

    .line 1036
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v7

    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iWorstCivID:I

    .line 1039
    :cond_a8
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v7

    long-to-float v7, v7

    add-float/2addr v5, v7

    .line 1028
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 1042
    .end local v6  # "j":I
    :cond_b9
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->fAvaragePoint:F

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointsSize()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v5, v7

    add-float/2addr v6, v7

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->fAvaragePoint:F

    .line 1043
    add-int/lit8 v3, v3, 0x1

    .line 1045
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxSize:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointsSize()I

    move-result v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_107

    .line 1046
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointsSize()I

    move-result v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxSize:I

    .line 1048
    .end local v5  # "tempAverage":F
    :cond_107
    goto/16 :goto_1af

    .line 1050
    :cond_109
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_10a
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointsSize()I

    move-result v6

    if-ge v5, v6, :cond_177

    .line 1051
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v6

    iget-wide v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_146

    .line 1052
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v6

    iput-wide v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    .line 1053
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iBestCivID:I

    .line 1056
    :cond_146
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v6

    iget-wide v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMinPoint:J

    cmp-long v10, v6, v8

    if-gtz v10, :cond_174

    .line 1057
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v6

    iput-wide v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMinPoint:J

    .line 1058
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iWorstCivID:I

    .line 1050
    :cond_174
    add-int/lit8 v5, v5, 0x1

    goto :goto_10a

    .line 1062
    .end local v5  # "j":I
    :cond_177
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxSize:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointsSize()I

    move-result v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_1af

    .line 1063
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointsSize()I

    move-result v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxSize:I

    .line 1024
    :cond_1af
    :goto_1af
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2a

    .line 1068
    .end local v4  # "i":I
    :cond_1b3
    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    iput-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint_Text:J

    .line 1069
    long-to-float v6, v4

    long-to-float v4, v4

    const v5, 0x3d4ccccd  # 0.05f

    mul-float v4, v4, v5

    add-float/2addr v6, v4

    float-to-int v4, v6

    int-to-long v4, v4

    iput-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    .line 1071
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->fAvaragePoint:F

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->fAvaragePoint:F
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c9} :catch_33a

    .line 1074
    const/high16 v4, 0x42c80000  # 100.0f

    :try_start_1cb
    iget-wide v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMinPoint:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_20a

    .line 1075
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getMinPoint()J

    move-result-wide v6

    long-to-float v6, v6

    mul-float v6, v6, v4

    mul-float v5, v5, v6

    iget-wide v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getMinPoint()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v4

    float-to-int v5, v5

    neg-int v5, v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iFixPosY:I

    .line 1077
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    iget-wide v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getMinPoint()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-float v1, v7

    div-float/2addr v6, v1

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    float-to-int v1, v5

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iZeroPosY:I

    goto :goto_238

    .line 1079
    :cond_20a
    cmp-long v1, v5, v7

    if-lez v1, :cond_236

    .line 1080
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getMinPoint()J

    move-result-wide v6

    long-to-float v6, v6

    mul-float v6, v6, v4

    mul-float v5, v5, v6

    iget-wide v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getMinPoint()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v4

    sub-float/2addr v1, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iFixPosY:I

    goto :goto_238

    .line 1083
    :cond_236
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iFixPosY:I
    :try_end_238
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_238} :catch_239

    .line 1088
    :goto_238
    goto :goto_23e

    .line 1085
    :catch_239
    move-exception v1

    .line 1086
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_23a
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iFixPosY:I

    .line 1087
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iZeroPosY:I

    .line 1090
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_23e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->fAvaragePoint:F

    mul-float v6, v6, v4

    mul-float v5, v5, v6

    iget-wide v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getMinPoint()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v4

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iAvaragePosY:I

    .line 1091
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->roundAverage()V

    .line 1096
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lPointsPosX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1099
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lPointsPosX:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_26e
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxSize:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_291

    .line 1102
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lPointsPosX:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v1

    mul-float v7, v7, v4

    mul-float v6, v6, v7

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxSize:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    div-float/2addr v6, v5

    div-float/2addr v6, v4

    float-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    add-int/lit8 v1, v1, 0x1

    goto :goto_26e

    .line 1106
    .end local v1  # "i":I
    :cond_291
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lPointsPosX:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lPointsPosX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iPointsPosXSize:I

    .line 1113
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_2a7
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    if-ge v1, v2, :cond_2c6

    .line 1114
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getMinPoint()J

    move-result-wide v8

    iget-wide v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    iget-object v12, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lPointsPosX:Ljava/util/List;

    invoke-virtual/range {v6 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->buildGraph(IJJLjava/util/List;)V

    .line 1113
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a7

    .line 1118
    .end local v1  # "i":I
    :cond_2c6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->POINTS_TEXT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1120
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMinPoint:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 1121
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMinTextWidth:I

    .line 1123
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint_Text:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 1124
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxTextWidth:I

    .line 1129
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1131
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateDescInfo()V
    :try_end_339
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_339} :catch_33a

    .line 1134
    .end local v3  # "tempAvarageSize":I
    goto :goto_33e

    .line 1132
    :catch_33a
    move-exception v0

    .line 1133
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1135
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_33e
    return-void
.end method

.method public drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 546
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d888889

    const v2, 0x3d989899

    const v3, 0x3db8b8b9

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 547
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int v2, v0, p2

    .line 548
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int v3, v0, p3

    .line 549
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v0

    add-int/lit8 v4, v0, 0x4

    .line 550
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v0

    add-int/lit8 v5, v0, 0x4

    .line 547
    const/high16 v6, 0x3f800000  # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 552
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f4ccccd  # 0.8f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 553
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientVertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 554
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 555
    return-void
.end method

.method public drawBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 631
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 633
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v5

    const/4 v4, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 634
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v3

    add-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 636
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 637
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v5, v1, -0x1

    const/4 v4, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 638
    return-void
.end method

.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 21
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 559
    move-object v0, p0

    move-object/from16 v7, p1

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lAuto_Move_Turn_Time:J

    const-wide/16 v3, 0x5aa

    add-long/2addr v1, v3

    sget-wide v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_11

    .line 560
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->incrementTurnDescInfo()V

    .line 566
    :cond_11
    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 568
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 569
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iAvaragePosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v4

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 572
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getMinPoint()J

    move-result-wide v1

    const/high16 v8, 0x3f800000  # 1.0f

    const-wide/16 v3, 0x0

    const/high16 v9, 0x40000000  # 2.0f

    const/4 v10, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_e3

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_e3

    .line 573
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 574
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v2

    add-int/2addr v2, v10

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iZeroPosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v4

    sub-int/2addr v4, v10

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 575
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 576
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v2

    add-int/2addr v2, v10

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v3

    sub-int/2addr v3, v10

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iZeroPosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v4, v10

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 578
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->POINTS_TEXT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 580
    const/4 v2, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v1

    add-int/2addr v1, v10

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    add-int/2addr v1, v3

    add-int v4, v1, p2

    .line 581
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->POINTS_TEXT_SCALE:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iFixPosY:I

    sub-int/2addr v1, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iZeroPosY:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v10

    add-int v5, v1, p3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 580
    const-string v3, "0"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 584
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 587
    :cond_e3
    invoke-virtual/range {p0 .. p3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 589
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 591
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v4, v10

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 593
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iAvaragePosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v4, v10

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 595
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v10

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v10

    add-int v4, v2, p3

    const/4 v5, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v6, v2, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 598
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->drawValues:Z

    if-eqz v1, :cond_267

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_267

    .line 599
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->POINTS_TEXT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 601
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->split100:Z

    const-string v11, ""

    if-eqz v1, :cond_1e9

    .line 602
    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getMinPoint()J

    move-result-wide v3

    long-to-float v3, v3

    const/high16 v12, 0x42c80000  # 100.0f

    div-float/2addr v3, v12

    const/16 v13, 0xa

    invoke-static {v3, v13}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v1

    add-int/2addr v1, v10

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int v4, v1, p2

    .line 603
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v5

    add-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v5, v5, v9

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v1, v5

    add-int v5, v1, p3

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 602
    move-object/from16 v1, p1

    move-object v6, v14

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint_Text:J

    long-to-float v3, v3

    div-float/2addr v3, v12

    invoke-static {v3, v13}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v1

    add-int/2addr v1, v10

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int v4, v1, p2

    .line 607
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v1

    add-int/2addr v1, v10

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v5, v5, v9

    float-to-int v5, v5

    add-int/2addr v1, v5

    add-int v5, v1, p3

    .line 606
    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_253

    .line 611
    :cond_1e9
    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getMinPoint()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v1

    add-int/2addr v1, v10

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int v4, v1, p2

    .line 612
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v5

    add-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v5, v5, v9

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v1, v5

    add-int v5, v1, p3

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 611
    move-object/from16 v1, p1

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 615
    iget-wide v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint_Text:J

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumber_SHORT(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v1

    add-int/2addr v1, v10

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int v4, v1, p2

    .line 616
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v1

    add-int/2addr v1, v10

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v5, v5, v9

    float-to-int v5, v5

    add-int/2addr v1, v5

    add-int v5, v1, p3

    .line 615
    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 620
    :goto_253
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 622
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 625
    :cond_267
    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->drawBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 627
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 628
    return-void
.end method

.method public final drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I

    .line 642
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getMinPoint()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iFixPosY:I

    move v11, v1

    .local v11, "tempFixPosY":I
    :goto_c
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    if-ge v0, v1, :cond_c8

    .line 643
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getDrawData()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6b

    .line 644
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    .line 645
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v4

    add-int/2addr v4, p2

    .line 646
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v5

    add-int/2addr v5, p3

    .line 647
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v6

    .line 648
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lPointsPosX:Ljava/util/List;

    .line 650
    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    if-ltz v9, :cond_50

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v0, :cond_63

    :goto_4e
    const/4 v10, 0x1

    goto :goto_64

    :cond_50
    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iHoveredID:I

    if-ltz v9, :cond_63

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v0, :cond_63

    goto :goto_4e

    :cond_63
    const/4 v10, 0x0

    .line 644
    :goto_64
    move-object v2, v1

    move-object v3, p1

    move v9, v0

    invoke-virtual/range {v2 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    goto :goto_c4

    .line 652
    :cond_6b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBackAnimation()Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 653
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    .line 654
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v4

    add-int/2addr v4, p2

    .line 655
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v5

    add-int/2addr v5, p3

    .line 656
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphWidth()I

    move-result v6

    .line 657
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lPointsPosX:Ljava/util/List;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    .line 659
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v10, :cond_b8

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iHoveredID:I

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_b6

    goto :goto_b8

    :cond_b6
    const/4 v9, 0x0

    goto :goto_b9

    :cond_b8
    :goto_b8
    const/4 v9, 0x1

    .line 653
    :goto_b9
    move-object v2, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move v8, v0

    move v10, v11

    invoke-virtual/range {v1 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    .line 642
    :cond_c4
    :goto_c4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    .line 662
    .end local v0  # "i":I
    .end local v11  # "tempFixPosY":I
    :cond_c8
    return-void
.end method

.method public final getButtonsHeight()I
    .registers 4

    .line 1240
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonHeight()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    mul-int v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final getButtonsPosY(I)I
    .registers 4
    .param p1, "i"  # I

    .line 1236
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonHeight()I

    move-result v0

    mul-int v0, v0, p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int v1, v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurr()I
    .registers 2

    .line 1213
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    return v0
.end method

.method public final getDataLastPoint(I)J
    .registers 5
    .param p1, "id"  # I

    .line 921
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iPointsPosXSize:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-wide v0

    .line 922
    :catch_1e
    move-exception v0

    .line 923
    .local v0, "ex":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getGraphWidth()I
    .registers 3

    .line 1279
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getWidthE()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getMinPoint()J
    .registers 6

    .line 1283
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMinPoint:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    move-wide v0, v2

    :cond_9
    return-wide v0
.end method

.method public final incrementTurnDescInfo()V
    .registers 3

    .line 1291
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    .line 1292
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxSize:I

    if-lt v0, v1, :cond_d

    .line 1293
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    .line 1296
    :cond_d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateDescInfo()V

    .line 1297
    return-void
.end method

.method public isMoveable()Z
    .registers 2

    .line 1232
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->moveable:Z

    return v0
.end method

.method protected loadData(I)V
    .registers 13
    .param p1, "i"  # I

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "nStartTurnID":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v1, "tempPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_BALANCE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    const/4 v4, 0x1

    const-wide/16 v5, 0x1

    .line 259
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 251
    if-ne v2, v3, :cond_7c

    .line 253
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_14
    :try_start_14
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 254
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 257
    .end local v2  # "a":I
    :cond_43
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getIncome(I)F

    move-result v2

    float-to-long v2, v2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getExpenses(I)F

    move-result v6

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_72} :catch_73

    goto :goto_7a

    .line 258
    :catch_73
    move-exception v2

    .line 259
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_7a
    goto/16 :goto_6f3

    .line 263
    :cond_7c
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_INCOME:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_ee

    .line 265
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_83
    :try_start_83
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b2

    .line 266
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    .line 269
    .end local v2  # "a":I
    :cond_b2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    int-to-long v2, v2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_e4} :catch_e5

    goto :goto_ec

    .line 270
    :catch_e5
    move-exception v2

    .line 271
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_ec
    goto/16 :goto_6f3

    .line 275
    :cond_ee
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_EXPENSES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_148

    .line 277
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_f5
    :try_start_f5
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Expenses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_124

    .line 278
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Expenses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_f5

    .line 281
    .end local v2  # "a":I
    :cond_124
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getExpenses(I)F

    move-result v2

    float-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_13e} :catch_13f

    goto :goto_146

    .line 282
    :catch_13f
    move-exception v2

    .line 283
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_146
    goto/16 :goto_6f3

    .line 287
    :cond_148
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_MILITARY_SPENDING:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_1a2

    .line 289
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_14f
    :try_start_14f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_MilitarySpendings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_17e

    .line 290
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_MilitarySpendings:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_14f

    .line 293
    .end local v2  # "a":I
    :cond_17e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeep_Total(I)F

    move-result v2

    float-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_198} :catch_199

    goto :goto_1a0

    .line 294
    :catch_199
    move-exception v2

    .line 295
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_1a0
    goto/16 :goto_6f3

    .line 299
    :cond_1a2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_TREASURY:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_1ff

    .line 301
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1a9
    :try_start_1a9
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Treasury:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d8

    .line 302
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Treasury:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a9

    .line 305
    .end local v2  # "a":I
    :cond_1d8
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1f5} :catch_1f6

    goto :goto_1fd

    .line 306
    :catch_1f6
    move-exception v2

    .line 307
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_1fd
    goto/16 :goto_6f3

    .line 311
    :cond_1ff
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_25d

    .line 313
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_206
    :try_start_206
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Happiness:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_235

    .line 314
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Happiness:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_206

    .line 317
    .end local v2  # "a":I
    :cond_235
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHappiness()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_253} :catch_254

    goto :goto_25b

    .line 318
    :catch_254
    move-exception v2

    .line 319
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_25b
    goto/16 :goto_6f3

    .line 323
    :cond_25d
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_ARMY_SIZE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_2bb

    .line 325
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_264
    :try_start_264
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_ArmySize:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_293

    .line 326
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_ArmySize:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_264

    .line 329
    .end local v2  # "a":I
    :cond_293
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b1
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_2b1} :catch_2b2

    goto :goto_2b9

    .line 330
    :catch_2b2
    move-exception v2

    .line 331
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_2b9
    goto/16 :goto_6f3

    .line 335
    :cond_2bb
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_STABILITY:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_31d

    .line 337
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_2c2
    :try_start_2c2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Stability:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f1

    .line 338
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Stability:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c2

    .line 341
    .end local v2  # "a":I
    :cond_2f1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getStabilityCiv()F

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    mul-float v2, v2, v3

    float-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_313
    .catch Ljava/lang/Exception; {:try_start_2c2 .. :try_end_313} :catch_314

    goto :goto_31b

    .line 342
    :catch_314
    move-exception v2

    .line 343
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_31b
    goto/16 :goto_6f3

    .line 347
    :cond_31d
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->CIV_POPULATION:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    const/4 v6, 0x0

    if-ne v2, v3, :cond_385

    .line 349
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_325
    :try_start_325
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_35e

    .line 350
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_325

    .line 353
    .end local v2  # "a":I
    :cond_35e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPop()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37b
    .catch Ljava/lang/Exception; {:try_start_325 .. :try_end_37b} :catch_37c

    goto :goto_383

    .line 354
    :catch_37c
    move-exception v2

    .line 355
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_383
    goto/16 :goto_6f3

    .line 359
    :cond_385
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->RELIGION_POPULATION:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_456

    .line 361
    const/4 v2, 0x1

    .local v2, "a":I
    :goto_38c
    :try_start_38c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_454

    .line 362
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getReligionID()I

    move-result v3

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v7
    :try_end_3aa
    .catch Ljava/lang/Exception; {:try_start_38c .. :try_end_3aa} :catch_44a

    if-ne v3, v7, :cond_446

    .line 364
    :try_start_3ac
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3e1

    .line 365
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_3b3
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3e0

    .line 366
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b3

    .end local v3  # "b":I
    :cond_3e0
    goto :goto_43a

    .line 370
    :cond_3e1
    const/4 v3, 0x0

    .restart local v3  # "b":I
    :goto_3e2
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_3ec
    .catch Ljava/lang/Exception; {:try_start_3ac .. :try_end_3ec} :catch_43b

    if-ge v3, v7, :cond_43a

    .line 372
    :try_start_3ee
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_417
    .catch Ljava/lang/Exception; {:try_start_3ee .. :try_end_417} :catch_418

    .line 375
    goto :goto_437

    .line 373
    :catch_418
    move-exception v7

    .line 374
    .local v7, "exr":Ljava/lang/Exception;
    :try_start_419
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_437
    .catch Ljava/lang/Exception; {:try_start_419 .. :try_end_437} :catch_43b

    .line 370
    .end local v7  # "exr":Ljava/lang/Exception;
    :goto_437
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e2

    .line 384
    .end local v3  # "b":I
    :cond_43a
    :goto_43a
    goto :goto_446

    .line 378
    :catch_43b
    move-exception v3

    .line 379
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_43c
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 381
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_445
    .catch Ljava/lang/Exception; {:try_start_43c .. :try_end_445} :catch_44a

    .line 383
    goto :goto_454

    .line 361
    .end local v3  # "ex":Ljava/lang/Exception;
    :cond_446
    :goto_446
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_38c

    .line 387
    .end local v2  # "a":I
    :catch_44a
    move-exception v2

    .line 388
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 390
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    .end local v2  # "ex":Ljava/lang/Exception;
    :cond_454
    :goto_454
    goto/16 :goto_6f3

    .line 394
    :cond_456
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->GOVERNMENT_POPULATION:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_527

    .line 396
    const/4 v2, 0x1

    .local v2, "a":I
    :goto_45d
    :try_start_45d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_525

    .line 397
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v7
    :try_end_47b
    .catch Ljava/lang/Exception; {:try_start_45d .. :try_end_47b} :catch_51b

    if-ne v3, v7, :cond_517

    .line 399
    :try_start_47d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4b2

    .line 400
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_484
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4b1

    .line 401
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v3, v3, 0x1

    goto :goto_484

    .end local v3  # "b":I
    :cond_4b1
    goto :goto_50b

    .line 405
    :cond_4b2
    const/4 v3, 0x0

    .restart local v3  # "b":I
    :goto_4b3
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_4bd
    .catch Ljava/lang/Exception; {:try_start_47d .. :try_end_4bd} :catch_50c

    if-ge v3, v7, :cond_50b

    .line 407
    :try_start_4bf
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_4e8
    .catch Ljava/lang/Exception; {:try_start_4bf .. :try_end_4e8} :catch_4e9

    .line 410
    goto :goto_508

    .line 408
    :catch_4e9
    move-exception v7

    .line 409
    .restart local v7  # "exr":Ljava/lang/Exception;
    :try_start_4ea
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_508
    .catch Ljava/lang/Exception; {:try_start_4ea .. :try_end_508} :catch_50c

    .line 405
    .end local v7  # "exr":Ljava/lang/Exception;
    :goto_508
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b3

    .line 419
    .end local v3  # "b":I
    :cond_50b
    :goto_50b
    goto :goto_517

    .line 413
    :catch_50c
    move-exception v3

    .line 414
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_50d
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 416
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_516
    .catch Ljava/lang/Exception; {:try_start_50d .. :try_end_516} :catch_51b

    .line 418
    goto :goto_525

    .line 396
    .end local v3  # "ex":Ljava/lang/Exception;
    :cond_517
    :goto_517
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_45d

    .line 422
    .end local v2  # "a":I
    :catch_51b
    move-exception v2

    .line 423
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 425
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    .end local v2  # "ex":Ljava/lang/Exception;
    :cond_525
    :goto_525
    goto/16 :goto_6f3

    .line 429
    :cond_527
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->CIV_ECONOMY:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_58e

    .line 431
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_52e
    :try_start_52e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsEconomy:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;->lEconomy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_567

    .line 432
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsEconomy:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Economy_GameData;->lEconomy:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_52e

    .line 435
    .end local v2  # "a":I
    :cond_567
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countEco()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_584
    .catch Ljava/lang/Exception; {:try_start_52e .. :try_end_584} :catch_585

    goto :goto_58c

    .line 436
    :catch_585
    move-exception v2

    .line 437
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_58c
    goto/16 :goto_6f3

    .line 441
    :cond_58e
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->CIV_RANK:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_5f6

    .line 443
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_595
    :try_start_595
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsRank:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;->lRank:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5ce

    .line 444
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsRank:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;->lRank:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_595

    .line 447
    .end local v2  # "a":I
    :cond_5ce
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5ec
    .catch Ljava/lang/Exception; {:try_start_595 .. :try_end_5ec} :catch_5ed

    goto :goto_5f4

    .line 448
    :catch_5ed
    move-exception v2

    .line 449
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_5f4
    goto/16 :goto_6f3

    .line 453
    :cond_5f6
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->CIV_TECHNOLOGY:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_65e

    .line 455
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_5fd
    :try_start_5fd
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsTechnology:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;->lTechnologyLevel:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_636

    .line 456
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsTechnology:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Tech_GameData;->lTechnologyLevel:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_5fd

    .line 459
    .end local v2  # "a":I
    :cond_636
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevelINT()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_654
    .catch Ljava/lang/Exception; {:try_start_5fd .. :try_end_654} :catch_655

    goto :goto_65c

    .line 460
    :catch_655
    move-exception v2

    .line 461
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_65c
    goto/16 :goto_6f3

    .line 465
    :cond_65e
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->graphType:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->CIV_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    if-ne v2, v3, :cond_6cb

    .line 467
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_665
    :try_start_665
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsProvinces:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_69e

    .line 468
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsProvinces:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Provinces_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_665

    .line 471
    .end local v2  # "a":I
    :cond_69e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6bc
    .catch Ljava/lang/Exception; {:try_start_665 .. :try_end_6bc} :catch_6bd

    goto :goto_6ca

    .line 472
    :catch_6bd
    move-exception v2

    .line 473
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_6ca
    goto :goto_6f3

    .line 479
    :cond_6cb
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_6cc
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6f3

    .line 480
    const-wide/16 v5, 0x64

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v7, v3

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_6cc

    .line 484
    .end local v2  # "a":I
    :cond_6f3
    :goto_6f3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_720

    .line 485
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v5

    invoke-direct {v3, v5, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;-><init>(ILjava/util/List;I)V

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->setDrawData(Z)V

    .line 488
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateMoveable()V

    .line 489
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->buildGraph()V

    .line 491
    :cond_720
    return-void
.end method

.method public final removeData(I)V
    .registers 4
    .param p1, "iCivID"  # I

    .line 880
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_32

    .line 881
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    if-ge v0, v1, :cond_32

    .line 882
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_2f

    .line 883
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 884
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    .line 886
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateMoveable()V

    .line 887
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->buildGraph()V

    .line 888
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateButtonsInView()V

    .line 889
    return-void

    .line 881
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 894
    .end local v0  # "i":I
    :cond_32
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->sortCivsByLastPoint()V

    .line 895
    return-void
.end method

.method public final roundAverage()V
    .registers 5

    .line 1246
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->fAvaragePoint:F

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_36

    .line 1247
    float-to-int v1, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->bDecimal:B

    .line 1248
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->fAvaragePoint:F

    float-to-int v3, v1

    int-to-float v3, v3

    sub-float v3, v1, v3

    sub-float/2addr v1, v3

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->fAvaragePoint:F

    .line 1249
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lessThanTen:Z

    .line 1250
    rem-int/lit8 v1, v0, 0xa

    const/16 v2, 0xa

    if-nez v1, :cond_30

    .line 1251
    div-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->bDecimal:B

    goto :goto_38

    .line 1252
    :cond_30
    if-ge v0, v2, :cond_38

    .line 1253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lessThanTen:Z

    goto :goto_38

    .line 1256
    :cond_36
    iput-byte v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->bDecimal:B

    .line 1258
    :cond_38
    :goto_38
    return-void
.end method

.method public setCheckboxSt(Z)V
    .registers 2
    .param p1, "checkboxState"  # Z

    .line 1302
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->buildGraph()V

    .line 1303
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateMoveable()V

    .line 1304
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateButtonsInView()V

    .line 1305
    return-void
.end method

.method public setCurr(I)V
    .registers 4
    .param p1, "nButtonsPosY"  # I

    .line 1218
    if-ltz p1, :cond_4

    .line 1219
    const/4 p1, 0x0

    goto :goto_1a

    .line 1220
    :cond_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    if-gt p1, v0, :cond_1a

    .line 1221
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int p1, v0

    .line 1224
    :cond_1a
    :goto_1a
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    if-eq v0, p1, :cond_23

    .line 1225
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    .line 1226
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateButtonsInView()V

    .line 1228
    :cond_23
    return-void
.end method

.method public final setData2(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;",
            ">;)V"
        }
    .end annotation

    .line 851
    .local p1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;>;"
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 853
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 854
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 857
    .end local v0  # "i":I
    :cond_1a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    .line 859
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->buildGraph()V

    .line 860
    return-void
.end method

.method public final setHoveredID(I)V
    .registers 3
    .param p1, "nHoveredID"  # I

    .line 510
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iHoveredID:I

    if-eq v0, p1, :cond_9

    .line 511
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iHoveredID:I

    .line 512
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->buildElemHover()V

    .line 514
    :cond_9
    return-void
.end method

.method public setMin(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 899
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 900
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_42

    .line 901
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getDrawData()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->setDrawData(Z)V

    .line 902
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getDrawData()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 903
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->loadData(I)V

    goto :goto_45

    .line 899
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 908
    .end local v0  # "i":I
    :cond_45
    :goto_45
    return-void
.end method

.method public final setScrollPosY(I)V
    .registers 5
    .param p1, "nPosY"  # I

    .line 1165
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    if-ge v0, v1, :cond_27

    .line 1168
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    add-int/2addr v1, v2

    if-gt v1, p1, :cond_24

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_24

    .line 1169
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iActiveButtonID:I

    .line 1171
    goto :goto_27

    .line 1167
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1174
    .end local v0  # "i":I
    :cond_27
    :goto_27
    return-void
.end method

.method public setVisibleE(Z)V
    .registers 6
    .param p1, "isVisible"  # Z

    .line 1262
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 1263
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    if-eqz v1, :cond_a

    .line 1264
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateSlider(I)V

    .line 1266
    :cond_a
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lTime:J

    .line 1267
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateMoveTurnTime()V

    goto :goto_1b

    .line 1270
    :cond_15
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lTime:J

    .line 1271
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    .line 1274
    :goto_1b
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setVisibleE(Z)V

    .line 1275
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->setHoveredID(I)V

    .line 1276
    return-void
.end method

.method public final sortCivsByLastPoint()V
    .registers 4

    .line 913
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 914
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    if-ge v0, v1, :cond_16

    .line 915
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 917
    .end local v0  # "i":I
    :cond_16
    return-void
.end method

.method public final updateButtonsInView()V
    .registers 5

    .line 1140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    if-ge v0, v1, :cond_88

    .line 1141
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-ltz v1, :cond_34

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsPosY(I)I

    move-result v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v3

    if-gt v1, v3, :cond_34

    .line 1142
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->setVisible(Z)V

    goto :goto_84

    .line 1144
    :cond_34
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    add-int/2addr v1, v3

    if-ltz v1, :cond_6c

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v3

    if-gt v1, v3, :cond_6c

    .line 1145
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->setVisible(Z)V

    goto :goto_84

    .line 1148
    :cond_6c
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->setVisible(Z)V

    .line 1140
    :goto_84
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1151
    .end local v0  # "i":I
    :cond_88
    return-void
.end method

.method protected final updateDescInfo()V
    .registers 14

    .line 968
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getMinPoint()J

    move-result-wide v0

    .line 969
    .local v0, "tempBestResult":J
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iMaxPoint:J

    .line 971
    .local v2, "tempWorstResult":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    if-ge v4, v5, :cond_c2

    .line 972
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getDrawData()Z

    move-result v5

    if-eqz v5, :cond_be

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v6

    if-lt v5, v6, :cond_be

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointsSize()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_be

    .line 973
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_82

    .line 974
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v0

    .line 975
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iBestDescDataID:I

    .line 978
    :cond_82
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gtz v7, :cond_be

    .line 979
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v2

    .line 980
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iWorstDescDataID:I

    .line 971
    :cond_be
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 985
    .end local v4  # "i":I
    :cond_c2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->POINTS_TEXT_SCALE:F

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 987
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iWorstDescDataID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iWorstDescDataID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 988
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v4, v4

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iWorstDescDataTextWidth:I

    .line 990
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iBestDescDataID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lData:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iBestDescDataID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->getPointY(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 991
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v4, v4

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iBestDescDataTextWidth:I

    .line 993
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v4

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 995
    const/4 v4, 0x1

    .line 997
    .local v4, "tempRealTurnID":I
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iPointsPosXSize:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    if-ge v6, v7, :cond_181

    .line 998
    sget v6, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iPointsPosXSize:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v5

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    add-int/2addr v7, v5

    add-int/2addr v6, v7

    .end local v4  # "tempRealTurnID":I
    .local v6, "tempRealTurnID":I
    goto :goto_184

    .line 1000
    .end local v6  # "tempRealTurnID":I
    .restart local v4  # "tempRealTurnID":I
    :cond_181
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDescOfTurnID:I

    add-int/2addr v6, v5

    .line 1004
    .end local v4  # "tempRealTurnID":I
    .restart local v6  # "tempRealTurnID":I
    :goto_184
    const/4 v4, 0x0

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->sTextX:Ljava/lang/String;

    .line 1006
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->sTextX:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 1007
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v4, v4

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iWidthTextX:I

    .line 1009
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateMoveTurnTime()V

    .line 1010
    return-void
.end method

.method public updateHover(IIII)V
    .registers 8
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "menuPosX"  # I
    .param p4, "menuPosY"  # I

    .line 497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iDataSize:I

    if-ge v0, v1, :cond_4e

    .line 498
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    if-gt v1, p1, :cond_4b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getPosXE()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    if-lt v1, p1, :cond_4b

    .line 499
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    if-gt v1, p2, :cond_4b

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    if-lt v1, p2, :cond_4b

    .line 500
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lSortedData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->setHoveredID(I)V

    .line 501
    return-void

    .line 497
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 506
    .end local v0  # "i":I
    :cond_4e
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->setHoveredID(I)V

    .line 507
    return-void
.end method

.method public final updateMoveTurnTime()V
    .registers 3

    .line 1287
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->lAuto_Move_Turn_Time:J

    .line 1288
    return-void
.end method

.method protected final updateMoveable()V
    .registers 3

    .line 1154
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getHeightE()I

    move-result v1

    if-le v0, v1, :cond_e

    .line 1155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->moveable:Z

    goto :goto_13

    .line 1157
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->moveable:Z

    .line 1158
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->iButtonsPosY:I

    .line 1160
    :goto_13
    return-void
.end method

.method public updateSlider(I)V
    .registers 2
    .param p1, "nPosX"  # I

    .line 931
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->updateMoveTurnTime()V

    .line 965
    return-void
.end method
