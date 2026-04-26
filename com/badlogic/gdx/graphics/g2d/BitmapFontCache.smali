.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
.super Ljava/lang/Object;
.source "BitmapFontCache.java"


# static fields
.field private static final tempColor:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private currentTint:F

.field private final font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private glyphCount:I

.field private idx:[I

.field private integer:Z

.field private final layouts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;",
            ">;"
        }
    .end annotation
.end field

.field private pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

.field private pageVertices:[[F

.field private final pooledLayouts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;",
            ">;"
        }
    .end annotation
.end field

.field private tempGlyphCount:[I

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V
    .registers 3
    .param p1, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 58
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->usesIntegerPositions()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V
    .registers 8
    .param p1, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "integer"  # Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->layouts:Lcom/badlogic/gdx/utils/Array;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pooledLayouts:Lcom/badlogic/gdx/utils/Array;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 63
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 64
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    .line 66
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 67
    .local v0, "pageCount":I
    if-eqz v0, :cond_4a

    .line 69
    new-array v1, v0, [[F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    .line 70
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    .line 71
    const/4 v1, 0x1

    if-le v0, v1, :cond_45

    .line 73
    new-array v1, v0, [Lcom/badlogic/gdx/utils/IntArray;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    array-length v2, v2

    .local v2, "n":I
    :goto_37
    if-ge v1, v2, :cond_45

    .line 75
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    new-instance v4, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    aput-object v4, v3, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 77
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_45
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempGlyphCount:[I

    .line 78
    return-void

    .line 67
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified font must contain at least one texture page."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFF)V
    .registers 23
    .param p1, "glyph"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "color"  # F

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .local v2, "scaleX":F
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .line 388
    .local v3, "scaleY":F
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float v4, p2, v4

    .line 389
    .end local p2  # "x":F
    .local v4, "x":F
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float v5, p3, v5

    .line 390
    .end local p3  # "y":F
    .local v5, "y":F
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    .local v6, "width":F
    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    .line 391
    .local v7, "height":F
    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    .local v8, "u":F
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    .local v9, "u2":F
    iget v10, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    .local v10, "v":F
    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    .line 393
    .local v11, "v2":F
    iget-boolean v12, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    if-eqz v12, :cond_44

    .line 394
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v4, v12

    .line 395
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v5, v12

    .line 396
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v6, v12

    .line 397
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v7, v12

    .line 399
    :cond_44
    add-float v12, v4, v6

    .local v12, "x2":F
    add-float v13, v5, v7

    .line 401
    .local v13, "y2":F
    iget v14, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    .line 402
    .local v14, "page":I
    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v15, v15, v14

    .line 403
    .local v15, "idx":I
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v16, v1, v14

    add-int/lit8 v16, v16, 0x14

    aput v16, v1, v14

    .line 405
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v1, :cond_6c

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v1, v1, v14

    move/from16 v16, v2

    .end local v2  # "scaleX":F
    .local v16, "scaleX":F
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphCount:I

    move/from16 v17, v3

    .end local v3  # "scaleY":F
    .local v17, "scaleY":F
    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphCount:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_70

    .end local v16  # "scaleX":F
    .end local v17  # "scaleY":F
    .restart local v2  # "scaleX":F
    .restart local v3  # "scaleY":F
    :cond_6c
    move/from16 v16, v2

    move/from16 v17, v3

    .line 407
    .end local v2  # "scaleX":F
    .end local v3  # "scaleY":F
    .restart local v16  # "scaleX":F
    .restart local v17  # "scaleY":F
    :goto_70
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v1, v1, v14

    .line 408
    .local v1, "vertices":[F
    add-int/lit8 v2, v15, 0x1

    .end local v15  # "idx":I
    .local v2, "idx":I
    aput v4, v1, v15

    .line 409
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "idx":I
    .local v3, "idx":I
    aput v5, v1, v2

    .line 410
    add-int/lit8 v2, v3, 0x1

    .end local v3  # "idx":I
    .restart local v2  # "idx":I
    aput p4, v1, v3

    .line 411
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "idx":I
    .restart local v3  # "idx":I
    aput v8, v1, v2

    .line 412
    add-int/lit8 v2, v3, 0x1

    .end local v3  # "idx":I
    .restart local v2  # "idx":I
    aput v10, v1, v3

    .line 414
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "idx":I
    .restart local v3  # "idx":I
    aput v4, v1, v2

    .line 415
    add-int/lit8 v2, v3, 0x1

    .end local v3  # "idx":I
    .restart local v2  # "idx":I
    aput v13, v1, v3

    .line 416
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "idx":I
    .restart local v3  # "idx":I
    aput p4, v1, v2

    .line 417
    add-int/lit8 v2, v3, 0x1

    .end local v3  # "idx":I
    .restart local v2  # "idx":I
    aput v8, v1, v3

    .line 418
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "idx":I
    .restart local v3  # "idx":I
    aput v11, v1, v2

    .line 420
    add-int/lit8 v2, v3, 0x1

    .end local v3  # "idx":I
    .restart local v2  # "idx":I
    aput v12, v1, v3

    .line 421
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "idx":I
    .restart local v3  # "idx":I
    aput v13, v1, v2

    .line 422
    add-int/lit8 v2, v3, 0x1

    .end local v3  # "idx":I
    .restart local v2  # "idx":I
    aput p4, v1, v3

    .line 423
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "idx":I
    .restart local v3  # "idx":I
    aput v9, v1, v2

    .line 424
    add-int/lit8 v2, v3, 0x1

    .end local v3  # "idx":I
    .restart local v2  # "idx":I
    aput v11, v1, v3

    .line 426
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "idx":I
    .restart local v3  # "idx":I
    aput v12, v1, v2

    .line 427
    add-int/lit8 v2, v3, 0x1

    .end local v3  # "idx":I
    .restart local v2  # "idx":I
    aput v5, v1, v3

    .line 428
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "idx":I
    .restart local v3  # "idx":I
    aput p4, v1, v2

    .line 429
    add-int/lit8 v2, v3, 0x1

    .end local v3  # "idx":I
    .restart local v2  # "idx":I
    aput v9, v1, v3

    .line 430
    aput v10, v1, v2

    .line 431
    return-void
.end method

.method private addToCache(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V
    .registers 19
    .param p1, "layout"  # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 345
    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 346
    .local v2, "pageCount":I
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v3, v3

    if-ge v3, v2, :cond_4c

    .line 347
    new-array v3, v2, [[F

    .line 348
    .local v3, "newPageVertices":[[F
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    iput-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    .line 351
    new-array v4, v2, [I

    .line 352
    .local v4, "newIdx":[I
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    array-length v7, v7

    invoke-static {v5, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iput-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    .line 355
    new-array v5, v2, [Lcom/badlogic/gdx/utils/IntArray;

    .line 356
    .local v5, "newPageGlyphIndices":[Lcom/badlogic/gdx/utils/IntArray;
    const/4 v7, 0x0

    .line 357
    .local v7, "pageGlyphIndicesLength":I
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v8, :cond_39

    .line 358
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    array-length v7, v8

    .line 359
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    array-length v9, v9

    invoke-static {v8, v6, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    :cond_39
    move v6, v7

    .local v6, "i":I
    :goto_3a
    if-ge v6, v2, :cond_46

    .line 362
    new-instance v8, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v8}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    aput-object v8, v5, v6

    .line 361
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 363
    .end local v6  # "i":I
    :cond_46
    iput-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    .line 365
    new-array v6, v2, [I

    iput-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempGlyphCount:[I

    .line 368
    .end local v3  # "newPageVertices":[[F
    .end local v4  # "newIdx":[I
    .end local v5  # "newPageGlyphIndices":[Lcom/badlogic/gdx/utils/IntArray;
    .end local v7  # "pageGlyphIndicesLength":I
    :cond_4c
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->layouts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 369
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->requireGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;)V

    .line 370
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_59
    if-ge v3, v4, :cond_8e

    .line 371
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 372
    .local v5, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 373
    .local v6, "glyphs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    iget-object v7, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 374
    .local v7, "xAdvances":Lcom/badlogic/gdx/utils/FloatArray;
    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    .line 375
    .local v8, "color":F
    iget v9, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    add-float v9, p2, v9

    .local v9, "gx":F
    iget v10, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    add-float v10, p3, v10

    .line 376
    .local v10, "gy":F
    const/4 v11, 0x0

    .local v11, "ii":I
    iget v12, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v12, "nn":I
    :goto_78
    if-ge v11, v12, :cond_8b

    .line 377
    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 378
    .local v13, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    invoke-virtual {v7, v11}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v14

    add-float/2addr v9, v14

    .line 379
    invoke-direct {p0, v13, v9, v10, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFF)V

    .line 376
    .end local v13  # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    add-int/lit8 v11, v11, 0x1

    goto :goto_78

    .line 370
    .end local v5  # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v6  # "glyphs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    .end local v7  # "xAdvances":Lcom/badlogic/gdx/utils/FloatArray;
    .end local v8  # "color":F
    .end local v9  # "gx":F
    .end local v10  # "gy":F
    .end local v11  # "ii":I
    .end local v12  # "nn":I
    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 383
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_8e
    sget v3, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->currentTint:F

    .line 384
    return-void
.end method

.method private requireGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;)V
    .registers 11
    .param p1, "layout"  # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 304
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "newGlyphCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_d
    if-ge v2, v3, :cond_1f

    .line 308
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v0, v4

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 309
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_1f
    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->requirePageGlyphs(II)V

    .line 310
    .end local v0  # "newGlyphCount":I
    goto :goto_63

    .line 311
    :cond_23
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempGlyphCount:[I

    .line 312
    .local v0, "tempGlyphCount":[I
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v0

    .local v4, "n":I
    :goto_27
    if-ge v3, v4, :cond_2e

    .line 313
    aput v1, v0, v3

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 315
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_2e
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_33
    if-ge v1, v3, :cond_57

    .line 316
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 317
    .local v4, "glyphs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    const/4 v5, 0x0

    .local v5, "ii":I
    iget v6, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v6, "nn":I
    :goto_42
    if-ge v5, v6, :cond_54

    .line 318
    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    aget v8, v0, v7

    add-int/2addr v8, v2

    aput v8, v0, v7

    .line 317
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 315
    .end local v4  # "glyphs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    .end local v5  # "ii":I
    .end local v6  # "nn":I
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 321
    .end local v1  # "i":I
    .end local v3  # "n":I
    :cond_57
    const/4 v1, 0x0

    .restart local v1  # "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_59
    if-ge v1, v2, :cond_63

    .line 322
    aget v3, v0, v1

    invoke-direct {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->requirePageGlyphs(II)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 324
    .end local v0  # "tempGlyphCount":[I
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_63
    :goto_63
    return-void
.end method

.method private requirePageGlyphs(II)V
    .registers 8
    .param p1, "page"  # I
    .param p2, "glyphCount"  # I

    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v0, :cond_1c

    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v0, v0

    if-le p2, v0, :cond_1c

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->ensureCapacity(I)[I

    .line 332
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v0, v0, p1

    mul-int/lit8 v1, p2, 0x14

    add-int/2addr v0, v1

    .line 333
    .local v0, "vertexCount":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v1, v1, p1

    .line 334
    .local v1, "vertices":[F
    if-nez v1, :cond_30

    .line 335
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    new-array v3, v0, [F

    aput-object v3, v2, p1

    goto :goto_41

    .line 336
    :cond_30
    array-length v2, v1

    if-ge v2, v0, :cond_41

    .line 337
    new-array v2, v0, [F

    .line 338
    .local v2, "newVertices":[F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v3, v3, p1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aput-object v2, v3, p1

    .line 341
    .end local v2  # "newVertices":[F
    :cond_41
    :goto_41
    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 14
    .param p1, "str"  # Ljava/lang/CharSequence;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 473
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v0

    return-object v0
.end method

.method public addText(Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 17
    .param p1, "str"  # Ljava/lang/CharSequence;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "targetWidth"  # F
    .param p5, "halign"  # I
    .param p6, "wrap"  # Z

    .line 479
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v0

    return-object v0
.end method

.method public addText(Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 19
    .param p1, "str"  # Ljava/lang/CharSequence;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "start"  # I
    .param p5, "end"  # I
    .param p6, "targetWidth"  # F
    .param p7, "halign"  # I
    .param p8, "wrap"  # Z

    .line 486
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v0

    return-object v0
.end method

.method public addText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 22
    .param p1, "str"  # Ljava/lang/CharSequence;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "start"  # I
    .param p5, "end"  # I
    .param p6, "targetWidth"  # F
    .param p7, "halign"  # I
    .param p8, "wrap"  # Z
    .param p9, "truncate"  # Ljava/lang/String;

    .line 502
    move-object v0, p0

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 503
    .local v1, "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pooledLayouts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 504
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, v1

    move-object v4, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    .line 505
    move v2, p2

    move v3, p3

    invoke-virtual {p0, v1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V

    .line 506
    return-object v1
.end method

.method public addText(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V
    .registers 5
    .param p1, "layout"  # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 511
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float/2addr v0, p3

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addToCache(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V

    .line 512
    return-void
.end method

.method public clear()V
    .registers 5

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    .line 293
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pooledLayouts:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Pools;->freeAll(Lcom/badlogic/gdx/utils/Array;Z)V

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pooledLayouts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->layouts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    array-length v1, v1

    .local v1, "n":I
    :goto_19
    if-ge v0, v1, :cond_2e

    .line 298
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 299
    :cond_26
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 301
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_2e
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .registers 9
    .param p1, "spriteBatch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 233
    .local v0, "regions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureRegion;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v2, v2

    .local v2, "n":I
    :goto_a
    if-ge v1, v2, :cond_2b

    .line 234
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v3, v3, v1

    if-lez v3, :cond_28

    .line 235
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v3, v3, v1

    .line 236
    .local v3, "vertices":[F
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v5, v5, v1

    const/4 v6, 0x0

    invoke-interface {p1, v4, v3, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 233
    .end local v3  # "vertices":[F
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 239
    .end local v1  # "j":I
    .end local v2  # "n":I
    :cond_2b
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 6
    .param p1, "spriteBatch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "alphaModulation"  # F

    .line 277
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    .line 278
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 279
    return-void

    .line 281
    :cond_a
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 282
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 283
    .local v1, "oldAlpha":F
    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, p2

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 284
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(Lcom/badlogic/gdx/graphics/Color;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 286
    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 287
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(Lcom/badlogic/gdx/graphics/Color;)V

    .line 288
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;II)V
    .registers 14
    .param p1, "spriteBatch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "start"  # I
    .param p3, "end"  # I

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    mul-int/lit8 v2, p2, 0x14

    sub-int v3, p3, p2

    mul-int/lit8 v3, v3, 0x14

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 244
    return-void

    .line 248
    :cond_1f
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 249
    .local v0, "regions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureRegion;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v2, v2

    .local v2, "pageCount":I
    :goto_29
    if-ge v1, v2, :cond_67

    .line 250
    const/4 v3, -0x1

    .local v3, "offset":I
    const/4 v4, 0x0

    .line 253
    .local v4, "count":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v5, v5, v1

    .line 254
    .local v5, "glyphIndices":Lcom/badlogic/gdx/utils/IntArray;
    const/4 v6, 0x0

    .local v6, "ii":I
    iget v7, v5, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v7, "n":I
    :goto_34
    const/4 v8, -0x1

    if-ge v6, v7, :cond_4a

    .line 255
    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v9

    .line 258
    .local v9, "glyphIndex":I
    if-lt v9, p3, :cond_3e

    goto :goto_4a

    .line 261
    :cond_3e
    if-ne v3, v8, :cond_43

    if-lt v9, p2, :cond_43

    move v3, v6

    .line 264
    :cond_43
    if-lt v9, p2, :cond_47

    .line 265
    add-int/lit8 v4, v4, 0x1

    .line 254
    .end local v9  # "glyphIndex":I
    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 269
    .end local v6  # "ii":I
    .end local v7  # "n":I
    :cond_4a
    :goto_4a
    if-eq v3, v8, :cond_64

    if-nez v4, :cond_4f

    goto :goto_64

    .line 272
    :cond_4f
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v7, v7, v1

    mul-int/lit8 v8, v3, 0x14

    mul-int/lit8 v9, v4, 0x14

    invoke-interface {p1, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 249
    .end local v3  # "offset":I
    .end local v4  # "count":I
    .end local v5  # "glyphIndices":Lcom/badlogic/gdx/utils/IntArray;
    :cond_64
    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 274
    .end local v1  # "i":I
    .end local v2  # "pageCount":I
    :cond_67
    return-void
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .registers 2

    .line 525
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method public getLayouts()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;",
            ">;"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->layouts:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getVertexCount(I)I
    .registers 3
    .param p1, "page"  # I

    .line 548
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v0, v0, p1

    return v0
.end method

.method public getVertices()[F
    .registers 2

    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getVertices(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getVertices(I)[F
    .registers 3
    .param p1, "page"  # I

    .line 544
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getX()F
    .registers 2

    .line 516
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 521
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    return v0
.end method

.method public setAlphas(F)V
    .registers 13
    .param p1, "alpha"  # F

    .line 140
    const/high16 v0, 0x437e0000  # 254.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    .line 141
    .local v0, "alphaBits":I
    const/4 v1, 0x0

    .local v1, "prev":F
    const/4 v2, 0x0

    .line 142
    .local v2, "newColor":F
    const/4 v3, 0x0

    .local v3, "j":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v4, v4

    .local v4, "length":I
    :goto_c
    if-ge v3, v4, :cond_3c

    .line 143
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v5, v5, v3

    .line 144
    .local v5, "vertices":[F
    const/4 v6, 0x2

    .local v6, "i":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v7, v7, v3

    .local v7, "n":I
    :goto_17
    if-ge v6, v7, :cond_39

    .line 145
    aget v8, v5, v6

    .line 146
    .local v8, "c":F
    cmpl-float v9, v8, v1

    if-nez v9, :cond_25

    const/4 v9, 0x2

    if-eq v6, v9, :cond_25

    .line 147
    aput v2, v5, v6

    goto :goto_36

    .line 149
    :cond_25
    move v1, v8

    .line 150
    invoke-static {v8}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v9

    .line 151
    .local v9, "rgba":I
    const v10, 0xffffff

    and-int/2addr v10, v9

    or-int v9, v10, v0

    .line 152
    invoke-static {v9}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v2

    .line 153
    aput v2, v5, v6

    .line 144
    .end local v8  # "c":F
    .end local v9  # "rgba":I
    :goto_36
    add-int/lit8 v6, v6, 0x5

    goto :goto_17

    .line 142
    .end local v5  # "vertices":[F
    .end local v6  # "i":I
    .end local v7  # "n":I
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 157
    .end local v3  # "j":I
    .end local v4  # "length":I
    :cond_3c
    return-void
.end method

.method public setColor(FFFF)V
    .registers 6
    .param p1, "r"  # F
    .param p2, "g"  # F
    .param p3, "b"  # F
    .param p4, "a"  # F

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 229
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3
    .param p1, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 224
    return-void
.end method

.method public setColors(F)V
    .registers 7
    .param p1, "color"  # F

    .line 161
    const/4 v0, 0x0

    .local v0, "j":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v1, v1

    .local v1, "length":I
    :goto_4
    if-ge v0, v1, :cond_19

    .line 162
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v2, v2, v0

    .line 163
    .local v2, "vertices":[F
    const/4 v3, 0x2

    .local v3, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v4, v4, v0

    .local v4, "n":I
    :goto_f
    if-ge v3, v4, :cond_16

    .line 164
    aput p1, v2, v3

    .line 163
    add-int/lit8 v3, v3, 0x5

    goto :goto_f

    .line 161
    .end local v2  # "vertices":[F
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 166
    .end local v0  # "j":I
    .end local v1  # "length":I
    :cond_19
    return-void
.end method

.method public setColors(FFFF)V
    .registers 8
    .param p1, "r"  # F
    .param p2, "g"  # F
    .param p3, "b"  # F
    .param p4, "a"  # F

    .line 175
    const/high16 v0, 0x437f0000  # 255.0f

    mul-float v1, p4, v0

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    mul-float v2, p3, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    mul-float v2, p2, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    or-int/2addr v0, v1

    .line 176
    .local v0, "intBits":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(F)V

    .line 177
    return-void
.end method

.method public setColors(FII)V
    .registers 13
    .param p1, "color"  # F
    .param p2, "start"  # I
    .param p3, "end"  # I

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 190
    .local v0, "vertices":[F
    mul-int/lit8 v2, p2, 0x14

    add-int/lit8 v2, v2, 0x2

    .local v2, "i":I
    mul-int/lit8 v3, p3, 0x14

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v1, v4, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "n":I
    :goto_19
    if-ge v2, v1, :cond_20

    .line 191
    aput p1, v0, v2

    .line 190
    add-int/lit8 v2, v2, 0x5

    goto :goto_19

    .line 192
    .end local v1  # "n":I
    .end local v2  # "i":I
    :cond_20
    return-void

    .line 195
    .end local v0  # "vertices":[F
    :cond_21
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    array-length v0, v0

    .line 196
    .local v0, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v0, :cond_52

    .line 197
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v2, v2, v1

    .line 198
    .local v2, "vertices":[F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageGlyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v3, v3, v1

    .line 200
    .local v3, "glyphIndices":Lcom/badlogic/gdx/utils/IntArray;
    const/4 v4, 0x0

    .local v4, "j":I
    iget v5, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v5, "n":I
    :goto_32
    if-ge v4, v5, :cond_4f

    .line 201
    iget-object v6, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v6, v6, v4

    .line 204
    .local v6, "glyphIndex":I
    if-lt v6, p3, :cond_3b

    goto :goto_4f

    .line 207
    :cond_3b
    if-lt v6, p2, :cond_4c

    .line 208
    const/4 v7, 0x0

    .local v7, "off":I
    :goto_3e
    const/16 v8, 0x14

    if-ge v7, v8, :cond_4c

    .line 209
    mul-int/lit8 v8, v4, 0x14

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    aput p1, v2, v8

    .line 208
    add-int/lit8 v7, v7, 0x5

    goto :goto_3e

    .line 200
    .end local v6  # "glyphIndex":I
    .end local v7  # "off":I
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 196
    .end local v2  # "vertices":[F
    .end local v3  # "glyphIndices":Lcom/badlogic/gdx/utils/IntArray;
    .end local v4  # "j":I
    .end local v5  # "n":I
    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 213
    .end local v1  # "i":I
    :cond_52
    return-void
.end method

.method public setColors(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3
    .param p1, "tint"  # Lcom/badlogic/gdx/graphics/Color;

    .line 170
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(F)V

    .line 171
    return-void
.end method

.method public setColors(Lcom/badlogic/gdx/graphics/Color;II)V
    .registers 5
    .param p1, "tint"  # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "start"  # I
    .param p3, "end"  # I

    .line 182
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(FII)V

    .line 183
    return-void
.end method

.method public setPosition(FF)V
    .registers 5
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 84
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->translate(FF)V

    .line 85
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 13
    .param p1, "str"  # Ljava/lang/CharSequence;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 436
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 437
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 16
    .param p1, "str"  # Ljava/lang/CharSequence;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "targetWidth"  # F
    .param p5, "halign"  # I
    .param p6, "wrap"  # Z

    .line 443
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 444
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 10
    .param p1, "str"  # Ljava/lang/CharSequence;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "start"  # I
    .param p5, "end"  # I
    .param p6, "targetWidth"  # F
    .param p7, "halign"  # I
    .param p8, "wrap"  # Z

    .line 451
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 452
    invoke-virtual/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 11
    .param p1, "str"  # Ljava/lang/CharSequence;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "start"  # I
    .param p5, "end"  # I
    .param p6, "targetWidth"  # F
    .param p7, "halign"  # I
    .param p8, "wrap"  # Z
    .param p9, "truncate"  # Ljava/lang/String;

    .line 459
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 460
    invoke-virtual/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v0

    return-object v0
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V
    .registers 4
    .param p1, "layout"  # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 466
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 467
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V

    .line 468
    return-void
.end method

.method public setUseIntegerPositions(Z)V
    .registers 2
    .param p1, "use"  # Z

    .line 531
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    .line 532
    return-void
.end method

.method public tint(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 22
    .param p1, "tint"  # Lcom/badlogic/gdx/graphics/Color;

    .line 111
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    .line 112
    .local v1, "newTint":F
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->currentTint:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_d

    return-void

    .line 113
    :cond_d
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->currentTint:F

    .line 115
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempGlyphCount:[I

    .line 116
    .local v2, "tempGlyphCount":[I
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v2

    .local v4, "n":I
    :goto_13
    if-ge v3, v4, :cond_1b

    .line 117
    const/4 v5, 0x0

    aput v5, v2, v3

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 119
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_1b
    const/4 v3, 0x0

    .restart local v3  # "i":I
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->layouts:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v4  # "n":I
    :goto_20
    if-ge v3, v4, :cond_9e

    .line 120
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->layouts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 121
    .local v5, "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    const/4 v6, 0x0

    .local v6, "ii":I
    iget-object v7, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v7, "nn":I
    :goto_2f
    if-ge v6, v7, :cond_93

    .line 122
    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 123
    .local v8, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iget-object v9, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 124
    .local v9, "glyphs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v11, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    .line 125
    .local v10, "colorFloat":F
    const/4 v12, 0x0

    .local v12, "iii":I
    iget v13, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v13, "nnn":I
    :goto_50
    if-ge v12, v13, :cond_8a

    .line 126
    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 127
    .local v14, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget v15, v14, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    .line 128
    .local v15, "page":I
    aget v16, v2, v15

    move/from16 v17, v1

    .end local v1  # "newTint":F
    .local v17, "newTint":F
    const/16 v1, 0x14

    mul-int/lit8 v16, v16, 0x14

    add-int/lit8 v16, v16, 0x2

    .line 129
    .local v16, "offset":I
    aget v18, v2, v15

    add-int/lit8 v18, v18, 0x1

    aput v18, v2, v15

    .line 130
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    aget-object v1, v1, v15

    .line 131
    .local v1, "vertices":[F
    const/16 v19, 0x0

    move/from16 v0, v19

    .local v0, "v":I
    :goto_72
    move-object/from16 v19, v2

    const/16 v2, 0x14

    .end local v2  # "tempGlyphCount":[I
    .local v19, "tempGlyphCount":[I
    if-ge v0, v2, :cond_81

    .line 132
    add-int v18, v16, v0

    aput v10, v1, v18

    .line 131
    add-int/lit8 v0, v0, 0x5

    move-object/from16 v2, v19

    goto :goto_72

    .line 125
    .end local v0  # "v":I
    .end local v1  # "vertices":[F
    .end local v14  # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v15  # "page":I
    .end local v16  # "offset":I
    :cond_81
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    goto :goto_50

    .end local v17  # "newTint":F
    .end local v19  # "tempGlyphCount":[I
    .local v1, "newTint":F
    .restart local v2  # "tempGlyphCount":[I
    :cond_8a
    move/from16 v17, v1

    move-object/from16 v19, v2

    .line 121
    .end local v1  # "newTint":F
    .end local v2  # "tempGlyphCount":[I
    .end local v8  # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v9  # "glyphs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    .end local v10  # "colorFloat":F
    .end local v12  # "iii":I
    .end local v13  # "nnn":I
    .restart local v17  # "newTint":F
    .restart local v19  # "tempGlyphCount":[I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_2f

    .end local v17  # "newTint":F
    .end local v19  # "tempGlyphCount":[I
    .restart local v1  # "newTint":F
    .restart local v2  # "tempGlyphCount":[I
    :cond_93
    move-object/from16 v11, p1

    move/from16 v17, v1

    move-object/from16 v19, v2

    .line 119
    .end local v1  # "newTint":F
    .end local v2  # "tempGlyphCount":[I
    .end local v5  # "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .end local v6  # "ii":I
    .end local v7  # "nn":I
    .restart local v17  # "newTint":F
    .restart local v19  # "tempGlyphCount":[I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_20

    .line 136
    .end local v3  # "i":I
    .end local v4  # "n":I
    .end local v17  # "newTint":F
    .end local v19  # "tempGlyphCount":[I
    .restart local v1  # "newTint":F
    .restart local v2  # "tempGlyphCount":[I
    :cond_9e
    return-void
.end method

.method public translate(FF)V
    .registers 11
    .param p1, "xAmount"  # F
    .param p2, "yAmount"  # F

    .line 91
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_a

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    return-void

    .line 92
    :cond_a
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    if-eqz v0, :cond_18

    .line 93
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float p1, v0

    .line 94
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float p2, v0

    .line 96
    :cond_18
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->pageVertices:[[F

    .line 100
    .local v0, "pageVertices":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_26
    if-ge v1, v2, :cond_43

    .line 101
    aget-object v3, v0, v1

    .line 102
    .local v3, "vertices":[F
    const/4 v4, 0x0

    .local v4, "ii":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v5, v5, v1

    .local v5, "nn":I
    :goto_2f
    if-ge v4, v5, :cond_40

    .line 103
    aget v6, v3, v4

    add-float/2addr v6, p1

    aput v6, v3, v4

    .line 104
    add-int/lit8 v6, v4, 0x1

    aget v7, v3, v6

    add-float/2addr v7, p2

    aput v7, v3, v6

    .line 102
    add-int/lit8 v4, v4, 0x5

    goto :goto_2f

    .line 100
    .end local v3  # "vertices":[F
    .end local v4  # "ii":I
    .end local v5  # "nn":I
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 107
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_43
    return-void
.end method

.method public usesIntegerPositions()Z
    .registers 2

    .line 536
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    return v0
.end method
