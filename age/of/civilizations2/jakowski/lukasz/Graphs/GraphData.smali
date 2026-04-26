.class public Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;
.super Ljava/lang/Object;
.source "GraphData.java"


# static fields
.field private static final ALPHA_CIV_LINE:F = 0.8f

.field public static final ANIMATION_TIME:I = 0x2ee


# instance fields
.field private backAnimation:Z

.field private drawData:Z

.field private iBeginTurnID:I

.field private iCivID:I

.field private iPointsSize:I

.field private lGraphLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J

.field private visible:Z


# direct methods
.method public constructor <init>(ILjava/util/List;I)V
    .registers 8
    .param p1, "iCivID"  # I
    .param p3, "iBeginTurnID"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 46
    .local p2, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iPointsSize:I

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawData:Z

    .line 36
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->visible:Z

    .line 37
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->backAnimation:Z

    .line 42
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lTime:J

    .line 47
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iCivID:I

    .line 49
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iPointsSize:I

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lPointsY:Ljava/util/List;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lGraphLines:Ljava/util/List;

    .line 53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_28
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iPointsSize:I

    if-ge v1, v2, :cond_3a

    .line 54
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lPointsY:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 57
    .end local v1  # "i":I
    :cond_3a
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iBeginTurnID:I

    .line 59
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawData:Z

    .line 60
    return-void
.end method

.method private final drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p5, "id"  # I
    .param p6, "active"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 99
    .local p4, "nPointsPosX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/high16 v0, 0x3f800000  # 1.0f

    const v1, 0x3f4ccccd  # 0.8f

    :try_start_5
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000  # 255.0f

    div-float/2addr v3, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    if-eqz p6, :cond_38

    const/high16 v4, 0x3f800000  # 1.0f

    goto :goto_3b

    :cond_38
    const v4, 0x3f4ccccd  # 0.8f

    :goto_3b
    invoke-direct {v2, v3, v5, v6, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_41
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_41} :catch_42

    .line 102
    goto :goto_54

    .line 100
    :catch_42
    move-exception v2

    .line 101
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    if-eqz p6, :cond_48

    goto :goto_4b

    :cond_48
    const v0, 0x3f4ccccd  # 0.8f

    :goto_4b
    const v1, 0x3d70f0f1

    invoke-direct {v3, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 104
    .end local v2  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_55
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iPointsSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_77

    .line 105
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lGraphLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iBeginTurnID:I

    add-int/2addr v2, v0

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, p1, v2, p3, p5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 107
    .end local v0  # "i":I
    :cond_77
    return-void
.end method


# virtual methods
.method public final buildGraph(IIILjava/util/List;)V
    .registers 16
    .param p1, "iHeight"  # I
    .param p2, "nMinPoint"  # I
    .param p3, "nMaxPoint"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p4, "nPointsPosX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lGraphLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iPointsSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6d

    .line 149
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lGraphLines:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iBeginTurnID:I

    add-int/2addr v3, v0

    .line 150
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v4, p1

    int-to-float v5, p1

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lPointsY:Ljava/util/List;

    .line 151
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000  # 100.0f

    mul-float v6, v6, v7

    mul-float v5, v5, v6

    sub-int v6, p3, p2

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iBeginTurnID:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    .line 152
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v6, p1

    int-to-float v8, p1

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lPointsY:Ljava/util/List;

    add-int/lit8 v10, v0, 0x1

    .line 153
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v7

    mul-float v8, v8, v9

    sub-int v9, p3, p2

    int-to-float v9, v9

    div-float/2addr v8, v9

    div-float/2addr v8, v7

    sub-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphLine;-><init>(IIII)V

    .line 149
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 155
    .end local v0  # "i":I
    :cond_6d
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V
    .registers 18
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p7, "id"  # I
    .param p8, "active"  # Z
    .param p9, "iFixPosY"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZI)V"
        }
    .end annotation

    .line 65
    .local p6, "nPointsPosX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v7, p0

    iget-wide v0, v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lTime:J

    const-wide/16 v2, 0x2ee

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_12

    .line 66
    invoke-virtual/range {p0 .. p9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    goto :goto_1e

    .line 69
    :cond_12
    sub-int v3, p3, p9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V

    .line 71
    :goto_1e
    return-void
.end method

.method public final drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p7, "id"  # I
    .param p8, "active"  # Z
    .param p9, "iFixPosY"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZI)V"
        }
    .end annotation

    .line 75
    .local p6, "nPointsPosX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v8, p0

    move/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    iget-boolean v0, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->backAnimation:Z

    const v1, 0x443b8000  # 750.0f

    if-eqz v0, :cond_2d

    .line 76
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v2, v9

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int v3, v3, p3

    int-to-float v3, v3

    int-to-float v4, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v12, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lTime:J

    sub-long/2addr v5, v12

    long-to-float v5, v5

    div-float/2addr v5, v1

    mul-float v4, v4, v5

    float-to-int v1, v4

    sub-int v1, v10, v1

    int-to-float v1, v1

    neg-int v4, v11

    int-to-float v4, v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    move-object v12, v0

    .local v0, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    goto :goto_49

    .line 79
    .end local v0  # "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    :cond_2d
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v2, v9

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int v3, v3, p3

    int-to-float v3, v3

    int-to-float v4, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v12, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lTime:J

    sub-long/2addr v5, v12

    long-to-float v5, v5

    div-float/2addr v5, v1

    mul-float v4, v4, v5

    float-to-int v1, v4

    int-to-float v1, v1

    neg-int v4, v11

    int-to-float v4, v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    move-object v12, v0

    .line 82
    .local v12, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    :goto_49
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 83
    invoke-static {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 85
    sub-int v4, p3, p9

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V

    .line 86
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 90
    :try_start_61
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 91
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_67
    .catch Ljava/lang/IllegalStateException; {:try_start_61 .. :try_end_67} :catch_68

    .line 94
    goto :goto_69

    .line 92
    :catch_68
    move-exception v0

    .line 95
    :goto_69
    return-void
.end method

.method public final drawCivButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "active"  # Z

    .line 110
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    if-eqz p4, :cond_19

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    goto :goto_29

    :cond_19
    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawData:Z

    if-eqz v4, :cond_22

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_29

    :cond_22
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v5, 0x40800000  # 4.0f

    div-float/2addr v4, v5

    :goto_29
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 111
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonWidth()I

    move-result v5

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 113
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawData:Z

    const/high16 v7, 0x3e800000  # 0.25f

    if-eqz v4, :cond_5c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_5e

    :cond_5c
    const/high16 v4, 0x3e800000  # 0.25f

    :goto_5e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 125
    const v1, 0x3f4ccccd  # 0.8f

    const v2, 0x3ecccccd  # 0.4f

    :try_start_6a
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000  # 255.0f

    div-float/2addr v3, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iCivID:I

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawData:Z

    if-eqz v4, :cond_a0

    const v4, 0x3f4ccccd  # 0.8f

    goto :goto_a3

    :cond_a0
    const v4, 0x3ecccccd  # 0.4f

    :goto_a3
    invoke-direct {v0, v3, v5, v6, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_a9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6a .. :try_end_a9} :catch_aa

    .line 128
    goto :goto_be

    .line 126
    :catch_aa
    move-exception v0

    .line 127
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawData:Z

    if-eqz v4, :cond_b2

    goto :goto_b5

    :cond_b2
    const v1, 0x3ecccccd  # 0.4f

    :goto_b5
    const v2, 0x3d70f0f1

    invoke-direct {v3, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 130
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_be
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_W:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 132
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawData:Z

    if-eqz v0, :cond_d7

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_de

    :cond_d7
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_de
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 134
    :try_start_e1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v0, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iCivID:I

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_120
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e1 .. :try_end_120} :catch_121

    .line 137
    goto :goto_155

    .line 135
    :catch_121
    move-exception v0

    .line 136
    .restart local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 138
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_155
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;->getGraphButtonHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 140
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 141
    return-void
.end method

.method public final getBackAnimation()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->backAnimation:Z

    return v0
.end method

.method public final getBeginTurnID()I
    .registers 2

    .line 176
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iBeginTurnID:I

    return v0
.end method

.method public final getCivID()I
    .registers 2

    .line 172
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iCivID:I

    return v0
.end method

.method public final getDrawData()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawData:Z

    return v0
.end method

.method public final getPointY(I)I
    .registers 4
    .param p1, "i"  # I

    .line 161
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lPointsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 162
    :catch_d
    move-exception v0

    .line 163
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    return v1
.end method

.method public final getPointsSize()I
    .registers 2

    .line 168
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->iPointsSize:I

    return v0
.end method

.method public final getTime()J
    .registers 3

    .line 217
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lTime:J

    return-wide v0
.end method

.method public final getVisible()Z
    .registers 2

    .line 201
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->visible:Z

    return v0
.end method

.method public final setBackAnimation(Z)V
    .registers 2
    .param p1, "backAnimation"  # Z

    .line 213
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->backAnimation:Z

    .line 214
    return-void
.end method

.method public final setDrawData(Z)V
    .registers 10
    .param p1, "drawData"  # Z

    .line 184
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawData:Z

    if-eq p1, v0, :cond_37

    .line 185
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2ee

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_29

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawData:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->backAnimation:Z

    if-eqz v0, :cond_29

    .line 186
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lTime:J

    sub-long/2addr v2, v6

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lTime:J

    goto :goto_2f

    .line 189
    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->lTime:J

    .line 192
    :goto_2f
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 194
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->backAnimation:Z

    .line 197
    :cond_37
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->drawData:Z

    .line 198
    return-void
.end method

.method public final setVisible(Z)V
    .registers 2
    .param p1, "visible"  # Z

    .line 205
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->visible:Z

    .line 206
    return-void
.end method
