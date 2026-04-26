.class public Lage/of/civilizations2/jakowski/lukasz/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# static fields
.field public static aNS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;",
            ">;"
        }
    .end annotation
.end field

.field public static charset:Ljava/lang/String;

.field public static drawerPix:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

.field public static iANSS:I

.field private static numOfScissors:I

.field public static oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

.field public static peekBounds:Lcom/badlogic/gdx/math/Rectangle;

.field public static provinceBorderValues:Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;

.field public static shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderTime2:F

.field public static shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

.field public static final textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

.field private static final tmpMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private static final tmpRotationAxis:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 23
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    .line 35
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->provinceBorderValues:Lage/of/civilizations2/jakowski/lukasz/Province_Border_Values;

    .line 37
    const-string v0, ""

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->charset:Ljava/lang/String;

    .line 39
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->aNS:Ljava/util/List;

    .line 44
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->iANSS:I

    .line 437
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    .line 475
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->tmpMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 476
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1, v2, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->tmpRotationAxis:Lcom/badlogic/gdx/math/Vector3;

    .line 495
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->numOfScissors:I

    .line 503
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->peekBounds:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aNK(I)V
    .registers 3
    .param p0, "iProvinceID"  # I

    .line 415
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->aNS:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->aNS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->iANSS:I

    .line 417
    return-void
.end method

.method public static final clearUnclearedScissors(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 498
    :goto_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->numOfScissors:I

    if-lez v0, :cond_8

    .line 499
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    .line 501
    :cond_8
    return-void
.end method

.method public static final clipViewPeek()V
    .registers 1

    .line 508
    :try_start_0
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->peekScissors()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->peekBounds:Lcom/badlogic/gdx/math/Rectangle;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 512
    goto :goto_b

    .line 510
    :catch_7
    move-exception v0

    .line 511
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 513
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_b
    return-void
.end method

.method public static final clipViewPeek_Add(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 518
    :try_start_0
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->clearUnclearedScissors(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 520
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->peekBounds:Lcom/badlogic/gdx/math/Rectangle;

    if-eqz v0, :cond_10

    .line 521
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 522
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->numOfScissors:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->numOfScissors:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 527
    :cond_10
    goto :goto_15

    .line 525
    :catch_11
    move-exception v0

    .line 526
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 528
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_15
    return-void
.end method

.method public static final clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 549
    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->numOfScissors:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->numOfScissors:I

    .line 551
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 553
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 556
    goto :goto_13

    .line 554
    :catch_12
    move-exception v0

    .line 557
    :goto_13
    return-void
.end method

.method public static final clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z
    .registers 10
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nWidth"  # I
    .param p4, "nHeight"  # I

    .line 533
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 534
    .local v0, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 536
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->numOfScissors:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->numOfScissors:I

    .line 538
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return v1

    .line 539
    .end local v0  # "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    :catch_17
    move-exception v0

    .line 540
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 543
    .end local v0  # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public static dNAI(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 422
    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->iANSS:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_2d

    .line 423
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->aNS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 425
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->aNS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/KNAM;->mRM:Z

    if-eqz v1, :cond_2a

    .line 426
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->aNS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 427
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->aNS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->iANSS:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2e

    .line 422
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 432
    .end local v0  # "i":I
    :cond_2d
    goto :goto_32

    .line 430
    :catch_2e
    move-exception v0

    .line 431
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 433
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public static final drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V
    .registers 18
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "imageID"  # I
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I

    .line 226
    add-int/lit8 v0, p5, 0x1

    div-int/lit8 v8, v0, 0x2

    .line 227
    .local v8, "iHCeil":I
    div-int/lit8 v9, p5, 0x2

    .line 231
    .local v9, "iHFloor":I
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    .line 233
    .local v10, "img":Lage/of/civilizations2/jakowski/lukasz/Image;
    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    move/from16 v1, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 235
    .end local p4  # "nWidth":I
    .local v11, "nWidth":I
    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sub-int v4, v11, v0

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 236
    add-int v0, p2, v11

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 237
    add-int v3, p3, v8

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sub-int v4, v11, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v10

    move v2, p2

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 238
    add-int v0, p2, v11

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    add-int v3, p3, v8

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 240
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 241
    return-void
.end method

.method public static final drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 11
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nWidth"  # I
    .param p4, "nHeight"  # I

    .line 222
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->buttonGame:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    .line 223
    return-void
.end method

.method public static final drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .registers 18
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nWidth"  # I
    .param p4, "nHeight"  # I
    .param p5, "fAlpha"  # F

    .line 562
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 563
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    add-int v0, p1, p3

    add-int/lit8 v8, v0, -0x1

    add-int/lit8 v9, p2, 0x1

    add-int/lit8 v11, p4, -0x2

    const/4 v10, 0x1

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 564
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v5, p4, -0x2

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 565
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    add-int v1, p2, p4

    add-int/lit8 v3, v1, -0x1

    const/4 v5, 0x1

    move-object v1, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 567
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 568
    return-void
.end method

.method public static final drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V
    .registers 19
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "imgID"  # I
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "fAlpha"  # F

    .line 274
    add-int/lit8 v0, p5, 0x1

    div-int/lit8 v8, v0, 0x2

    .line 275
    .local v8, "iHCeil":I
    div-int/lit8 v9, p5, 0x2

    .line 277
    .local v9, "iHFloor":I
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    .line 279
    .local v10, "img":Lage/of/civilizations2/jakowski/lukasz/Image;
    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    move/from16 v1, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 281
    .end local p4  # "nWidth":I
    .local v11, "nWidth":I
    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sub-int v4, v11, v0

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 282
    add-int v0, p2, v11

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 283
    add-int v3, p3, v8

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sub-int v4, v11, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v10

    move v2, p2

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 284
    add-int v0, p2, v11

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    add-int v3, p3, v8

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 286
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 287
    return-void
.end method

.method public static final drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lage/of/civilizations2/jakowski/lukasz/Image;IIIIF)V
    .registers 18
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "img"  # Lage/of/civilizations2/jakowski/lukasz/Image;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "fAlpha"  # F

    .line 290
    add-int/lit8 v0, p5, 0x1

    div-int/lit8 v8, v0, 0x2

    .line 291
    .local v8, "iHCeil":I
    div-int/lit8 v9, p5, 0x2

    .line 295
    .local v9, "iHFloor":I
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    move v1, p4

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 297
    .end local p4  # "nWidth":I
    .local v10, "nWidth":I
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sub-int v4, v10, v0

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 298
    add-int v0, p2, v10

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 299
    add-int v3, p3, v8

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sub-int v4, v10, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move v2, p2

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 300
    add-int v0, p2, v10

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    add-int v3, p3, v8

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 302
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 303
    return-void
.end method

.method public static final drawBox3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V
    .registers 19
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "imgID"  # I
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "fAlpha"  # F

    .line 244
    const/16 v0, 0x10

    .line 245
    .local v0, "segmentWidth":I
    const/4 v1, 0x1

    .line 247
    .local v1, "gap":I
    move v2, p2

    .line 248
    .local v2, "x":I
    add-int v3, p2, p4

    .line 250
    .local v3, "endX":I
    :goto_6
    if-ge v2, v3, :cond_1e

    .line 251
    sub-int v4, v3, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 253
    .local v11, "drawW":I
    move-object v4, p0

    move v5, p1

    move v6, v2

    move v7, p3

    move v8, v11

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox4(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 255
    add-int v4, v0, v1

    add-int/2addr v2, v4

    .line 256
    .end local v11  # "drawW":I
    goto :goto_6

    .line 257
    :cond_1e
    return-void
.end method

.method public static final drawBox4(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V
    .registers 19
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "imgID"  # I
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "fAlpha"  # F

    .line 260
    add-int/lit8 v0, p5, 0x1

    div-int/lit8 v8, v0, 0x2

    .line 261
    .local v8, "iHCeil":I
    div-int/lit8 v9, p5, 0x2

    .line 263
    .local v9, "iHFloor":I
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v10

    .line 265
    .local v10, "img":Lage/of/civilizations2/jakowski/lukasz/Image;
    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    move/from16 v1, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 267
    .end local p4  # "nWidth":I
    .local v11, "nWidth":I
    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sub-int v4, v11, v0

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 268
    add-int v0, p2, v11

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 269
    add-int v3, p3, v8

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sub-int v4, v11, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v10

    move v2, p2

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 270
    add-int v0, p2, v11

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    add-int v3, p3, v8

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 271
    return-void
.end method

.method public static final drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .registers 9
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fontID"  # I
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 313
    if-eqz p2, :cond_1e

    .line 314
    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 315
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    int-to-float v1, p3

    neg-int v2, p4

    int-to-float v2, v2

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_1e

    .line 317
    :catch_1c
    move-exception v0

    goto :goto_1f

    .line 319
    :cond_1e
    :goto_1e
    nop

    .line 320
    :goto_1f
    return-void
.end method

.method public static final drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .registers 11
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 308
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 309
    return-void
.end method

.method public static final drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .registers 12
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fontID"  # I
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "rotate"  # F

    .line 390
    if-eqz p2, :cond_45

    .line 391
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 394
    .local v0, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :try_start_a
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 395
    .local v1, "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v1, v2, p6}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 396
    int-to-float v2, p3

    neg-int v3, p4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 398
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 400
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 401
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, p0, p2, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_39} :catch_40
    .catchall {:try_start_a .. :try_end_39} :catchall_3b

    .line 405
    nop

    .end local v1  # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    goto :goto_42

    :catchall_3b
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 406
    throw v1

    .line 402
    :catch_40
    move-exception v1

    .line 405
    nop

    :goto_42
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 408
    .end local v0  # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :cond_45
    return-void
.end method

.method public static final drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .registers 13
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "rotate"  # F

    .line 386
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    .line 387
    return-void
.end method

.method public static final declared-synchronized drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .registers 12
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "rotate"  # F

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;

    monitor-enter v0

    .line 440
    if-eqz p1, :cond_39

    .line 441
    :try_start_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_36

    .line 444
    .local v1, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :try_start_d
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 446
    .local v2, "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3, p5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 447
    int-to-float v3, p2

    neg-int v4, p3

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 449
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 451
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 452
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3, p0, p1, v5, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_31
    .catchall {:try_start_d .. :try_end_2b} :catchall_2c

    goto :goto_32

    .line 456
    .end local v2  # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    :catchall_2c
    move-exception v2

    :try_start_2d
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 457
    throw v2

    .line 453
    :catch_31
    move-exception v2

    .line 456
    :goto_32
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_36

    .line 457
    goto :goto_39

    .line 439
    .end local v1  # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    .end local p0  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1  # "sText":Ljava/lang/String;
    .end local p2  # "nPosX":I
    .end local p3  # "nPosY":I
    .end local p4  # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local p5  # "rotate":F
    :catchall_36
    move-exception p0

    monitor-exit v0

    throw p0

    .line 459
    .restart local p0  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .restart local p1  # "sText":Ljava/lang/String;
    .restart local p2  # "nPosX":I
    .restart local p3  # "nPosY":I
    .restart local p4  # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local p5  # "rotate":F
    :cond_39
    :goto_39
    monitor-exit v0

    return-void
.end method

.method public static final declared-synchronized drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    .registers 9
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "mx4Font"  # Lcom/badlogic/gdx/math/Matrix4;

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;

    monitor-enter v0

    .line 463
    if-eqz p1, :cond_1a

    .line 464
    int-to-float v1, p2

    neg-int v2, p3

    int-to-float v2, v2

    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {p4, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 466
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 468
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, p0, p1, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_18
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_1a

    .line 462
    .end local p0  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1  # "sText":Ljava/lang/String;
    .end local p2  # "nPosX":I
    .end local p3  # "nPosY":I
    .end local p4  # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0

    .line 470
    .restart local p0  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .restart local p1  # "sText":Ljava/lang/String;
    .restart local p2  # "nPosX":I
    .restart local p3  # "nPosY":I
    .restart local p4  # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    :catch_18
    move-exception v1

    goto :goto_1b

    .line 472
    :cond_1a
    :goto_1a
    nop

    .line 473
    :goto_1b
    monitor-exit v0

    return-void
.end method

.method public static final declared-synchronized drawTextRotatedBorder_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IIF)V
    .registers 10
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "rotate"  # F

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;

    monitor-enter v0

    .line 480
    if-nez p1, :cond_7

    monitor-exit v0

    return-void

    .line 482
    :cond_7
    :try_start_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->tmpMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 483
    int-to-float v2, p2

    neg-int v3, p3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 484
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->tmpRotationAxis:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, p4}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 486
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 487
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, p0, p1, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_24
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    .line 490
    goto :goto_25

    .line 479
    .end local p0  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1  # "sText":Ljava/lang/String;
    .end local p2  # "nPosX":I
    .end local p3  # "nPosY":I
    .end local p4  # "rotate":F
    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0

    .line 488
    .restart local p0  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .restart local p1  # "sText":Ljava/lang/String;
    .restart local p2  # "nPosX":I
    .restart local p3  # "nPosY":I
    .restart local p4  # "rotate":F
    :catch_24
    move-exception v1

    .line 491
    :goto_25
    monitor-exit v0

    return-void
.end method

.method public static final drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .registers 10
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fontID"  # I
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 328
    if-eqz p2, :cond_44

    .line 329
    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f333333  # 0.7f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 330
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    neg-int v2, p4

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 332
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 333
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    int-to-float v1, p3

    neg-int v2, p4

    int-to-float v2, v2

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_42

    goto :goto_44

    .line 335
    :catch_42
    move-exception v0

    goto :goto_45

    .line 337
    :cond_44
    :goto_44
    nop

    .line 338
    :goto_45
    return-void
.end method

.method public static final drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .registers 11
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 323
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 324
    return-void
.end method

.method public static final drawTextWithShadowAlpha(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .registers 10
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fontID"  # I
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 346
    if-eqz p2, :cond_48

    .line 347
    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3dcccccd  # 0.1f

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, v2

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 348
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    neg-int v2, p4

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 350
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 351
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    int-to-float v1, p3

    neg-int v2, p4

    int-to-float v2, v2

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_45} :catch_46

    goto :goto_48

    .line 353
    :catch_46
    move-exception v0

    goto :goto_49

    .line 355
    :cond_48
    :goto_48
    nop

    .line 356
    :goto_49
    return-void
.end method

.method public static final drawTextWithShadowAlpha(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .registers 11
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 341
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadowAlpha(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 342
    return-void
.end method

.method public static final drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .registers 13
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fontID"  # I
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "rotate"  # F

    .line 363
    if-eqz p2, :cond_60

    .line 364
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 367
    .local v0, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :try_start_a
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 368
    .local v1, "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, p6}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 369
    int-to-float v2, p3

    neg-int v3, p4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 371
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 372
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f333333  # 0.7f

    invoke-direct {v3, v4, v4, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 373
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const/high16 v3, -0x40800000  # -1.0f

    invoke-virtual {v2, p0, p2, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 375
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 376
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, p0, p2, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_54} :catch_5b
    .catchall {:try_start_a .. :try_end_54} :catchall_56

    .line 380
    nop

    .end local v1  # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    goto :goto_5d

    :catchall_56
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 381
    throw v1

    .line 377
    :catch_5b
    move-exception v1

    .line 380
    nop

    :goto_5d
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 383
    .end local v0  # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :cond_60
    return-void
.end method

.method public static final drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .registers 13
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "rotate"  # F

    .line 359
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    .line 360
    return-void
.end method

.method public static init()V
    .registers 16

    .line 49
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 50
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->buildPix_IMG()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 51
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->buildPix()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix2:I

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawerPix:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 53
    new-instance v0, Lspace/earlygrey/shapedrewer/ShapeDrawer;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawerPix:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, v1, v2}, Lspace/earlygrey/shapedrewer/ShapeDrawer;-><init>(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrewer/ShapeDrawer;

    .line 56
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nuniform sampler2D u_texture2;\nvoid main()    \n{\n vec4 mask = texture2D(u_texture2, v_texCoords);\n gl_FragColor = vec4(mask.rgb, mask.a * (v_color.a * texture2D(u_texture, v_texCoords).a));\n}"

    .line 69
    .local v0, "flagFragment":Ljava/lang/String;
    const-string v1, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n"

    .line 85
    .local v1, "vertexShader":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 87
    const/4 v2, 0x0

    sput-boolean v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    .line 88
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 89
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v4, "u_texture"

    invoke-virtual {v3, v4, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 90
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v5, "u_texture2"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 92
    const-string v3, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\n\nuniform mat4 u_projTrans;\n\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main() {\n    v_color = a_color;\n    v_texCoords = a_texCoord0;\n    gl_Position = u_projTrans * a_position;\n}"

    .line 107
    .local v3, "defaultVertex":Ljava/lang/String;
    const-string v7, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP\n#endif\n\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\n\n\nuniform sampler2D u_texture;\nuniform sampler2D u_texture2;\nuniform float time;\nuniform vec2 resolution;\nuniform float u_maskScale;\nuniform float u_maskScaleY;\nuniform float u_useMask;\nuniform vec2 u_maskOffset;\n\n\nconst float PI = 3.1415;\n// 速度\nconst float speed = 0.03;\nconst float speed_x = 0.06;\nconst float speed_y = 0.06;\n\n// 折射角\nconst float emboss = 0.3; \t\t// 凹凸强度\nconst float intensity = 2.4;\t// 强度\nconst int steps = 8;  \t\t\t// 波纹密度\nconst float frequency = 4.0;  \t// 频率\nconst float angle = 7.0;\n\nconst float delta = 50.0;  \t\t// 增幅（越小越激烈）\nconst float intence = 200.0;   \t// 明暗强度\n\n// 高光\nconst float reflectionCutOff = 0.012;\nconst float reflectionIntence = 80000.0;\n\nfloat col(vec2 coord)\n{\n    float delta_theta = 2.0 * PI / angle;\n    float col = 0.0;\n    float theta = 0.0;\n    for (int i = 0; i < steps; i++)\n    {\n        vec2 adjc = coord;\n        theta = delta_theta * float(i);\n        adjc.x += cos(theta)*time*speed + time * speed_x;\n        adjc.y -= sin(theta)*time*speed - time * speed_y;\n        col = col + cos((adjc.x * cos(theta) -\n            adjc.y * sin(theta)) * frequency) * intensity;\n    }\n    return cos(col);\n}\n\n\nvoid main()\n{\n    vec2 p = v_texCoords, c1 = p, c2 = p;\n    float cc1 = col(c1);\n\n    c2.x += resolution.x/delta;\n    float dx = emboss*(cc1-col(c2))/delta;\n\n    c2.x = p.x;\n    c2.y += resolution.y/delta;\n    float dy = emboss*(cc1-col(c2))/delta;\n    c1.x = c1.x +dx;\n    c1.y =  c1.y+dy;\n\n    float alpha = 1.0+dot(dx,dy)*intence;\n\n\n    vec4 col = texture2D(u_texture,c1);\n vec2 newCoords = vec2(v_texCoords.x * u_maskScale, v_texCoords.y * u_maskScaleY);\n vec4 mask = vec4(1.0, 1.0, 1.0, 1.0); \n\tmask = texture2D(u_texture2, v_texCoords);\n  gl_FragColor = vec4(col.rgb, mask.a * col.a);\n}"

    .line 189
    .local v7, "testFragment":Ljava/lang/String;
    new-instance v8, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v8, v3, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 191
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 192
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v4, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 193
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 194
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v9, "u_useMask"

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 195
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v11, "u_maskScale"

    const/high16 v12, 0x41a00000  # 20.0f

    invoke-virtual {v8, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 196
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v13, "u_maskOffset"

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14, v14}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 198
    new-instance v8, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v15, "game/shader/map_overlay_fragment.glsl"

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v15

    invoke-virtual {v15}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v1, v15}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 200
    sput-boolean v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    .line 201
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 202
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v4, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 203
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 204
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 205
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 206
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2, v13, v14, v14}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 207
    return-void
.end method

.method public static final setShaderWater3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 212
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 214
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderTime2:F

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 215
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagBigMask:I

    .line 216
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flagBigMask:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 215
    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V

    .line 217
    return-void
.end method
