.class public Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.super Ljava/lang/Object;
.source "TextureRegion.java"


# instance fields
.field regionHeight:I

.field regionWidth:I

.field texture:Lcom/badlogic/gdx/graphics/Texture;

.field u:F

.field u2:F

.field v:F

.field v2:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 5
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_14

    .line 38
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 39
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 40
    return-void

    .line 37
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "texture cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .registers 6
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "u"  # F
    .param p3, "v"  # F
    .param p4, "u2"  # F
    .param p5, "v2"  # F

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 58
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;II)V
    .registers 5
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "width"  # I
    .param p3, "height"  # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .registers 6
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # I
    .param p3, "y"  # I
    .param p4, "width"  # I
    .param p5, "height"  # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 53
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 2
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .registers 6
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"  # I
    .param p3, "y"  # I
    .param p4, "width"  # I
    .param p5, "height"  # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 72
    return-void
.end method

.method public static split(Lcom/badlogic/gdx/graphics/Texture;II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 5
    .param p0, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p1, "tileWidth"  # I
    .param p2, "tileHeight"  # I

    .line 285
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 286
    .local v0, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->split(II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public flip(ZZ)V
    .registers 5
    .param p1, "x"  # Z
    .param p2, "y"  # Z

    .line 210
    if-eqz p1, :cond_a

    .line 211
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 212
    .local v0, "temp":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 213
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 215
    .end local v0  # "temp":F
    :cond_a
    if-eqz p2, :cond_14

    .line 216
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 217
    .restart local v0  # "temp":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 218
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 220
    .end local v0  # "temp":F
    :cond_14
    return-void
.end method

.method public getRegionHeight()I
    .registers 2

    .line 198
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    return v0
.end method

.method public getRegionWidth()I
    .registers 2

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    return v0
.end method

.method public getRegionX()I
    .registers 3

    .line 168
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getRegionY()I
    .registers 3

    .line 176
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getU()F
    .registers 2

    .line 132
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    return v0
.end method

.method public getU2()F
    .registers 2

    .line 150
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    return v0
.end method

.method public getV()F
    .registers 2

    .line 141
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    return v0
.end method

.method public getV2()F
    .registers 2

    .line 159
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    return v0
.end method

.method public isFlipX()Z
    .registers 3

    .line 223
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isFlipY()Z
    .registers 3

    .line 227
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public scroll(FF)V
    .registers 8
    .param p1, "xAmount"  # F
    .param p2, "yAmount"  # F

    .line 235
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_28

    .line 236
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    .line 237
    .local v1, "width":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    add-float/2addr v3, p1

    rem-float/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 238
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 240
    .end local v1  # "width":F
    :cond_28
    cmpl-float v0, p2, v0

    if-eqz v0, :cond_4d

    .line 241
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 242
    .local v0, "height":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    add-float/2addr v1, p2

    rem-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 243
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 245
    .end local v0  # "height":F
    :cond_4d
    return-void
.end method

.method public setRegion(FFFF)V
    .registers 10
    .param p1, "u"  # F
    .param p2, "v"  # F
    .param p3, "u2"  # F
    .param p4, "v2"  # F

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    .local v0, "texWidth":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    .line 92
    .local v1, "texHeight":I
    sub-float v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 93
    sub-float v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 96
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3c

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    if-ne v2, v3, :cond_3c

    .line 97
    int-to-float v2, v0

    const/high16 v3, 0x3e800000  # 0.25f

    div-float v2, v3, v2

    .line 98
    .local v2, "adjustX":F
    add-float/2addr p1, v2

    .line 99
    sub-float/2addr p3, v2

    .line 100
    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 101
    .local v3, "adjustY":F
    add-float/2addr p2, v3

    .line 102
    sub-float/2addr p4, v3

    .line 105
    .end local v2  # "adjustX":F
    .end local v3  # "adjustY":F
    :cond_3c
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 106
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 107
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 108
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 109
    return-void
.end method

.method public setRegion(IIII)V
    .registers 11
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "width"  # I
    .param p4, "height"  # I

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    div-float v0, v1, v0

    .line 84
    .local v0, "invTexWidth":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 85
    .local v1, "invTexHeight":F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    int-to-float v3, p2

    mul-float/2addr v3, v1

    add-int v4, p1, p3

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-int v5, p2, p4

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 86
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 87
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 88
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 5
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;

    .line 76
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 77
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 78
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 6
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 113
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 114
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 115
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .registers 8
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"  # I
    .param p3, "y"  # I
    .param p4, "width"  # I
    .param p5, "height"  # I

    .line 119
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 120
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, v0, v1, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 121
    return-void
.end method

.method public setRegionHeight(I)V
    .registers 5
    .param p1, "height"  # I

    .line 202
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->isFlipY()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 203
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    int-to-float v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    goto :goto_25

    .line 205
    :cond_16
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    int-to-float v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    .line 207
    :goto_25
    return-void
.end method

.method public setRegionWidth(I)V
    .registers 5
    .param p1, "width"  # I

    .line 189
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->isFlipX()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 190
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    int-to-float v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    goto :goto_25

    .line 192
    :cond_16
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    int-to-float v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU2(F)V

    .line 194
    :goto_25
    return-void
.end method

.method public setRegionX(I)V
    .registers 4
    .param p1, "x"  # I

    .line 172
    int-to-float v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    .line 173
    return-void
.end method

.method public setRegionY(I)V
    .registers 4
    .param p1, "y"  # I

    .line 180
    int-to-float v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    .line 181
    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 2
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;

    .line 128
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 129
    return-void
.end method

.method public setU(F)V
    .registers 4
    .param p1, "u"  # F

    .line 136
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 137
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 138
    return-void
.end method

.method public setU2(F)V
    .registers 4
    .param p1, "u2"  # F

    .line 154
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 155
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 156
    return-void
.end method

.method public setV(F)V
    .registers 4
    .param p1, "v"  # F

    .line 145
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 146
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 147
    return-void
.end method

.method public setV2(F)V
    .registers 4
    .param p1, "v2"  # F

    .line 163
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 164
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 165
    return-void
.end method

.method public split(II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 22
    .param p1, "tileWidth"  # I
    .param p2, "tileHeight"  # I

    .line 256
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v1

    .line 257
    .local v1, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v2

    .line 258
    .local v2, "y":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 259
    .local v7, "width":I
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 261
    .local v8, "height":I
    div-int v9, v8, p2

    .line 262
    .local v9, "rows":I
    div-int v10, v7, p1

    .line 264
    .local v10, "cols":I
    move v11, v1

    .line 265
    .local v11, "startX":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v10, v3, v4

    const/4 v4, 0x0

    aput v9, v3, v4

    const-class v4, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, [[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 266
    .local v12, "tiles":[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v3, 0x0

    move v13, v2

    move v14, v3

    .end local v2  # "y":I
    .local v13, "y":I
    .local v14, "row":I
    :goto_28
    if-ge v14, v9, :cond_52

    .line 267
    move v1, v11

    .line 268
    const/4 v2, 0x0

    move v15, v1

    move v6, v2

    .end local v1  # "x":I
    .local v6, "col":I
    .local v15, "x":I
    :goto_2e
    if-ge v6, v10, :cond_4a

    .line 269
    aget-object v16, v12, v14

    new-instance v17, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v1, v17

    move v3, v15

    move v4, v13

    move/from16 v5, p1

    move/from16 v18, v6

    .end local v6  # "col":I
    .local v18, "col":I
    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    aput-object v17, v16, v18

    .line 268
    add-int/lit8 v6, v18, 0x1

    .end local v18  # "col":I
    .restart local v6  # "col":I
    add-int v15, v15, p1

    goto :goto_2e

    :cond_4a
    move/from16 v18, v6

    .line 266
    .end local v6  # "col":I
    add-int/lit8 v14, v14, 0x1

    add-int v13, v13, p2

    move v1, v15

    goto :goto_28

    .line 273
    .end local v14  # "row":I
    .end local v15  # "x":I
    .restart local v1  # "x":I
    :cond_52
    return-object v12
.end method
