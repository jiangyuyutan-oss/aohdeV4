.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "Image.java"


# instance fields
.field private align:I

.field private drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private imageHeight:F

.field private imageWidth:F

.field private imageX:F

.field private imageY:F

.field private scaling:Lcom/badlogic/gdx/utils/Scaling;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 44
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 4
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .registers 5
    .param p1, "patch"  # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 5
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 6
    .param p1, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p2, "drawableName"  # Ljava/lang/String;

    .line 66
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 4
    .param p1, "drawable"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 72
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;)V
    .registers 4
    .param p1, "drawable"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "scaling"  # Lcom/badlogic/gdx/utils/Scaling;

    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V
    .registers 6
    .param p1, "drawable"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "scaling"  # Lcom/badlogic/gdx/utils/Scaling;
    .param p3, "align"  # I

    .line 82
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    .line 83
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 84
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    .line 85
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    .line 86
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setSize(FF)V

    .line 87
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 21
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 117
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->validate()V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 120
    .local v1, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v5, v5, p2

    move-object/from16 v15, p1

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getX()F

    move-result v2

    .line 123
    .local v2, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getY()F

    move-result v3

    .line 124
    .local v3, "y":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getScaleX()F

    move-result v4

    .line 125
    .local v4, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getScaleY()F

    move-result v5

    .line 127
    .local v5, "scaleY":F
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    instance-of v6, v6, Lcom/badlogic/gdx/scenes/scene2d/utils/TransformDrawable;

    if-eqz v6, :cond_6b

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getRotation()F

    move-result v17

    .line 129
    .local v17, "rotation":F
    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v7, v4, v6

    if-nez v7, :cond_41

    cmpl-float v6, v5, v6

    if-nez v6, :cond_41

    const/4 v6, 0x0

    cmpl-float v6, v17, v6

    if-eqz v6, :cond_6b

    .line 130
    :cond_41
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/utils/TransformDrawable;

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    add-float v8, v2, v7

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    add-float v9, v3, v7

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getOriginX()F

    move-result v7

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    sub-float v10, v7, v10

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getOriginY()F

    move-result v7

    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    sub-float v11, v7, v11

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    iget v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    move-object/from16 v7, p1

    move v14, v4

    move v15, v5

    move/from16 v16, v17

    invoke-interface/range {v6 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/TransformDrawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V

    .line 132
    return-void

    .line 135
    .end local v17  # "rotation":F
    :cond_6b
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v6, :cond_86

    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    add-float v8, v2, v7

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    add-float v9, v3, v7

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    mul-float v10, v7, v4

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    mul-float v11, v7, v5

    move-object/from16 v7, p1

    invoke-interface/range {v6 .. v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 136
    :cond_86
    return-void
.end method

.method public getAlign()I
    .registers 2

    .line 171
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    return v0
.end method

.method public getDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getImageHeight()F
    .registers 2

    .line 205
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    return v0
.end method

.method public getImageWidth()F
    .registers 2

    .line 201
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    return v0
.end method

.method public getImageX()F
    .registers 2

    .line 193
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    return v0
.end method

.method public getImageY()F
    .registers 2

    .line 197
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    return v0
.end method

.method public getMinHeight()F
    .registers 2

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getMinWidth()F
    .registers 2

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefHeight()F
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    return v0

    .line 189
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefWidth()F
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    return v0

    .line 184
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public layout()V
    .registers 10

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_5

    return-void

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    .line 93
    .local v0, "regionWidth":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    .line 94
    .local v1, "regionHeight":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getWidth()F

    move-result v2

    .line 95
    .local v2, "width":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getHeight()F

    move-result v3

    .line 97
    .local v3, "height":F
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Scaling;->apply(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    .line 98
    .local v4, "size":Lcom/badlogic/gdx/math/Vector2;
    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    .line 99
    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    .line 101
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x0

    const/high16 v7, 0x40000000  # 2.0f

    if-eqz v5, :cond_33

    .line 102
    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    goto :goto_4c

    .line 103
    :cond_33
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_42

    .line 104
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    sub-float v5, v2, v5

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    goto :goto_4c

    .line 106
    :cond_42
    div-float v5, v2, v7

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    div-float/2addr v8, v7

    sub-float/2addr v5, v8

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    .line 108
    :goto_4c
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5b

    .line 109
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    sub-float v5, v3, v5

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    goto :goto_6e

    .line 110
    :cond_5b
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_64

    .line 111
    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    goto :goto_6e

    .line 113
    :cond_64
    div-float v5, v3, v7

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    .line 114
    :goto_6e
    return-void
.end method

.method public setAlign(I)V
    .registers 2
    .param p1, "align"  # I

    .line 166
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    .line 167
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->invalidate()V

    .line 168
    return-void
.end method

.method public setDrawable(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 4
    .param p1, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p2, "drawableName"  # Ljava/lang/String;

    .line 139
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 140
    return-void
.end method

.method public setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 4
    .param p1, "drawable"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_5

    return-void

    .line 147
    :cond_5
    if-eqz p1, :cond_23

    .line 148
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefWidth()F

    move-result v0

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefHeight()F

    move-result v0

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_26

    :cond_1f
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->invalidateHierarchy()V

    goto :goto_26

    .line 150
    :cond_23
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->invalidateHierarchy()V

    .line 151
    :cond_26
    :goto_26
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 152
    return-void
.end method

.method public setScaling(Lcom/badlogic/gdx/utils/Scaling;)V
    .registers 4
    .param p1, "scaling"  # Lcom/badlogic/gdx/utils/Scaling;

    .line 160
    if-eqz p1, :cond_8

    .line 161
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    .line 162
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->invalidate()V

    .line 163
    return-void

    .line 160
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scaling cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 209
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getName()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_7

    return-object v0

    .line 211
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "className":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 213
    .local v2, "dotIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x24

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v3, :cond_2e

    const-string v3, "Image "

    goto :goto_30

    :cond_2e
    const-string v3, ""

    :goto_30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
