.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "ProgressBar.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    }
.end annotation


# instance fields
.field private animateDuration:F

.field private animateFromValue:F

.field private animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

.field private animateTime:F

.field disabled:Z

.field max:F

.field min:F

.field position:F

.field private programmaticChangeEvents:Z

.field private round:Z

.field stepSize:F

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

.field private value:F

.field final vertical:Z

.field private visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V
    .registers 9
    .param p1, "min"  # F
    .param p2, "max"  # F
    .param p3, "stepSize"  # F
    .param p4, "vertical"  # Z
    .param p5, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .line 73
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 51
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->programmaticChangeEvents:Z

    .line 74
    cmpl-float v0, p1, p2

    if-gtz v0, :cond_4b

    .line 75
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_32

    .line 76
    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 77
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    .line 78
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    .line 79
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    .line 80
    iput-boolean p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    .line 81
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 82
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setSize(FF)V

    .line 83
    return-void

    .line 75
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stepSize must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max must be > min. min,max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 13
    .param p1, "min"  # F
    .param p2, "max"  # F
    .param p3, "stepSize"  # F
    .param p4, "vertical"  # Z
    .param p5, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p4, :cond_10

    const-string v1, "vertical"

    goto :goto_12

    :cond_10
    const-string v1, "horizontal"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 57
    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 14
    .param p1, "min"  # F
    .param p2, "max"  # F
    .param p3, "stepSize"  # F
    .param p4, "vertical"  # Z
    .param p5, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p6, "styleName"  # Ljava/lang/String;

    .line 60
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 61
    return-void
.end method


# virtual methods
.method public act(F)V
    .registers 4
    .param p1, "delta"  # F

    .line 98
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->act(F)V

    .line 99
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 100
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    .line 101
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 102
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 104
    .end local v0  # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_20
    return-void
.end method

.method protected clamp(F)F
    .registers 4
    .param p1, "value"  # F

    .line 326
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 31
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .line 108
    .local v1, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    .line 109
    .local v2, "disabled":Z
    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .local v3, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v10

    .line 110
    .local v10, "currentKnob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v11

    .line 111
    .local v11, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getKnobBeforeDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v12

    .line 112
    .local v12, "knobBefore":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getKnobAfterDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v13

    .line 114
    .local v13, "knobAfter":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    .line 115
    .local v14, "color":Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getX()F

    move-result v15

    .local v15, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getY()F

    move-result v16

    .line 116
    .local v16, "y":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getWidth()F

    move-result v17

    .local v17, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getHeight()F

    move-result v18

    .line 117
    .local v18, "height":F
    const/16 v19, 0x0

    if-nez v3, :cond_33

    move/from16 v4, v19

    goto :goto_37

    :cond_33
    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    :goto_37
    move/from16 v20, v4

    .line 118
    .local v20, "knobHeight":F
    if-nez v3, :cond_3e

    move/from16 v4, v19

    goto :goto_42

    :cond_3e
    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    :goto_42
    move/from16 v21, v4

    .line 119
    .local v21, "knobWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualPercent()F

    move-result v22

    .line 121
    .local v22, "percent":F
    iget v4, v14, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v14, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v14, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v7, v7, p2

    move-object/from16 v9, p1

    invoke-interface {v9, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 123
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    const/high16 v23, 0x3f000000  # 0.5f

    if-eqz v4, :cond_1f9

    .line 124
    move/from16 v24, v18

    .line 126
    .local v24, "positionHeight":F
    const/16 v25, 0x0

    .local v25, "bgTopHeight":F
    const/16 v26, 0x0

    .line 127
    .local v26, "bgBottomHeight":F
    if-eqz v11, :cond_b2

    .line 128
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v4, :cond_8b

    .line 129
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    sub-float v4, v17, v4

    mul-float v4, v4, v23

    add-float/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v6, v4

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v8, v4

    move-object v4, v11

    move-object/from16 v5, p1

    move/from16 v7, v16

    move/from16 v9, v18

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_a3

    .line 131
    :cond_8b
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    sub-float v4, v17, v4

    mul-float v4, v4, v23

    add-float v6, v15, v4

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v8

    move-object v4, v11

    move-object/from16 v5, p1

    move/from16 v7, v16

    move/from16 v9, v18

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 132
    :goto_a3
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v25

    .line 133
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v26

    .line 134
    add-float v4, v25, v26

    sub-float v24, v24, v4

    move/from16 v9, v26

    goto :goto_b4

    .line 127
    :cond_b2
    move/from16 v9, v26

    .line 137
    .end local v26  # "bgBottomHeight":F
    .local v9, "bgBottomHeight":F
    :goto_b4
    const/4 v4, 0x0

    .line 138
    .local v4, "knobHeightHalf":F
    if-nez v3, :cond_d3

    .line 139
    if-nez v12, :cond_ba

    goto :goto_c0

    :cond_ba
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    mul-float v19, v5, v23

    :goto_c0
    move/from16 v4, v19

    .line 140
    sub-float v5, v24, v4

    mul-float v5, v5, v22

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 141
    sub-float v5, v24, v4

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    goto :goto_e8

    .line 143
    :cond_d3
    mul-float v4, v20, v23

    .line 144
    sub-float v5, v24, v20

    mul-float v5, v5, v22

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 145
    sub-float v5, v24, v20

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v5, v9

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    move/from16 v19, v4

    .line 147
    .end local v4  # "knobHeightHalf":F
    .local v19, "knobHeightHalf":F
    :goto_e8
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 149
    if-eqz v12, :cond_147

    .line 150
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v4, :cond_12a

    .line 151
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    sub-float v4, v17, v4

    mul-float v4, v4, v23

    add-float/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v6, v4

    add-float v4, v16, v25

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v7, v4

    .line 152
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v8, v4

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v4, v4, v19

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v5, v4

    .line 151
    move-object v4, v12

    move/from16 v26, v5

    move-object/from16 v5, p1

    move/from16 v27, v9

    .end local v9  # "bgBottomHeight":F
    .local v27, "bgBottomHeight":F
    move/from16 v9, v26

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_149

    .line 154
    .end local v27  # "bgBottomHeight":F
    .restart local v9  # "bgBottomHeight":F
    :cond_12a
    move/from16 v27, v9

    .end local v9  # "bgBottomHeight":F
    .restart local v27  # "bgBottomHeight":F
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    sub-float v4, v17, v4

    mul-float v4, v4, v23

    add-float v6, v15, v4

    add-float v7, v16, v25

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v8

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v9, v4, v19

    move-object v4, v12

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_149

    .line 149
    .end local v27  # "bgBottomHeight":F
    .restart local v9  # "bgBottomHeight":F
    :cond_147
    move/from16 v27, v9

    .line 158
    .end local v9  # "bgBottomHeight":F
    .restart local v27  # "bgBottomHeight":F
    :goto_149
    if-eqz v13, :cond_1a7

    .line 159
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v4, :cond_185

    .line 160
    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    sub-float v4, v17, v4

    mul-float v4, v4, v23

    add-float/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v6, v4

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v4, v16, v4

    add-float v4, v4, v19

    .line 161
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v7, v4

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v8, v4

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    sub-float v4, v18, v4

    sub-float v4, v4, v19

    sub-float v4, v4, v27

    .line 162
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v9, v4

    .line 160
    move-object v4, v13

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_1a7

    .line 164
    :cond_185
    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    sub-float v4, v17, v4

    mul-float v4, v4, v23

    add-float v6, v15, v4

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v4, v16, v4

    add-float v7, v4, v19

    .line 165
    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v8

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    sub-float v4, v18, v4

    sub-float v4, v4, v19

    sub-float v9, v4, v27

    .line 164
    move-object v4, v13

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 168
    :cond_1a7
    :goto_1a7
    if-eqz v10, :cond_1f7

    .line 169
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    .local v4, "w":F
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    .line 170
    .local v5, "h":F
    sub-float v6, v17, v4

    mul-float v6, v6, v23

    add-float/2addr v15, v6

    .line 171
    sub-float v6, v20, v5

    mul-float v6, v6, v23

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v6, v7

    add-float v16, v16, v6

    .line 172
    iget-boolean v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v6, :cond_1df

    .line 173
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v15, v6

    .line 174
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 175
    .end local v16  # "y":F
    .local v6, "y":F
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v4, v7

    .line 176
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v5, v7

    move/from16 v16, v5

    move/from16 v26, v6

    move/from16 v23, v15

    move v15, v4

    goto :goto_1e6

    .line 172
    .end local v6  # "y":F
    .restart local v16  # "y":F
    :cond_1df
    move/from16 v23, v15

    move/from16 v26, v16

    move v15, v4

    move/from16 v16, v5

    .line 178
    .end local v4  # "w":F
    .end local v5  # "h":F
    .local v15, "w":F
    .local v16, "h":F
    .local v23, "x":F
    .local v26, "y":F
    :goto_1e6
    move-object v4, v10

    move-object/from16 v5, p1

    move/from16 v6, v23

    move/from16 v7, v26

    move v8, v15

    move/from16 v9, v16

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    move/from16 v15, v23

    move/from16 v16, v26

    .line 180
    .end local v19  # "knobHeightHalf":F
    .end local v23  # "x":F
    .end local v24  # "positionHeight":F
    .end local v25  # "bgTopHeight":F
    .end local v26  # "y":F
    .end local v27  # "bgBottomHeight":F
    .local v15, "x":F
    .local v16, "y":F
    :cond_1f7
    goto/16 :goto_392

    .line 181
    :cond_1f9
    move/from16 v24, v17

    .line 183
    .local v24, "positionWidth":F
    const/16 v25, 0x0

    .local v25, "bgLeftWidth":F
    const/16 v26, 0x0

    .line 184
    .local v26, "bgRightWidth":F
    if-eqz v11, :cond_24d

    .line 185
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v4, :cond_227

    .line 186
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    sub-float v4, v18, v4

    mul-float v4, v4, v23

    add-float v4, v16, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v7, v4

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v9, v4

    move-object v4, v11

    move-object/from16 v5, p1

    move v6, v15

    move/from16 v8, v17

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_23e

    .line 188
    :cond_227
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    sub-float v4, v18, v4

    mul-float v4, v4, v23

    add-float v7, v16, v4

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v9

    move-object v4, v11

    move-object/from16 v5, p1

    move v6, v15

    move/from16 v8, v17

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 189
    :goto_23e
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v25

    .line 190
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v26

    .line 191
    add-float v4, v25, v26

    sub-float v24, v24, v4

    move/from16 v9, v25

    goto :goto_24f

    .line 184
    :cond_24d
    move/from16 v9, v25

    .line 194
    .end local v25  # "bgLeftWidth":F
    .local v9, "bgLeftWidth":F
    :goto_24f
    const/4 v4, 0x0

    .line 195
    .local v4, "knobWidthHalf":F
    if-nez v3, :cond_26e

    .line 196
    if-nez v12, :cond_255

    goto :goto_25b

    :cond_255
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    mul-float v19, v5, v23

    :goto_25b
    move/from16 v4, v19

    .line 197
    sub-float v5, v24, v4

    mul-float v5, v5, v22

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 198
    sub-float v5, v24, v4

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    goto :goto_283

    .line 200
    :cond_26e
    mul-float v4, v21, v23

    .line 201
    sub-float v5, v24, v21

    mul-float v5, v5, v22

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 202
    sub-float v5, v24, v21

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v5, v9

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    move/from16 v19, v4

    .line 204
    .end local v4  # "knobWidthHalf":F
    .local v19, "knobWidthHalf":F
    :goto_283
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 206
    if-eqz v12, :cond_2e3

    .line 207
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v4, :cond_2c6

    .line 208
    add-float v4, v15, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v6, v4

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    sub-float v4, v18, v4

    mul-float v4, v4, v23

    add-float v4, v16, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v7, v4

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v4, v4, v19

    .line 209
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v8, v4

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v5, v4

    .line 208
    move-object v4, v12

    move/from16 v25, v5

    move-object/from16 v5, p1

    move/from16 v27, v9

    .end local v9  # "bgLeftWidth":F
    .local v27, "bgLeftWidth":F
    move/from16 v9, v25

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_2e5

    .line 211
    .end local v27  # "bgLeftWidth":F
    .restart local v9  # "bgLeftWidth":F
    :cond_2c6
    move/from16 v27, v9

    .end local v9  # "bgLeftWidth":F
    .restart local v27  # "bgLeftWidth":F
    add-float v6, v15, v27

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    sub-float v4, v18, v4

    mul-float v4, v4, v23

    add-float v7, v16, v4

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v8, v4, v19

    .line 212
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v9

    .line 211
    move-object v4, v12

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_2e5

    .line 206
    .end local v27  # "bgLeftWidth":F
    .restart local v9  # "bgLeftWidth":F
    :cond_2e3
    move/from16 v27, v9

    .line 215
    .end local v9  # "bgLeftWidth":F
    .restart local v27  # "bgLeftWidth":F
    :goto_2e5
    if-eqz v13, :cond_342

    .line 216
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v4, :cond_321

    .line 217
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v4, v15

    add-float v4, v4, v19

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v6, v4

    .line 218
    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    sub-float v4, v18, v4

    mul-float v4, v4, v23

    add-float v4, v16, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v7, v4

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    sub-float v4, v17, v4

    sub-float v4, v4, v19

    sub-float v4, v4, v26

    .line 219
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v8, v4

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v9, v4

    .line 217
    move-object v4, v13

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_342

    .line 221
    :cond_321
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v4, v15

    add-float v6, v4, v19

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    sub-float v4, v18, v4

    mul-float v4, v4, v23

    add-float v7, v16, v4

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    sub-float v4, v17, v4

    sub-float v4, v4, v19

    sub-float v8, v4, v26

    .line 222
    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v9

    .line 221
    move-object v4, v13

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 225
    :cond_342
    :goto_342
    if-eqz v10, :cond_392

    .line 226
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    .local v4, "w":F
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    .line 227
    .restart local v5  # "h":F
    sub-float v6, v21, v4

    mul-float v6, v6, v23

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v6, v7

    add-float/2addr v15, v6

    .line 228
    sub-float v6, v18, v5

    mul-float v6, v6, v23

    add-float v16, v16, v6

    .line 229
    iget-boolean v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v6, :cond_37a

    .line 230
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 231
    .end local v15  # "x":F
    .local v6, "x":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 232
    .end local v16  # "y":F
    .local v7, "y":F
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v4, v8

    .line 233
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v5, v8

    move v15, v4

    move/from16 v16, v5

    move/from16 v23, v6

    move/from16 v25, v7

    goto :goto_381

    .line 229
    .end local v6  # "x":F
    .end local v7  # "y":F
    .restart local v15  # "x":F
    .restart local v16  # "y":F
    :cond_37a
    move/from16 v23, v15

    move/from16 v25, v16

    move v15, v4

    move/from16 v16, v5

    .line 235
    .end local v4  # "w":F
    .end local v5  # "h":F
    .local v15, "w":F
    .local v16, "h":F
    .restart local v23  # "x":F
    .local v25, "y":F
    :goto_381
    move-object v4, v10

    move-object/from16 v5, p1

    move/from16 v6, v23

    move/from16 v7, v25

    move v8, v15

    move/from16 v9, v16

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    move/from16 v15, v23

    move/from16 v16, v25

    .line 238
    .end local v19  # "knobWidthHalf":F
    .end local v23  # "x":F
    .end local v24  # "positionWidth":F
    .end local v25  # "y":F
    .end local v26  # "bgRightWidth":F
    .end local v27  # "bgLeftWidth":F
    .local v15, "x":F
    .local v16, "y":F
    :cond_392
    :goto_392
    return-void
.end method

.method protected getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 2

    .line 266
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 267
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method protected getKnobAfterDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 2

    .line 281
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 282
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method protected getKnobBeforeDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 2

    .line 276
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 277
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method protected getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 2

    .line 271
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 272
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method protected getKnobPosition()F
    .registers 2

    .line 287
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    return v0
.end method

.method public getMaxValue()F
    .registers 2

    .line 367
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    return v0
.end method

.method public getMinValue()F
    .registers 2

    .line 363
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    return v0
.end method

.method public getPercent()F
    .registers 4

    .line 256
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 257
    :cond_a
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .registers 5

    .line 354
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    if-eqz v0, :cond_7

    .line 355
    const/high16 v0, 0x430c0000  # 140.0f

    return v0

    .line 357
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .local v0, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    .line 358
    .local v1, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    const/4 v2, 0x0

    if-nez v0, :cond_14

    move v3, v2

    goto :goto_18

    :cond_14
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    :goto_18
    if-nez v1, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    :goto_1f
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public getPrefWidth()F
    .registers 5

    .line 346
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    if-eqz v0, :cond_21

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .local v0, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    .line 348
    .local v1, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    const/4 v2, 0x0

    if-nez v0, :cond_11

    move v3, v2

    goto :goto_15

    :cond_11
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    :goto_15
    if-nez v1, :cond_18

    goto :goto_1c

    :cond_18
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    :goto_1c
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 350
    .end local v0  # "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v1  # "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_21
    const/high16 v0, 0x430c0000  # 140.0f

    return v0
.end method

.method public getStepSize()F
    .registers 2

    .line 371
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    return-object v0
.end method

.method public getValue()F
    .registers 2

    .line 241
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    return v0
.end method

.method public getVisualPercent()F
    .registers 5

    .line 261
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 262
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualValue()F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    return v0
.end method

.method public getVisualValue()F
    .registers 6

    .line 246
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateFromValue:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v0

    return v0

    .line 247
    :cond_1a
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    return v0
.end method

.method public isAnimating()Z
    .registers 3

    .line 400
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isDisabled()Z
    .registers 2

    .line 404
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    return v0
.end method

.method public isVertical()Z
    .registers 2

    .line 409
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    return v0
.end method

.method protected round(F)F
    .registers 4
    .param p1, "value"  # F

    .line 320
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public setAnimateDuration(F)V
    .registers 2
    .param p1, "duration"  # F

    .line 376
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    .line 377
    return-void
.end method

.method public setAnimateInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .registers 4
    .param p1, "animateInterpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 381
    if-eqz p1, :cond_5

    .line 382
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 383
    return-void

    .line 381
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "animateInterpolation cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisabled(Z)V
    .registers 2
    .param p1, "disabled"  # Z

    .line 396
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    .line 397
    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .registers 2
    .param p1, "programmaticChangeEvents"  # Z

    .line 415
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->programmaticChangeEvents:Z

    .line 416
    return-void
.end method

.method public setRange(FF)V
    .registers 6
    .param p1, "min"  # F
    .param p2, "max"  # F

    .line 331
    cmpl-float v0, p1, p2

    if-gtz v0, :cond_1c

    .line 332
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    .line 333
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    .line 334
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_12

    .line 335
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    goto :goto_1b

    .line 336
    :cond_12
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1b

    .line 337
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    .line 338
    :cond_1b
    :goto_1b
    return-void

    .line 331
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min must be <= max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRound(Z)V
    .registers 2
    .param p1, "round"  # Z

    .line 392
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    .line 393
    return-void
.end method

.method public setStepSize(F)V
    .registers 5
    .param p1, "stepSize"  # F

    .line 341
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_8

    .line 342
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    .line 343
    return-void

    .line 341
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "steps must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V
    .registers 4
    .param p1, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .line 86
    if-eqz p1, :cond_8

    .line 87
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .line 88
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->invalidateHierarchy()V

    .line 89
    return-void

    .line 86
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(F)Z
    .registers 7
    .param p1, "value"  # F

    .line 295
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->clamp(F)F

    move-result p1

    .line 296
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 297
    .local v0, "oldValue":F
    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return v2

    .line 298
    :cond_10
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualValue()F

    move-result v1

    .line 299
    .local v1, "oldVisualValue":F
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 301
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->programmaticChangeEvents:Z

    if-eqz v3, :cond_2e

    .line 302
    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 303
    .local v3, "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v4

    .line 304
    .local v4, "cancelled":Z
    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 305
    if-eqz v4, :cond_2e

    .line 306
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 307
    return v2

    .line 311
    .end local v3  # "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    .end local v4  # "cancelled":Z
    :cond_2e
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3b

    .line 312
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateFromValue:F

    .line 313
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    .line 315
    :cond_3b
    const/4 v2, 0x1

    return v2
.end method

.method public setVisualInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .registers 2
    .param p1, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 387
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 388
    return-void
.end method

.method public updateVisualValue()V
    .registers 2

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    .line 253
    return-void
.end method
