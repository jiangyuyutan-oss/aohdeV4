.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;
.source "TextArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextAreaListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    .line 393
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    return-void
.end method


# virtual methods
.method protected checkFocusTraversal(C)Z
    .registers 3
    .param p1, "character"  # C

    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->focusTraversal:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x9

    if-ne p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected goEnd(Z)V
    .registers 5
    .param p1, "jump"  # Z

    .line 478
    if-nez p1, :cond_34

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v1

    if-lt v0, v1, :cond_f

    goto :goto_34

    .line 480
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v1, :cond_40

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    goto :goto_40

    .line 479
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 483
    :cond_40
    :goto_40
    return-void
.end method

.method protected goHome(Z)V
    .registers 5
    .param p1, "jump"  # Z

    .line 470
    if-eqz p1, :cond_8

    .line 471
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    goto :goto_28

    .line 472
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v1, :cond_28

    .line 473
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 475
    :cond_28
    :goto_28
    return-void
.end method

.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .registers 9
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode"  # I

    .line 419
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    move-result v0

    .line 420
    .local v0, "result":Z
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasKeyboardFocus()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, "repeat":Z
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x3b

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_25

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v4, 0x3c

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_25

    :cond_23
    const/4 v2, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    move v2, v3

    .line 423
    .local v2, "shift":Z
    :goto_26
    const/16 v4, 0x14

    if-ne p2, v4, :cond_50

    .line 424
    if-eqz v2, :cond_3f

    .line 425
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    if-nez v4, :cond_44

    .line 426
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    .line 427
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iput-boolean v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    goto :goto_44

    .line 430
    :cond_3f
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->clearSelection()V

    .line 432
    :cond_44
    :goto_44
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveCursorLine(I)V

    .line 433
    const/4 v1, 0x1

    goto :goto_80

    .line 435
    :cond_50
    const/16 v4, 0x13

    if-ne p2, v4, :cond_7a

    .line 436
    if-eqz v2, :cond_69

    .line 437
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    if-nez v4, :cond_6e

    .line 438
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    .line 439
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iput-boolean v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    goto :goto_6e

    .line 442
    :cond_69
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->clearSelection()V

    .line 444
    :cond_6e
    :goto_6e
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveCursorLine(I)V

    .line 445
    const/4 v1, 0x1

    goto :goto_80

    .line 448
    :cond_7a
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/high16 v5, -0x40800000  # -1.0f

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 450
    :goto_80
    if-eqz v1, :cond_85

    .line 451
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->scheduleKeyRepeatTask(I)V

    .line 453
    :cond_85
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    .line 454
    return v3

    .line 456
    .end local v1  # "repeat":Z
    .end local v2  # "shift":Z
    :cond_8b
    return v0
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .registers 5
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "character"  # C

    .line 464
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z

    move-result v0

    .line 465
    .local v0, "result":Z
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    .line 466
    return v0
.end method

.method protected setCursorPosition(FF)V
    .registers 9
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 395
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 397
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 398
    .local v0, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 400
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getHeight()F

    move-result v2

    .line 402
    .local v2, "height":F
    if-eqz v0, :cond_24

    .line 403
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    sub-float/2addr v2, v3

    .line 404
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    sub-float/2addr p1, v3

    .line 406
    :cond_24
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 407
    if-eqz v0, :cond_30

    .line 408
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    sub-float/2addr p2, v3

    .line 411
    :cond_30
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    sub-float v4, v2, p2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 412
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 414
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->setCursorPosition(FF)V

    .line 415
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    .line 416
    return-void
.end method
