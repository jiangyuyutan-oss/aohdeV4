.class public Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;
.super Ljava/lang/Object;
.source "GraphData2.java"


# static fields
.field private static final ALPHA_CIV_LINE:F = 0.8f

.field protected static final ANIMATION_TIME:I = 0x1c2


# instance fields
.field private backAnimation:Z

.field public clipStarted:Z

.field private drawData:Z

.field private iBeginTurnID:I

.field private iCivID:I

.field private iPointsSize:I

.field private lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J

.field private lVectorPoints:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z


# direct methods
.method protected constructor <init>(ILjava/util/List;I)V
    .registers 8
    .param p1, "iCivID"  # I
    .param p3, "iBeginTurnID"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 43
    .local p2, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iPointsSize:I

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->drawData:Z

    .line 33
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->visible:Z

    .line 34
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->backAnimation:Z

    .line 39
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lTime:J

    .line 61
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->clipStarted:Z

    .line 44
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iCivID:I

    .line 46
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iPointsSize:I

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lPointsY:Ljava/util/List;

    .line 48
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    .line 50
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iPointsSize:I

    if-ge v1, v2, :cond_3c

    .line 51
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lPointsY:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 54
    .end local v1  # "i":I
    :cond_3c
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iBeginTurnID:I

    .line 56
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->drawData:Z

    .line 57
    return-void
.end method

.method private final drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V
    .registers 16
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

    .line 106
    .local p4, "nPointsPosX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const v0, 0x3f4ccccd  # 0.8f

    const/high16 v1, 0x3f800000  # 1.0f

    :try_start_5
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v5

    int-to-float v5, v5

    if-eqz p6, :cond_33

    const/high16 v6, 0x3f800000  # 1.0f

    goto :goto_36

    :cond_33
    const v6, 0x3f4ccccd  # 0.8f

    :goto_36
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_3d

    .line 109
    goto :goto_4d

    .line 107
    :catch_3d
    move-exception v2

    .line 108
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_3e
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    if-eqz p6, :cond_44

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_44
    const v4, 0x3d70f0f1

    invoke-direct {v3, v4, v4, v4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4d} :catch_f9

    .line 116
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_4d
    :try_start_4d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_53

    .line 119
    goto :goto_57

    .line 117
    :catch_53
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_54
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_f9

    .line 122
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_57
    :try_start_57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begin()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_5d

    .line 125
    goto :goto_61

    .line 123
    :catch_5d
    move-exception v0

    .line 124
    .restart local v0  # "ex":Ljava/lang/Exception;
    :try_start_5e
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 127
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_61
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_f8

    .line 128
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 130
    .local v0, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v4, p2

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v4, v5

    neg-int v5, p3

    int-to-float v5, v5

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    .line 131
    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 130
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 133
    const/4 v3, 0x1

    .local v3, "i":I
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "iSize":I
    :goto_95
    if-ge v3, v4, :cond_d6

    .line 134
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_d3

    .line 135
    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v6, p2

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v6, v7

    neg-int v7, p3

    int-to-float v7, v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    .line 136
    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v8, v8

    add-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 135
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 133
    :cond_d3
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 140
    .end local v3  # "i":I
    .end local v4  # "iSize":I
    :cond_d6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_LINE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 141
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    sget-object v4, Lspace/earlygrey/shapedrewer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrewer/JoinType;

    invoke-virtual {v3, v0, v1, v4, v2}, Lspace/earlygrey/shapedrewer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrewer/JoinType;Z)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_e4} :catch_f9

    .line 144
    :try_start_e4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e9} :catch_ea

    .line 147
    goto :goto_ee

    .line 145
    :catch_ea
    move-exception v1

    .line 146
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_eb
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_f9

    .line 150
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_ee
    :try_start_ee
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begin()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f3} :catch_f4

    .line 153
    goto :goto_f8

    .line 151
    :catch_f4
    move-exception v1

    .line 152
    .restart local v1  # "ex":Ljava/lang/Exception;
    :try_start_f5
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_f8} :catch_f9

    .line 157
    .end local v0  # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v1  # "ex":Ljava/lang/Exception;
    :cond_f8
    :goto_f8
    goto :goto_fd

    .line 155
    :catch_f9
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 158
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_fd
    return-void
.end method


# virtual methods
.method protected final buildGraph(IJJLjava/util/List;)V
    .registers 20
    .param p1, "iHeight"  # I
    .param p2, "nMinPoint"  # J
    .param p4, "nMaxPoint"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p6, "nPointsPosX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p0

    move v1, p1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 189
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lPointsY:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 190
    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iBeginTurnID:I

    add-int/2addr v5, v2

    move-object/from16 v6, p6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    int-to-float v7, v1

    int-to-float v8, v1

    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lPointsY:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-float v9, v9

    const/high16 v10, 0x42c80000  # 100.0f

    mul-float v9, v9, v10

    mul-float v8, v8, v9

    sub-long v11, p4, p2

    long-to-float v9, v11

    div-float/2addr v8, v9

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    invoke-direct {v4, v5, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_48
    move-object/from16 v6, p6

    .line 192
    .end local v2  # "i":I
    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V
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

    .line 71
    .local p6, "nPointsPosX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v8, p0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->clipStarted:Z

    .line 74
    :try_start_4
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6} :catch_27

    sub-int v0, v0, p3

    move/from16 v10, p5

    neg-int v1, v10

    move-object v11, p1

    move/from16 v12, p2

    move/from16 v13, p4

    :try_start_10
    invoke-static {p1, v12, v0, v13, v1}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->clipStarted:Z

    .line 77
    sub-int v4, p3, p9

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_25

    .line 80
    goto :goto_32

    .line 78
    :catch_25
    move-exception v0

    goto :goto_2f

    :catch_27
    move-exception v0

    move-object v11, p1

    move/from16 v12, p2

    move/from16 v13, p4

    move/from16 v10, p5

    .line 79
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2f
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 82
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_32
    iget-boolean v0, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->clipStarted:Z

    if-eqz v0, :cond_3b

    .line 83
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 84
    iput-boolean v9, v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->clipStarted:Z

    .line 86
    :cond_3b
    return-void
.end method

.method protected final drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V
    .registers 25
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

    .line 95
    .local p6, "nPointsPosX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sub-int v0, v0, p3

    move/from16 v1, p4

    int-to-float v2, v1

    sget-wide v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    move-object v12, p0

    iget-wide v5, v12, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x43e10000  # 450.0f

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    float-to-int v2, v2

    move/from16 v3, p5

    neg-int v4, v3

    move-object/from16 v13, p1

    move/from16 v14, p2

    invoke-static {v13, v14, v0, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 97
    sub-int v8, p3, p9

    const/4 v11, 0x1

    move-object v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v5 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V

    .line 100
    invoke-static/range {p1 .. p1}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 101
    return-void
.end method

.method protected final drawCivButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "active"  # Z

    .line 161
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    if-eqz p4, :cond_19

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v4, v4, v5

    goto :goto_29

    :cond_19
    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->drawData:Z

    if-eqz v4, :cond_22

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_29

    :cond_22
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v5, 0x40800000  # 4.0f

    div-float/2addr v4, v5

    :goto_29
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 162
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonWidth()I

    move-result v5

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 164
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->drawData:Z

    const/high16 v7, 0x3e800000  # 0.25f

    if-eqz v4, :cond_58

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_5a

    :cond_58
    const/high16 v4, 0x3e800000  # 0.25f

    :goto_5a
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 166
    const v1, 0x3f4ccccd  # 0.8f

    const v2, 0x3ecccccd  # 0.4f

    :try_start_66
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v5

    int-to-float v5, v5

    iget-boolean v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->drawData:Z

    if-eqz v6, :cond_97

    const v6, 0x3f4ccccd  # 0.8f

    goto :goto_9a

    :cond_97
    const v6, 0x3ecccccd  # 0.4f

    :goto_9a
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_a0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_66 .. :try_end_a0} :catch_a1

    .line 169
    goto :goto_b5

    .line 167
    :catch_a1
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->drawData:Z

    if-eqz v4, :cond_a9

    goto :goto_ac

    :cond_a9
    const v1, 0x3ecccccd  # 0.4f

    :goto_ac
    const v2, 0x3d70f0f1

    invoke-direct {v3, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 171
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_b5
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_W:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 173
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->drawData:Z

    if-eqz v0, :cond_ca

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_d1

    :cond_ca
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_d1
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 175
    :try_start_d4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v0, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_102
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d4 .. :try_end_102} :catch_103

    .line 178
    goto :goto_137

    .line 176
    :catch_103
    move-exception v0

    .line 177
    .restart local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getGraphButtonHeight()I

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

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 181
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_137
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 182
    return-void
.end method

.method protected final getBackAnimation()Z
    .registers 2

    .line 244
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->backAnimation:Z

    return v0
.end method

.method protected final getBeginTurnID()I
    .registers 2

    .line 213
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iBeginTurnID:I

    return v0
.end method

.method protected final getCivID()I
    .registers 2

    .line 209
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iCivID:I

    return v0
.end method

.method protected final getDrawData()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->drawData:Z

    return v0
.end method

.method protected final getPointY(I)J
    .registers 5
    .param p1, "i"  # I

    .line 198
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lPointsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 199
    :catch_d
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method protected final getPointsSize()I
    .registers 2

    .line 205
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->iPointsSize:I

    return v0
.end method

.method protected final getTime()J
    .registers 3

    .line 252
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->lTime:J

    return-wide v0
.end method

.method protected final getVisible()Z
    .registers 2

    .line 236
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->visible:Z

    return v0
.end method

.method protected final setBackAnimation(Z)V
    .registers 2
    .param p1, "backAnimation"  # Z

    .line 248
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->backAnimation:Z

    .line 249
    return-void
.end method

.method protected final setDrawData(Z)V
    .registers 2
    .param p1, "drawData"  # Z

    .line 232
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->drawData:Z

    .line 233
    return-void
.end method

.method protected final setVisible(Z)V
    .registers 2
    .param p1, "visible"  # Z

    .line 240
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;->visible:Z

    .line 241
    return-void
.end method
