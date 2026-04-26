.class public Lcom/badlogic/gdx/math/Bresenham2;
.super Ljava/lang/Object;
.source "Bresenham2.java"


# instance fields
.field private final points:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation
.end field

.field private final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bresenham2;->points:Lcom/badlogic/gdx/utils/Array;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Bresenham2$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Bresenham2$1;-><init>(Lcom/badlogic/gdx/math/Bresenham2;)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bresenham2;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method


# virtual methods
.method public line(IIII)Lcom/badlogic/gdx/utils/Array;
    .registers 13
    .param p1, "startX"  # I
    .param p2, "startY"  # I
    .param p3, "endX"  # I
    .param p4, "endY"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bresenham2;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Bresenham2;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bresenham2;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 54
    iget-object v6, p0, Lcom/badlogic/gdx/math/Bresenham2;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v7, p0, Lcom/badlogic/gdx/math/Bresenham2;->points:Lcom/badlogic/gdx/utils/Array;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/math/Bresenham2;->line(IIIILcom/badlogic/gdx/utils/Pool;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public line(IIIILcom/badlogic/gdx/utils/Pool;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .registers 23
    .param p1, "startX"  # I
    .param p2, "startY"  # I
    .param p3, "endX"  # I
    .param p4, "endY"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation

    .line 67
    .local p5, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/math/GridPoint2;>;"
    .local p6, "output":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/GridPoint2;>;"
    move-object/from16 v0, p6

    sub-int v1, p3, p1

    .line 68
    .local v1, "w":I
    sub-int v2, p4, p2

    .line 69
    .local v2, "h":I
    const/4 v3, 0x0

    .local v3, "dx1":I
    const/4 v4, 0x0

    .local v4, "dy1":I
    const/4 v5, 0x0

    .local v5, "dx2":I
    const/4 v6, 0x0

    .line 70
    .local v6, "dy2":I
    if-gez v1, :cond_f

    .line 71
    const/4 v3, -0x1

    .line 72
    const/4 v5, -0x1

    goto :goto_13

    .line 73
    :cond_f
    if-lez v1, :cond_13

    .line 74
    const/4 v3, 0x1

    .line 75
    const/4 v5, 0x1

    .line 77
    :cond_13
    :goto_13
    if-gez v2, :cond_17

    .line 78
    const/4 v4, -0x1

    goto :goto_1a

    .line 79
    :cond_17
    if-lez v2, :cond_1a

    .line 80
    const/4 v4, 0x1

    .line 81
    :cond_1a
    :goto_1a
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 82
    .local v7, "longest":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 83
    .local v8, "shortest":I
    if-ge v7, v8, :cond_34

    .line 84
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 85
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 86
    if-gez v2, :cond_30

    .line 87
    const/4 v6, -0x1

    goto :goto_33

    .line 88
    :cond_30
    if-lez v2, :cond_33

    const/4 v6, 0x1

    .line 89
    :cond_33
    :goto_33
    const/4 v5, 0x0

    .line 91
    :cond_34
    shl-int/lit8 v9, v8, 0x1

    .line 92
    .local v9, "shortest2":I
    shl-int/lit8 v10, v7, 0x1

    .line 93
    .local v10, "longest2":I
    const/4 v11, 0x0

    .line 94
    .local v11, "numerator":I
    const/4 v12, 0x0

    move v13, v11

    move v14, v12

    move/from16 v11, p1

    move/from16 v12, p2

    .end local p1  # "startX":I
    .end local p2  # "startY":I
    .local v11, "startX":I
    .local v12, "startY":I
    .local v13, "numerator":I
    .local v14, "i":I
    :goto_40
    if-gt v14, v7, :cond_5a

    .line 95
    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/GridPoint2;

    .line 96
    .local v15, "point":Lcom/badlogic/gdx/math/GridPoint2;
    invoke-virtual {v15, v11, v12}, Lcom/badlogic/gdx/math/GridPoint2;->set(II)Lcom/badlogic/gdx/math/GridPoint2;

    .line 97
    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 98
    add-int/2addr v13, v9

    .line 99
    if-le v13, v7, :cond_55

    .line 100
    sub-int/2addr v13, v10

    .line 101
    add-int/2addr v11, v3

    .line 102
    add-int/2addr v12, v4

    goto :goto_57

    .line 104
    :cond_55
    add-int/2addr v11, v5

    .line 105
    add-int/2addr v12, v6

    .line 94
    .end local v15  # "point":Lcom/badlogic/gdx/math/GridPoint2;
    :goto_57
    add-int/lit8 v14, v14, 0x1

    goto :goto_40

    .line 108
    .end local v14  # "i":I
    :cond_5a
    return-object v0
.end method

.method public line(Lcom/badlogic/gdx/math/GridPoint2;Lcom/badlogic/gdx/math/GridPoint2;)Lcom/badlogic/gdx/utils/Array;
    .registers 7
    .param p1, "start"  # Lcom/badlogic/gdx/math/GridPoint2;
    .param p2, "end"  # Lcom/badlogic/gdx/math/GridPoint2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation

    .line 42
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iget v2, p2, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v3, p2, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Bresenham2;->line(IIII)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method
