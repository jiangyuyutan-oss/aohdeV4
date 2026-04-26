.class Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;
.super Lage/of/civilizations2/jakowski/lukasz/Button/NewGame/Button_InGameBox;
.source "Menu_MM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field textClr:Lcom/badlogic/gdx/graphics/Color;

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;Ljava/lang/String;IIIIZ)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "isClickable"  # Z

    .line 210
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/NewGame/Button_InGameBox;-><init>(Ljava/lang/String;IIIIZ)V

    .line 233
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->textClr:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 213
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    if-ltz v0, :cond_3d

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->isAnimating:Z

    if-nez v0, :cond_3d

    .line 214
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionCivID:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2b

    .line 215
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    .line 217
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->money:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2d

    .line 218
    sput v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    goto :goto_2d

    .line 222
    :cond_2b
    sput v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    .line 224
    :cond_2d
    :goto_2d
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->gameWon:Z

    if-eqz v0, :cond_35

    .line 225
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->gameWon:Z

    .line 226
    sput v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    .line 228
    :cond_35
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->nextQuestion()V

    .line 229
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMM2()V

    .line 231
    :cond_3d
    return-void
.end method

.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 237
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    if-ltz v0, :cond_f2

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->isAnimating:Z

    if-nez v0, :cond_f2

    .line 238
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->textUpdated:Z

    if-nez v0, :cond_ef

    .line 239
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->money:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_31

    .line 240
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->gameWon:Z

    .line 241
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getMenuElemsSize()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    const-string v1, "Congratulations! You did it! The world is yours!"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 242
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->textClr:Lcom/badlogic/gdx/graphics/Color;

    .line 243
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    iput-boolean v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->lastAnswerCorrect:Z

    goto/16 :goto_e1

    .line 245
    :cond_31
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionCivID:I

    const-string v3, " - "

    if-ne v0, v1, :cond_93

    .line 246
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getMenuElemsSize()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->TEXT_CORRECT:[Ljava/lang/String;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->TEXT_CORRECT:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->TEXT_NEXT:[Ljava/lang/String;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->TEXT_NEXT:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 247
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->textClr:Lcom/badlogic/gdx/graphics/Color;

    .line 248
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    iput-boolean v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->lastAnswerCorrect:Z

    goto :goto_e1

    .line 251
    :cond_93
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getMenuElemsSize()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->TEXT_WRONG:[Ljava/lang/String;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->TEXT_WRONG:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->TEXT_RESTART:[Ljava/lang/String;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->TEXT_RESTART:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 252
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->textClr:Lcom/badlogic/gdx/graphics/Color;

    .line 253
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->lastAnswerCorrect:Z

    .line 256
    :goto_e1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->resultAnimStart:J

    .line 257
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    iput-boolean v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->showResultAnim:Z

    .line 260
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->textUpdated:Z

    .line 263
    :cond_ef
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/NewGame/Button_InGameBox;->drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 265
    :cond_f2
    return-void
.end method

.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 269
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    if-ltz v0, :cond_53

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->isAnimating:Z

    if-nez v0, :cond_53

    .line 270
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->fontID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->getTextE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->getTextPosElem()I

    move-result v1

    if-gez v1, :cond_26

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->getWidthE()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->getTextWidthU()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    goto :goto_2a

    :cond_26
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->getTextPosElem()I

    move-result v1

    :goto_2a
    add-int/2addr v0, v1

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->getHeightE()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->getTextHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    goto :goto_4e

    :cond_4c
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;->textClr:Lcom/badlogic/gdx/graphics/Color;

    :goto_4e
    move-object v6, v0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 272
    :cond_53
    return-void
.end method
