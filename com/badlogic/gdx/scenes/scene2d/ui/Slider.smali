.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    }
.end annotation


# instance fields
.field button:I

.field draggingPointer:I

.field mouseOver:Z

.field private snapValues:[F

.field private threshold:F

.field private visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 13
    .param p1, "min"  # F
    .param p2, "max"  # F
    .param p3, "stepSize"  # F
    .param p4, "vertical"  # Z
    .param p5, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 50
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

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    .line 51
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

    .line 54
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    .line 55
    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .registers 7
    .param p1, "min"  # F
    .param p2, "max"  # F
    .param p3, "stepSize"  # F
    .param p4, "vertical"  # Z
    .param p5, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->button:I

    .line 43
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    .line 45
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    .line 69
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 103
    return-void
.end method


# virtual methods
.method calculatePositionAndValue(FF)Z
    .registers 16
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 148
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    .line 149
    .local v0, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 150
    .local v1, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    .line 153
    .local v2, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 155
    .local v3, "oldPosition":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getMinValue()F

    move-result v4

    .line 156
    .local v4, "min":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getMaxValue()F

    move-result v5

    .line 158
    .local v5, "max":F
    iget-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->vertical:Z

    const/high16 v7, 0x3f000000  # 0.5f

    const/4 v8, 0x0

    if-eqz v6, :cond_65

    .line 159
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getHeight()F

    move-result v6

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v9

    sub-float/2addr v6, v9

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v9

    sub-float/2addr v6, v9

    .line 160
    .local v6, "height":F
    if-nez v1, :cond_2d

    move v9, v8

    goto :goto_31

    :cond_2d
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v9

    .line 161
    .local v9, "knobHeight":F
    :goto_31
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v10

    sub-float v10, p2, v10

    mul-float/2addr v7, v9

    sub-float/2addr v10, v7

    iput v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 162
    sub-float v7, v5, v4

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    iget v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    sub-float v12, v6, v9

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v7, v4

    .line 163
    .local v7, "value":F
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 164
    sub-float v8, v6, v9

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 165
    .end local v6  # "height":F
    .end local v9  # "knobHeight":F
    goto :goto_ae

    .line 166
    .end local v7  # "value":F
    :cond_65
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getWidth()F

    move-result v6

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v9

    sub-float/2addr v6, v9

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v9

    sub-float/2addr v6, v9

    .line 167
    .local v6, "width":F
    if-nez v1, :cond_77

    move v9, v8

    goto :goto_7b

    :cond_77
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v9

    .line 168
    .local v9, "knobWidth":F
    :goto_7b
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v10

    sub-float v10, p1, v10

    mul-float/2addr v7, v9

    sub-float/2addr v10, v7

    iput v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 169
    sub-float v7, v5, v4

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    iget v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    sub-float v12, v6, v9

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v7, v4

    .line 170
    .restart local v7  # "value":F
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 171
    sub-float v8, v6, v9

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 174
    .end local v6  # "width":F
    .end local v9  # "knobWidth":F
    :goto_ae
    move v6, v7

    .line 175
    .local v6, "oldValue":F
    sget-object v8, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v9, 0x3b

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v8

    if-nez v8, :cond_c7

    sget-object v8, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v9, 0x3c

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v8

    if-nez v8, :cond_c7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snap(F)F

    move-result v7

    .line 176
    :cond_c7
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setValue(F)Z

    move-result v8

    .line 177
    .local v8, "valueSet":Z
    cmpl-float v9, v7, v6

    if-nez v9, :cond_d1

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 178
    :cond_d1
    return v8
.end method

.method protected getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 3

    .line 116
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 117
    .local v0, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1

    .line 118
    :cond_11
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->backgroundDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->backgroundDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1

    .line 119
    :cond_1e
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->backgroundOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->backgroundOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1

    .line 120
    :cond_29
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1
.end method

.method protected getKnobAfterDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 3

    .line 140
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 141
    .local v0, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1

    .line 142
    :cond_11
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobAfterDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobAfterDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1

    .line 143
    :cond_1e
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobAfterOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobAfterOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1

    .line 144
    :cond_29
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1
.end method

.method protected getKnobBeforeDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 3

    .line 132
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 133
    .local v0, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1

    .line 134
    :cond_11
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobBeforeDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobBeforeDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1

    .line 135
    :cond_1e
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobBeforeOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobBeforeOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1

    .line 136
    :cond_29
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1
.end method

.method protected getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 3

    .line 124
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 125
    .local v0, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1

    .line 126
    :cond_11
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1

    .line 127
    :cond_1e
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1

    .line 128
    :cond_29
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v1
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    .registers 2

    .line 108
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    return-object v0
.end method

.method public isDragging()Z
    .registers 3

    .line 207
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isOver()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    return v0
.end method

.method public setButton(I)V
    .registers 2
    .param p1, "button"  # I

    .line 212
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->button:I

    .line 213
    return-void
.end method

.method public setSnapToValues([FF)V
    .registers 3
    .param p1, "values"  # [F
    .param p2, "threshold"  # F

    .line 201
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    .line 202
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->threshold:F

    .line 203
    return-void
.end method

.method public setVisualInterpolationInverse(Lcom/badlogic/gdx/math/Interpolation;)V
    .registers 2
    .param p1, "interpolation"  # Lcom/badlogic/gdx/math/Interpolation;

    .line 218
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    .line 219
    return-void
.end method

.method public setVisualPercent(F)V
    .registers 5
    .param p1, "percent"  # F

    .line 224
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setValue(F)Z

    .line 225
    return-void
.end method

.method protected snap(F)F
    .registers 9
    .param p1, "value"  # F

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_3a

    .line 184
    :cond_a
    const/high16 v0, -0x40800000  # -1.0f

    .local v0, "bestDiff":F
    const/4 v1, 0x0

    .line 185
    .local v1, "bestValue":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    array-length v3, v3

    const/high16 v4, -0x40800000  # -1.0f

    if-ge v2, v3, :cond_32

    .line 186
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    aget v3, v3, v2

    .line 187
    .local v3, "snapValue":F
    sub-float v5, p1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 188
    .local v5, "diff":F
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->threshold:F

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_2f

    .line 189
    cmpl-float v4, v0, v4

    if-eqz v4, :cond_2d

    cmpg-float v4, v5, v0

    if-gez v4, :cond_2f

    .line 190
    :cond_2d
    move v0, v5

    .line 191
    move v1, v3

    .line 185
    .end local v3  # "snapValue":F
    .end local v5  # "diff":F
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 195
    .end local v2  # "i":I
    :cond_32
    cmpl-float v2, v0, v4

    if-nez v2, :cond_38

    move v2, p1

    goto :goto_39

    :cond_38
    move v2, v1

    :goto_39
    return v2

    .line 183
    .end local v0  # "bestDiff":F
    .end local v1  # "bestValue":F
    :cond_3a
    :goto_3a
    return p1
.end method
