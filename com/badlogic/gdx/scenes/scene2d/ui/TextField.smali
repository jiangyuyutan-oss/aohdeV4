.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "TextField.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;
    }
.end annotation


# static fields
.field protected static final BACKSPACE:C = '\b'

.field protected static final BULLET:C = '\u0095'

.field protected static final CARRIAGE_RETURN:C = '\r'

.field protected static final DELETE:C = '\u007f'

.field protected static final NEWLINE:C = '\n'

.field protected static final TAB:C = '\t'

.field public static keyRepeatInitialTime:F

.field public static keyRepeatTime:F

.field private static final tmp1:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmp2:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmp3:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field final blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

.field blinkTime:F

.field clipboard:Lcom/badlogic/gdx/utils/Clipboard;

.field protected cursor:I

.field cursorOn:Z

.field disabled:Z

.field protected displayText:Ljava/lang/CharSequence;

.field filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

.field focusTraversal:Z

.field focused:Z

.field protected fontOffset:F

.field protected final glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

.field protected hasSelection:Z

.field inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field final keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

.field keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

.field lastChangeTime:J

.field protected final layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

.field listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

.field private maxLength:I

.field private messageText:Ljava/lang/String;

.field onlyFontChars:Z

.field private passwordBuffer:Ljava/lang/StringBuilder;

.field private passwordCharacter:C

.field passwordMode:Z

.field programmaticChangeEvents:Z

.field renderOffset:F

.field protected selectionStart:I

.field private selectionWidth:F

.field private selectionX:F

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

.field protected text:Ljava/lang/String;

.field private textHAlign:I

.field protected textHeight:F

.field protected textOffset:F

.field undoText:Ljava/lang/String;

.field private visibleTextEnd:I

.field private visibleTextStart:I

.field protected writeEnters:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    .line 77
    const v0, 0x3ecccccd  # 0.4f

    sput v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatInitialTime:F

    .line 78
    const v0, 0x3dcccccd  # 0.1f

    sput v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTime:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 4
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 129
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 5
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"  # Ljava/lang/String;

    .line 133
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .registers 5
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .line 136
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 84
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 85
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    .line 94
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focusTraversal:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->onlyFontChars:Z

    .line 96
    const/16 v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->undoText:Ljava/lang/String;

    .line 104
    const/16 v0, 0x95

    iput-char v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordCharacter:C

    .line 113
    const v0, 0x3ea3d70a  # 0.32f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    .line 114
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

    .line 125
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    .line 137
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    .line 138
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/utils/Clipboard;

    .line 139
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->initialize()V

    .line 140
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSize(FF)V

    .line 142
    return-void
.end method

.method private findNextTextField(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .registers 22
    .param p2, "best"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .param p3, "bestCoords"  # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "currentCoords"  # Lcom/badlogic/gdx/math/Vector2;
    .param p5, "up"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;",
            "Lcom/badlogic/gdx/math/Vector2;",
            "Lcom/badlogic/gdx/math/Vector2;",
            "Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;"
        }
    .end annotation

    .line 543
    .local p1, "actors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    move-object/from16 v0, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v1, 0x0

    .local v1, "i":I
    iget v9, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move-object/from16 v10, p2

    move v11, v1

    .end local v1  # "i":I
    .end local p2  # "best":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .local v9, "n":I
    .local v10, "best":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .local v11, "i":I
    :goto_c
    if-ge v11, v9, :cond_e7

    .line 544
    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 545
    .local v12, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    if-eqz v1, :cond_c8

    .line 546
    move-object/from16 v13, p0

    if-ne v12, v13, :cond_1f

    goto/16 :goto_e3

    .line 547
    :cond_1f
    move-object v1, v12

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    .line 548
    .local v1, "textField":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_e3

    iget-boolean v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focusTraversal:Z

    if-eqz v2, :cond_e3

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->ascendantsVisible()Z

    move-result v2

    if-nez v2, :cond_34

    goto/16 :goto_e3

    .line 549
    :cond_34
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v4

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 550
    .local v2, "actorCoords":Lcom/badlogic/gdx/math/Vector2;
    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v3, v3, v4

    const/4 v5, 0x1

    if-eqz v3, :cond_64

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_5d

    move v3, v5

    goto :goto_5e

    :cond_5d
    const/4 v3, 0x0

    :goto_5e
    xor-int v3, v3, p5

    if-eqz v3, :cond_64

    move v3, v5

    goto :goto_65

    :cond_64
    const/4 v3, 0x0

    .line 551
    .local v3, "below":Z
    :goto_65
    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v14, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v6, v6, v14

    if-nez v6, :cond_7e

    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v14, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v6, v6, v14

    if-lez v6, :cond_77

    move v6, v5

    goto :goto_78

    :cond_77
    const/4 v6, 0x0

    :goto_78
    xor-int v6, v6, p5

    if-eqz v6, :cond_7e

    move v6, v5

    goto :goto_7f

    :cond_7e
    const/4 v6, 0x0

    .line 552
    .local v6, "right":Z
    :goto_7f
    if-nez v3, :cond_85

    if-nez v6, :cond_85

    goto/16 :goto_e3

    .line 553
    :cond_85
    if-eqz v10, :cond_a1

    iget v14, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v15, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_9f

    iget v14, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v15, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_99

    move v14, v5

    goto :goto_9a

    :cond_99
    const/4 v14, 0x0

    :goto_9a
    xor-int v14, v14, p5

    if-eqz v14, :cond_9f

    goto :goto_a1

    :cond_9f
    const/4 v14, 0x0

    goto :goto_a2

    :cond_a1
    :goto_a1
    move v14, v5

    .line 554
    .local v14, "better":Z
    :goto_a2
    if-nez v14, :cond_bf

    iget v15, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v4, v15, v4

    if-nez v4, :cond_bd

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v15, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v4, v4, v15

    if-gez v4, :cond_b6

    move v4, v5

    goto :goto_b7

    :cond_b6
    const/4 v4, 0x0

    :goto_b7
    xor-int v4, v4, p5

    if-eqz v4, :cond_bd

    move v4, v5

    goto :goto_be

    :cond_bd
    const/4 v4, 0x0

    :goto_be
    move v14, v4

    .line 555
    :cond_bf
    if-eqz v14, :cond_c7

    .line 556
    move-object v10, v12

    check-cast v10, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    .line 557
    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 559
    .end local v1  # "textField":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .end local v2  # "actorCoords":Lcom/badlogic/gdx/math/Vector2;
    .end local v3  # "below":Z
    .end local v6  # "right":Z
    .end local v14  # "better":Z
    :cond_c7
    goto :goto_e3

    :cond_c8
    move-object/from16 v13, p0

    instance-of v1, v12, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_c7

    .line 560
    move-object v1, v12

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v10

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->findNextTextField(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object v1

    move-object v10, v1

    .line 543
    .end local v12  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_e3
    :goto_e3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c

    :cond_e7
    move-object/from16 v13, p0

    .line 562
    .end local v9  # "n":I
    .end local v11  # "i":I
    return-object v10
.end method


# virtual methods
.method public appendText(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"  # Ljava/lang/String;

    .line 601
    if-nez p1, :cond_4

    const-string p1, ""

    .line 603
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 604
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 605
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->programmaticChangeEvents:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste(Ljava/lang/String;Z)V

    .line 606
    return-void
.end method

.method protected calculateOffsets()V
    .registers 18

    .line 233
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getWidth()F

    move-result v1

    .line 234
    .local v1, "visibleWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    .line 235
    .local v2, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v2, :cond_16

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v4

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 237
    :cond_16
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 238
    .local v3, "glyphCount":I
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 241
    .local v4, "glyphPositions":[F
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aget v5, v4, v5

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    add-float/2addr v5, v7

    .line 242
    .local v5, "distance":F
    const/4 v7, 0x0

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_37

    .line 243
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    sub-float/2addr v7, v5

    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    goto :goto_4e

    .line 245
    :cond_37
    add-int/lit8 v7, v3, -0x1

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 246
    .local v7, "index":I
    aget v8, v4, v7

    sub-float/2addr v8, v1

    .line 247
    .local v8, "minX":F
    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    neg-float v9, v9

    cmpg-float v9, v9, v8

    if-gez v9, :cond_4e

    neg-float v9, v8

    iput v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    .line 251
    .end local v7  # "index":I
    .end local v8  # "minX":F
    :cond_4e
    :goto_4e
    const/4 v7, 0x0

    .line 252
    .local v7, "maxOffset":F
    add-int/lit8 v8, v3, -0x1

    aget v8, v4, v8

    .line 253
    .local v8, "width":F
    add-int/lit8 v9, v3, -0x2

    .local v9, "i":I
    :goto_55
    if-ltz v9, :cond_64

    .line 254
    aget v10, v4, v9

    .line 255
    .local v10, "x":F
    sub-float v11, v8, v10

    cmpl-float v11, v11, v1

    if-lez v11, :cond_60

    goto :goto_64

    .line 256
    :cond_60
    move v7, v10

    .line 253
    .end local v10  # "x":F
    add-int/lit8 v9, v9, -0x1

    goto :goto_55

    .line 258
    .end local v9  # "i":I
    :cond_64
    :goto_64
    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    neg-float v9, v9

    cmpl-float v9, v9, v7

    if-lez v9, :cond_6e

    neg-float v9, v7

    iput v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    .line 261
    :cond_6e
    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    .line 262
    const/4 v9, 0x0

    .line 263
    .local v9, "startX":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_72
    if-ge v10, v3, :cond_85

    .line 264
    aget v11, v4, v10

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    neg-float v12, v12

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_82

    .line 265
    iput v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    .line 266
    aget v9, v4, v10

    .line 267
    goto :goto_85

    .line 263
    :cond_82
    add-int/lit8 v10, v10, 0x1

    goto :goto_72

    .line 272
    .end local v10  # "i":I
    :cond_85
    :goto_85
    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    add-int/lit8 v10, v10, 0x1

    .line 273
    .local v10, "end":I
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    sub-float v11, v1, v11

    .line 274
    .local v11, "endX":F
    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .local v12, "n":I
    :goto_97
    if-gt v10, v12, :cond_a3

    .line 275
    aget v13, v4, v10

    cmpl-float v13, v13, v11

    if-lez v13, :cond_a0

    goto :goto_a3

    .line 274
    :cond_a0
    add-int/lit8 v10, v10, 0x1

    goto :goto_97

    .line 276
    .end local v12  # "n":I
    :cond_a3
    :goto_a3
    add-int/lit8 v12, v10, -0x1

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    .line 278
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_d0

    .line 279
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    aget v6, v4, v6

    sub-float v6, v1, v6

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fontOffset:F

    sub-float/2addr v6, v12

    add-float/2addr v6, v9

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    .line 280
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d5

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    const/high16 v12, 0x3f000000  # 0.5f

    mul-float/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    goto :goto_d5

    .line 282
    :cond_d0
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    add-float/2addr v6, v9

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    .line 285
    :cond_d5
    :goto_d5
    iget-boolean v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v6, :cond_11a

    .line 286
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 287
    .local v6, "minIndex":I
    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 288
    .local v12, "maxIndex":I
    aget v13, v4, v6

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    aget v14, v4, v14

    sub-float/2addr v13, v14

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    neg-float v14, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 289
    .local v13, "minX":F
    aget v14, v4, v12

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    aget v15, v4, v15

    sub-float/2addr v14, v15

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    sub-float v15, v1, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 290
    .local v14, "maxX":F
    iput v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionX:F

    .line 291
    sub-float v15, v14, v13

    move/from16 v16, v1

    .end local v1  # "visibleWidth":F
    .local v16, "visibleWidth":F
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    sub-float/2addr v15, v1

    iput v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionWidth:F

    goto :goto_11c

    .line 285
    .end local v6  # "minIndex":I
    .end local v12  # "maxIndex":I
    .end local v13  # "minX":F
    .end local v14  # "maxX":F
    .end local v16  # "visibleWidth":F
    .restart local v1  # "visibleWidth":F
    :cond_11a
    move/from16 v16, v1

    .line 293
    .end local v1  # "visibleWidth":F
    .restart local v16  # "visibleWidth":F
    :goto_11c
    return-void
.end method

.method changeText(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "oldText"  # Ljava/lang/String;
    .param p2, "newText"  # Ljava/lang/String;

    .line 628
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 629
    :cond_8
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 630
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 631
    .local v0, "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v1

    .line 632
    .local v1, "cancelled":Z
    if-eqz v1, :cond_1a

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 633
    :cond_1a
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 634
    xor-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public clearSelection()V
    .registers 2

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 682
    return-void
.end method

.method protected continueCursor(II)Z
    .registers 5
    .param p1, "index"  # I
    .param p2, "offset"  # I

    .line 780
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 781
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isWordCharacter(C)Z

    move-result v1

    return v1
.end method

.method public copy()V
    .registers 6

    .line 443
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-nez v0, :cond_23

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/utils/Clipboard;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    .line 446
    :cond_23
    return-void
.end method

.method protected createInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .registers 2

    .line 149
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    return-object v0
.end method

.method public cut()V
    .registers 2

    .line 451
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->programmaticChangeEvents:Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cut(Z)V

    .line 452
    return-void
.end method

.method cut(Z)V
    .registers 3
    .param p1, "fireChangeEvent"  # Z

    .line 455
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-nez v0, :cond_14

    .line 456
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->copy()V

    .line 457
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete(Z)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 458
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 460
    :cond_14
    return-void
.end method

.method delete(Z)I
    .registers 10
    .param p1, "fireChangeEvent"  # Z

    .line 495
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 496
    .local v0, "from":I
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 497
    .local v1, "to":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 498
    .local v2, "minIndex":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 499
    .local v3, "maxIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    if-lez v2, :cond_1d

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1e

    :cond_1d
    move-object v6, v5

    :goto_1e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 500
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_36

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, "newText":Ljava/lang/String;
    if-eqz p1, :cond_46

    .line 502
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->changeText(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_48

    .line 504
    :cond_46
    iput-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 505
    :goto_48
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 506
    return v2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 28
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 302
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasKeyboardFocus()Z

    move-result v8

    .line 303
    .local v8, "focused":Z
    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focused:Z

    if-ne v8, v0, :cond_1d

    if-eqz v8, :cond_17

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_1d

    .line 311
    :cond_17
    if-nez v8, :cond_37

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    goto :goto_37

    .line 304
    :cond_1d
    :goto_1d
    iput-boolean v8, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focused:Z

    .line 305
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 306
    iput-boolean v8, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 307
    if-eqz v8, :cond_32

    .line 308
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

    iget v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    iget v2, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    goto :goto_37

    .line 310
    :cond_32
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->cancel()V

    .line 314
    :cond_37
    :goto_37
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 315
    .local v9, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-eqz v0, :cond_4a

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_4a

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_5b

    :cond_4a
    if-eqz v8, :cond_57

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_57

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_5b

    :cond_57
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    :goto_5b
    move-object v10, v0

    .line 317
    .local v10, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 318
    .local v11, "selection":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 319
    .local v12, "cursorPatch":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v13

    .line 321
    .local v13, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    .line 322
    .local v14, "color":Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getX()F

    move-result v15

    .line 323
    .local v15, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getY()F

    move-result v16

    .line 324
    .local v16, "y":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getWidth()F

    move-result v17

    .line 325
    .local v17, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getHeight()F

    move-result v18

    .line 327
    .local v18, "height":F
    iget v0, v14, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v14, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v14, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    invoke-interface {v7, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 328
    const/16 v19, 0x0

    .local v19, "bgLeftWidth":F
    const/16 v20, 0x0

    .line 329
    .local v20, "bgRightWidth":F
    if-eqz v13, :cond_a4

    .line 330
    move-object v0, v13

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 331
    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v19

    .line 332
    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v20

    .line 335
    :cond_a4
    invoke-virtual {v6, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getTextY(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)F

    move-result v21

    .line 336
    .local v21, "textY":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->calculateOffsets()V

    .line 338
    if-eqz v8, :cond_c0

    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_c0

    if-eqz v11, :cond_c0

    .line 339
    add-float v4, v15, v19

    add-float v5, v16, v21

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->drawSelection(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V

    .line 342
    :cond_c0
    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v0

    if-eqz v0, :cond_ca

    iget v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    neg-float v0, v0

    goto :goto_cb

    :cond_ca
    const/4 v0, 0x0

    :goto_cb
    move/from16 v22, v0

    .line 343
    .local v22, "yOffset":F
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_130

    .line 344
    if-nez v8, :cond_149

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    if-eqz v0, :cond_149

    .line 345
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v0, :cond_e6

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    goto :goto_e7

    :cond_e6
    move-object v0, v9

    :goto_e7
    move-object v5, v0

    .line 346
    .local v5, "messageFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_10f

    .line 347
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v4, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v4

    mul-float v3, v3, p2

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    goto :goto_119

    .line 350
    :cond_10f
    iget v0, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    const v1, 0x3f333333  # 0.7f

    invoke-virtual {v5, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 351
    :goto_119
    add-float v3, v15, v19

    add-float v0, v16, v21

    add-float v4, v0, v22

    sub-float v0, v17, v19

    sub-float v23, v0, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v24, v5

    .end local v5  # "messageFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .local v24, "messageFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    move/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->drawMessageText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFF)V

    .line 352
    .end local v24  # "messageFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    goto :goto_149

    .line 354
    :cond_130
    iget v0, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v4, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v4

    mul-float v3, v3, p2

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 355
    add-float v0, v15, v19

    add-float v1, v16, v21

    add-float v1, v1, v22

    invoke-virtual {v6, v7, v9, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V

    .line 357
    :cond_149
    :goto_149
    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-nez v0, :cond_160

    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    if-eqz v0, :cond_160

    if-eqz v12, :cond_160

    .line 358
    add-float v4, v15, v19

    add-float v5, v16, v21

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->drawCursor(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V

    .line 360
    :cond_160
    return-void
.end method

.method protected drawCursor(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .registers 14
    .param p1, "cursorPatch"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p3, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p4, "x"  # F
    .param p5, "y"  # F

    .line 390
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    add-float/2addr v0, p4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 391
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fontOffset:F

    add-float/2addr v0, v1

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    add-float v4, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    sub-float v0, p5, v0

    .line 392
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    sub-float v5, v0, v1

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v6

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    .line 390
    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 393
    return-void
.end method

.method protected drawMessageText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFF)V
    .registers 18
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p3, "x"  # F
    .param p4, "y"  # F
    .param p5, "maxWidth"  # F

    .line 386
    move-object v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    const/4 v10, 0x0

    const-string v11, "..."

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    move v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 387
    return-void
.end method

.method protected drawSelection(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .registers 14
    .param p1, "selection"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p3, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p4, "x"  # F
    .param p5, "y"  # F

    .line 377
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    add-float/2addr v0, p4

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fontOffset:F

    add-float v4, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    sub-float v0, p5, v0

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    sub-float v5, v0, v1

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionWidth:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 379
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .registers 15
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p3, "x"  # F
    .param p4, "y"  # F

    .line 382
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    add-float v3, p3, v0

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    move v4, p4

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 383
    return-void
.end method

.method public getAlignment()I
    .registers 2

    .line 738
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    return v0
.end method

.method protected getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 2

    .line 296
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 297
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasKeyboardFocus()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 298
    :cond_20
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getCursorPosition()I
    .registers 2

    .line 692
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    return v0
.end method

.method public getDefaultInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    return-object v0
.end method

.method public getMaxLength()I
    .registers 2

    .line 207
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    return v0
.end method

.method public getMessageText()Ljava/lang/String;
    .registers 2

    .line 590
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    return-object v0
.end method

.method public getOnscreenKeyboard()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;
    .registers 2

    .line 697
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    return-object v0
.end method

.method public getPrefHeight()F
    .registers 5

    .line 713
    const/4 v0, 0x0

    .local v0, "topAndBottom":F
    const/4 v1, 0x0

    .line 714
    .local v1, "minHeight":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_29

    .line 715
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 716
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 718
    :cond_29
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_50

    .line 719
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 720
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    add-float/2addr v2, v3

    .line 719
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 721
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 723
    :cond_50
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_77

    .line 724
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 725
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    add-float/2addr v2, v3

    .line 724
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 726
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 728
    :cond_77
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    add-float/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public getPrefWidth()F
    .registers 2

    .line 709
    const/high16 v0, 0x43160000  # 150.0f

    return v0
.end method

.method public getProgrammaticChangeEvents()Z
    .registers 2

    .line 644
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->programmaticChangeEvents:Z

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .registers 5

    .line 652
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_1b
    const-string v0, ""

    :goto_1d
    return-object v0
.end method

.method public getSelectionStart()I
    .registers 2

    .line 648
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 623
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextFieldFilter()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;
    .registers 2

    .line 580
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    return-object v0
.end method

.method protected getTextY(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)F
    .registers 8
    .param p1, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "background"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 363
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getHeight()F

    move-result v0

    .line 364
    .local v0, "height":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    add-float/2addr v1, v3

    .line 365
    .local v1, "textY":F
    if-eqz p2, :cond_1f

    .line 366
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    .line 367
    .local v3, "bottom":F
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v4

    sub-float v4, v0, v4

    sub-float/2addr v4, v3

    div-float/2addr v4, v2

    add-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 368
    .end local v1  # "textY":F
    .end local v3  # "bottom":F
    .local v4, "textY":F
    goto :goto_23

    .line 369
    .end local v4  # "textY":F
    .restart local v1  # "textY":F
    :cond_1f
    div-float v2, v0, v2

    add-float v4, v1, v2

    .line 371
    .end local v1  # "textY":F
    .restart local v4  # "textY":F
    :goto_23
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->usesIntegerPositions()Z

    move-result v1

    if-eqz v1, :cond_2b

    float-to-int v1, v4

    int-to-float v4, v1

    .line 372
    :cond_2b
    return v4
.end method

.method protected initialize()V
    .registers 2

    .line 145
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->createInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 146
    return-void
.end method

.method insert(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "position"  # I
    .param p2, "text"  # Ljava/lang/CharSequence;
    .param p3, "to"  # Ljava/lang/String;

    .line 490
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 491
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDisabled()Z
    .registers 2

    .line 768
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    return v0
.end method

.method public isPasswordMode()Z
    .registers 2

    .line 749
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    return v0
.end method

.method protected isWordCharacter(C)Z
    .registers 3
    .param p1, "c"  # C

    .line 168
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    return v0
.end method

.method protected letterUnderCursor(F)I
    .registers 8
    .param p1, "x"  # F

    .line 153
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fontOffset:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 154
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    .line 155
    .local v0, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v1

    sub-float/2addr p1, v1

    .line 156
    :cond_29
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 157
    .local v1, "n":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 158
    .local v2, "glyphPositions":[F
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_32
    if-ge v3, v1, :cond_4e

    .line 159
    aget v4, v2, v3

    cmpl-float v4, v4, p1

    if-lez v4, :cond_4b

    .line 160
    aget v4, v2, v3

    sub-float/2addr v4, p1

    add-int/lit8 v5, v3, -0x1

    aget v5, v2, v5

    sub-float v5, p1, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_48

    return v3

    .line 161
    :cond_48
    add-int/lit8 v4, v3, -0x1

    return v4

    .line 158
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 164
    .end local v3  # "i":I
    :cond_4e
    add-int/lit8 v3, v1, -0x1

    return v3
.end method

.method protected moveCursor(ZZ)V
    .registers 6
    .param p1, "forward"  # Z
    .param p2, "jump"  # Z

    .line 772
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_b

    :cond_a
    move v1, v0

    .line 773
    .local v1, "limit":I
    :goto_b
    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, -0x1

    .line 774
    .local v0, "charOffset":I
    :cond_f
    :goto_f
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-eqz p1, :cond_1a

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-ge v2, v1, :cond_2a

    goto :goto_20

    :cond_1a
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-le v2, v1, :cond_2a

    :goto_20
    if-eqz p2, :cond_2a

    .line 775
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {p0, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->continueCursor(II)Z

    move-result v2

    if-nez v2, :cond_f

    .line 777
    :cond_2a
    return-void
.end method

.method public next(Z)V
    .registers 13
    .param p1, "up"  # Z

    .line 513
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 514
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-nez v0, :cond_7

    return-void

    .line 515
    :cond_7
    move-object v1, p0

    .line 516
    .local v1, "current":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 517
    .local v2, "currentCoords":Lcom/badlogic/gdx/math/Vector2;
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    .line 519
    .local v3, "bestCoords":Lcom/badlogic/gdx/math/Vector2;
    :goto_20
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v1

    move-object v7, v3

    move-object v8, v2

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->findNextTextField(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object v10

    .line 520
    .local v10, "textField":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    if-nez v10, :cond_4b

    .line 521
    if-eqz p1, :cond_38

    .line 522
    const v4, -0x800001

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_3e

    .line 524
    :cond_38
    const v4, 0x7f7fffff  # Float.MAX_VALUE

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 525
    :goto_3e
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v1

    move-object v7, v3

    move-object v8, v2

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->findNextTextField(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object v10

    .line 527
    :cond_4b
    if-nez v10, :cond_54

    .line 528
    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V

    .line 529
    goto :goto_5e

    .line 531
    :cond_54
    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 532
    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectAll()V

    .line 533
    nop

    .line 538
    .end local v10  # "textField":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    :goto_5e
    return-void

    .line 535
    .restart local v10  # "textField":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    :cond_5f
    move-object v1, v10

    .line 536
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 537
    .end local v10  # "textField":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    goto :goto_20
.end method

.method paste(Ljava/lang/String;Z)V
    .registers 12
    .param p1, "content"  # Ljava/lang/String;
    .param p2, "fireChangeEvent"  # Z

    .line 463
    if-nez p1, :cond_3

    return-void

    .line 464
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 466
    .local v1, "textLength":I
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v2, :cond_1c

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 467
    :cond_1c
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    .line 468
    .local v2, "data":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "n":I
    :goto_29
    if-ge v3, v4, :cond_6a

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->withinMaxLength(I)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_6a

    .line 470
    :cond_37
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 471
    .local v5, "c":C
    iget-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->writeEnters:Z

    const/16 v7, 0xa

    const/16 v8, 0xd

    if-eqz v6, :cond_47

    if-eq v5, v7, :cond_64

    if-eq v5, v8, :cond_64

    .line 472
    :cond_47
    if-eq v5, v8, :cond_67

    if-ne v5, v7, :cond_4c

    goto :goto_67

    .line 473
    :cond_4c
    iget-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->onlyFontChars:Z

    if-eqz v6, :cond_57

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->hasGlyph(C)Z

    move-result v6

    if-nez v6, :cond_57

    goto :goto_67

    .line 474
    :cond_57
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    if-eqz v6, :cond_64

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    invoke-interface {v6, p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;->acceptChar(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)Z

    move-result v6

    if-nez v6, :cond_64

    goto :goto_67

    .line 476
    :cond_64
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    .end local v5  # "c":C
    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 478
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_6a
    :goto_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 480
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v3, :cond_78

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete(Z)I

    move-result v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 481
    :cond_78
    if-eqz p2, :cond_88

    .line 482
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {p0, v4, p1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->insert(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->changeText(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_92

    .line 484
    :cond_88
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {p0, v3, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->insert(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 485
    :goto_92
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 486
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 487
    return-void
.end method

.method public selectAll()V
    .registers 3

    .line 677
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSelection(II)V

    .line 678
    return-void
.end method

.method public setAlignment(I)V
    .registers 2
    .param p1, "alignment"  # I

    .line 734
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    .line 735
    return-void
.end method

.method public setBlinkTime(F)V
    .registers 2
    .param p1, "blinkTime"  # F

    .line 760
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    .line 761
    return-void
.end method

.method public setClipboard(Lcom/badlogic/gdx/utils/Clipboard;)V
    .registers 2
    .param p1, "clipboard"  # Lcom/badlogic/gdx/utils/Clipboard;

    .line 705
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/utils/Clipboard;

    .line 706
    return-void
.end method

.method public setCursorPosition(I)V
    .registers 4
    .param p1, "cursorPosition"  # I

    .line 686
    if-ltz p1, :cond_12

    .line 687
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 688
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 689
    return-void

    .line 686
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cursorPosition must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisabled(Z)V
    .registers 2
    .param p1, "disabled"  # Z

    .line 764
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    .line 765
    return-void
.end method

.method public setFocusTraversal(Z)V
    .registers 2
    .param p1, "focusTraversal"  # Z

    .line 585
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focusTraversal:Z

    .line 586
    return-void
.end method

.method public setMaxLength(I)V
    .registers 2
    .param p1, "maxLength"  # I

    .line 203
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    .line 204
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .registers 2
    .param p1, "messageText"  # Ljava/lang/String;

    .line 596
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    .line 597
    return-void
.end method

.method public setOnlyFontChars(Z)V
    .registers 2
    .param p1, "onlyFontChars"  # Z

    .line 214
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->onlyFontChars:Z

    .line 215
    return-void
.end method

.method public setOnscreenKeyboard(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;)V
    .registers 2
    .param p1, "keyboard"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    .line 701
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    .line 702
    return-void
.end method

.method public setPasswordCharacter(C)V
    .registers 3
    .param p1, "passwordCharacter"  # C

    .line 755
    iput-char p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordCharacter:C

    .line 756
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 757
    :cond_9
    return-void
.end method

.method public setPasswordMode(Z)V
    .registers 2
    .param p1, "passwordMode"  # Z

    .line 744
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    .line 745
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 746
    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .registers 2
    .param p1, "programmaticChangeEvents"  # Z

    .line 640
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->programmaticChangeEvents:Z

    .line 641
    return-void
.end method

.method public setSelection(II)V
    .registers 5
    .param p1, "selectionStart"  # I
    .param p2, "selectionEnd"  # I

    .line 657
    if-ltz p1, :cond_33

    .line 658
    if-ltz p2, :cond_2b

    .line 659
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 660
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 661
    if-ne p2, p1, :cond_1e

    .line 662
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 663
    return-void

    .line 665
    :cond_1e
    if-ge p2, p1, :cond_23

    .line 666
    move v0, p2

    .line 667
    .local v0, "temp":I
    move p2, p1

    .line 668
    move p1, v0

    .line 671
    .end local v0  # "temp":I
    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 672
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 673
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 674
    return-void

    .line 658
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectionEnd must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectionStart must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .registers 5
    .param p1, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .line 218
    if-eqz p1, :cond_21

    .line 219
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .line 221
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v0

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 223
    :cond_1d
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->invalidateHierarchy()V

    .line 224
    return-void

    .line 218
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"  # Ljava/lang/String;

    .line 610
    if-nez p1, :cond_4

    const-string p1, ""

    .line 611
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 613
    :cond_d
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 614
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 615
    .local v0, "oldText":Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 616
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste(Ljava/lang/String;Z)V

    .line 617
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->programmaticChangeEvents:Z

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->changeText(Ljava/lang/String;Ljava/lang/String;)Z

    .line 618
    :cond_23
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 619
    return-void
.end method

.method public setTextFieldFilter(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;)V
    .registers 2
    .param p1, "filter"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    .line 576
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    .line 577
    return-void
.end method

.method public setTextFieldListener(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;)V
    .registers 2
    .param p1, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    .line 571
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    .line 572
    return-void
.end method

.method updateDisplayText()V
    .registers 13

    .line 396
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 397
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    .line 398
    .local v1, "data":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 399
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 401
    .local v3, "textLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v4, "buffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    const/16 v6, 0x20

    if-ge v5, v3, :cond_29

    .line 403
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 404
    .local v7, "c":C
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->hasGlyph(C)Z

    move-result v8

    if-eqz v8, :cond_23

    move v6, v7

    :cond_23
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    .end local v7  # "c":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 406
    .end local v5  # "i":I
    :cond_29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, "newDisplayText":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-eqz v7, :cond_6d

    iget-char v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordCharacter:C

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->hasGlyph(C)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 409
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    if-nez v7, :cond_48

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    .line 410
    :cond_48
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v3, :cond_56

    .line 411
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_68

    .line 413
    :cond_56
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .local v7, "i":I
    :goto_5c
    if-ge v7, v3, :cond_68

    .line 414
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    iget-char v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordCharacter:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    .line 416
    .end local v7  # "i":I
    :cond_68
    :goto_68
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    iput-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    goto :goto_6f

    .line 418
    :cond_6d
    iput-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    .line 420
    :goto_6f
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xd

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 421
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 422
    const/4 v6, 0x0

    .line 423
    .local v6, "x":F
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v7, :cond_b9

    .line 424
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 425
    .local v7, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 426
    .local v8, "xAdvances":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->first()F

    move-result v9

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fontOffset:F

    .line 427
    const/4 v9, 0x1

    .local v9, "i":I
    iget v10, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .local v10, "n":I
    :goto_a9
    if-ge v9, v10, :cond_b8

    .line 428
    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 429
    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    add-float/2addr v6, v11

    .line 427
    add-int/lit8 v9, v9, 0x1

    goto :goto_a9

    .line 431
    .end local v7  # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v8  # "xAdvances":Lcom/badlogic/gdx/utils/FloatArray;
    .end local v9  # "i":I
    .end local v10  # "n":I
    :cond_b8
    goto :goto_bc

    .line 432
    :cond_b9
    const/4 v7, 0x0

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fontOffset:F

    .line 433
    :goto_bc
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 435
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v8, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    .line 436
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v9, v9, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v7, v8, v9}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    .line 438
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_e9

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 439
    :cond_e9
    return-void
.end method

.method withinMaxLength(I)Z
    .registers 3
    .param p1, "size"  # I

    .line 199
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    if-lez v0, :cond_b

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    if-ge p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method wordUnderCursor(F)[I
    .registers 3
    .param p1, "x"  # F

    .line 195
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->letterUnderCursor(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->wordUnderCursor(I)[I

    move-result-object v0

    return-object v0
.end method

.method protected wordUnderCursor(I)[I
    .registers 8
    .param p1, "at"  # I

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 173
    .local v0, "text":Ljava/lang/String;
    move v1, p1

    .local v1, "start":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "right":I
    const/4 v3, 0x0

    .local v3, "left":I
    move v4, v1

    .line 174
    .local v4, "index":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt p1, v5, :cond_15

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 176
    const/4 v2, 0x0

    goto :goto_3b

    .line 178
    :cond_15
    :goto_15
    if-ge v4, v2, :cond_26

    .line 179
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isWordCharacter(C)Z

    move-result v5

    if-nez v5, :cond_23

    .line 180
    move v2, v4

    .line 181
    goto :goto_26

    .line 178
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 184
    :cond_26
    :goto_26
    add-int/lit8 v4, v1, -0x1

    :goto_28
    const/4 v5, -0x1

    if-le v4, v5, :cond_3b

    .line 185
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isWordCharacter(C)Z

    move-result v5

    if-nez v5, :cond_38

    .line 186
    add-int/lit8 v3, v4, 0x1

    .line 187
    goto :goto_3b

    .line 184
    :cond_38
    add-int/lit8 v4, v4, -0x1

    goto :goto_28

    .line 191
    :cond_3b
    :goto_3b
    filled-new-array {v3, v2}, [I

    move-result-object v5

    return-object v5
.end method
