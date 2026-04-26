.class public Lage/of/civilizations2/jakowski/lukasz/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private iHeight:I

.field private iWidth:I

.field private texture:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 8
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .registers 9
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "nTextureFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .registers 10
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "minFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .registers 6
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "minFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "wrapU"  # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p5, "wrapV"  # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .registers 10
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "nTextureFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "nTextureWrap"  # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 33
    return-void
.end method

.method private final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V
    .registers 35
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "originX"  # I
    .param p5, "originY"  # I
    .param p6, "nWidth"  # I
    .param p7, "nHeight"  # I
    .param p8, "scaleX"  # F
    .param p9, "scaleY"  # F
    .param p10, "rotation"  # F
    .param p11, "srcX"  # I
    .param p12, "srcY"  # I
    .param p13, "srcWidth"  # I
    .param p14, "srcHeight"  # I
    .param p15, "flipX"  # Z
    .param p16, "flipY"  # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    .line 285
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v8, p2

    int-to-float v3, v8

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    add-int v4, p3, v4

    neg-int v4, v4

    int-to-float v4, v4

    move/from16 v7, p4

    int-to-float v5, v7

    move/from16 v6, p5

    int-to-float v0, v6

    move v6, v0

    move/from16 v0, p6

    int-to-float v7, v0

    move/from16 v0, p7

    int-to-float v8, v0

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 294
    return-void
.end method

.method private final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V
    .registers 36
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "originX"  # I
    .param p5, "originY"  # I
    .param p6, "nWidth"  # I
    .param p7, "nHeight"  # I
    .param p8, "scaleX"  # F
    .param p9, "scaleY"  # F
    .param p10, "rotation"  # F
    .param p11, "srcX"  # I
    .param p12, "srcY"  # I
    .param p13, "srcWidth"  # I
    .param p14, "srcHeight"  # I
    .param p15, "flipX"  # Z
    .param p16, "flipY"  # Z

    move/from16 v0, p7

    move-object/from16 v1, p1

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    .line 306
    move-object/from16 v8, p0

    iget-object v2, v8, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v7, p2

    int-to-float v3, v7

    add-int v4, p3, v0

    neg-int v4, v4

    int-to-float v4, v4

    move/from16 v6, p4

    int-to-float v5, v6

    move-object/from16 v18, v1

    move/from16 v1, p5

    int-to-float v6, v1

    move/from16 v1, p6

    int-to-float v7, v1

    int-to-float v1, v0

    move v8, v1

    move-object/from16 v1, v18

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 315
    return-void
.end method

.method private final draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V
    .registers 28
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "srcX"  # I
    .param p7, "srcY"  # I
    .param p8, "srcWidth"  # I
    .param p9, "srcHeight"  # I
    .param p10, "flipX"  # Z
    .param p11, "flipY"  # Z

    .line 318
    move/from16 v0, p5

    move-object/from16 v1, p0

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v14, p2

    int-to-float v4, v14

    add-int v2, p3, v0

    neg-int v2, v2

    int-to-float v5, v2

    move/from16 v15, p4

    int-to-float v6, v15

    int-to-float v7, v0

    move-object/from16 v2, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    .line 324
    return-void
.end method

.method private final draw_1(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V
    .registers 28
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "srcX"  # I
    .param p7, "srcY"  # I
    .param p8, "srcWidth"  # I
    .param p9, "srcHeight"  # I
    .param p10, "flipX"  # Z
    .param p11, "flipY"  # Z

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v13, p2

    int-to-float v3, v13

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    add-int v1, p3, v1

    neg-int v1, v1

    int-to-float v4, v1

    move/from16 v14, p4

    int-to-float v5, v14

    move/from16 v15, p5

    int-to-float v6, v15

    move-object/from16 v1, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    .line 303
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    .line 347
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_7

    .line 348
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 350
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 351
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 7
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 75
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    int-to-float v1, p2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    add-int/2addr v2, p3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 78
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 22
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "scale"  # F

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v8, p4

    move/from16 v9, p4

    .line 85
    iget v3, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v7, v3

    move v14, v3

    int-to-float v4, v3

    mul-float v4, v4, p4

    int-to-float v3, v3

    sub-float/2addr v4, v3

    float-to-int v3, v4

    add-int v3, p3, v3

    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 86
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V
    .registers 23
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "scale"  # F
    .param p5, "rotation"  # F

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v8, p4

    move/from16 v9, p4

    move/from16 v10, p5

    .line 93
    iget v3, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v7, v3

    move v14, v3

    int-to-float v4, v3

    mul-float v4, v4, p4

    int-to-float v3, v3

    sub-float/2addr v4, v3

    float-to-int v3, v4

    add-int v3, p3, v3

    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 94
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I

    .line 97
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    int-to-float v2, p2

    neg-int v0, p3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    sub-int/2addr v0, v3

    int-to-float v4, v0

    int-to-float v5, p4

    int-to-float v6, v3

    move-object v0, p1

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 100
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I

    .line 103
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    int-to-float v2, p2

    add-int v0, p3, p5

    neg-int v0, v0

    int-to-float v3, v0

    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 106
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "rotation"  # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    .line 113
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 114
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V
    .registers 25
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "rotation"  # F
    .param p7, "srcX"  # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 125
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 126
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFIZ)V
    .registers 26
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "rotation"  # F
    .param p7, "srcX"  # I
    .param p8, "flipX"  # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v15, p8

    .line 129
    move/from16 v12, p5

    neg-int v7, v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/16 v16, 0x0

    move/from16 v12, v16

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 130
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .registers 21
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "srcX"  # I
    .param p7, "srcY"  # I

    .line 109
    move-object v12, p0

    iget v8, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    iget v9, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 110
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    .registers 21
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "flipX"  # Z
    .param p7, "flipY"  # Z

    .line 121
    move-object v12, p0

    iget v8, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    iget v9, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 122
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIZZ)V
    .registers 20
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "flipX"  # Z
    .param p6, "flipY"  # Z

    .line 117
    move-object v12, p0

    iget v9, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    iget v8, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v9

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 118
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 19
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "flipX"  # Z
    .param p5, "flipY"  # Z

    .line 81
    move-object v12, p0

    iget v8, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    iget v9, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move v4, v8

    move v5, v9

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw_1(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 82
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 18
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I

    .line 135
    move-object v12, p0

    iget v9, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v9

    move/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw_1(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 136
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 18
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I

    .line 139
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 140
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "fRotate"  # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    .line 155
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 156
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V
    .registers 25
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "fRotate"  # F
    .param p7, "srcX"  # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 159
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 160
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZ)V
    .registers 26
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "fRotate"  # F
    .param p7, "flipX"  # Z
    .param p8, "flipY"  # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v15, p7

    move/from16 v16, p8

    .line 163
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 164
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZI)V
    .registers 27
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "fRotate"  # F
    .param p7, "flipX"  # Z
    .param p8, "flipY"  # Z
    .param p9, "srcX"  # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v11, p9

    .line 167
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 168
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V
    .registers 19
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "srcX"  # I

    .line 143
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 144
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .registers 20
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "srcX"  # I
    .param p7, "srcY"  # I

    .line 171
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 172
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIF)V
    .registers 26
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "srcX"  # I
    .param p7, "srcY"  # I
    .param p8, "fRotate"  # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v10, p8

    .line 175
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 176
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V
    .registers 28
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "srcX"  # I
    .param p7, "srcY"  # I
    .param p8, "fRotate"  # F
    .param p9, "flipX"  # Z
    .param p10, "flipY"  # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v10, p8

    move/from16 v15, p9

    move/from16 v16, p10

    .line 179
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 180
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIZZ)V
    .registers 22
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "srcX"  # I
    .param p7, "srcY"  # I
    .param p8, "flipX"  # Z
    .param p9, "flipY"  # Z

    .line 191
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 192
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 19
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "flipX"  # Z

    .line 183
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 184
    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    .registers 20
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "flipX"  # Z
    .param p7, "flipY"  # Z

    .line 187
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    .line 188
    return-void
.end method

.method public final draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 23
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    .line 242
    add-int v3, p3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 243
    return-void
.end method

.method public final draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .registers 25
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "srcX"  # I
    .param p7, "srcY"  # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v11, p6

    move/from16 v12, p7

    .line 247
    add-int v3, p3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 248
    return-void
.end method

.method public final draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIF)V
    .registers 26
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "srcX"  # I
    .param p7, "srcY"  # I
    .param p8, "fRotate"  # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v10, p8

    .line 251
    add-int v3, p3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 252
    return-void
.end method

.method public final draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V
    .registers 28
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "srcX"  # I
    .param p7, "srcY"  # I
    .param p8, "fRotate"  # F
    .param p9, "flipX"  # Z
    .param p10, "flipY"  # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v10, p8

    move/from16 v15, p9

    move/from16 v16, p10

    .line 255
    add-int v3, p3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 256
    return-void
.end method

.method public final draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "flipX"  # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v15, p6

    .line 259
    add-int v3, p3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 260
    return-void
.end method

.method public final draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    .registers 25
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "flipX"  # Z
    .param p7, "flipY"  # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    .line 263
    add-int v3, p3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 264
    return-void
.end method

.method public final draw2_Scale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "fScale"  # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p6

    .line 147
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 148
    return-void
.end method

.method public final draw2_Scale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZF)V
    .registers 27
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "flipX"  # Z
    .param p7, "flipY"  # Z
    .param p8, "fScale"  # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v8, p8

    move/from16 v9, p8

    .line 151
    move/from16 v12, p5

    int-to-float v3, v12

    mul-float v3, v3, p8

    float-to-int v3, v3

    add-int v3, p3, v3

    move-object/from16 v11, p0

    iget v4, v11, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    move/from16 v11, v17

    move/from16 v12, v17

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 152
    return-void
.end method

.method public final draw3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 23
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 279
    add-int v3, p3, p5

    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    iget v14, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 280
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 19
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 197
    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    iget v14, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v7, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 198
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 21
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 201
    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    iget v7, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 202
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 22
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "scale"  # F

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p4

    move/from16 v9, p4

    .line 217
    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    iget v7, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 218
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 22
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    .line 221
    move-object/from16 v15, p0

    iget v7, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 222
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 23
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 233
    add-int v3, p3, p5

    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    iget v14, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 234
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "rotation"  # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v10, p6

    .line 267
    move/from16 v15, p5

    neg-int v7, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 268
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V
    .registers 25
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "rotation"  # F
    .param p7, "srcX"  # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 271
    move/from16 v15, p5

    neg-int v7, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 272
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFIZ)V
    .registers 26
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "rotation"  # F
    .param p7, "srcX"  # I
    .param p8, "flipX"  # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v15, p8

    .line 275
    move/from16 v12, p5

    neg-int v7, v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/16 v16, 0x0

    move/from16 v12, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 276
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V
    .registers 35
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "originX"  # I
    .param p5, "originY"  # I
    .param p6, "nWidth"  # I
    .param p7, "nHeight"  # I
    .param p8, "scaleX"  # F
    .param p9, "scaleY"  # F
    .param p10, "rotation"  # F
    .param p11, "srcX"  # I
    .param p12, "srcY"  # I
    .param p13, "srcWidth"  # I
    .param p14, "srcHeight"  # I
    .param p15, "flipX"  # Z
    .param p16, "flipY"  # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    .line 58
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v8, p2

    int-to-float v3, v8

    move/from16 v7, p3

    neg-int v4, v7

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move/from16 v6, p4

    int-to-float v5, v6

    move/from16 v0, p5

    int-to-float v6, v0

    move/from16 v0, p6

    int-to-float v7, v0

    move/from16 v0, p7

    int-to-float v8, v0

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 67
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    .registers 26
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "flipX"  # Z
    .param p7, "flipY"  # Z

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v15, p6

    move/from16 v16, p7

    .line 237
    add-int v3, p3, p5

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    iget v14, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 238
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIZ)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "flipY"  # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v16, p5

    .line 225
    move-object/from16 v15, p0

    iget v7, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    move/from16 v15, v17

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 226
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIZZ)V
    .registers 25
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "flipX"  # Z
    .param p6, "flipY"  # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v15, p5

    move/from16 v16, p6

    .line 229
    move-object/from16 v12, p0

    iget v7, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 230
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 22
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "flipX"  # Z

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v15, p4

    .line 205
    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    iget v7, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v12, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 206
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "flipX"  # Z
    .param p5, "flipY"  # Z

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v15, p4

    move/from16 v16, p5

    .line 209
    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    iget v14, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v7, v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 210
    return-void
.end method

.method public final drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZII)V
    .registers 25
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "flipX"  # Z
    .param p5, "flipY"  # Z
    .param p6, "nWidth"  # I
    .param p7, "nHeight"  # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v6, p6

    move/from16 v13, p6

    move/from16 v7, p7

    move/from16 v14, p7

    .line 213
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 214
    return-void
.end method

.method public final drawProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 22
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "scale"  # F

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p4

    move/from16 v9, p4

    .line 89
    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    iget v7, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-direct/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    .line 90
    return-void
.end method

.method public final getHeight()I
    .registers 2

    .line 343
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    return v0
.end method

.method public final getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .registers 2

    .line 331
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .line 339
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    return v0
.end method

.method public final init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .registers 7
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "minFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "wrapU"  # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p5, "wrapV"  # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 46
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 48
    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 49
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, p4, p5}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 51
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    .line 52
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    .line 53
    return-void
.end method

.method public final setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 2
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;

    .line 335
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 336
    return-void
.end method
