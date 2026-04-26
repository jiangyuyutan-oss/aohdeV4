.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_MM2.java"


# instance fields
.field public final TEXT_CORRECT:[Ljava/lang/String;

.field public final TEXT_NEXT:[Ljava/lang/String;

.field public final TEXT_RESTART:[Ljava/lang/String;

.field public final TEXT_WRONG:[Ljava/lang/String;

.field public lastAnswerCorrect:Z

.field public resultAnimStart:J

.field public showResultAnim:Z


# direct methods
.method public constructor <init>()V
    .registers 18

    .line 39
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 361
    const-wide/16 v0, 0x0

    iput-wide v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->resultAnimStart:J

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->showResultAnim:Z

    .line 363
    iput-boolean v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->lastAnswerCorrect:Z

    .line 429
    const/16 v1, 0xb

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Correct!"

    aput-object v3, v2, v0

    const-string v3, "That\'s right!"

    const/4 v8, 0x1

    aput-object v3, v2, v8

    const-string v3, "Well done!"

    const/4 v10, 0x2

    aput-object v3, v2, v10

    const-string v3, "Good answer!"

    const/4 v11, 0x3

    aput-object v3, v2, v11

    const-string v3, "You\'re correct!"

    const/4 v12, 0x4

    aput-object v3, v2, v12

    const-string v3, "Nice one!"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string v3, "Impressive."

    const/4 v5, 0x6

    aput-object v3, v2, v5

    const-string v3, "That’s a correct answer."

    const/4 v6, 0x7

    aput-object v3, v2, v6

    const-string v3, "Exactly right!"

    const/16 v7, 0x8

    aput-object v3, v2, v7

    const-string v3, "You\'re getting better."

    const/16 v13, 0x9

    aput-object v3, v2, v13

    const-string v3, "Well played."

    const/16 v14, 0xa

    aput-object v3, v2, v14

    iput-object v2, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->TEXT_CORRECT:[Ljava/lang/String;

    .line 443
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Wrong."

    aput-object v2, v1, v0

    const-string v2, "That’s not correct."

    aput-object v2, v1, v8

    const-string v2, "Incorrect."

    aput-object v2, v1, v10

    const-string v2, "Not quite."

    aput-object v2, v1, v11

    const-string v2, "Nice try… but wrong."

    aput-object v2, v1, v12

    const-string v2, "That’s not it."

    aput-object v2, v1, v4

    const-string v2, "Unfortunately, no."

    aput-object v2, v1, v5

    const-string v2, "Wrong answer."

    aput-object v2, v1, v6

    const-string v2, "Better luck next time."

    aput-object v2, v1, v7

    const-string v3, "You were close… but no."

    aput-object v3, v1, v13

    const-string v3, "That’s incorrect."

    aput-object v3, v1, v14

    iput-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->TEXT_WRONG:[Ljava/lang/String;

    .line 457
    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "Next question."

    aput-object v3, v1, v0

    const-string v3, "Let’s continue."

    aput-object v3, v1, v8

    const-string v3, "Moving on.."

    aput-object v3, v1, v10

    const-string v3, "Next up."

    aput-object v3, v1, v11

    const-string v3, "Let’s go further."

    aput-object v3, v1, v12

    const-string v3, "On to the next question."

    aput-object v3, v1, v4

    const-string v3, "Keep going."

    aput-object v3, v1, v5

    iput-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->TEXT_NEXT:[Ljava/lang/String;

    .line 467
    new-array v1, v13, [Ljava/lang/String;

    const-string v3, "Game over."

    aput-object v3, v1, v0

    aput-object v2, v1, v8

    const-string v0, "Try again."

    aput-object v0, v1, v10

    const-string v0, "Start over."

    aput-object v0, v1, v11

    const-string v0, "You can do better."

    aput-object v0, v1, v12

    const-string v0, "Back to the beginning."

    aput-object v0, v1, v4

    const-string v0, "Another attempt?"

    aput-object v0, v1, v5

    const-string v0, "Let’s try again."

    aput-object v0, v1, v6

    const-string v0, "Reset and go again."

    aput-object v0, v1, v7

    iput-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->TEXT_RESTART:[Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 42
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v14, v0, 0x2

    .line 43
    .local v14, "tempW":I
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    .line 45
    .local v6, "tY":I
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$1;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v5, v14, v0

    const-string v2, "Hosted by: Lukasz Jakowski"

    move-object v0, v7

    move-object/from16 v1, p0

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;Ljava/lang/String;III)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 52
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Question "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    add-int/2addr v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->money:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v5, v14, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;Ljava/lang/String;III)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v1

    add-int v15, v6, v0

    .line 59
    .end local v6  # "tY":I
    .local v15, "tY":I
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$3;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getQuestionTitle()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v14, -0x4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    add-int v16, v0, v1

    const/4 v3, -0x1

    const/4 v4, 0x2

    move-object v0, v7

    move-object/from16 v1, p0

    move v5, v15

    move-object v12, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;Ljava/lang/String;IIIII)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 68
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$4;

    div-int/lit8 v0, v14, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flagBigMask:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    div-int/2addr v1, v10

    sub-int v2, v0, v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move v3, v15

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;IIZZ)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 95
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$5;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getPrizeText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v5, v14, v0

    move-object v0, v6

    move-object/from16 v1, p0

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;Ljava/lang/String;III)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 102
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$6;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->money:[I

    array-length v2, v2

    sub-int/2addr v2, v8

    if-ne v1, v2, :cond_1e6

    const-string v1, "This is the final question. "

    goto :goto_1e8

    :cond_1e6
    const-string v1, ""

    :goto_1e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getQuestionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v5, v14, v0

    move-object v0, v6

    move-object/from16 v1, p0

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;Ljava/lang/String;III)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 109
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_21f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_2a5

    .line 110
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v12, :cond_233

    const-string v1, "A"

    goto :goto_23f

    :cond_233
    if-ne v12, v8, :cond_238

    const-string v1, "B"

    goto :goto_23f

    :cond_238
    if-ne v12, v10, :cond_23d

    const-string v1, "C"

    goto :goto_23f

    :cond_23d
    const-string v1, "D"

    :goto_23f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v6, v14, v0

    const/16 v16, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v5, v15

    move-object v11, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;Ljava/lang/String;IIIIZ)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 207
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 109
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x3

    goto/16 :goto_21f

    .line 210
    .end local v12  # "i":I
    :cond_2a5
    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;

    const/4 v3, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v6, v14, v0

    const/4 v7, 0x1

    const-string v2, ""

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v15

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;Ljava/lang/String;IIIIZ)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 276
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$9;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v1, 0x3

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    div-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "Who Wants to Rule the World?"

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int v2, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->topBar2:I

    .line 304
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v3, 0x3

    mul-int/lit8 v1, v1, 0x3

    const/4 v3, 0x4

    div-int/2addr v1, v3

    add-int v3, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v0, v1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v8, 0x0

    .line 276
    move-object/from16 v0, p0

    move-object v1, v6

    move v4, v14

    move-object v6, v13

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->updateLang()V

    .line 306
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 23
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getWidthM()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getHeightM()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int/2addr v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 311
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getWidthM()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->getHeightM()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->PADDING:I

    add-int/2addr v6, v2

    const/4 v7, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 313
    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 315
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->showResultAnim:Z

    const/high16 v10, 0x3f800000  # 1.0f

    if-eqz v1, :cond_ff

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 318
    .local v11, "now":J
    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->resultAnimStart:J

    sub-long v1, v11, v1

    long-to-float v13, v1

    .line 320
    .local v13, "time":F
    const/high16 v14, 0x44fa0000  # 2000.0f

    .line 322
    .local v14, "duration":F
    cmpg-float v1, v13, v14

    if-gtz v1, :cond_fc

    .line 324
    div-float v15, v13, v14

    .line 327
    .local v15, "progress":F
    const v1, 0x3f19999a  # 0.6f

    sub-float v2, v10, v15

    mul-float v2, v2, v1

    .line 329
    .local v2, "alpha":F
    const/4 v1, 0x0

    cmpg-float v1, v2, v1

    if-gez v1, :cond_b9

    const/4 v2, 0x0

    :cond_b9
    move v8, v2

    .line 332
    .end local v2  # "alpha":F
    .local v8, "alpha":F
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->lastAnswerCorrect:Z

    const v2, 0x3e4ccccd  # 0.2f

    if-eqz v1, :cond_cd

    .line 333
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3e99999a  # 0.3f

    invoke-direct {v1, v2, v10, v3, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_d5

    .line 335
    :cond_cd
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v2, v2, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 338
    :goto_d5
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientVertical:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    const/4 v3, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/16 v16, 0x1

    move-object/from16 v2, p1

    move/from16 v17, v8

    .end local v8  # "alpha":F
    .local v17, "alpha":F
    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 346
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 348
    .end local v15  # "progress":F
    .end local v17  # "alpha":F
    goto :goto_ff

    .line 350
    :cond_fc
    const/4 v1, 0x0

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;->showResultAnim:Z

    .line 354
    .end local v11  # "now":J
    .end local v13  # "time":F
    .end local v14  # "duration":F
    :cond_ff
    :goto_ff
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e333333  # 0.175f

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 355
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v9, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 356
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 358
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sub-int v5, v1, v3

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v8, 0x3e800000  # 0.25f

    invoke-direct {v6, v1, v3, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const-string v3, "Age of History 2: Definitive Edition"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 359
    return-void
.end method

.method public drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 367
    if-eqz p4, :cond_5

    .line 368
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 370
    :cond_5
    return-void
.end method

.method public getPrizeText()Ljava/lang/String;
    .registers 7

    .line 374
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    .line 375
    .local v0, "level":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->money:[I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->money:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    .line 377
    .local v1, "money":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "m":Ljava/lang/String;
    const-string v3, "."

    const/4 v4, 0x3

    if-gt v0, v4, :cond_43

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This question is for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 381
    :cond_43
    const/4 v4, 0x7

    if-gt v0, v4, :cond_5e

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "You\'re playing for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 383
    :cond_5e
    const/16 v4, 0xb

    if-gt v0, v4, :cond_7a

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This one is worth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 386
    :cond_7a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Okay.. this is for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Don\'t mess it up."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getQuestionText()Ljava/lang/String;
    .registers 3

    .line 391
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    rem-int/lit8 v0, v0, 0x5

    const-string v1, "Which civilization uses this flag?"

    packed-switch v0, :pswitch_data_18

    .line 404
    return-object v1

    .line 401
    :pswitch_a  #0x4
    const-string v0, "Name the country shown by this flag."

    return-object v0

    .line 399
    :pswitch_d  #0x3
    const-string v0, "This flag belongs to which country?"

    return-object v0

    .line 397
    :pswitch_10  #0x2
    return-object v1

    .line 395
    :pswitch_11  #0x1
    const-string v0, "Can you identify this country\'s flag?"

    return-object v0

    .line 393
    :pswitch_14  #0x0
    const-string v0, "Which nation is represented by this flag?"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_11  #00000001
        :pswitch_10  #00000002
        :pswitch_d  #00000003
        :pswitch_a  #00000004
    .end packed-switch
.end method

.method public getQuestionTitle()Ljava/lang/String;
    .registers 2

    .line 408
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    packed-switch v0, :pswitch_data_36

    .line 426
    const-string v0, "This is for the highest prize.."

    return-object v0

    .line 423
    :pswitch_8  #0xe
    const-string v0, "This is your final challenge."

    return-object v0

    .line 422
    :pswitch_b  #0xd
    const-string v0, "Everything is on the line now."

    return-object v0

    .line 421
    :pswitch_e  #0xc
    const-string v0, "This decision could cost you everything."

    return-object v0

    .line 420
    :pswitch_11  #0xb
    const-string v0, "This question is very important."

    return-object v0

    .line 419
    :pswitch_14  #0xa
    const-string v0, "One mistake and the game is over."

    return-object v0

    .line 418
    :pswitch_17  #0x9
    const-string v0, "This is where many players struggle."

    return-object v0

    .line 417
    :pswitch_1a  #0x8
    const-string v0, "You\'re getting into harder territory now."

    return-object v0

    .line 416
    :pswitch_1d  #0x7
    const-string v0, "Don\'t rush—this one matters."

    return-object v0

    .line 415
    :pswitch_20  #0x6
    const-string v0, "Think carefully before you answer."

    return-object v0

    .line 414
    :pswitch_23  #0x5
    const-string v0, "This one might be tricky."

    return-object v0

    .line 413
    :pswitch_26  #0x4
    const-string v0, "Keep going, stay focused."

    return-object v0

    .line 412
    :pswitch_29  #0x3
    const-string v0, "You\'re doing well so far..."

    return-object v0

    .line 411
    :pswitch_2c  #0x2
    const-string v0, "Take a look at this flag."

    return-object v0

    .line 410
    :pswitch_2f  #0x1
    const-string v0, "Let\'s see your next question.."

    return-object v0

    .line 409
    :pswitch_32  #0x0
    const-string v0, "Let\'s begin... here\'s your first question."

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_2f  #00000001
        :pswitch_2c  #00000002
        :pswitch_29  #00000003
        :pswitch_26  #00000004
        :pswitch_23  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
        :pswitch_1a  #00000008
        :pswitch_17  #00000009
        :pswitch_14  #0000000a
        :pswitch_11  #0000000b
        :pswitch_e  #0000000c
        :pswitch_b  #0000000d
        :pswitch_8  #0000000e
    .end packed-switch
.end method
