.class public Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
.super Ljava/lang/Object;
.source "GlyphLayout.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    }
.end annotation


# static fields
.field private static final colorPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private static final colorStack:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private static final epsilon:F = 1.0E-4f

.field private static final glyphRunPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public height:F

.field public final runs:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            ">;"
        }
    .end annotation
.end field

.field public width:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    .line 47
    const-class v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorPool:Lcom/badlogic/gdx/utils/Pool;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"  # Ljava/lang/CharSequence;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V
    .registers 12
    .param p1, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"  # Ljava/lang/CharSequence;
    .param p3, "start"  # I
    .param p4, "end"  # I
    .param p5, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "targetWidth"  # F
    .param p7, "halign"  # I
    .param p8, "wrap"  # Z
    .param p9, "truncate"  # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 71
    invoke-virtual/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V
    .registers 9
    .param p1, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"  # Ljava/lang/CharSequence;
    .param p3, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "targetWidth"  # F
    .param p5, "halign"  # I
    .param p6, "wrap"  # Z

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 65
    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V

    .line 66
    return-void
.end method

.method private adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V
    .registers 7
    .param p1, "fontData"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p2, "run"  # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 416
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 417
    .local v0, "last":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v1, :cond_d

    return-void

    .line 418
    :cond_d
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr v1, v2

    .line 419
    .local v1, "width":F
    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v3, v3, -0x1

    aput v1, v2, v3

    .line 420
    return-void
.end method

.method private parseColorMarkup(Ljava/lang/CharSequence;IILcom/badlogic/gdx/utils/Pool;)I
    .registers 12
    .param p1, "str"  # Ljava/lang/CharSequence;
    .param p2, "start"  # I
    .param p3, "end"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;)I"
        }
    .end annotation

    .line 423
    .local p4, "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    const/4 v0, -0x1

    if-ne p2, p3, :cond_4

    return v0

    .line 424
    :cond_4
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    sparse-switch v1, :sswitch_data_ba

    .line 459
    move v1, p2

    .line 460
    .local v1, "colorStart":I
    add-int/lit8 v3, p2, 0x1

    .local v3, "i":I
    goto/16 :goto_8e

    .line 455
    .end local v1  # "colorStart":I
    .end local v3  # "i":I
    :sswitch_12
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 456
    :cond_22
    const/4 v0, 0x0

    return v0

    .line 453
    :sswitch_24
    const/4 v0, -0x2

    return v0

    .line 427
    :sswitch_26
    const/4 v1, 0x0

    .line 428
    .local v1, "colorInt":I
    add-int/lit8 v3, p2, 0x1

    .restart local v3  # "i":I
    :goto_29
    if-ge v3, p3, :cond_8d

    .line 429
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 430
    .local v4, "ch":C
    if-ne v4, v2, :cond_5e

    .line 431
    add-int/lit8 v2, p2, 0x2

    if-lt v3, v2, :cond_8d

    add-int/lit8 v2, p2, 0x9

    if-le v3, v2, :cond_3a

    goto :goto_8d

    .line 432
    :cond_3a
    sub-int v0, v3, p2

    const/4 v2, 0x7

    if-gt v0, v2, :cond_4d

    .line 433
    const/4 v0, 0x0

    .local v0, "ii":I
    sub-int v2, v3, p2

    rsub-int/lit8 v2, v2, 0x9

    .local v2, "nn":I
    :goto_44
    if-ge v0, v2, :cond_4b

    .line 434
    shl-int/lit8 v1, v1, 0x4

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 435
    .end local v0  # "ii":I
    .end local v2  # "nn":I
    :cond_4b
    or-int/lit16 v1, v1, 0xff

    .line 437
    :cond_4d
    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    .line 438
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 439
    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->rgba8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    .line 440
    sub-int v2, v3, p2

    return v2

    .line 442
    .end local v0  # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_5e
    const/16 v5, 0x30

    if-lt v4, v5, :cond_6d

    const/16 v5, 0x39

    if-gt v4, v5, :cond_6d

    .line 443
    mul-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v4, -0x30

    add-int/2addr v5, v6

    move v1, v5

    .end local v1  # "colorInt":I
    .local v5, "colorInt":I
    goto :goto_8a

    .line 444
    .end local v5  # "colorInt":I
    .restart local v1  # "colorInt":I
    :cond_6d
    const/16 v5, 0x61

    if-lt v4, v5, :cond_7c

    const/16 v5, 0x66

    if-gt v4, v5, :cond_7c

    .line 445
    mul-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v4, -0x57

    add-int/2addr v5, v6

    move v1, v5

    .end local v1  # "colorInt":I
    .restart local v5  # "colorInt":I
    goto :goto_8a

    .line 446
    .end local v5  # "colorInt":I
    .restart local v1  # "colorInt":I
    :cond_7c
    const/16 v5, 0x41

    if-lt v4, v5, :cond_8d

    const/16 v5, 0x46

    if-gt v4, v5, :cond_8d

    .line 447
    mul-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v4, -0x37

    add-int/2addr v5, v6

    move v1, v5

    .line 428
    .end local v4  # "ch":C
    :goto_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 451
    .end local v3  # "i":I
    :cond_8d
    :goto_8d
    return v0

    .line 460
    .local v1, "colorStart":I
    .restart local v3  # "i":I
    :goto_8e
    if-ge v3, p3, :cond_b9

    .line 461
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 462
    .restart local v4  # "ch":C
    if-eq v4, v2, :cond_99

    .line 460
    .end local v4  # "ch":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    .line 463
    .restart local v4  # "ch":C
    :cond_99
    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/Colors;->get(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 464
    .local v2, "namedColor":Lcom/badlogic/gdx/graphics/Color;
    if-nez v2, :cond_a8

    return v0

    .line 465
    :cond_a8
    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    .line 466
    .restart local v0  # "color":Lcom/badlogic/gdx/graphics/Color;
    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 467
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 468
    sub-int v5, v3, p2

    return v5

    .line 470
    .end local v0  # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local v2  # "namedColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v3  # "i":I
    .end local v4  # "ch":C
    :cond_b9
    return v0

    :sswitch_data_ba
    .sparse-switch
        0x23 -> :sswitch_26
        0x5b -> :sswitch_24
        0x5d -> :sswitch_12
    .end sparse-switch
.end method

.method private truncate(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;FLjava/lang/String;ILcom/badlogic/gdx/utils/Pool;)V
    .registers 16
    .param p1, "fontData"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p2, "run"  # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .param p3, "targetWidth"  # F
    .param p4, "truncate"  # Ljava/lang/String;
    .param p5, "widthIndex"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            "F",
            "Ljava/lang/String;",
            "I",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p6, "glyphRunPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    invoke-virtual {p6}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 324
    .local v0, "truncateRun":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, v0

    move-object v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "truncateWidth":F
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v2, :cond_2d

    .line 327
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 328
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 329
    .local v2, "xAdvances":[F
    const/4 v3, 0x1

    .local v3, "i":I
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .local v4, "n":I
    :goto_25
    if-ge v3, v4, :cond_2d

    .line 330
    aget v5, v2, v3

    add-float/2addr v1, v5

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 332
    .end local v2  # "xAdvances":[F
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_2d
    sub-float/2addr p3, v1

    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, "count":I
    iget v3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    .line 337
    .local v3, "width":F
    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 338
    .local v4, "xAdvances":[F
    :goto_35
    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v2, v5, :cond_47

    .line 339
    aget v5, v4, v2

    .line 340
    .local v5, "xAdvance":F
    add-float/2addr v3, v5

    .line 341
    cmpl-float v6, v3, p3

    if-lez v6, :cond_43

    goto :goto_47

    .line 342
    :cond_43
    nop

    .end local v5  # "xAdvance":F
    add-int/lit8 v2, v2, 0x1

    .line 343
    goto :goto_35

    .line 345
    :cond_47
    :goto_47
    const/4 v5, 0x1

    if-le v2, v5, :cond_6c

    .line 347
    iget-object v6, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 348
    iget-object v6, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/FloatArray;->truncate(I)V

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 350
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v6, :cond_7d

    iget-object v6, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v8, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v8, v5

    invoke-virtual {v6, v7, v5, v8}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;II)V

    goto :goto_7d

    .line 353
    :cond_6c
    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 354
    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 355
    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 357
    :cond_7d
    :goto_7d
    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 359
    invoke-virtual {p6, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method private wrap(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;II)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .registers 19
    .param p1, "fontData"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p2, "first"  # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .param p3, "wrapIndex"  # I
    .param p4, "widthIndex"  # I

    .line 365
    move-object v0, p1

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 366
    .local v2, "glyphs2":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 367
    .local v3, "glyphCount":I
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 370
    .local v4, "xAdvances2":Lcom/badlogic/gdx/utils/FloatArray;
    move/from16 v5, p3

    .line 371
    .local v5, "firstEnd":I
    :goto_d
    if-lez v5, :cond_24

    .line 372
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_21

    goto :goto_24

    .line 371
    :cond_21
    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    .line 375
    :cond_24
    :goto_24
    move/from16 v6, p3

    .line 376
    .local v6, "secondStart":I
    :goto_26
    if-ge v6, v3, :cond_3b

    .line 377
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_38

    goto :goto_3b

    .line 376
    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 381
    :cond_3b
    :goto_3b
    const/4 v7, 0x0

    .line 382
    .local v7, "second":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    if-ge v6, v3, :cond_81

    .line 383
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 384
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v9, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 386
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 387
    .local v8, "glyphs1":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9, v5}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;II)V

    .line 388
    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v2, v9, v10}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    .line 389
    iput-object v8, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 390
    iput-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 392
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 393
    .local v10, "xAdvances1":Lcom/badlogic/gdx/utils/FloatArray;
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v4, v9, v11}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;II)V

    .line 394
    const/4 v11, 0x1

    invoke-virtual {v4, v11, v6}, Lcom/badlogic/gdx/utils/FloatArray;->removeRange(II)V

    .line 395
    iget-object v11, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v12, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v12, v12

    int-to-float v12, v12

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v12, v13

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v12, v13

    aput v12, v11, v9

    .line 396
    iput-object v10, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 397
    iput-object v4, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 398
    .end local v8  # "glyphs1":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    .end local v10  # "xAdvances1":Lcom/badlogic/gdx/utils/FloatArray;
    goto :goto_89

    .line 400
    :cond_81
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 401
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/utils/FloatArray;->truncate(I)V

    .line 404
    :goto_89
    if-nez v5, :cond_97

    .line 406
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 407
    move-object v8, p0

    iget-object v9, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    goto :goto_9b

    .line 409
    :cond_97
    move-object v8, p0

    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 411
    :goto_9b
    return-object v7
.end method


# virtual methods
.method public reset()V
    .registers 3

    .line 474
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    .line 478
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    .line 479
    return-void
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V
    .registers 13
    .param p1, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"  # Ljava/lang/CharSequence;

    .line 77
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    .line 78
    return-void
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V
    .registers 42
    .param p1, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"  # Ljava/lang/CharSequence;
    .param p3, "start"  # I
    .param p4, "end"  # I
    .param p5, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "targetWidth"  # F
    .param p7, "halign"  # I
    .param p8, "wrap"  # Z
    .param p9, "truncate"  # Ljava/lang/String;

    .line 97
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p4

    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 98
    .local v10, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 99
    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 101
    move-object/from16 v11, p1

    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 102
    .local v12, "fontData":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    const/4 v6, 0x0

    move/from16 v0, p3

    if-ne v0, v9, :cond_20

    .line 103
    iput v6, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    .line 104
    iget v1, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v1, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    .line 105
    return-void

    .line 108
    :cond_20
    if-eqz p9, :cond_25

    .line 109
    const/4 v1, 0x1

    move v13, v1

    .end local p8  # "wrap":Z
    .local v1, "wrap":Z
    goto :goto_33

    .line 110
    .end local v1  # "wrap":Z
    .restart local p8  # "wrap":Z
    :cond_25
    iget v1, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    const/high16 v2, 0x40400000  # 3.0f

    mul-float/2addr v1, v2

    cmpg-float v1, p6, v1

    if-gtz v1, :cond_31

    .line 111
    const/4 v1, 0x0

    move v13, v1

    .end local p8  # "wrap":Z
    .restart local v1  # "wrap":Z
    goto :goto_33

    .line 110
    .end local v1  # "wrap":Z
    .restart local p8  # "wrap":Z
    :cond_31
    move/from16 v13, p8

    .line 113
    .end local p8  # "wrap":Z
    .local v13, "wrap":Z
    :goto_33
    move-object/from16 v1, p5

    .line 114
    .local v1, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    iget-boolean v14, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    .line 115
    .local v14, "markupEnabled":Z
    if-eqz v14, :cond_5b

    .line 116
    const/4 v2, 0x1

    .local v2, "i":I
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_3e
    if-ge v2, v3, :cond_4e

    .line 117
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorPool:Lcom/badlogic/gdx/utils/Pool;

    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 118
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_4e
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 119
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_5d

    .line 115
    :cond_5b
    move-object/from16 v3, p5

    .line 122
    :goto_5d
    const/4 v2, 0x0

    .local v2, "x":F
    const/4 v4, 0x0

    .local v4, "y":F
    iget v15, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 123
    .local v15, "down":F
    const/4 v5, 0x0

    .line 124
    .local v5, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move/from16 v16, p3

    move/from16 v30, v16

    move/from16 v16, v2

    move/from16 v2, v30

    move-object/from16 v31, v5

    move-object v5, v3

    move-object/from16 v3, v31

    .line 128
    .end local p3  # "start":I
    .end local p5  # "color":Lcom/badlogic/gdx/graphics/Color;
    .local v0, "start":I
    .local v2, "runStart":I
    .local v3, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v5, "color":Lcom/badlogic/gdx/graphics/Color;
    .local v16, "x":F
    :goto_6f
    const/16 v17, -0x1

    .line 129
    .local v17, "runEnd":I
    const/16 v18, 0x0

    .line 130
    .local v18, "newline":Z
    if-ne v0, v9, :cond_85

    .line 131
    if-ne v2, v9, :cond_7d

    move/from16 v20, v2

    move-object/from16 v22, v5

    goto/16 :goto_1bc

    .line 132
    :cond_7d
    move/from16 v17, p4

    move v11, v0

    move/from16 v6, v17

    move-object/from16 v17, v1

    goto :goto_c8

    .line 134
    :cond_85
    add-int/lit8 v6, v0, 0x1

    .end local v0  # "start":I
    .local v6, "start":I
    invoke-interface {v8, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_3f8

    goto :goto_c3

    .line 142
    :sswitch_8f
    if-eqz v14, :cond_c3

    .line 143
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-direct {v7, v8, v6, v9, v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->parseColorMarkup(Ljava/lang/CharSequence;IILcom/badlogic/gdx/utils/Pool;)I

    move-result v0

    .line 144
    .local v0, "length":I
    if-ltz v0, :cond_af

    .line 145
    add-int/lit8 v17, v6, -0x1

    .line 146
    add-int/lit8 v20, v0, 0x1

    add-int v6, v6, v20

    .line 147
    sget-object v20, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v1, v20

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    move v11, v6

    move/from16 v6, v17

    move-object/from16 v17, v1

    goto :goto_c8

    .line 148
    :cond_af
    const/4 v11, -0x2

    if-ne v0, v11, :cond_c3

    .line 149
    add-int/lit8 v6, v6, 0x1

    .line 150
    move-object/from16 v11, p1

    move v0, v6

    const/4 v6, 0x0

    goto :goto_6f

    .line 137
    .end local v0  # "length":I
    :sswitch_b9
    add-int/lit8 v17, v6, -0x1

    .line 138
    const/16 v18, 0x1

    .line 139
    move v11, v6

    move/from16 v6, v17

    move-object/from16 v17, v1

    goto :goto_c8

    .line 157
    :cond_c3
    :goto_c3
    move v11, v6

    move/from16 v6, v17

    move-object/from16 v17, v1

    .end local v1  # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .local v6, "runEnd":I
    .local v11, "start":I
    .local v17, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    :goto_c8
    const/4 v0, -0x1

    if-eq v6, v0, :cond_3df

    .line 159
    if-eq v6, v2, :cond_3bb

    .line 161
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 162
    .local v1, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 163
    move-object v0, v12

    move-object/from16 p8, v1

    .end local v1  # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local p8, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    move/from16 v20, v2

    .end local v2  # "runStart":I
    .local v20, "runStart":I
    move-object/from16 v2, p2

    move-object/from16 v21, v3

    .end local v3  # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v21, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move/from16 v3, v20

    move v8, v4

    .end local v4  # "y":F
    .local v8, "y":F
    move v4, v6

    move-object/from16 v22, v5

    .end local v5  # "color":Lcom/badlogic/gdx/graphics/Color;
    .local v22, "color":Lcom/badlogic/gdx/graphics/Color;
    move-object/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 164
    move-object/from16 v0, p8

    .end local p8  # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v0, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_106

    .line 165
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 166
    move v9, v6

    move/from16 v28, v13

    move/from16 v29, v14

    move-object/from16 v3, v21

    const/4 v13, 0x0

    goto/16 :goto_3c6

    .line 168
    :cond_106
    move-object/from16 v3, v21

    .end local v21  # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v3  # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v3, :cond_126

    .line 169
    iget-boolean v1, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v1, :cond_115

    iget v1, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    iget v2, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v1, v2

    goto :goto_121

    :cond_115
    iget v1, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v2, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v1, v2

    iget v2, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr v1, v2

    :goto_121
    sub-float v16, v16, v1

    move/from16 v1, v16

    goto :goto_128

    .line 168
    :cond_126
    move/from16 v1, v16

    .line 172
    .end local v16  # "x":F
    .local v1, "x":F
    :goto_128
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 173
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    .line 174
    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    .line 175
    if-nez v18, :cond_139

    if-ne v6, v9, :cond_13c

    :cond_139
    invoke-direct {v7, v12, v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 176
    :cond_13c
    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 178
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 179
    .local v2, "n":I
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 180
    .local v4, "xAdvances":[F
    if-eqz v13, :cond_3a1

    if-nez v2, :cond_153

    move v9, v6

    move/from16 v28, v13

    move/from16 v29, v14

    const/4 v13, 0x0

    goto/16 :goto_3a7

    .line 189
    :cond_153
    const/4 v5, 0x0

    aget v16, v4, v5

    const/4 v5, 0x1

    aget v21, v4, v5

    add-float v16, v16, v21

    add-float v1, v1, v16

    .line 190
    const/4 v5, 0x2

    move/from16 v24, v1

    move-object/from16 v16, v3

    move-object/from16 v21, v4

    move v4, v5

    move/from16 v23, v8

    move-object v8, v0

    move v5, v2

    .end local v0  # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v1  # "x":F
    .end local v2  # "n":I
    .end local v3  # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v4, "i":I
    .local v5, "n":I
    .local v8, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v16, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v21, "xAdvances":[F
    .local v23, "y":F
    .local v24, "x":F
    :goto_169
    if-ge v4, v5, :cond_391

    .line 191
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 192
    .local v3, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v1, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v0, v1

    iget v1, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float v25, v0, v1

    .line 193
    .local v25, "glyphWidth":F
    add-float v0, v24, v25

    const v1, 0x38d1b717  # 1.0E-4f

    sub-float/2addr v0, v1

    cmpg-float v0, v0, p6

    if-gtz v0, :cond_199

    .line 195
    aget v0, v21, v4

    add-float v24, v24, v0

    .line 196
    move v9, v6

    move/from16 v28, v13

    move/from16 v29, v14

    const/4 v13, 0x0

    goto/16 :goto_386

    .line 199
    :cond_199
    if-eqz p9, :cond_2ae

    .line 201
    sget-object v19, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v8

    move-object/from16 v26, v3

    .end local v3  # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v26, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move/from16 v3, p6

    move/from16 p8, v4

    .end local v4  # "i":I
    .local p8, "i":I
    move-object/from16 v4, p9

    move/from16 v27, v5

    .end local v5  # "n":I
    .local v27, "n":I
    move/from16 v5, p8

    move v9, v6

    .end local v6  # "runEnd":I
    .local v9, "runEnd":I
    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->truncate(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;FLjava/lang/String;ILcom/badlogic/gdx/utils/Pool;)V

    .line 202
    move v0, v11

    move-object/from16 v3, v16

    move-object/from16 v1, v17

    move/from16 v4, v23

    move/from16 v16, v24

    .line 271
    .end local v8  # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v9  # "runEnd":I
    .end local v11  # "start":I
    .end local v17  # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v18  # "newline":Z
    .end local v21  # "xAdvances":[F
    .end local v23  # "y":F
    .end local v24  # "x":F
    .end local v25  # "glyphWidth":F
    .end local v26  # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v27  # "n":I
    .end local p8  # "i":I
    .local v0, "start":I
    .local v1, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .local v3, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v4, "y":F
    .local v16, "x":F
    :goto_1bc
    iget v2, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v2, v5

    iput v2, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, "width":F
    iget-object v5, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 276
    .local v5, "runsItems":[Ljava/lang/Object;
    iget v6, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 277
    .local v6, "runsSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1cb
    if-ge v8, v6, :cond_243

    .line 278
    aget-object v9, v5, v8

    check-cast v9, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 279
    .local v9, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iget-object v11, v9, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v11, v11, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 280
    .local v11, "xAdvances":[F
    const/16 v17, 0x0

    aget v18, v11, v17

    .local v18, "runWidth":F
    const/16 v17, 0x0

    .line 281
    .local v17, "max":F
    move/from16 p8, v0

    .end local v0  # "start":I
    .local p8, "start":I
    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 282
    .local v0, "glyphs":[Ljava/lang/Object;
    const/16 v19, 0x0

    move-object/from16 v21, v1

    .end local v1  # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .local v19, "ii":I
    .local v21, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move-object/from16 v23, v3

    move/from16 v28, v13

    move/from16 v3, v17

    move/from16 v13, v19

    move/from16 v17, v4

    move/from16 v4, v18

    .end local v18  # "runWidth":F
    .end local v19  # "ii":I
    .local v1, "nn":I
    .local v3, "max":F
    .local v4, "runWidth":F
    .local v13, "ii":I
    .local v17, "y":F
    .local v23, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v28, "wrap":Z
    :goto_1f5
    if-ge v13, v1, :cond_221

    .line 283
    aget-object v18, v0, v13

    move-object/from16 v19, v0

    .end local v0  # "glyphs":[Ljava/lang/Object;
    .local v19, "glyphs":[Ljava/lang/Object;
    move-object/from16 v0, v18

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 284
    .local v0, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move/from16 v18, v1

    .end local v1  # "nn":I
    .local v18, "nn":I
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    move/from16 v29, v14

    .end local v14  # "markupEnabled":Z
    .local v29, "markupEnabled":Z
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v1, v14

    int-to-float v1, v1

    iget v14, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v1, v14

    iget v14, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr v1, v14

    .line 285
    .local v1, "glyphWidth":F
    add-float v14, v4, v1

    invoke-static {v3, v14}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 286
    add-int/lit8 v13, v13, 0x1

    .line 287
    aget v14, v11, v13

    add-float/2addr v4, v14

    .line 288
    .end local v0  # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v1  # "glyphWidth":F
    move/from16 v1, v18

    move-object/from16 v0, v19

    move/from16 v14, v29

    goto :goto_1f5

    .line 282
    .end local v18  # "nn":I
    .end local v19  # "glyphs":[Ljava/lang/Object;
    .end local v29  # "markupEnabled":Z
    .local v0, "glyphs":[Ljava/lang/Object;
    .local v1, "nn":I
    .restart local v14  # "markupEnabled":Z
    :cond_221
    move-object/from16 v19, v0

    move/from16 v18, v1

    move/from16 v29, v14

    .line 289
    .end local v0  # "glyphs":[Ljava/lang/Object;
    .end local v1  # "nn":I
    .end local v13  # "ii":I
    .end local v14  # "markupEnabled":Z
    .restart local v19  # "glyphs":[Ljava/lang/Object;
    .restart local v29  # "markupEnabled":Z
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 290
    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iget v1, v9, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 277
    .end local v3  # "max":F
    .end local v4  # "runWidth":F
    .end local v9  # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v11  # "xAdvances":[F
    .end local v19  # "glyphs":[Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p8

    move/from16 v4, v17

    move-object/from16 v1, v21

    move-object/from16 v3, v23

    move/from16 v13, v28

    goto :goto_1cb

    .end local v17  # "y":F
    .end local v21  # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v23  # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v28  # "wrap":Z
    .end local v29  # "markupEnabled":Z
    .end local p8  # "start":I
    .local v0, "start":I
    .local v1, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .local v3, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v4, "y":F
    .local v13, "wrap":Z
    .restart local v14  # "markupEnabled":Z
    :cond_243
    move/from16 p8, v0

    move-object/from16 v21, v1

    move-object/from16 v23, v3

    move/from16 v17, v4

    move/from16 v28, v13

    move/from16 v29, v14

    .line 292
    .end local v0  # "start":I
    .end local v1  # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v3  # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v4  # "y":F
    .end local v8  # "i":I
    .end local v13  # "wrap":Z
    .end local v14  # "markupEnabled":Z
    .restart local v17  # "y":F
    .restart local v21  # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v23  # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v28  # "wrap":Z
    .restart local v29  # "markupEnabled":Z
    .restart local p8  # "start":I
    iput v2, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    .line 295
    and-int/lit8 v0, p7, 0x8

    if-nez v0, :cond_2ad

    .line 296
    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_25b

    const/4 v11, 0x1

    goto :goto_25c

    :cond_25b
    const/4 v11, 0x0

    :goto_25c
    move v0, v11

    .line 297
    .local v0, "center":Z
    const/4 v1, 0x0

    .local v1, "lineWidth":F
    const/high16 v3, -0x31000000

    .line 298
    .local v3, "lineY":F
    const/4 v4, 0x0

    .line 299
    .local v4, "lineStart":I
    const/4 v8, 0x0

    .restart local v8  # "i":I
    :goto_262
    const/high16 v9, 0x40000000  # 2.0f

    if-ge v8, v6, :cond_299

    .line 300
    aget-object v11, v5, v8

    check-cast v11, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 301
    .local v11, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iget v13, v11, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    cmpl-float v13, v13, v3

    if-eqz v13, :cond_28d

    .line 302
    iget v3, v11, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    .line 303
    sub-float v13, p6, v1

    .line 304
    .local v13, "shift":F
    if-eqz v0, :cond_277

    div-float/2addr v13, v9

    .line 305
    :cond_277
    :goto_277
    if-ge v4, v8, :cond_286

    .line 306
    add-int/lit8 v9, v4, 0x1

    .end local v4  # "lineStart":I
    .local v9, "lineStart":I
    aget-object v4, v5, v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget v14, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    add-float/2addr v14, v13

    iput v14, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    move v4, v9

    goto :goto_277

    .line 307
    .end local v9  # "lineStart":I
    .restart local v4  # "lineStart":I
    :cond_286
    iget v9, v11, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iget v14, v11, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v9, v14

    .line 308
    .end local v1  # "lineWidth":F
    .end local v13  # "shift":F
    .local v9, "lineWidth":F
    move v1, v9

    goto :goto_296

    .line 309
    .end local v9  # "lineWidth":F
    .restart local v1  # "lineWidth":F
    :cond_28d
    iget v9, v11, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iget v13, v11, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v9, v13

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 299
    .end local v11  # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    :goto_296
    add-int/lit8 v8, v8, 0x1

    goto :goto_262

    .line 311
    .end local v8  # "i":I
    :cond_299
    sub-float v8, p6, v1

    .line 312
    .local v8, "shift":F
    if-eqz v0, :cond_29e

    div-float/2addr v8, v9

    .line 313
    :cond_29e
    :goto_29e
    if-ge v4, v6, :cond_2ad

    .line 314
    add-int/lit8 v9, v4, 0x1

    .end local v4  # "lineStart":I
    .local v9, "lineStart":I
    aget-object v4, v5, v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget v11, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    add-float/2addr v11, v8

    iput v11, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    move v4, v9

    goto :goto_29e

    .line 316
    .end local v0  # "center":Z
    .end local v1  # "lineWidth":F
    .end local v3  # "lineY":F
    .end local v8  # "shift":F
    .end local v9  # "lineStart":I
    :cond_2ad
    return-void

    .line 206
    .end local v2  # "width":F
    .end local v28  # "wrap":Z
    .end local v29  # "markupEnabled":Z
    .end local p8  # "start":I
    .local v3, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v4, "i":I
    .local v5, "n":I
    .local v6, "runEnd":I
    .local v8, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v11, "start":I
    .local v13, "wrap":Z
    .restart local v14  # "markupEnabled":Z
    .local v16, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v17, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .local v18, "newline":Z
    .local v21, "xAdvances":[F
    .local v23, "y":F
    .restart local v24  # "x":F
    .restart local v25  # "glyphWidth":F
    :cond_2ae
    move-object/from16 v26, v3

    move/from16 p8, v4

    move/from16 v27, v5

    move v9, v6

    move/from16 v28, v13

    move/from16 v29, v14

    .end local v3  # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v4  # "i":I
    .end local v5  # "n":I
    .end local v6  # "runEnd":I
    .end local v13  # "wrap":Z
    .end local v14  # "markupEnabled":Z
    .local v9, "runEnd":I
    .restart local v26  # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v27  # "n":I
    .restart local v28  # "wrap":Z
    .restart local v29  # "markupEnabled":Z
    .local p8, "i":I
    add-float v4, v23, v15

    .line 207
    .end local v23  # "y":F
    .local v4, "y":F
    const/4 v3, 0x0

    .line 208
    .end local v16  # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v3, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    move/from16 v5, p8

    .end local p8  # "i":I
    .local v5, "i":I
    invoke-virtual {v12, v0, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getWrapIndex(Lcom/badlogic/gdx/utils/Array;I)I

    move-result v0

    .line 209
    .local v0, "wrapIndex":I
    if-nez v0, :cond_2cd

    iget v1, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2d3

    :cond_2cd
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v0, v1, :cond_2d5

    .line 211
    :cond_2d3
    add-int/lit8 v0, v5, -0x1

    .line 214
    :cond_2d5
    if-nez v0, :cond_355

    .line 215
    move-object v1, v8

    .line 218
    .local v1, "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "glyphCount":I
    :goto_2dc
    if-ge v0, v2, :cond_2f3

    .line 219
    iget-object v6, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v6, v6

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2f0

    goto :goto_2f3

    .line 218
    :cond_2f0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2dc

    .line 220
    .end local v2  # "glyphCount":I
    :cond_2f3
    :goto_2f3
    if-lez v0, :cond_303

    .line 221
    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v6, v0, -0x1

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v6}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    .line 222
    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v0}, Lcom/badlogic/gdx/utils/FloatArray;->removeRange(II)V

    .line 224
    :cond_303
    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v6, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v2, v6

    iget v6, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v2, v6

    const/4 v6, 0x0

    aput v2, v21, v6

    .line 226
    iget v2, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x1

    if-le v2, v6, :cond_363

    .line 228
    iget v2, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 229
    .local v2, "previous":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iget-object v13, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v13, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v13, v6

    .line 230
    .local v13, "lastIndex":I
    :goto_32c
    if-lez v13, :cond_343

    .line 231
    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v6, v6

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_340

    goto :goto_343

    .line 230
    :cond_340
    add-int/lit8 v13, v13, -0x1

    goto :goto_32c

    .line 232
    :cond_343
    :goto_343
    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 233
    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v14, v13, 0x2

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/utils/FloatArray;->truncate(I)V

    .line 234
    invoke-direct {v7, v12, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 235
    .end local v2  # "previous":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v13  # "lastIndex":I
    goto :goto_363

    .line 237
    .end local v1  # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    :cond_355
    invoke-direct {v7, v12, v8, v0, v5}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->wrap(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;II)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    move-result-object v1

    .line 238
    .restart local v1  # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    if-nez v1, :cond_360

    .line 239
    const/16 v16, 0x0

    .line 240
    .end local v24  # "x":F
    .local v16, "x":F
    const/4 v13, 0x0

    goto/16 :goto_3c7

    .line 242
    .end local v16  # "x":F
    .restart local v24  # "x":F
    :cond_360
    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 246
    :cond_363
    :goto_363
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 247
    .end local v27  # "n":I
    .local v2, "n":I
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 248
    .end local v21  # "xAdvances":[F
    .local v6, "xAdvances":[F
    const/4 v13, 0x0

    aget v14, v6, v13

    .line 249
    .end local v24  # "x":F
    .local v14, "x":F
    const/4 v13, 0x1

    if-le v2, v13, :cond_375

    aget v16, v6, v13

    add-float v14, v14, v16

    .line 250
    :cond_375
    const/4 v13, 0x0

    iput v13, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    .line 251
    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    .line 252
    const/4 v5, 0x1

    .line 253
    move-object v8, v1

    move-object/from16 v16, v3

    move/from16 v23, v4

    move v4, v5

    move-object/from16 v21, v6

    move/from16 v24, v14

    move v5, v2

    .line 190
    .end local v0  # "wrapIndex":I
    .end local v1  # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v2  # "n":I
    .end local v3  # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v6  # "xAdvances":[F
    .end local v14  # "x":F
    .end local v25  # "glyphWidth":F
    .end local v26  # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v4, "i":I
    .local v5, "n":I
    .local v16, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v21  # "xAdvances":[F
    .restart local v23  # "y":F
    .restart local v24  # "x":F
    :goto_386
    const/4 v0, 0x1

    add-int/2addr v4, v0

    move v6, v9

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v9, p4

    goto/16 :goto_169

    .end local v9  # "runEnd":I
    .end local v28  # "wrap":Z
    .end local v29  # "markupEnabled":Z
    .local v6, "runEnd":I
    .local v13, "wrap":Z
    .local v14, "markupEnabled":Z
    :cond_391
    move/from16 v27, v5

    move v9, v6

    move/from16 v28, v13

    move/from16 v29, v14

    const/4 v13, 0x0

    move v5, v4

    .end local v4  # "i":I
    .end local v6  # "runEnd":I
    .end local v13  # "wrap":Z
    .end local v14  # "markupEnabled":Z
    .local v5, "i":I
    .restart local v9  # "runEnd":I
    .restart local v27  # "n":I
    .restart local v28  # "wrap":Z
    .restart local v29  # "markupEnabled":Z
    move-object/from16 v3, v16

    move/from16 v4, v23

    move/from16 v16, v24

    goto :goto_3c7

    .line 180
    .end local v5  # "i":I
    .end local v9  # "runEnd":I
    .end local v16  # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v21  # "xAdvances":[F
    .end local v23  # "y":F
    .end local v24  # "x":F
    .end local v27  # "n":I
    .end local v28  # "wrap":Z
    .end local v29  # "markupEnabled":Z
    .local v0, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v1, "x":F
    .restart local v2  # "n":I
    .restart local v3  # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v4, "xAdvances":[F
    .restart local v6  # "runEnd":I
    .local v8, "y":F
    .restart local v13  # "wrap":Z
    .restart local v14  # "markupEnabled":Z
    :cond_3a1
    move v9, v6

    move/from16 v28, v13

    move/from16 v29, v14

    const/4 v13, 0x0

    .line 181
    .end local v6  # "runEnd":I
    .end local v13  # "wrap":Z
    .end local v14  # "markupEnabled":Z
    .restart local v9  # "runEnd":I
    .restart local v28  # "wrap":Z
    .restart local v29  # "markupEnabled":Z
    :goto_3a7
    if-eqz v29, :cond_3b7

    .line 182
    const/4 v5, 0x0

    move/from16 v16, v1

    .end local v1  # "x":F
    .restart local v5  # "i":I
    .local v16, "x":F
    :goto_3ac
    if-ge v5, v2, :cond_3b5

    .line 183
    aget v1, v4, v5

    add-float v16, v16, v1

    .line 182
    add-int/lit8 v5, v5, 0x1

    goto :goto_3ac

    :cond_3b5
    move v4, v8

    .end local v5  # "i":I
    goto :goto_3c7

    .line 181
    .end local v16  # "x":F
    .restart local v1  # "x":F
    :cond_3b7
    move/from16 v16, v1

    move v4, v8

    goto :goto_3c7

    .line 159
    .end local v0  # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v1  # "x":F
    .end local v8  # "y":F
    .end local v9  # "runEnd":I
    .end local v20  # "runStart":I
    .end local v22  # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local v28  # "wrap":Z
    .end local v29  # "markupEnabled":Z
    .local v2, "runStart":I
    .local v4, "y":F
    .local v5, "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v6  # "runEnd":I
    .restart local v13  # "wrap":Z
    .restart local v14  # "markupEnabled":Z
    .restart local v16  # "x":F
    :cond_3bb
    move/from16 v20, v2

    move v8, v4

    move-object/from16 v22, v5

    move v9, v6

    move/from16 v28, v13

    move/from16 v29, v14

    const/4 v13, 0x0

    .line 257
    .end local v2  # "runStart":I
    .end local v4  # "y":F
    .end local v5  # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local v6  # "runEnd":I
    .end local v13  # "wrap":Z
    .end local v14  # "markupEnabled":Z
    .restart local v8  # "y":F
    .restart local v9  # "runEnd":I
    .restart local v20  # "runStart":I
    .restart local v22  # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v28  # "wrap":Z
    .restart local v29  # "markupEnabled":Z
    :goto_3c6
    move v4, v8

    .end local v8  # "y":F
    .restart local v4  # "y":F
    :goto_3c7
    if-eqz v18, :cond_3d7

    .line 259
    const/16 v16, 0x0

    .line 260
    move/from16 v2, v20

    .end local v20  # "runStart":I
    .restart local v2  # "runStart":I
    if-ne v9, v2, :cond_3d4

    .line 261
    iget v0, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->blankLineScale:F

    mul-float/2addr v0, v15

    add-float/2addr v4, v0

    goto :goto_3d5

    .line 263
    :cond_3d4
    add-float/2addr v4, v15

    .line 264
    :goto_3d5
    const/4 v3, 0x0

    goto :goto_3d9

    .line 257
    .end local v2  # "runStart":I
    .restart local v20  # "runStart":I
    :cond_3d7
    move/from16 v2, v20

    .line 267
    .end local v20  # "runStart":I
    .restart local v2  # "runStart":I
    :goto_3d9
    move v0, v11

    .line 268
    .end local v2  # "runStart":I
    .local v0, "runStart":I
    move-object/from16 v1, v17

    move v2, v0

    move-object v5, v1

    .end local v22  # "color":Lcom/badlogic/gdx/graphics/Color;
    .local v1, "color":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_3e8

    .line 157
    .end local v0  # "runStart":I
    .end local v1  # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local v9  # "runEnd":I
    .end local v28  # "wrap":Z
    .end local v29  # "markupEnabled":Z
    .restart local v2  # "runStart":I
    .restart local v5  # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v6  # "runEnd":I
    .restart local v13  # "wrap":Z
    .restart local v14  # "markupEnabled":Z
    :cond_3df
    move v8, v4

    move-object/from16 v22, v5

    move v9, v6

    move/from16 v28, v13

    move/from16 v29, v14

    const/4 v13, 0x0

    .line 270
    .end local v6  # "runEnd":I
    .end local v13  # "wrap":Z
    .end local v14  # "markupEnabled":Z
    .end local v18  # "newline":Z
    .restart local v28  # "wrap":Z
    .restart local v29  # "markupEnabled":Z
    :goto_3e8
    move-object/from16 v8, p2

    move/from16 v9, p4

    move v0, v11

    move v6, v13

    move-object/from16 v1, v17

    move/from16 v13, v28

    move/from16 v14, v29

    move-object/from16 v11, p1

    goto/16 :goto_6f

    :sswitch_data_3f8
    .sparse-switch
        0xa -> :sswitch_b9
        0x5b -> :sswitch_8f
    .end sparse-switch
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V
    .registers 17
    .param p1, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"  # Ljava/lang/CharSequence;
    .param p3, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "targetWidth"  # F
    .param p5, "halign"  # I
    .param p6, "wrap"  # Z

    .line 83
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 483
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 484
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 485
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 487
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_29
    if-ge v2, v3, :cond_40

    .line 489
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 492
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
