.class public Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "VerticalGroup.java"


# instance fields
.field private align:I

.field private columnAlign:I

.field private columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

.field private expand:Z

.field private fill:F

.field private lastPrefWidth:F

.field private padBottom:F

.field private padLeft:F

.field private padRight:F

.field private padTop:F

.field private prefHeight:F

.field private prefWidth:F

.field private reverse:Z

.field private round:Z

.field private sizeInvalid:Z

.field private space:F

.field private wrap:Z

.field private wrapSpace:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    .line 45
    const/4 v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 46
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 50
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 51
    return-void
.end method

.method private computeSize()V
    .registers 21

    .line 59
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    .line 61
    .local v1, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    iget v2, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .line 62
    .local v2, "n":I
    const/4 v3, 0x0

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 63
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    if-eqz v4, :cond_df

    .line 64
    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 65
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    if-nez v4, :cond_20

    .line 66
    new-instance v4, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    goto :goto_25

    .line 68
    :cond_20
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 69
    :goto_25
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    .line 70
    .local v4, "columnSizes":Lcom/badlogic/gdx/utils/FloatArray;
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    .local v5, "space":F
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrapSpace:F

    .line 71
    .local v6, "wrapSpace":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    add-float/2addr v7, v8

    .local v7, "pad":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v8

    sub-float/2addr v8, v7

    .local v8, "groupHeight":F
    const/4 v9, 0x0

    .local v9, "x":F
    const/4 v10, 0x0

    .local v10, "y":F
    const/4 v11, 0x0

    .line 72
    .local v11, "columnWidth":F
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x1

    .line 73
    .local v13, "incr":I
    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    if-eqz v14, :cond_42

    .line 74
    add-int/lit8 v12, v2, -0x1

    .line 75
    const/4 v2, -0x1

    .line 76
    const/4 v13, -0x1

    .line 78
    :cond_42
    :goto_42
    if-eq v12, v2, :cond_b8

    .line 79
    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 82
    .local v14, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v15, v14, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v15, :cond_68

    .line 83
    move-object v15, v14

    check-cast v15, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 84
    .local v15, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v16

    .line 85
    .local v16, "width":F
    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v17

    .line 86
    .local v17, "height":F
    cmpl-float v18, v17, v8

    if-lez v18, :cond_65

    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 87
    .end local v15  # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    :cond_65
    move/from16 v3, v16

    goto :goto_72

    .line 88
    .end local v16  # "width":F
    .end local v17  # "height":F
    :cond_68
    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v16

    .line 89
    .restart local v16  # "width":F
    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v17

    move/from16 v3, v16

    .line 92
    .end local v16  # "width":F
    .local v3, "width":F
    .restart local v17  # "height":F
    :goto_72
    const/4 v15, 0x0

    cmpl-float v16, v10, v15

    if-lez v16, :cond_79

    move v15, v5

    goto :goto_7a

    :cond_79
    const/4 v15, 0x0

    :goto_7a
    add-float v15, v17, v15

    .line 93
    .local v15, "incrY":F
    add-float v16, v10, v15

    cmpl-float v16, v16, v8

    if-lez v16, :cond_a8

    const/16 v16, 0x0

    cmpl-float v19, v10, v16

    if-lez v19, :cond_a8

    .line 94
    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 95
    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 96
    move/from16 v16, v2

    .end local v2  # "n":I
    .local v16, "n":I
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    move/from16 v19, v5

    .end local v5  # "space":F
    .local v19, "space":F
    add-float v5, v10, v7

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 97
    const/4 v2, 0x0

    cmpl-float v5, v9, v2

    if-lez v5, :cond_a2

    add-float/2addr v9, v6

    .line 98
    :cond_a2
    add-float/2addr v9, v11

    .line 99
    const/4 v11, 0x0

    .line 100
    const/4 v10, 0x0

    .line 101
    move/from16 v15, v17

    goto :goto_ac

    .line 93
    .end local v16  # "n":I
    .end local v19  # "space":F
    .restart local v2  # "n":I
    .restart local v5  # "space":F
    :cond_a8
    move/from16 v16, v2

    move/from16 v19, v5

    .line 103
    .end local v2  # "n":I
    .end local v5  # "space":F
    .restart local v16  # "n":I
    .restart local v19  # "space":F
    :goto_ac
    add-float/2addr v10, v15

    .line 104
    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 78
    .end local v3  # "width":F
    .end local v14  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v15  # "incrY":F
    .end local v17  # "height":F
    add-int/2addr v12, v13

    move/from16 v2, v16

    move/from16 v5, v19

    const/4 v3, 0x0

    goto :goto_42

    .line 106
    .end local v16  # "n":I
    .end local v19  # "space":F
    .restart local v2  # "n":I
    .restart local v5  # "space":F
    :cond_b8
    move/from16 v16, v2

    move/from16 v19, v5

    .end local v2  # "n":I
    .end local v5  # "space":F
    .restart local v16  # "n":I
    .restart local v19  # "space":F
    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 107
    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 108
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    add-float v3, v10, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 109
    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_d2

    add-float/2addr v9, v6

    .line 110
    :cond_d2
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    add-float v3, v9, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 111
    .end local v4  # "columnSizes":Lcom/badlogic/gdx/utils/FloatArray;
    .end local v6  # "wrapSpace":F
    .end local v7  # "pad":F
    .end local v8  # "groupHeight":F
    .end local v9  # "x":F
    .end local v10  # "y":F
    .end local v11  # "columnWidth":F
    .end local v12  # "i":I
    .end local v13  # "incr":I
    .end local v19  # "space":F
    move/from16 v2, v16

    goto :goto_12b

    .line 112
    .end local v16  # "n":I
    .restart local v2  # "n":I
    :cond_df
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    add-float/2addr v3, v4

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 113
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ee
    if-ge v3, v2, :cond_12b

    .line 114
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 115
    .local v4, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v5, :cond_113

    .line 116
    move-object v5, v4

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 117
    .local v5, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 118
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 119
    .end local v5  # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    goto :goto_128

    .line 120
    :cond_113
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 121
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 113
    .end local v4  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_128
    add-int/lit8 v3, v3, 0x1

    goto :goto_ee

    .line 125
    .end local v3  # "i":I
    :cond_12b
    :goto_12b
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 126
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    if-eqz v3, :cond_14b

    .line 127
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 128
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 130
    :cond_14b
    return-void
.end method

.method private layoutWrapped()V
    .registers 31

    .line 206
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getPrefWidth()F

    move-result v1

    .line 207
    .local v1, "prefWidth":F
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->lastPrefWidth:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_11

    .line 208
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->lastPrefWidth:F

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->invalidateHierarchy()V

    .line 212
    :cond_11
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 213
    .local v2, "align":I
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 214
    .local v3, "round":Z
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    .local v4, "space":F
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .local v5, "padLeft":F
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .local v6, "fill":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrapSpace:F

    .line 215
    .local v7, "wrapSpace":F
    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v8, v9

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    sub-float/2addr v8, v9

    .line 216
    .local v8, "maxHeight":F
    move v9, v5

    .local v9, "columnX":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v10

    .line 217
    .local v10, "groupHeight":F
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v11, v12

    add-float/2addr v11, v4

    .local v11, "yStart":F
    const/4 v12, 0x0

    .local v12, "y":F
    const/4 v13, 0x0

    .line 219
    .local v13, "columnWidth":F
    and-int/lit8 v14, v2, 0x10

    const/high16 v15, 0x40000000  # 2.0f

    if-eqz v14, :cond_3f

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v14

    sub-float/2addr v14, v1

    add-float/2addr v9, v14

    goto :goto_4a

    .line 221
    :cond_3f
    and-int/lit8 v14, v2, 0x8

    if-nez v14, :cond_4a

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v14

    sub-float/2addr v14, v1

    div-float/2addr v14, v15

    add-float/2addr v9, v14

    .line 224
    :cond_4a
    :goto_4a
    and-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_54

    .line 225
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    sub-float v14, v10, v14

    add-float/2addr v11, v14

    goto :goto_5e

    .line 226
    :cond_54
    and-int/lit8 v14, v2, 0x4

    if-nez v14, :cond_5e

    .line 227
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    sub-float v14, v10, v14

    div-float/2addr v14, v15

    add-float/2addr v11, v14

    .line 229
    :cond_5e
    :goto_5e
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v10, v14

    .line 230
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 232
    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    .line 233
    .local v14, "columnSizes":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v15

    .line 234
    .local v15, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/16 v17, 0x0

    move/from16 v18, v1

    .end local v1  # "prefWidth":F
    .local v17, "i":I
    .local v18, "prefWidth":F
    iget v1, v15, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v1, "n":I
    const/16 v19, 0x1

    .line 235
    .local v19, "incr":I
    move/from16 v20, v5

    .end local v5  # "padLeft":F
    .local v20, "padLeft":F
    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    if-eqz v5, :cond_7c

    .line 236
    add-int/lit8 v17, v1, -0x1

    .line 237
    const/4 v1, -0x1

    .line 238
    const/16 v19, -0x1

    .line 240
    :cond_7c
    const/4 v5, 0x0

    move/from16 v29, v17

    move/from16 v17, v3

    move/from16 v3, v29

    .local v3, "i":I
    .local v5, "r":I
    .local v17, "round":Z
    :goto_83
    if-eq v3, v1, :cond_195

    .line 241
    invoke-virtual {v15, v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v1

    .end local v1  # "n":I
    .local v22, "n":I
    move-object/from16 v1, v21

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 244
    .local v1, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/16 v21, 0x0

    .line 245
    .local v21, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    move-object/from16 v23, v15

    .end local v15  # "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    .local v23, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    instance-of v15, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v15, :cond_bd

    .line 246
    move-object/from16 v21, v1

    check-cast v21, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 247
    invoke-interface/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v15

    .line 248
    .local v15, "width":F
    invoke-interface/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v24

    .line 249
    .local v24, "height":F
    cmpl-float v25, v24, v10

    if-lez v25, :cond_b4

    move/from16 v25, v15

    .end local v15  # "width":F
    .local v25, "width":F
    invoke-interface/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v15

    invoke-static {v10, v15}, Ljava/lang/Math;->max(FF)F

    move-result v24

    move/from16 v15, v25

    goto :goto_b6

    .end local v25  # "width":F
    .restart local v15  # "width":F
    :cond_b4
    move/from16 v25, v15

    .end local v15  # "width":F
    .restart local v25  # "width":F
    :goto_b6
    move/from16 v29, v24

    move/from16 v24, v10

    move/from16 v10, v29

    goto :goto_cb

    .line 251
    .end local v24  # "height":F
    .end local v25  # "width":F
    :cond_bd
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v15

    .line 252
    .restart local v15  # "width":F
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v24

    move/from16 v29, v24

    move/from16 v24, v10

    move/from16 v10, v29

    .line 255
    .local v10, "height":F
    .local v24, "groupHeight":F
    :goto_cb
    sub-float v25, v12, v10

    sub-float v25, v25, v4

    move/from16 v26, v12

    .end local v12  # "y":F
    .local v26, "y":F
    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    cmpg-float v12, v25, v12

    if-ltz v12, :cond_dd

    if-nez v5, :cond_da

    goto :goto_dd

    :cond_da
    move/from16 v12, v26

    goto :goto_110

    .line 256
    :cond_dd
    :goto_dd
    iget v12, v14, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v12, v12, -0x2

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 257
    move v12, v11

    .line 258
    .end local v26  # "y":F
    .restart local v12  # "y":F
    and-int/lit8 v25, v2, 0x4

    if-eqz v25, :cond_f3

    .line 259
    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v25

    sub-float v25, v8, v25

    sub-float v12, v12, v25

    goto :goto_103

    .line 260
    :cond_f3
    and-int/lit8 v25, v2, 0x2

    if-nez v25, :cond_103

    .line 261
    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v25

    sub-float v25, v8, v25

    const/high16 v16, 0x40000000  # 2.0f

    div-float v25, v25, v16

    sub-float v12, v12, v25

    .line 262
    :cond_103
    :goto_103
    if-lez v5, :cond_107

    .line 263
    add-float/2addr v9, v7

    .line 264
    add-float/2addr v9, v13

    .line 266
    :cond_107
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    .line 267
    .end local v13  # "columnWidth":F
    .local v0, "columnWidth":F
    add-int/lit8 v5, v5, 0x2

    move v13, v0

    .line 270
    .end local v0  # "columnWidth":F
    .restart local v13  # "columnWidth":F
    :goto_110
    const/4 v0, 0x0

    cmpl-float v25, v6, v0

    if-lez v25, :cond_117

    mul-float v15, v13, v6

    .line 272
    :cond_117
    if-eqz v21, :cond_130

    .line 273
    invoke-interface/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 274
    invoke-interface/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v0

    .line 275
    .local v0, "maxWidth":F
    const/16 v25, 0x0

    cmpl-float v25, v0, v25

    if-lez v25, :cond_130

    cmpl-float v25, v15, v0

    if-lez v25, :cond_130

    move v15, v0

    .line 278
    .end local v0  # "maxWidth":F
    :cond_130
    move v0, v9

    .line 279
    .local v0, "x":F
    and-int/lit8 v25, v2, 0x10

    if-eqz v25, :cond_13c

    .line 280
    sub-float v25, v13, v15

    add-float v0, v0, v25

    const/high16 v16, 0x40000000  # 2.0f

    goto :goto_14b

    .line 281
    :cond_13c
    and-int/lit8 v25, v2, 0x8

    if-nez v25, :cond_149

    .line 282
    sub-float v25, v13, v15

    const/high16 v16, 0x40000000  # 2.0f

    div-float v25, v25, v16

    add-float v0, v0, v25

    goto :goto_14b

    .line 281
    :cond_149
    const/high16 v16, 0x40000000  # 2.0f

    .line 284
    :goto_14b
    add-float v25, v10, v4

    sub-float v12, v12, v25

    .line 285
    if-eqz v17, :cond_171

    .line 286
    move/from16 v25, v2

    .end local v2  # "align":I
    .local v25, "align":I
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v27, v4

    .end local v4  # "space":F
    .local v27, "space":F
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    move/from16 v26, v5

    .end local v5  # "r":I
    .local v26, "r":I
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    move/from16 v28, v6

    .end local v6  # "fill":F
    .local v28, "fill":F
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_17c

    .line 288
    .end local v25  # "align":I
    .end local v26  # "r":I
    .end local v27  # "space":F
    .end local v28  # "fill":F
    .restart local v2  # "align":I
    .restart local v4  # "space":F
    .restart local v5  # "r":I
    .restart local v6  # "fill":F
    :cond_171
    move/from16 v25, v2

    move/from16 v27, v4

    move/from16 v26, v5

    move/from16 v28, v6

    .end local v2  # "align":I
    .end local v4  # "space":F
    .end local v5  # "r":I
    .end local v6  # "fill":F
    .restart local v25  # "align":I
    .restart local v26  # "r":I
    .restart local v27  # "space":F
    .restart local v28  # "fill":F
    invoke-virtual {v1, v0, v12, v15, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 290
    :goto_17c
    if-eqz v21, :cond_181

    invoke-interface/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 240
    .end local v0  # "x":F
    .end local v1  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v10  # "height":F
    .end local v15  # "width":F
    .end local v21  # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    :cond_181
    add-int v3, v3, v19

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v15, v23

    move/from16 v10, v24

    move/from16 v2, v25

    move/from16 v5, v26

    move/from16 v4, v27

    move/from16 v6, v28

    goto/16 :goto_83

    .line 292
    .end local v22  # "n":I
    .end local v23  # "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    .end local v24  # "groupHeight":F
    .end local v25  # "align":I
    .end local v26  # "r":I
    .end local v27  # "space":F
    .end local v28  # "fill":F
    .local v1, "n":I
    .restart local v2  # "align":I
    .restart local v4  # "space":F
    .restart local v6  # "fill":F
    .local v10, "groupHeight":F
    .local v15, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    :cond_195
    return-void
.end method


# virtual methods
.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "align"  # I

    .line 402
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 403
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 428
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 429
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 430
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 408
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 409
    return-object p0
.end method

.method public columnAlign(I)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "columnAlign"  # I

    .line 509
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 510
    return-object p0
.end method

.method public columnBottom()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 537
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 538
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 539
    return-object p0
.end method

.method public columnCenter()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 515
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 516
    return-object p0
.end method

.method public columnLeft()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 529
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 530
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 531
    return-object p0
.end method

.method public columnRight()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 544
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 545
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 546
    return-object p0
.end method

.method public columnTop()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 522
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 523
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 524
    return-object p0
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 14
    .param p1, "shapes"  # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 550
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 551
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getDebug()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 552
    :cond_a
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 553
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 554
    :cond_20
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getX()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    add-float v3, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getY()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    add-float v4, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getOriginX()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getOriginY()F

    move-result v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float v7, v0, v1

    .line 555
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float v8, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getScaleX()F

    move-result v9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getScaleY()F

    move-result v10

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getRotation()F

    move-result v11

    .line 554
    move-object v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFF)V

    .line 556
    return-void
.end method

.method public expand()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    .line 461
    return-object p0
.end method

.method public expand(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "expand"  # Z

    .line 466
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    .line 467
    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 445
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .line 446
    return-object p0
.end method

.method public fill(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "fill"  # F

    .line 451
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .line 452
    return-object p0
.end method

.method public getAlign()I
    .registers 2

    .line 441
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return v0
.end method

.method public getExpand()Z
    .registers 2

    .line 471
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    return v0
.end method

.method public getFill()F
    .registers 2

    .line 456
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    return v0
.end method

.method public getPadBottom()F
    .registers 2

    .line 392
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    return v0
.end method

.method public getPadLeft()F
    .registers 2

    .line 388
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    return v0
.end method

.method public getPadRight()F
    .registers 2

    .line 396
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    return v0
.end method

.method public getPadTop()F
    .registers 2

    .line 384
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    return v0
.end method

.method public getPrefHeight()F
    .registers 2

    .line 300
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 301
    :cond_6
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    .line 302
    :cond_d
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .registers 2

    .line 295
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    .line 296
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    return v0
.end method

.method public getReverse()Z
    .registers 2

    .line 323
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    return v0
.end method

.method public getSpace()F
    .registers 2

    .line 333
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    return v0
.end method

.method public getWrap()Z
    .registers 2

    .line 502
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    return v0
.end method

.method public getWrapSpace()F
    .registers 2

    .line 343
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrapSpace:F

    return v0
.end method

.method public grow()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    .line 477
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .line 478
    return-object p0
.end method

.method public invalidate()V
    .registers 2

    .line 54
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    .line 56
    return-void
.end method

.method public layout()V
    .registers 24

    .line 133
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v1, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    .line 135
    :cond_9
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    if-eqz v1, :cond_11

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->layoutWrapped()V

    .line 137
    return-void

    .line 140
    :cond_11
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 141
    .local v1, "round":Z
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 142
    .local v2, "align":I
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    .local v3, "space":F
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .local v4, "padLeft":F
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .line 143
    .local v5, "fill":F
    iget-boolean v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    if-eqz v6, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v6

    goto :goto_26

    :cond_24
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    :goto_26
    sub-float/2addr v6, v4

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float/2addr v6, v7

    .local v6, "columnWidth":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v7, v8

    add-float/2addr v7, v3

    .line 145
    .local v7, "y":F
    and-int/lit8 v8, v2, 0x2

    const/high16 v9, 0x40000000  # 2.0f

    if-eqz v8, :cond_3f

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    sub-float/2addr v8, v10

    add-float/2addr v7, v8

    goto :goto_4c

    .line 147
    :cond_3f
    and-int/lit8 v8, v2, 0x4

    if-nez v8, :cond_4c

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    sub-float/2addr v8, v10

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 151
    :cond_4c
    :goto_4c
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_52

    .line 152
    move v8, v4

    .local v8, "startX":F
    goto :goto_6a

    .line 153
    .end local v8  # "startX":F
    :cond_52
    and-int/lit8 v8, v2, 0x10

    if-eqz v8, :cond_5f

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float/2addr v8, v10

    sub-float/2addr v8, v6

    .restart local v8  # "startX":F
    goto :goto_6a

    .line 156
    .end local v8  # "startX":F
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v8

    sub-float/2addr v8, v4

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float/2addr v8, v10

    sub-float/2addr v8, v6

    div-float/2addr v8, v9

    add-float/2addr v8, v4

    .line 158
    .restart local v8  # "startX":F
    :goto_6a
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v10

    .line 161
    .local v10, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    iget v12, v10, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v12, "n":I
    const/4 v13, 0x1

    .line 162
    .local v13, "incr":I
    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    if-eqz v14, :cond_7c

    .line 163
    add-int/lit8 v11, v12, -0x1

    .line 164
    const/4 v12, -0x1

    .line 165
    const/4 v13, -0x1

    .line 167
    :cond_7c
    const/4 v14, 0x0

    .local v14, "r":I
    :goto_7d
    if-eq v11, v12, :cond_12a

    .line 168
    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 171
    .local v15, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/16 v16, 0x0

    .line 172
    .local v16, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    instance-of v9, v15, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v9, :cond_9a

    .line 173
    move-object/from16 v16, v15

    check-cast v16, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 174
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v9

    .line 175
    .local v9, "width":F
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v18

    move/from16 v0, v18

    .local v18, "height":F
    goto :goto_a4

    .line 177
    .end local v9  # "width":F
    .end local v18  # "height":F
    :cond_9a
    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v9

    .line 178
    .restart local v9  # "width":F
    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v18

    move/from16 v0, v18

    .line 181
    .local v0, "height":F
    :goto_a4
    const/16 v18, 0x0

    cmpl-float v19, v5, v18

    if-lez v19, :cond_ac

    mul-float v9, v6, v5

    .line 183
    :cond_ac
    if-eqz v16, :cond_c6

    .line 184
    move/from16 v19, v4

    .end local v4  # "padLeft":F
    .local v19, "padLeft":F
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 185
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v4

    .line 186
    .local v4, "maxWidth":F
    cmpl-float v18, v4, v18

    if-lez v18, :cond_c8

    cmpl-float v18, v9, v4

    if-lez v18, :cond_c8

    move v9, v4

    goto :goto_c8

    .line 183
    .end local v19  # "padLeft":F
    .local v4, "padLeft":F
    :cond_c6
    move/from16 v19, v4

    .line 189
    .end local v4  # "padLeft":F
    .restart local v19  # "padLeft":F
    :cond_c8
    :goto_c8
    move v4, v8

    .line 190
    .local v4, "x":F
    and-int/lit8 v18, v2, 0x10

    if-eqz v18, :cond_d4

    .line 191
    sub-float v18, v6, v9

    add-float v4, v4, v18

    const/high16 v17, 0x40000000  # 2.0f

    goto :goto_e3

    .line 192
    :cond_d4
    and-int/lit8 v18, v2, 0x8

    if-nez v18, :cond_e1

    .line 193
    sub-float v18, v6, v9

    const/high16 v17, 0x40000000  # 2.0f

    div-float v18, v18, v17

    add-float v4, v4, v18

    goto :goto_e3

    .line 192
    :cond_e1
    const/high16 v17, 0x40000000  # 2.0f

    .line 195
    :goto_e3
    add-float v18, v0, v3

    sub-float v7, v7, v18

    .line 196
    if-eqz v1, :cond_109

    .line 197
    move/from16 v18, v1

    .end local v1  # "round":Z
    .local v18, "round":Z
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    move/from16 v20, v2

    .end local v2  # "align":I
    .local v20, "align":I
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v21, v3

    .end local v3  # "space":F
    .local v21, "space":F
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    move/from16 v22, v5

    .end local v5  # "fill":F
    .local v22, "fill":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v15, v1, v2, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_114

    .line 199
    .end local v18  # "round":Z
    .end local v20  # "align":I
    .end local v21  # "space":F
    .end local v22  # "fill":F
    .restart local v1  # "round":Z
    .restart local v2  # "align":I
    .restart local v3  # "space":F
    .restart local v5  # "fill":F
    :cond_109
    move/from16 v18, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v5

    .end local v1  # "round":Z
    .end local v2  # "align":I
    .end local v3  # "space":F
    .end local v5  # "fill":F
    .restart local v18  # "round":Z
    .restart local v20  # "align":I
    .restart local v21  # "space":F
    .restart local v22  # "fill":F
    invoke-virtual {v15, v4, v7, v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 201
    :goto_114
    if-eqz v16, :cond_119

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 167
    .end local v0  # "height":F
    .end local v4  # "x":F
    .end local v9  # "width":F
    .end local v15  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v16  # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    :cond_119
    add-int/2addr v11, v13

    move-object/from16 v0, p0

    move/from16 v9, v17

    move/from16 v1, v18

    move/from16 v4, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v5, v22

    goto/16 :goto_7d

    .line 203
    .end local v14  # "r":I
    .end local v18  # "round":Z
    .end local v19  # "padLeft":F
    .end local v20  # "align":I
    .end local v21  # "space":F
    .end local v22  # "fill":F
    .restart local v1  # "round":Z
    .restart local v2  # "align":I
    .restart local v3  # "space":F
    .local v4, "padLeft":F
    .restart local v5  # "fill":F
    :cond_12a
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 421
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 422
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 423
    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "pad"  # F

    .line 348
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    .line 349
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .line 350
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    .line 351
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    .line 352
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 5
    .param p1, "top"  # F
    .param p2, "left"  # F
    .param p3, "bottom"  # F
    .param p4, "right"  # F

    .line 356
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    .line 357
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .line 358
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    .line 359
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    .line 360
    return-object p0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "padBottom"  # F

    .line 374
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    .line 375
    return-object p0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "padLeft"  # F

    .line 369
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .line 370
    return-object p0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "padRight"  # F

    .line 379
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    .line 380
    return-object p0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "padTop"  # F

    .line 364
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    .line 365
    return-object p0
.end method

.method public reverse()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    .line 313
    return-object p0
.end method

.method public reverse(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "reverse"  # Z

    .line 318
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    .line 319
    return-object p0
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 435
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 436
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 437
    return-object p0
.end method

.method public setRound(Z)V
    .registers 2
    .param p1, "round"  # Z

    .line 307
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 308
    return-void
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "space"  # F

    .line 328
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    .line 329
    return-object p0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 414
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 415
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 416
    return-object p0
.end method

.method public wrap()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    .line 493
    return-object p0
.end method

.method public wrap(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "wrap"  # Z

    .line 497
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    .line 498
    return-object p0
.end method

.method public wrapSpace(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2
    .param p1, "wrapSpace"  # F

    .line 338
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrapSpace:F

    .line 339
    return-object p0
.end method
