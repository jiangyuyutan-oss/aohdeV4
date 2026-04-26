.class public Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "HorizontalGroup.java"


# instance fields
.field private align:I

.field private expand:Z

.field private fill:F

.field private lastPrefHeight:F

.field private padBottom:F

.field private padLeft:F

.field private padRight:F

.field private padTop:F

.field private prefHeight:F

.field private prefWidth:F

.field private reverse:Z

.field private round:Z

.field private rowAlign:I

.field private rowSizes:Lcom/badlogic/gdx/utils/FloatArray;

.field private sizeInvalid:Z

.field private space:F

.field private wrap:Z

.field private wrapReverse:Z

.field private wrapSpace:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->sizeInvalid:Z

    .line 45
    const/16 v1, 0x8

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 46
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->round:Z

    .line 50
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 51
    return-void
.end method

.method private computeSize()V
    .registers 21

    .line 59
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->sizeInvalid:Z

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    .line 61
    .local v1, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    iget v2, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .line 62
    .local v2, "n":I
    const/4 v3, 0x0

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    .line 63
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrap:Z

    if-eqz v4, :cond_db

    .line 64
    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 65
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowSizes:Lcom/badlogic/gdx/utils/FloatArray;

    if-nez v4, :cond_20

    .line 66
    new-instance v4, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowSizes:Lcom/badlogic/gdx/utils/FloatArray;

    goto :goto_25

    .line 68
    :cond_20
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowSizes:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 69
    :goto_25
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowSizes:Lcom/badlogic/gdx/utils/FloatArray;

    .line 70
    .local v4, "rowSizes":Lcom/badlogic/gdx/utils/FloatArray;
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->space:F

    .local v5, "space":F
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrapSpace:F

    .line 71
    .local v6, "wrapSpace":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    add-float/2addr v7, v8

    .local v7, "pad":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getWidth()F

    move-result v8

    sub-float/2addr v8, v7

    .local v8, "groupWidth":F
    const/4 v9, 0x0

    .local v9, "x":F
    const/4 v10, 0x0

    .local v10, "y":F
    const/4 v11, 0x0

    .line 72
    .local v11, "rowHeight":F
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x1

    .line 73
    .local v13, "incr":I
    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->reverse:Z

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
    if-eq v12, v2, :cond_b4

    .line 79
    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 82
    .local v14, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v15, v14, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v15, :cond_66

    .line 83
    move-object v15, v14

    check-cast v15, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 84
    .local v15, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v16

    .line 85
    .local v16, "width":F
    cmpl-float v17, v16, v8

    if-lez v17, :cond_61

    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 86
    :cond_61
    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v3

    .line 87
    .end local v15  # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    .local v3, "height":F
    goto :goto_6e

    .line 88
    .end local v3  # "height":F
    .end local v16  # "width":F
    :cond_66
    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v16

    .line 89
    .restart local v16  # "width":F
    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    .line 92
    .restart local v3  # "height":F
    :goto_6e
    const/4 v15, 0x0

    cmpl-float v18, v9, v15

    if-lez v18, :cond_75

    move v15, v5

    goto :goto_76

    :cond_75
    const/4 v15, 0x0

    :goto_76
    add-float v15, v16, v15

    .line 93
    .local v15, "incrX":F
    add-float v18, v9, v15

    cmpl-float v18, v18, v8

    if-lez v18, :cond_a4

    const/16 v17, 0x0

    cmpl-float v18, v9, v17

    if-lez v18, :cond_a4

    .line 94
    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 95
    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 96
    move/from16 v18, v2

    .end local v2  # "n":I
    .local v18, "n":I
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    move/from16 v19, v5

    .end local v5  # "space":F
    .local v19, "space":F
    add-float v5, v9, v7

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 97
    const/4 v2, 0x0

    cmpl-float v5, v10, v2

    if-lez v5, :cond_9e

    add-float/2addr v10, v6

    .line 98
    :cond_9e
    add-float/2addr v10, v11

    .line 99
    const/4 v11, 0x0

    .line 100
    const/4 v9, 0x0

    .line 101
    move/from16 v15, v16

    goto :goto_a8

    .line 93
    .end local v18  # "n":I
    .end local v19  # "space":F
    .restart local v2  # "n":I
    .restart local v5  # "space":F
    :cond_a4
    move/from16 v18, v2

    move/from16 v19, v5

    .line 103
    .end local v2  # "n":I
    .end local v5  # "space":F
    .restart local v18  # "n":I
    .restart local v19  # "space":F
    :goto_a8
    add-float/2addr v9, v15

    .line 104
    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 78
    .end local v3  # "height":F
    .end local v14  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v15  # "incrX":F
    .end local v16  # "width":F
    add-int/2addr v12, v13

    move/from16 v2, v18

    move/from16 v5, v19

    const/4 v3, 0x0

    goto :goto_42

    .line 106
    .end local v18  # "n":I
    .end local v19  # "space":F
    .restart local v2  # "n":I
    .restart local v5  # "space":F
    :cond_b4
    move/from16 v18, v2

    move/from16 v19, v5

    .end local v2  # "n":I
    .end local v5  # "space":F
    .restart local v18  # "n":I
    .restart local v19  # "space":F
    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 107
    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 108
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    add-float v3, v9, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 109
    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-lez v2, :cond_ce

    add-float/2addr v10, v6

    .line 110
    :cond_ce
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    add-float v3, v10, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    .line 111
    .end local v4  # "rowSizes":Lcom/badlogic/gdx/utils/FloatArray;
    .end local v6  # "wrapSpace":F
    .end local v7  # "pad":F
    .end local v8  # "groupWidth":F
    .end local v9  # "x":F
    .end local v10  # "y":F
    .end local v11  # "rowHeight":F
    .end local v12  # "i":I
    .end local v13  # "incr":I
    .end local v19  # "space":F
    move/from16 v2, v18

    goto :goto_127

    .line 112
    .end local v18  # "n":I
    .restart local v2  # "n":I
    :cond_db
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    add-float/2addr v3, v4

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->space:F

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 113
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ea
    if-ge v3, v2, :cond_127

    .line 114
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 115
    .local v4, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v5, :cond_10f

    .line 116
    move-object v5, v4

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 117
    .local v5, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 118
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    .line 119
    .end local v5  # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    goto :goto_124

    .line 120
    :cond_10f
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 121
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    .line 113
    .end local v4  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_124
    add-int/lit8 v3, v3, 0x1

    goto :goto_ea

    .line 125
    .end local v3  # "i":I
    :cond_127
    :goto_127
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    .line 126
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->round:Z

    if-eqz v3, :cond_147

    .line 127
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 128
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    .line 130
    :cond_147
    return-void
.end method

.method private layoutWrapped()V
    .registers 30

    .line 206
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getPrefHeight()F

    move-result v1

    .line 207
    .local v1, "prefHeight":F
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->lastPrefHeight:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_11

    .line 208
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->lastPrefHeight:F

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->invalidateHierarchy()V

    .line 212
    :cond_11
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 213
    .local v2, "align":I
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->round:Z

    .line 214
    .local v3, "round":Z
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->space:F

    .local v4, "space":F
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->fill:F

    .local v5, "fill":F
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrapSpace:F

    .line 215
    .local v6, "wrapSpace":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    sub-float/2addr v7, v8

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    sub-float/2addr v7, v8

    .line 216
    .local v7, "maxWidth":F
    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    sub-float v8, v1, v8

    .local v8, "rowY":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getWidth()F

    move-result v9

    .local v9, "groupWidth":F
    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    .local v10, "xStart":F
    const/4 v11, 0x0

    .local v11, "x":F
    const/4 v12, 0x0

    .local v12, "rowHeight":F
    const/high16 v13, -0x40800000  # -1.0f

    .line 218
    .local v13, "rowDir":F
    and-int/lit8 v14, v2, 0x2

    const/high16 v15, 0x40000000  # 2.0f

    if-eqz v14, :cond_3e

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getHeight()F

    move-result v14

    sub-float/2addr v14, v1

    add-float/2addr v8, v14

    goto :goto_49

    .line 220
    :cond_3e
    and-int/lit8 v14, v2, 0x4

    if-nez v14, :cond_49

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getHeight()F

    move-result v14

    sub-float/2addr v14, v1

    div-float/2addr v14, v15

    add-float/2addr v8, v14

    .line 222
    :cond_49
    :goto_49
    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrapReverse:Z

    if-eqz v14, :cond_58

    .line 223
    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowSizes:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v14

    add-float/2addr v14, v1

    sub-float/2addr v8, v14

    .line 224
    const/high16 v13, 0x3f800000  # 1.0f

    .line 227
    :cond_58
    and-int/lit8 v14, v2, 0x10

    if-eqz v14, :cond_62

    .line 228
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    sub-float v14, v9, v14

    add-float/2addr v10, v14

    goto :goto_6e

    .line 229
    :cond_62
    and-int/lit8 v14, v2, 0x8

    if-nez v14, :cond_6e

    .line 230
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    sub-float v14, v9, v14

    const/high16 v15, 0x40000000  # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v10, v14

    .line 232
    :cond_6e
    :goto_6e
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    sub-float/2addr v9, v14

    .line 233
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 235
    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowSizes:Lcom/badlogic/gdx/utils/FloatArray;

    .line 236
    .local v14, "rowSizes":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v15

    .line 237
    .local v15, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/16 v17, 0x0

    move/from16 v18, v1

    .end local v1  # "prefHeight":F
    .local v17, "i":I
    .local v18, "prefHeight":F
    iget v1, v15, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v1, "n":I
    const/16 v19, 0x1

    .line 238
    .local v19, "incr":I
    move/from16 v20, v8

    .end local v8  # "rowY":F
    .local v20, "rowY":F
    iget-boolean v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->reverse:Z

    if-eqz v8, :cond_8c

    .line 239
    add-int/lit8 v17, v1, -0x1

    .line 240
    const/4 v1, -0x1

    .line 241
    const/16 v19, -0x1

    .line 243
    :cond_8c
    const/4 v8, 0x0

    move/from16 v0, v17

    .end local v17  # "i":I
    .local v0, "i":I
    .local v8, "r":I
    :goto_8f
    if-eq v0, v1, :cond_19f

    .line 244
    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v21, v1

    .end local v1  # "n":I
    .local v21, "n":I
    move-object/from16 v1, v17

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 247
    .local v1, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/16 v17, 0x0

    .line 248
    .local v17, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    move/from16 v22, v12

    .end local v12  # "rowHeight":F
    .local v22, "rowHeight":F
    instance-of v12, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v12, :cond_c1

    .line 249
    move-object/from16 v17, v1

    check-cast v17, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 250
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v12

    .line 251
    .local v12, "width":F
    cmpl-float v23, v12, v9

    if-lez v23, :cond_ba

    move/from16 v23, v12

    .end local v12  # "width":F
    .local v23, "width":F
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .end local v23  # "width":F
    .restart local v12  # "width":F
    goto :goto_bc

    :cond_ba
    move/from16 v23, v12

    .line 252
    :goto_bc
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v23

    .local v23, "height":F
    goto :goto_c9

    .line 254
    .end local v12  # "width":F
    .end local v23  # "height":F
    :cond_c1
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v12

    .line 255
    .restart local v12  # "width":F
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v23

    .line 258
    .restart local v23  # "height":F
    :goto_c9
    add-float v24, v11, v12

    cmpl-float v24, v24, v9

    if-gtz v24, :cond_d5

    if-nez v8, :cond_d2

    goto :goto_d5

    :cond_d2
    move/from16 v24, v9

    goto :goto_113

    .line 259
    :cond_d5
    :goto_d5
    move/from16 v24, v9

    .end local v9  # "groupWidth":F
    .local v24, "groupWidth":F
    iget v9, v14, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v9, v9, -0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 260
    move v9, v10

    .line 261
    .end local v11  # "x":F
    .local v9, "x":F
    and-int/lit8 v11, v2, 0x10

    if-eqz v11, :cond_ed

    .line 262
    invoke-virtual {v14, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    sub-float v11, v7, v11

    add-float/2addr v9, v11

    move v11, v9

    goto :goto_ff

    .line 263
    :cond_ed
    and-int/lit8 v11, v2, 0x8

    if-nez v11, :cond_fe

    .line 264
    invoke-virtual {v14, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    sub-float v11, v7, v11

    const/high16 v16, 0x40000000  # 2.0f

    div-float v11, v11, v16

    add-float/2addr v9, v11

    move v11, v9

    goto :goto_ff

    .line 263
    :cond_fe
    move v11, v9

    .line 265
    .end local v9  # "x":F
    .restart local v11  # "x":F
    :goto_ff
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v14, v9}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    .line 266
    .end local v22  # "rowHeight":F
    .local v9, "rowHeight":F
    if-lez v8, :cond_10b

    mul-float v22, v6, v13

    add-float v20, v20, v22

    .line 267
    :cond_10b
    mul-float v22, v9, v13

    add-float v20, v20, v22

    .line 268
    add-int/lit8 v8, v8, 0x2

    move/from16 v22, v9

    .line 271
    .end local v9  # "rowHeight":F
    .restart local v22  # "rowHeight":F
    :goto_113
    const/4 v9, 0x0

    cmpl-float v25, v5, v9

    if-lez v25, :cond_11a

    mul-float v23, v22, v5

    :cond_11a
    move/from16 v9, v23

    .line 273
    .end local v23  # "height":F
    .local v9, "height":F
    if-eqz v17, :cond_138

    .line 274
    move/from16 v23, v5

    .end local v5  # "fill":F
    .local v23, "fill":F
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 275
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxHeight()F

    move-result v5

    .line 276
    .local v5, "maxHeight":F
    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_13a

    cmpl-float v25, v9, v5

    if-lez v25, :cond_13a

    move v9, v5

    goto :goto_13a

    .line 273
    .end local v23  # "fill":F
    .local v5, "fill":F
    :cond_138
    move/from16 v23, v5

    .line 279
    .end local v5  # "fill":F
    .restart local v23  # "fill":F
    :cond_13a
    :goto_13a
    move/from16 v5, v20

    .line 280
    .local v5, "y":F
    and-int/lit8 v25, v2, 0x2

    if-eqz v25, :cond_147

    .line 281
    sub-float v25, v22, v9

    add-float v5, v5, v25

    const/high16 v16, 0x40000000  # 2.0f

    goto :goto_156

    .line 282
    :cond_147
    and-int/lit8 v25, v2, 0x4

    if-nez v25, :cond_154

    .line 283
    sub-float v25, v22, v9

    const/high16 v16, 0x40000000  # 2.0f

    div-float v25, v25, v16

    add-float v5, v5, v25

    goto :goto_156

    .line 282
    :cond_154
    const/high16 v16, 0x40000000  # 2.0f

    .line 285
    :goto_156
    if-eqz v3, :cond_178

    .line 286
    move/from16 v25, v2

    .end local v2  # "align":I
    .local v25, "align":I
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v26, v3

    .end local v3  # "round":Z
    .local v26, "round":Z
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    move/from16 v27, v6

    .end local v6  # "wrapSpace":F
    .local v27, "wrapSpace":F
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    move/from16 v28, v7

    .end local v7  # "maxWidth":F
    .local v28, "maxWidth":F
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_183

    .line 288
    .end local v25  # "align":I
    .end local v26  # "round":Z
    .end local v27  # "wrapSpace":F
    .end local v28  # "maxWidth":F
    .restart local v2  # "align":I
    .restart local v3  # "round":Z
    .restart local v6  # "wrapSpace":F
    .restart local v7  # "maxWidth":F
    :cond_178
    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v28, v7

    .end local v2  # "align":I
    .end local v3  # "round":Z
    .end local v6  # "wrapSpace":F
    .end local v7  # "maxWidth":F
    .restart local v25  # "align":I
    .restart local v26  # "round":Z
    .restart local v27  # "wrapSpace":F
    .restart local v28  # "maxWidth":F
    invoke-virtual {v1, v11, v5, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 289
    :goto_183
    add-float v2, v12, v4

    add-float/2addr v11, v2

    .line 291
    if-eqz v17, :cond_18b

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 243
    .end local v1  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v5  # "y":F
    .end local v9  # "height":F
    .end local v12  # "width":F
    .end local v17  # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    :cond_18b
    add-int v0, v0, v19

    move/from16 v1, v21

    move/from16 v12, v22

    move/from16 v5, v23

    move/from16 v9, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v6, v27

    move/from16 v7, v28

    goto/16 :goto_8f

    .line 293
    .end local v8  # "r":I
    .end local v21  # "n":I
    .end local v22  # "rowHeight":F
    .end local v23  # "fill":F
    .end local v24  # "groupWidth":F
    .end local v25  # "align":I
    .end local v26  # "round":Z
    .end local v27  # "wrapSpace":F
    .end local v28  # "maxWidth":F
    .local v1, "n":I
    .restart local v2  # "align":I
    .restart local v3  # "round":Z
    .local v5, "fill":F
    .restart local v6  # "wrapSpace":F
    .restart local v7  # "maxWidth":F
    .local v9, "groupWidth":F
    .local v12, "rowHeight":F
    :cond_19f
    return-void
.end method


# virtual methods
.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "align"  # I

    .line 419
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 420
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 445
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 446
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 447
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 425
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 426
    return-object p0
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 14
    .param p1, "shapes"  # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 567
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 568
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getDebug()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 569
    :cond_a
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 570
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 571
    :cond_20
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getX()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    add-float v3, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getY()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    add-float v4, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getOriginX()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getOriginY()F

    move-result v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    sub-float v7, v0, v1

    .line 572
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    sub-float v8, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getScaleX()F

    move-result v9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getScaleY()F

    move-result v10

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getRotation()F

    move-result v11

    .line 571
    move-object v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFF)V

    .line 573
    return-void
.end method

.method public expand()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->expand:Z

    .line 478
    return-object p0
.end method

.method public expand(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "expand"  # Z

    .line 483
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->expand:Z

    .line 484
    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 462
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->fill:F

    .line 463
    return-object p0
.end method

.method public fill(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "fill"  # F

    .line 468
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->fill:F

    .line 469
    return-object p0
.end method

.method public getAlign()I
    .registers 2

    .line 458
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    return v0
.end method

.method public getExpand()Z
    .registers 2

    .line 488
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->expand:Z

    return v0
.end method

.method public getFill()F
    .registers 2

    .line 473
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->fill:F

    return v0
.end method

.method public getPadBottom()F
    .registers 2

    .line 409
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    return v0
.end method

.method public getPadLeft()F
    .registers 2

    .line 405
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    return v0
.end method

.method public getPadRight()F
    .registers 2

    .line 413
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    return v0
.end method

.method public getPadTop()F
    .registers 2

    .line 401
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    return v0
.end method

.method public getPrefHeight()F
    .registers 2

    .line 302
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->computeSize()V

    .line 303
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .registers 2

    .line 296
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrap:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 297
    :cond_6
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->computeSize()V

    .line 298
    :cond_d
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    return v0
.end method

.method public getReverse()Z
    .registers 2

    .line 324
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->reverse:Z

    return v0
.end method

.method public getSpace()F
    .registers 2

    .line 350
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->space:F

    return v0
.end method

.method public getWrap()Z
    .registers 2

    .line 519
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrap:Z

    return v0
.end method

.method public getWrapReverse()Z
    .registers 2

    .line 340
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrapReverse:Z

    return v0
.end method

.method public getWrapSpace()F
    .registers 2

    .line 360
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrapSpace:F

    return v0
.end method

.method public grow()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->expand:Z

    .line 494
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->fill:F

    .line 495
    return-object p0
.end method

.method public invalidate()V
    .registers 2

    .line 54
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->sizeInvalid:Z

    .line 56
    return-void
.end method

.method public layout()V
    .registers 24

    .line 133
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->sizeInvalid:Z

    if-eqz v1, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->computeSize()V

    .line 135
    :cond_9
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrap:Z

    if-eqz v1, :cond_11

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->layoutWrapped()V

    .line 137
    return-void

    .line 140
    :cond_11
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->round:Z

    .line 141
    .local v1, "round":Z
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 142
    .local v2, "align":I
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->space:F

    .local v3, "space":F
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    .local v4, "padBottom":F
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->fill:F

    .line 143
    .local v5, "fill":F
    iget-boolean v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->expand:Z

    if-eqz v6, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getHeight()F

    move-result v6

    goto :goto_26

    :cond_24
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    :goto_26
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    sub-float/2addr v6, v7

    sub-float/2addr v6, v4

    .local v6, "rowHeight":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    .line 145
    .local v7, "x":F
    and-int/lit8 v8, v2, 0x10

    const/high16 v9, 0x40000000  # 2.0f

    if-eqz v8, :cond_3b

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getWidth()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    sub-float/2addr v8, v10

    add-float/2addr v7, v8

    goto :goto_48

    .line 147
    :cond_3b
    and-int/lit8 v8, v2, 0x8

    if-nez v8, :cond_48

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getWidth()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    sub-float/2addr v8, v10

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 151
    :cond_48
    :goto_48
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_4e

    .line 152
    move v8, v4

    .local v8, "startY":F
    goto :goto_66

    .line 153
    .end local v8  # "startY":F
    :cond_4e
    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_5b

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getHeight()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    sub-float/2addr v8, v10

    sub-float/2addr v8, v6

    .restart local v8  # "startY":F
    goto :goto_66

    .line 156
    .end local v8  # "startY":F
    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getHeight()F

    move-result v8

    sub-float/2addr v8, v4

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    sub-float/2addr v8, v10

    sub-float/2addr v8, v6

    div-float/2addr v8, v9

    add-float/2addr v8, v4

    .line 158
    .restart local v8  # "startY":F
    :goto_66
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

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
    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->reverse:Z

    if-eqz v14, :cond_78

    .line 163
    add-int/lit8 v11, v12, -0x1

    .line 164
    const/4 v12, -0x1

    .line 165
    const/4 v13, -0x1

    .line 167
    :cond_78
    const/4 v14, 0x0

    .local v14, "r":I
    :goto_79
    if-eq v11, v12, :cond_123

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

    if-eqz v9, :cond_94

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

    .local v18, "height":F
    goto :goto_9c

    .line 177
    .end local v9  # "width":F
    .end local v18  # "height":F
    :cond_94
    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v9

    .line 178
    .restart local v9  # "width":F
    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v18

    .line 181
    .restart local v18  # "height":F
    :goto_9c
    const/16 v19, 0x0

    cmpl-float v20, v5, v19

    if-lez v20, :cond_a4

    mul-float v18, v6, v5

    :cond_a4
    move/from16 v0, v18

    .line 183
    .end local v18  # "height":F
    .local v0, "height":F
    if-eqz v16, :cond_c0

    .line 184
    move/from16 v18, v4

    .end local v4  # "padBottom":F
    .local v18, "padBottom":F
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 185
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxHeight()F

    move-result v4

    .line 186
    .local v4, "maxHeight":F
    cmpl-float v19, v4, v19

    if-lez v19, :cond_c2

    cmpl-float v19, v0, v4

    if-lez v19, :cond_c2

    move v0, v4

    goto :goto_c2

    .line 183
    .end local v18  # "padBottom":F
    .local v4, "padBottom":F
    :cond_c0
    move/from16 v18, v4

    .line 189
    .end local v4  # "padBottom":F
    .restart local v18  # "padBottom":F
    :cond_c2
    :goto_c2
    move v4, v8

    .line 190
    .local v4, "y":F
    and-int/lit8 v19, v2, 0x2

    if-eqz v19, :cond_ce

    .line 191
    sub-float v19, v6, v0

    add-float v4, v4, v19

    const/high16 v17, 0x40000000  # 2.0f

    goto :goto_dd

    .line 192
    :cond_ce
    and-int/lit8 v19, v2, 0x4

    if-nez v19, :cond_db

    .line 193
    sub-float v19, v6, v0

    const/high16 v17, 0x40000000  # 2.0f

    div-float v19, v19, v17

    add-float v4, v4, v19

    goto :goto_dd

    .line 192
    :cond_db
    const/high16 v17, 0x40000000  # 2.0f

    .line 195
    :goto_dd
    if-eqz v1, :cond_ff

    .line 196
    move/from16 v19, v1

    .end local v1  # "round":Z
    .local v19, "round":Z
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    move/from16 v20, v2

    .end local v2  # "align":I
    .local v20, "align":I
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v21, v5

    .end local v5  # "fill":F
    .local v21, "fill":F
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    move/from16 v22, v6

    .end local v6  # "rowHeight":F
    .local v22, "rowHeight":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v15, v1, v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_10a

    .line 198
    .end local v19  # "round":Z
    .end local v20  # "align":I
    .end local v21  # "fill":F
    .end local v22  # "rowHeight":F
    .restart local v1  # "round":Z
    .restart local v2  # "align":I
    .restart local v5  # "fill":F
    .restart local v6  # "rowHeight":F
    :cond_ff
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v5

    move/from16 v22, v6

    .end local v1  # "round":Z
    .end local v2  # "align":I
    .end local v5  # "fill":F
    .end local v6  # "rowHeight":F
    .restart local v19  # "round":Z
    .restart local v20  # "align":I
    .restart local v21  # "fill":F
    .restart local v22  # "rowHeight":F
    invoke-virtual {v15, v7, v4, v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 199
    :goto_10a
    add-float v1, v9, v3

    add-float/2addr v7, v1

    .line 201
    if-eqz v16, :cond_112

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 167
    .end local v0  # "height":F
    .end local v4  # "y":F
    .end local v9  # "width":F
    .end local v15  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v16  # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    :cond_112
    add-int/2addr v11, v13

    move-object/from16 v0, p0

    move/from16 v9, v17

    move/from16 v4, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v5, v21

    move/from16 v6, v22

    goto/16 :goto_79

    .line 203
    .end local v14  # "r":I
    .end local v18  # "padBottom":F
    .end local v19  # "round":Z
    .end local v20  # "align":I
    .end local v21  # "fill":F
    .end local v22  # "rowHeight":F
    .restart local v1  # "round":Z
    .restart local v2  # "align":I
    .local v4, "padBottom":F
    .restart local v5  # "fill":F
    .restart local v6  # "rowHeight":F
    :cond_123
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 438
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 439
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 440
    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "pad"  # F

    .line 365
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    .line 366
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    .line 367
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    .line 368
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    .line 369
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 5
    .param p1, "top"  # F
    .param p2, "left"  # F
    .param p3, "bottom"  # F
    .param p4, "right"  # F

    .line 373
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    .line 374
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    .line 375
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    .line 376
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    .line 377
    return-object p0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "padBottom"  # F

    .line 391
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    .line 392
    return-object p0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "padLeft"  # F

    .line 386
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    .line 387
    return-object p0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "padRight"  # F

    .line 396
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    .line 397
    return-object p0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "padTop"  # F

    .line 381
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    .line 382
    return-object p0
.end method

.method public reverse()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->reverse:Z

    .line 314
    return-object p0
.end method

.method public reverse(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "reverse"  # Z

    .line 319
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->reverse:Z

    .line 320
    return-object p0
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 452
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 453
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 454
    return-object p0
.end method

.method public rowAlign(I)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "rowAlign"  # I

    .line 526
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 527
    return-object p0
.end method

.method public rowBottom()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 553
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 554
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 555
    return-object p0
.end method

.method public rowCenter()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 532
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 533
    return-object p0
.end method

.method public rowLeft()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 546
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 547
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 548
    return-object p0
.end method

.method public rowRight()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 561
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 562
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 563
    return-object p0
.end method

.method public rowTop()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 538
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 539
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 540
    return-object p0
.end method

.method public setRound(Z)V
    .registers 2
    .param p1, "round"  # Z

    .line 308
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->round:Z

    .line 309
    return-void
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "space"  # F

    .line 345
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->space:F

    .line 346
    return-object p0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 431
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 432
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 433
    return-object p0
.end method

.method public wrap()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrap:Z

    .line 510
    return-object p0
.end method

.method public wrap(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "wrap"  # Z

    .line 514
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrap:Z

    .line 515
    return-object p0
.end method

.method public wrapReverse()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrapReverse:Z

    .line 330
    return-object p0
.end method

.method public wrapReverse(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "wrapReverse"  # Z

    .line 335
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrapReverse:Z

    .line 336
    return-object p0
.end method

.method public wrapSpace(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .registers 2
    .param p1, "wrapSpace"  # F

    .line 355
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrapSpace:F

    .line 356
    return-object p0
.end method
