.class public Lcom/badlogic/gdx/graphics/g2d/Sprite;
.super Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.source "Sprite.java"


# static fields
.field static final SPRITE_SIZE:I = 0x14

.field static final VERTEX_SIZE:I = 0x5


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private dirty:Z

.field height:F

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field final vertices:[F

.field width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 51
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 8
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;

    .line 56
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;II)V
    .registers 10
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "srcWidth"  # I
    .param p3, "srcHeight"  # I

    .line 64
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .registers 9
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "srcX"  # I
    .param p3, "srcY"  # I
    .param p4, "srcWidth"  # I
    .param p5, "srcHeight"  # I

    .line 70
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 71
    if-eqz p1, :cond_3c

    .line 72
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 73
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(IIII)V

    .line 74
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 75
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 77
    return-void

    .line 71
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "texture cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .registers 4
    .param p1, "sprite"  # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 101
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 102
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 5
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 82
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 83
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 84
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 85
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 86
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .registers 9
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "srcX"  # I
    .param p3, "srcY"  # I
    .param p4, "srcWidth"  # I
    .param p5, "srcHeight"  # I

    .line 93
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 94
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 95
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 96
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 98
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .registers 6
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 580
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 581
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 5
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "alphaModulation"  # F

    .line 584
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 585
    .local v0, "oldAlpha":F
    mul-float v1, v0, p2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setAlpha(F)V

    .line 586
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 587
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setAlpha(F)V

    .line 588
    return-void
.end method

.method public flip(ZZ)V
    .registers 8
    .param p1, "x"  # Z
    .param p2, "y"  # Z

    .line 702
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 703
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 704
    .local v0, "vertices":[F
    if-eqz p1, :cond_1e

    .line 705
    const/4 v1, 0x3

    aget v2, v0, v1

    .line 706
    .local v2, "temp":F
    const/16 v3, 0xd

    aget v4, v0, v3

    aput v4, v0, v1

    .line 707
    aput v2, v0, v3

    .line 708
    const/16 v1, 0x8

    aget v2, v0, v1

    .line 709
    const/16 v3, 0x12

    aget v4, v0, v3

    aput v4, v0, v1

    .line 710
    aput v2, v0, v3

    .line 712
    .end local v2  # "temp":F
    :cond_1e
    if-eqz p2, :cond_37

    .line 713
    const/4 v1, 0x4

    aget v2, v0, v1

    .line 714
    .restart local v2  # "temp":F
    const/16 v3, 0xe

    aget v4, v0, v3

    aput v4, v0, v1

    .line 715
    aput v2, v0, v3

    .line 716
    const/16 v1, 0x9

    aget v2, v0, v1

    .line 717
    const/16 v3, 0x13

    aget v4, v0, v3

    aput v4, v0, v1

    .line 718
    aput v2, v0, v3

    .line 720
    .end local v2  # "temp":F
    :cond_37
    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .registers 10

    .line 548
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v0

    .line 550
    .local v0, "vertices":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 551
    .local v2, "minx":F
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 552
    .local v4, "miny":F
    aget v1, v0, v1

    .line 553
    .local v1, "maxx":F
    aget v3, v0, v3

    .line 555
    .local v3, "maxy":F
    const/4 v5, 0x5

    aget v6, v0, v5

    cmpl-float v6, v2, v6

    if-lez v6, :cond_18

    aget v6, v0, v5

    goto :goto_19

    :cond_18
    move v6, v2

    :goto_19
    move v2, v6

    .line 556
    const/16 v6, 0xa

    aget v7, v0, v6

    cmpl-float v7, v2, v7

    if-lez v7, :cond_25

    aget v7, v0, v6

    goto :goto_26

    :cond_25
    move v7, v2

    :goto_26
    move v2, v7

    .line 557
    const/16 v7, 0xf

    aget v8, v0, v7

    cmpl-float v8, v2, v8

    if-lez v8, :cond_32

    aget v8, v0, v7

    goto :goto_33

    :cond_32
    move v8, v2

    :goto_33
    move v2, v8

    .line 559
    aget v8, v0, v5

    cmpg-float v8, v1, v8

    if-gez v8, :cond_3d

    aget v5, v0, v5

    goto :goto_3e

    :cond_3d
    move v5, v1

    :goto_3e
    move v1, v5

    .line 560
    aget v5, v0, v6

    cmpg-float v5, v1, v5

    if-gez v5, :cond_48

    aget v5, v0, v6

    goto :goto_49

    :cond_48
    move v5, v1

    :goto_49
    move v1, v5

    .line 561
    aget v5, v0, v7

    cmpg-float v5, v1, v5

    if-gez v5, :cond_53

    aget v5, v0, v7

    goto :goto_54

    :cond_53
    move v5, v1

    :goto_54
    move v1, v5

    .line 563
    const/4 v5, 0x6

    aget v6, v0, v5

    cmpl-float v6, v4, v6

    if-lez v6, :cond_5f

    aget v6, v0, v5

    goto :goto_60

    :cond_5f
    move v6, v4

    :goto_60
    move v4, v6

    .line 564
    const/16 v6, 0xb

    aget v7, v0, v6

    cmpl-float v7, v4, v7

    if-lez v7, :cond_6c

    aget v7, v0, v6

    goto :goto_6d

    :cond_6c
    move v7, v4

    :goto_6d
    move v4, v7

    .line 565
    const/16 v7, 0x10

    aget v8, v0, v7

    cmpl-float v8, v4, v8

    if-lez v8, :cond_79

    aget v8, v0, v7

    goto :goto_7a

    :cond_79
    move v8, v4

    :goto_7a
    move v4, v8

    .line 567
    aget v8, v0, v5

    cmpg-float v8, v3, v8

    if-gez v8, :cond_84

    aget v5, v0, v5

    goto :goto_85

    :cond_84
    move v5, v3

    :goto_85
    move v3, v5

    .line 568
    aget v5, v0, v6

    cmpg-float v5, v3, v5

    if-gez v5, :cond_8f

    aget v5, v0, v6

    goto :goto_90

    :cond_8f
    move v5, v3

    :goto_90
    move v3, v5

    .line 569
    aget v5, v0, v7

    cmpg-float v5, v3, v5

    if-gez v5, :cond_9a

    aget v5, v0, v7

    goto :goto_9b

    :cond_9a
    move v5, v3

    :goto_9b
    move v3, v5

    .line 571
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    if-nez v5, :cond_a7

    new-instance v5, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 572
    :cond_a7
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v2, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 573
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v4, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 574
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v6, v1, v2

    iput v6, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 575
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v6, v3, v4

    iput v6, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 576
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v5
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 5

    .line 633
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    .line 634
    .local v0, "intBits":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 635
    .local v1, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v2, v0, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000  # 255.0f

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 636
    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 637
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 638
    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 639
    return-object v1
.end method

.method public getHeight()F
    .registers 2

    .line 605
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    return v0
.end method

.method public getOriginX()F
    .registers 2

    .line 611
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    return v0
.end method

.method public getOriginY()F
    .registers 2

    .line 617
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    return v0
.end method

.method public getRotation()F
    .registers 2

    .line 405
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 622
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 627
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    return v0
.end method

.method public getVertices()[F
    .registers 28

    .line 475
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v1, :cond_ae

    .line 476
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 478
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 479
    .local v2, "vertices":[F
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    neg-float v3, v3

    .line 480
    .local v3, "localX":F
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    neg-float v4, v4

    .line 481
    .local v4, "localY":F
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    add-float/2addr v5, v3

    .line 482
    .local v5, "localX2":F
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    add-float/2addr v6, v4

    .line 483
    .local v6, "localY2":F
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    sub-float/2addr v7, v3

    .line 484
    .local v7, "worldOriginX":F
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    sub-float/2addr v8, v4

    .line 485
    .local v8, "worldOriginY":F
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v10, 0x3f800000  # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2b

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_37

    .line 486
    :cond_2b
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    mul-float/2addr v3, v9

    .line 487
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    mul-float/2addr v4, v9

    .line 488
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    mul-float/2addr v5, v9

    .line 489
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    mul-float/2addr v6, v9

    .line 491
    :cond_37
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    const/16 v11, 0xf

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/16 v16, 0x1

    if-eqz v9, :cond_94

    .line 492
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v9

    .line 493
    .local v9, "cos":F
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v10

    .line 494
    .local v10, "sin":F
    mul-float v17, v3, v9

    .line 495
    .local v17, "localXCos":F
    mul-float v18, v3, v10

    .line 496
    .local v18, "localXSin":F
    mul-float v19, v4, v9

    .line 497
    .local v19, "localYCos":F
    mul-float v20, v4, v10

    .line 498
    .local v20, "localYSin":F
    mul-float v21, v5, v9

    .line 499
    .local v21, "localX2Cos":F
    mul-float v22, v5, v10

    .line 500
    .local v22, "localX2Sin":F
    mul-float v23, v6, v9

    .line 501
    .local v23, "localY2Cos":F
    mul-float v24, v6, v10

    .line 503
    .local v24, "localY2Sin":F
    sub-float v25, v17, v20

    add-float v25, v25, v7

    .line 504
    .local v25, "x1":F
    add-float v26, v19, v18

    add-float v26, v26, v8

    .line 505
    .local v26, "y1":F
    aput v25, v2, v1

    .line 506
    aput v26, v2, v16

    .line 508
    sub-float v1, v17, v24

    add-float/2addr v1, v7

    .line 509
    .local v1, "x2":F
    add-float v16, v23, v18

    add-float v16, v16, v8

    .line 510
    .local v16, "y2":F
    aput v1, v2, v15

    .line 511
    aput v16, v2, v14

    .line 513
    sub-float v14, v21, v24

    add-float/2addr v14, v7

    .line 514
    .local v14, "x3":F
    add-float v15, v23, v22

    add-float/2addr v15, v8

    .line 515
    .local v15, "y3":F
    aput v14, v2, v13

    .line 516
    aput v15, v2, v12

    .line 518
    sub-float v12, v14, v1

    add-float v12, v25, v12

    aput v12, v2, v11

    .line 519
    sub-float v11, v16, v26

    sub-float v11, v15, v11

    const/16 v12, 0x10

    aput v11, v2, v12

    .line 520
    .end local v1  # "x2":F
    .end local v9  # "cos":F
    .end local v10  # "sin":F
    .end local v14  # "x3":F
    .end local v15  # "y3":F
    .end local v16  # "y2":F
    .end local v17  # "localXCos":F
    .end local v18  # "localXSin":F
    .end local v19  # "localYCos":F
    .end local v20  # "localYSin":F
    .end local v21  # "localX2Cos":F
    .end local v22  # "localX2Sin":F
    .end local v23  # "localY2Cos":F
    .end local v24  # "localY2Sin":F
    .end local v25  # "x1":F
    .end local v26  # "y1":F
    goto :goto_ae

    .line 521
    :cond_94
    add-float v9, v3, v7

    .line 522
    .local v9, "x1":F
    add-float v10, v4, v8

    .line 523
    .local v10, "y1":F
    add-float v17, v5, v7

    .line 524
    .local v17, "x2":F
    add-float v18, v6, v8

    .line 526
    .local v18, "y2":F
    aput v9, v2, v1

    .line 527
    aput v10, v2, v16

    .line 529
    aput v9, v2, v15

    .line 530
    aput v18, v2, v14

    .line 532
    aput v17, v2, v13

    .line 533
    aput v18, v2, v12

    .line 535
    aput v17, v2, v11

    .line 536
    const/16 v1, 0x10

    aput v10, v2, v1

    .line 539
    .end local v2  # "vertices":[F
    .end local v3  # "localX":F
    .end local v4  # "localY":F
    .end local v5  # "localX2":F
    .end local v6  # "localY2":F
    .end local v7  # "worldOriginX":F
    .end local v8  # "worldOriginY":F
    .end local v9  # "x1":F
    .end local v10  # "y1":F
    .end local v17  # "x2":F
    .end local v18  # "y2":F
    :cond_ae
    :goto_ae
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    return-object v1
.end method

.method public getWidth()F
    .registers 2

    .line 600
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    return v0
.end method

.method public getX()F
    .registers 2

    .line 591
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 595
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    return v0
.end method

.method public rotate(F)V
    .registers 3
    .param p1, "degrees"  # F

    .line 411
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_6

    return-void

    .line 412
    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 414
    return-void
.end method

.method public rotate90(Z)V
    .registers 13
    .param p1, "clockwise"  # Z

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 421
    .local v0, "vertices":[F
    const/16 v1, 0x12

    const/16 v2, 0xd

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/16 v5, 0x13

    const/16 v6, 0xe

    const/16 v7, 0x9

    const/4 v8, 0x4

    if-eqz p1, :cond_33

    .line 422
    aget v9, v0, v8

    .line 423
    .local v9, "temp":F
    aget v10, v0, v5

    aput v10, v0, v8

    .line 424
    aget v8, v0, v6

    aput v8, v0, v5

    .line 425
    aget v5, v0, v7

    aput v5, v0, v6

    .line 426
    aput v9, v0, v7

    .line 428
    aget v5, v0, v4

    .line 429
    .end local v9  # "temp":F
    .local v5, "temp":F
    aget v6, v0, v1

    aput v6, v0, v4

    .line 430
    aget v4, v0, v2

    aput v4, v0, v1

    .line 431
    aget v1, v0, v3

    aput v1, v0, v2

    .line 432
    aput v5, v0, v3

    .line 433
    .end local v5  # "temp":F
    goto :goto_53

    .line 434
    :cond_33
    aget v9, v0, v8

    .line 435
    .restart local v9  # "temp":F
    aget v10, v0, v7

    aput v10, v0, v8

    .line 436
    aget v8, v0, v6

    aput v8, v0, v7

    .line 437
    aget v7, v0, v5

    aput v7, v0, v6

    .line 438
    aput v9, v0, v5

    .line 440
    aget v5, v0, v4

    .line 441
    .end local v9  # "temp":F
    .restart local v5  # "temp":F
    aget v6, v0, v3

    aput v6, v0, v4

    .line 442
    aget v4, v0, v2

    aput v4, v0, v3

    .line 443
    aget v3, v0, v1

    aput v3, v0, v2

    .line 444
    aput v5, v0, v1

    .line 446
    .end local v5  # "temp":F
    :goto_53
    return-void
.end method

.method public scale(F)V
    .registers 3
    .param p1, "amount"  # F

    .line 468
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 469
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 471
    return-void
.end method

.method public scroll(FF)V
    .registers 10
    .param p1, "xAmount"  # F
    .param p2, "yAmount"  # F

    .line 723
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 724
    .local v0, "vertices":[F
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v2, :cond_2b

    .line 725
    const/4 v2, 0x3

    aget v4, v0, v2

    add-float/2addr v4, p1

    rem-float/2addr v4, v3

    .line 726
    .local v4, "u":F
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v5, v4

    .line 727
    .local v5, "u2":F
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    .line 728
    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    .line 729
    aput v4, v0, v2

    .line 730
    const/16 v2, 0x8

    aput v4, v0, v2

    .line 731
    const/16 v2, 0xd

    aput v5, v0, v2

    .line 732
    const/16 v2, 0x12

    aput v5, v0, v2

    .line 734
    .end local v4  # "u":F
    .end local v5  # "u2":F
    :cond_2b
    cmpl-float v1, p2, v1

    if-eqz v1, :cond_51

    .line 735
    const/16 v1, 0x9

    aget v2, v0, v1

    add-float/2addr v2, p2

    rem-float/2addr v2, v3

    .line 736
    .local v2, "v":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 737
    .local v3, "v2":F
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    .line 738
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    .line 739
    const/4 v4, 0x4

    aput v3, v0, v4

    .line 740
    aput v2, v0, v1

    .line 741
    const/16 v1, 0xe

    aput v2, v0, v1

    .line 742
    const/16 v1, 0x13

    aput v3, v0, v1

    .line 744
    .end local v2  # "v":F
    .end local v3  # "v2":F
    :cond_51
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .registers 6
    .param p1, "sprite"  # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 107
    if-eqz p1, :cond_58

    .line 108
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 110
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    .line 111
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    .line 112
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    .line 113
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    .line 114
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 115
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 116
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 117
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 118
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->regionWidth:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->regionWidth:I

    .line 119
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->regionHeight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->regionHeight:I

    .line 120
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 121
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 122
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 123
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 124
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 126
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 127
    return-void

    .line 107
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sprite cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlpha(F)V
    .registers 5
    .param p1, "a"  # F

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    iput p1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 354
    .local v0, "color":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 355
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v2, 0x7

    aput v0, v1, v2

    .line 356
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v2, 0xc

    aput v0, v1, v2

    .line 357
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v2, 0x11

    aput v0, v1, v2

    .line 358
    return-void
.end method

.method public setBounds(FFFF)V
    .registers 10
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "width"  # F
    .param p4, "height"  # F

    .line 132
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 133
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 134
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 135
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 137
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_d

    return-void

    .line 138
    :cond_d
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_46

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_46

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_24

    goto :goto_46

    .line 143
    :cond_24
    add-float v0, p1, p3

    .line 144
    .local v0, "x2":F
    add-float v2, p2, p4

    .line 145
    .local v2, "y2":F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 146
    .local v3, "vertices":[F
    const/4 v4, 0x0

    aput p1, v3, v4

    .line 147
    aput p2, v3, v1

    .line 149
    const/4 v1, 0x5

    aput p1, v3, v1

    .line 150
    const/4 v1, 0x6

    aput v2, v3, v1

    .line 152
    const/16 v1, 0xa

    aput v0, v3, v1

    .line 153
    const/16 v1, 0xb

    aput v2, v3, v1

    .line 155
    const/16 v1, 0xf

    aput v0, v3, v1

    .line 156
    const/16 v1, 0x10

    aput p2, v3, v1

    .line 157
    return-void

    .line 139
    .end local v0  # "x2":F
    .end local v2  # "y2":F
    .end local v3  # "vertices":[F
    :cond_46
    :goto_46
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 140
    return-void
.end method

.method public setCenter(FF)V
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 274
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v2, v1

    sub-float v1, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    .line 275
    return-void
.end method

.method public setCenterX(F)V
    .registers 4
    .param p1, "x"  # F

    .line 264
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setX(F)V

    .line 265
    return-void
.end method

.method public setCenterY(F)V
    .registers 4
    .param p1, "y"  # F

    .line 269
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setY(F)V

    .line 270
    return-void
.end method

.method public setColor(FFFF)V
    .registers 8
    .param p1, "r"  # F
    .param p2, "g"  # F
    .param p3, "b"  # F
    .param p4, "a"  # F

    .line 362
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 364
    .local v0, "color":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 365
    .local v1, "vertices":[F
    const/4 v2, 0x2

    aput v0, v1, v2

    .line 366
    const/4 v2, 0x7

    aput v0, v1, v2

    .line 367
    const/16 v2, 0xc

    aput v0, v1, v2

    .line 368
    const/16 v2, 0x11

    aput v0, v1, v2

    .line 369
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 5
    .param p1, "tint"  # Lcom/badlogic/gdx/graphics/Color;

    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 342
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 343
    .local v0, "color":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 344
    .local v1, "vertices":[F
    const/4 v2, 0x2

    aput v0, v1, v2

    .line 345
    const/4 v2, 0x7

    aput v0, v1, v2

    .line 346
    const/16 v2, 0xc

    aput v0, v1, v2

    .line 347
    const/16 v2, 0x11

    aput v0, v1, v2

    .line 348
    return-void
.end method

.method public setFlip(ZZ)V
    .registers 6
    .param p1, "x"  # Z
    .param p2, "y"  # Z

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "performX":Z
    const/4 v1, 0x0

    .line 689
    .local v1, "performY":Z
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->isFlipX()Z

    move-result v2

    if-eq v2, p1, :cond_9

    .line 690
    const/4 v0, 0x1

    .line 692
    :cond_9
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->isFlipY()Z

    move-result v2

    if-eq v2, p2, :cond_10

    .line 693
    const/4 v1, 0x1

    .line 695
    :cond_10
    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    .line 696
    return-void
.end method

.method public setOrigin(FF)V
    .registers 4
    .param p1, "originX"  # F
    .param p2, "originY"  # F

    .line 385
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 386
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 388
    return-void
.end method

.method public setOriginBasedPosition(FF)V
    .registers 5
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    .line 220
    return-void
.end method

.method public setOriginCenter()V
    .registers 3

    .line 392
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 393
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 395
    return-void
.end method

.method public setPackedColor(F)V
    .registers 4
    .param p1, "packedColor"  # F

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 377
    .local v0, "vertices":[F
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 378
    const/4 v1, 0x7

    aput p1, v0, v1

    .line 379
    const/16 v1, 0xc

    aput p1, v0, v1

    .line 380
    const/16 v1, 0x11

    aput p1, v0, v1

    .line 381
    return-void
.end method

.method public setPosition(FF)V
    .registers 8
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 192
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 193
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 195
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_9

    return-void

    .line 196
    :cond_9
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_44

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_44

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_20

    goto :goto_44

    .line 201
    :cond_20
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    add-float/2addr v0, p1

    .line 202
    .local v0, "x2":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    add-float/2addr v2, p2

    .line 203
    .local v2, "y2":F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 204
    .local v3, "vertices":[F
    const/4 v4, 0x0

    aput p1, v3, v4

    .line 205
    aput p2, v3, v1

    .line 207
    const/4 v1, 0x5

    aput p1, v3, v1

    .line 208
    const/4 v1, 0x6

    aput v2, v3, v1

    .line 210
    const/16 v1, 0xa

    aput v0, v3, v1

    .line 211
    const/16 v1, 0xb

    aput v2, v3, v1

    .line 213
    const/16 v1, 0xf

    aput v0, v3, v1

    .line 214
    const/16 v1, 0x10

    aput p2, v3, v1

    .line 215
    return-void

    .line 197
    .end local v0  # "x2":F
    .end local v2  # "y2":F
    .end local v3  # "vertices":[F
    :cond_44
    :goto_44
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 198
    return-void
.end method

.method public setRegion(FFFF)V
    .registers 7
    .param p1, "u"  # F
    .param p2, "v"  # F
    .param p3, "u2"  # F
    .param p4, "v2"  # F

    .line 643
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 645
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 646
    .local v0, "vertices":[F
    const/4 v1, 0x3

    aput p1, v0, v1

    .line 647
    const/4 v1, 0x4

    aput p4, v0, v1

    .line 649
    const/16 v1, 0x8

    aput p1, v0, v1

    .line 650
    const/16 v1, 0x9

    aput p2, v0, v1

    .line 652
    const/16 v1, 0xd

    aput p3, v0, v1

    .line 653
    const/16 v1, 0xe

    aput p2, v0, v1

    .line 655
    const/16 v1, 0x12

    aput p3, v0, v1

    .line 656
    const/16 v1, 0x13

    aput p4, v0, v1

    .line 657
    return-void
.end method

.method public setRotation(F)V
    .registers 3
    .param p1, "degrees"  # F

    .line 399
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 401
    return-void
.end method

.method public setScale(F)V
    .registers 3
    .param p1, "scaleXY"  # F

    .line 451
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 452
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 454
    return-void
.end method

.method public setScale(FF)V
    .registers 4
    .param p1, "scaleX"  # F
    .param p2, "scaleY"  # F

    .line 459
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 460
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 462
    return-void
.end method

.method public setSize(FF)V
    .registers 9
    .param p1, "width"  # F
    .param p2, "height"  # F

    .line 163
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 164
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 166
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_9

    return-void

    .line 167
    :cond_9
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_4c

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4c

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_20

    goto :goto_4c

    .line 172
    :cond_20
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float/2addr v0, p1

    .line 173
    .local v0, "x2":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float/2addr v2, p2

    .line 174
    .local v2, "y2":F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 175
    .local v3, "vertices":[F
    const/4 v4, 0x0

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    aput v5, v3, v4

    .line 176
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    aput v4, v3, v1

    .line 178
    const/4 v1, 0x5

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    aput v4, v3, v1

    .line 179
    const/4 v1, 0x6

    aput v2, v3, v1

    .line 181
    const/16 v1, 0xa

    aput v0, v3, v1

    .line 182
    const/16 v1, 0xb

    aput v2, v3, v1

    .line 184
    const/16 v1, 0xf

    aput v0, v3, v1

    .line 185
    const/16 v1, 0x10

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    aput v4, v3, v1

    .line 186
    return-void

    .line 168
    .end local v0  # "x2":F
    .end local v2  # "y2":F
    .end local v3  # "vertices":[F
    :cond_4c
    :goto_4c
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 169
    return-void
.end method

.method public setU(F)V
    .registers 4
    .param p1, "u"  # F

    .line 660
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    .line 661
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 662
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x8

    aput p1, v0, v1

    .line 663
    return-void
.end method

.method public setU2(F)V
    .registers 4
    .param p1, "u2"  # F

    .line 672
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU2(F)V

    .line 673
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0xd

    aput p1, v0, v1

    .line 674
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x12

    aput p1, v0, v1

    .line 675
    return-void
.end method

.method public setV(F)V
    .registers 4
    .param p1, "v"  # F

    .line 666
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    .line 667
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x9

    aput p1, v0, v1

    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0xe

    aput p1, v0, v1

    .line 669
    return-void
.end method

.method public setV2(F)V
    .registers 4
    .param p1, "v2"  # F

    .line 678
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    .line 679
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 680
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x13

    aput p1, v0, v1

    .line 681
    return-void
.end method

.method public setX(F)V
    .registers 5
    .param p1, "x"  # F

    .line 226
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 228
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_7

    return-void

    .line 229
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_31

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_31

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1d

    goto :goto_31

    .line 234
    :cond_1d
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    add-float/2addr v0, p1

    .line 235
    .local v0, "x2":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 236
    .local v1, "vertices":[F
    const/4 v2, 0x0

    aput p1, v1, v2

    .line 237
    const/4 v2, 0x5

    aput p1, v1, v2

    .line 238
    const/16 v2, 0xa

    aput v0, v1, v2

    .line 239
    const/16 v2, 0xf

    aput v0, v1, v2

    .line 240
    return-void

    .line 230
    .end local v0  # "x2":F
    .end local v1  # "vertices":[F
    :cond_31
    :goto_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 231
    return-void
.end method

.method public setY(F)V
    .registers 5
    .param p1, "y"  # F

    .line 246
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 248
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_7

    return-void

    .line 249
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_31

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_31

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1e

    goto :goto_31

    .line 254
    :cond_1e
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    add-float/2addr v0, p1

    .line 255
    .local v0, "y2":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 256
    .local v2, "vertices":[F
    aput p1, v2, v1

    .line 257
    const/4 v1, 0x6

    aput v0, v2, v1

    .line 258
    const/16 v1, 0xb

    aput v0, v2, v1

    .line 259
    const/16 v1, 0x10

    aput p1, v2, v1

    .line 260
    return-void

    .line 250
    .end local v0  # "y2":F
    .end local v2  # "vertices":[F
    :cond_31
    :goto_31
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 251
    return-void
.end method

.method public translate(FF)V
    .registers 7
    .param p1, "xAmount"  # F
    .param p2, "yAmount"  # F

    .line 316
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 317
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 319
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_f

    return-void

    .line 320
    :cond_f
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_5c

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5c

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_26

    goto :goto_5c

    .line 325
    :cond_26
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 326
    .local v0, "vertices":[F
    const/4 v2, 0x0

    aget v3, v0, v2

    add-float/2addr v3, p1

    aput v3, v0, v2

    .line 327
    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 329
    const/4 v1, 0x5

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 330
    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 332
    const/16 v1, 0xa

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 333
    const/16 v1, 0xb

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 335
    const/16 v1, 0xf

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 336
    const/16 v1, 0x10

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 337
    return-void

    .line 321
    .end local v0  # "vertices":[F
    :cond_5c
    :goto_5c
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 322
    return-void
.end method

.method public translateX(F)V
    .registers 5
    .param p1, "xAmount"  # F

    .line 280
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 282
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_a

    return-void

    .line 283
    :cond_a
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3d

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3d

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_20

    goto :goto_3d

    .line 288
    :cond_20
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 289
    .local v0, "vertices":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 290
    const/4 v1, 0x5

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 291
    const/16 v1, 0xa

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 292
    const/16 v1, 0xf

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 293
    return-void

    .line 284
    .end local v0  # "vertices":[F
    :cond_3d
    :goto_3d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 285
    return-void
.end method

.method public translateY(F)V
    .registers 5
    .param p1, "yAmount"  # F

    .line 298
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 300
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_a

    return-void

    .line 301
    :cond_a
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_3d

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3d

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_21

    goto :goto_3d

    .line 306
    :cond_21
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 307
    .local v0, "vertices":[F
    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 308
    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 309
    const/16 v1, 0xb

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 310
    const/16 v1, 0x10

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 311
    return-void

    .line 302
    .end local v0  # "vertices":[F
    :cond_3d
    :goto_3d
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 303
    return-void
.end method
