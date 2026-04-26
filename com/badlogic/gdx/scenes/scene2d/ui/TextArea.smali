.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.source "TextArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;
    }
.end annotation


# instance fields
.field cursorLine:I

.field firstLineShowing:I

.field private lastText:Ljava/lang/String;

.field linesBreak:Lcom/badlogic/gdx/utils/IntArray;

.field private linesShowing:I

.field moveOffset:F

.field private prefRows:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 3
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 4
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"  # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .registers 3
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    .line 66
    return-void
.end method

.method private calculateCurrentLineIndex(I)I
    .registers 4
    .param p1, "cursor"  # I

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v1, v1, v0

    if-le p1, v1, :cond_12

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_12
    return v0
.end method


# virtual methods
.method protected calculateOffsets()V
    .registers 11

    .line 285
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->calculateOffsets()V

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->lastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->lastText:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 289
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 290
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    sub-float/2addr v1, v2

    .line 291
    .local v1, "maxWidthLine":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 292
    const/4 v2, 0x0

    .line 293
    .local v2, "lineStart":I
    const/4 v3, 0x0

    .line 295
    .local v3, "lastSpace":I
    const-class v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-static {v4}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v4

    .line 296
    .local v4, "layoutPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;>;"
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 297
    .local v5, "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_47
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_9d

    .line 298
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 299
    .local v7, "lastCharacter":C
    const/16 v8, 0xd

    if-eq v7, v8, :cond_8e

    const/16 v8, 0xa

    if-ne v7, v8, :cond_5e

    goto :goto_8e

    .line 304
    :cond_5e
    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->continueCursor(II)Z

    move-result v8

    if-eqz v8, :cond_67

    move v8, v3

    goto :goto_68

    :cond_67
    move v8, v6

    :goto_68
    move v3, v8

    .line 305
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 306
    iget v8, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    cmpl-float v8, v8, v1

    if-lez v8, :cond_9a

    .line 307
    if-lt v2, v3, :cond_7e

    .line 308
    add-int/lit8 v3, v6, -0x1

    .line 310
    :cond_7e
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 311
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 312
    add-int/lit8 v2, v3, 0x1

    .line 313
    move v3, v2

    goto :goto_9a

    .line 300
    :cond_8e
    :goto_8e
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 301
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 302
    add-int/lit8 v2, v6, 0x1

    .line 297
    :cond_9a
    :goto_9a
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 317
    .end local v6  # "i":I
    .end local v7  # "lastCharacter":C
    :cond_9d
    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 319
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_b8

    .line 320
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 321
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 323
    :cond_b8
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    .line 325
    .end local v0  # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v1  # "maxWidthLine":F
    .end local v2  # "lineStart":I
    .end local v3  # "lastSpace":I
    .end local v4  # "layoutPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;>;"
    .end local v5  # "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :cond_bb
    return-void
.end method

.method protected continueCursor(II)Z
    .registers 7
    .param p1, "index"  # I
    .param p2, "offset"  # I

    .line 354
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->calculateCurrentLineIndex(I)I

    move-result v0

    .line 355
    .local v0, "pos":I
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->continueCursor(II)Z

    move-result v1

    if-eqz v1, :cond_34

    if-ltz v0, :cond_32

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_32

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ne v1, p1, :cond_32

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    if-ne v1, v2, :cond_34

    :cond_32
    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    return v1
.end method

.method protected createInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .registers 2

    .line 328
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;)V

    return-object v0
.end method

.method protected drawCursor(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .registers 13
    .param p1, "cursorPatch"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p3, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p4, "x"  # F
    .param p5, "y"  # F

    .line 281
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getCursorX()F

    move-result v0

    add-float v3, p4, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getCursorY()F

    move-result v0

    add-float v4, p5, v0

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v6

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 282
    return-void
.end method

.method protected drawSelection(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .registers 29
    .param p1, "selection"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p3, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p4, "x"  # F
    .param p5, "y"  # F

    .line 230
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    mul-int/lit8 v1, v1, 0x2

    .line 231
    .local v1, "i":I
    const/4 v2, 0x0

    .line 232
    .local v2, "offsetY":F
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 233
    .local v3, "minIndex":I
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 234
    .local v4, "maxIndex":I
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v5

    .line 235
    .local v5, "fontData":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v6

    .line 236
    .local v6, "lineHeight":F
    :goto_23
    add-int/lit8 v7, v1, 0x1

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v8, v8, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v7, v8, :cond_ce

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x2

    if-ge v1, v7, :cond_ce

    .line 238
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v7

    .line 239
    .local v7, "lineStart":I
    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v8

    .line 241
    .local v8, "lineEnd":I
    if-ge v3, v7, :cond_4f

    if-ge v3, v8, :cond_4f

    if-ge v4, v7, :cond_4f

    if-lt v4, v8, :cond_4b

    goto :goto_4f

    :cond_4b
    move/from16 v16, v3

    goto/16 :goto_c2

    :cond_4f
    :goto_4f
    if-le v3, v7, :cond_57

    if-le v3, v8, :cond_57

    if-le v4, v7, :cond_57

    if-gt v4, v8, :cond_4b

    .line 244
    :cond_57
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 245
    .local v9, "start":I
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 247
    .local v10, "end":I
    const/4 v11, 0x0

    .line 248
    .local v11, "fontLineOffsetX":F
    const/4 v12, 0x0

    .line 251
    .local v12, "fontLineOffsetWidth":F
    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->displayText:Ljava/lang/CharSequence;

    invoke-interface {v13, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-virtual {v5, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v13

    .line 252
    .local v13, "lineFirst":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v13, :cond_91

    .line 255
    const/4 v14, 0x0

    if-ne v9, v7, :cond_81

    .line 256
    iget-boolean v15, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v15, :cond_75

    goto :goto_7f

    :cond_75
    iget v14, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v14, v14

    int-to-float v14, v14

    iget v15, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v14, v15

    iget v15, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v14, v15

    :goto_7f
    move v12, v14

    goto :goto_91

    .line 258
    :cond_81
    iget-boolean v15, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v15, :cond_86

    goto :goto_90

    :cond_86
    iget v14, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v14, v14

    int-to-float v14, v14

    iget v15, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v14, v15

    iget v15, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v14, v15

    :goto_90
    move v11, v14

    .line 261
    :cond_91
    :goto_91
    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v14, v9}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v14

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v15, v7}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v15

    sub-float/2addr v14, v15

    .line 262
    .local v14, "selectionX":F
    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v15, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v15

    move/from16 v16, v3

    .end local v3  # "minIndex":I
    .local v16, "minIndex":I
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    sub-float/2addr v15, v3

    .line 263
    .local v15, "selectionWidth":F
    add-float v3, p4, v14

    add-float v19, v3, v11

    sub-float v3, p5, v6

    sub-float v20, v3, v2

    add-float v21, v15, v12

    .line 264
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v22

    .line 263
    move-object/from16 v17, p1

    move-object/from16 v18, p2

    invoke-interface/range {v17 .. v22}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 267
    .end local v9  # "start":I
    .end local v10  # "end":I
    .end local v11  # "fontLineOffsetX":F
    .end local v12  # "fontLineOffsetWidth":F
    .end local v13  # "lineFirst":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v14  # "selectionX":F
    .end local v15  # "selectionWidth":F
    :goto_c2
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    add-float/2addr v2, v3

    .line 268
    nop

    .end local v7  # "lineStart":I
    .end local v8  # "lineEnd":I
    add-int/lit8 v1, v1, 0x2

    .line 269
    move/from16 v3, v16

    goto/16 :goto_23

    .line 236
    .end local v16  # "minIndex":I
    .restart local v3  # "minIndex":I
    :cond_ce
    move/from16 v16, v3

    .line 270
    .end local v3  # "minIndex":I
    .restart local v16  # "minIndex":I
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .registers 19
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p3, "x"  # F
    .param p4, "y"  # F

    .line 273
    move-object v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->textHeight:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    .line 274
    .local v1, "offsetY":F
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    mul-int/lit8 v2, v2, 0x2

    .local v2, "i":I
    :goto_14
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_49

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_49

    .line 275
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->displayText:Ljava/lang/CharSequence;

    add-float v8, p4, v1

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v9, v3, v2

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v4, v2, 0x1

    aget v10, v3, v4

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p2

    move-object v5, p1

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 276
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    sub-float/2addr v1, v3

    .line 274
    add-int/lit8 v2, v2, 0x2

    goto :goto_14

    .line 278
    .end local v2  # "i":I
    :cond_49
    return-void
.end method

.method public getCursorLine()I
    .registers 2

    .line 360
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    return v0
.end method

.method public getCursorX()F
    .registers 8

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "textOffset":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    .line 374
    .local v1, "fontData":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v2, v3, :cond_54

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_54

    .line 375
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    .line 376
    .local v2, "lineStart":I
    const/4 v3, 0x0

    .line 377
    .local v3, "glyphOffset":F
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->displayText:Ljava/lang/CharSequence;

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v4

    .line 378
    .local v4, "lineFirst":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v4, :cond_43

    .line 380
    iget-boolean v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v5, :cond_38

    const/4 v5, 0x0

    goto :goto_42

    :cond_38
    iget v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v5, v6

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v5, v6

    :goto_42
    move v3, v5

    .line 382
    :cond_43
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v6

    sub-float/2addr v5, v6

    add-float v0, v5, v3

    .line 384
    .end local v2  # "lineStart":I
    .end local v3  # "glyphOffset":F
    .end local v4  # "lineFirst":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_54
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    add-float/2addr v2, v0

    return v2
.end method

.method public getCursorY()F
    .registers 4

    .line 388
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 389
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v2

    mul-float/2addr v1, v2

    return v1
.end method

.method public getFirstLineShowing()I
    .registers 2

    .line 364
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    return v0
.end method

.method public getLines()I
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->newLineAtEnd()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLinesShowing()I
    .registers 2

    .line 368
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    return v0
.end method

.method public getPrefHeight()F
    .registers 4

    .line 115
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->prefRows:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    .line 116
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getPrefHeight()F

    move-result v0

    return v0

    .line 120
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->prefRows:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v0

    int-to-float v0, v0

    .line 121
    .local v0, "prefHeight":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_40

    .line 122
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 123
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    .line 122
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 125
    :cond_40
    return v0
.end method

.method protected getTextY(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)F
    .registers 5
    .param p1, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "background"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 221
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getHeight()F

    move-result v0

    .line 222
    .local v0, "textY":F
    if-eqz p2, :cond_b

    .line 223
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v1

    sub-float/2addr v0, v1

    .line 225
    :cond_b
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->usesIntegerPositions()Z

    move-result v1

    if-eqz v1, :cond_13

    float-to-int v1, v0

    int-to-float v0, v1

    .line 226
    :cond_13
    return v0
.end method

.method protected initialize()V
    .registers 3

    .line 69
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->initialize()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->writeEnters:Z

    .line 71
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 73
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    .line 74
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 75
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    .line 76
    return-void
.end method

.method protected letterUnderCursor(F)I
    .registers 9
    .param p1, "x"  # F

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x0

    if-lez v0, :cond_59

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt v0, v2, :cond_18

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 83
    :cond_18
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 84
    .local v0, "glyphPositions":[F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    .line 85
    .local v2, "start":I
    aget v3, v0, v2

    add-float/2addr p1, v3

    .line 86
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    .line 87
    .local v3, "end":I
    move v4, v2

    .line 88
    .local v4, "i":I
    :goto_36
    if-ge v4, v3, :cond_42

    .line 89
    aget v5, v0, v4

    cmpl-float v5, v5, p1

    if-lez v5, :cond_3f

    goto :goto_42

    .line 88
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 90
    :cond_42
    :goto_42
    if-lez v4, :cond_52

    aget v5, v0, v4

    sub-float/2addr v5, p1

    add-int/lit8 v6, v4, -0x1

    aget v6, v0, v6

    sub-float v6, p1, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_52

    return v4

    .line 91
    :cond_52
    add-int/lit8 v5, v4, -0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 94
    .end local v0  # "glyphPositions":[F
    .end local v2  # "start":I
    .end local v3  # "end":I
    .end local v4  # "i":I
    :cond_59
    return v1
.end method

.method protected moveCursor(ZZ)V
    .registers 7
    .param p1, "forward"  # Z
    .param p2, "jump"  # Z

    .line 337
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    .line 338
    .local v0, "count":I
    :goto_5
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 339
    .local v1, "index":I
    if-ltz v1, :cond_38

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_38

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v2, v2, v1

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    if-ne v2, v3, :cond_38

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    if-ne v2, v3, :cond_38

    .line 341
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 342
    if-eqz p2, :cond_34

    .line 343
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    .line 345
    :cond_34
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    goto :goto_3b

    .line 347
    :cond_38
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    .line 349
    :goto_3b
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    .line 351
    return-void
.end method

.method public moveCursorLine(I)V
    .registers 6
    .param p1, "line"  # I

    .line 142
    const/high16 v0, -0x40800000  # -1.0f

    if-gez p1, :cond_d

    .line 143
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 144
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 145
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    goto/16 :goto_c9

    .line 146
    :cond_d
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v1

    if-lt p1, v1, :cond_31

    .line 147
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 148
    .local v1, "newLine":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 149
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v2

    if-gt p1, v2, :cond_2b

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    if-ne v1, v2, :cond_2d

    .line 150
    :cond_2b
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 152
    :cond_2d
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .end local v1  # "newLine":I
    goto/16 :goto_c8

    .line 153
    :cond_31
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    if-eq p1, v0, :cond_c8

    .line 154
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_63

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v2, v2, 0x2

    if-gt v0, v2, :cond_47

    goto :goto_61

    :cond_47
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 156
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float v1, v0, v1

    :goto_61
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 158
    :cond_63
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 159
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt v0, v1, :cond_76

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_80

    :cond_76
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v0

    :goto_80
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 160
    :goto_82
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c4

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_c4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 161
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c4

    .line 162
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    goto :goto_82

    .line 164
    :cond_c4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    goto :goto_c9

    .line 153
    :cond_c8
    :goto_c8
    nop

    .line 166
    :goto_c9
    return-void
.end method

.method public newLineAtEnd()Z
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2d

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    .line 136
    :cond_2d
    :goto_2d
    return v2
.end method

.method public setPrefRows(F)V
    .registers 2
    .param p1, "prefRows"  # F

    .line 111
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->prefRows:F

    .line 112
    return-void
.end method

.method public setSelection(II)V
    .registers 3
    .param p1, "selectionStart"  # I
    .param p2, "selectionEnd"  # I

    .line 332
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSelection(II)V

    .line 333
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    .line 334
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .registers 4
    .param p1, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .line 100
    if-eqz p1, :cond_1e

    .line 101
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .line 104
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v0

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->textHeight:F

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateDisplayText()V

    .line 106
    :cond_1a
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->invalidateHierarchy()V

    .line 107
    return-void

    .line 100
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method showCursor()V
    .registers 1

    .line 186
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    .line 187
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateFirstLineShowing()V

    .line 188
    return-void
.end method

.method protected sizeChanged()V
    .registers 6

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->lastText:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 215
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 216
    .local v1, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getHeight()F

    move-result v2

    if-nez v1, :cond_13

    const/4 v3, 0x0

    goto :goto_1c

    :cond_13
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v4

    add-float/2addr v3, v4

    :goto_1c
    sub-float/2addr v2, v3

    .line 217
    .local v2, "availableHeight":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    div-float v3, v2, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    .line 218
    return-void
.end method

.method updateCurrentLine()V
    .registers 5

    .line 170
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->calculateCurrentLineIndex(I)I

    move-result v0

    .line 171
    .local v0, "index":I
    div-int/lit8 v1, v0, 0x2

    .line 174
    .local v1, "line":I
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2e

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_2e

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_2e

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_64

    .line 176
    :cond_2e
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_62

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_62

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_64

    .line 178
    :cond_62
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 181
    :cond_64
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateFirstLineShowing()V

    .line 182
    return-void
.end method

.method updateFirstLineShowing()V
    .registers 5

    .line 191
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    if-eq v0, v1, :cond_26

    .line 192
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    .line 193
    .local v0, "step":I
    :goto_10
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    if-gt v1, v3, :cond_20

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    if-ge v1, v3, :cond_26

    .line 194
    :cond_20
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    goto :goto_10

    .line 197
    .end local v0  # "step":I
    :cond_26
    return-void
.end method
