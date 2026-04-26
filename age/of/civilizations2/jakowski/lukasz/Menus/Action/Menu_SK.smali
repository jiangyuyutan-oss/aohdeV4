.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_SK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;
    }
.end annotation


# static fields
.field public static goBack:Lage/of/civilizations2/jakowski/lukasz/View;

.field public static lastMoveTime:J

.field public static moveDelay:I

.field public static snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

.field public static snakeH:I

.field public static snakeW:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->lastMoveTime:J

    .line 59
    const/16 v0, 0x78

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->moveDelay:I

    .line 61
    const/16 v0, 0x44

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeW:I

    .line 62
    const/16 v0, 0x2c

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeH:I

    .line 160
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/View;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/View;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->goBack:Lage/of/civilizations2/jakowski/lukasz/View;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    .line 26
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v8, v1, 0x2

    .line 33
    .local v8, "tY":I
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$1;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v6, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;IIIIZ)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    const/4 v2, 0x0

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 42
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_44

    .line 43
    const/16 v1, 0x44

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeW:I

    .line 44
    const/16 v1, 0x2c

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeH:I

    .line 45
    const/16 v1, 0x96

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->moveDelay:I

    goto :goto_50

    .line 48
    :cond_44
    const/16 v1, 0x1b

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeW:I

    .line 49
    const/16 v1, 0x12

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeH:I

    .line 50
    const/16 v1, 0x78

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->moveDelay:I

    .line 53
    :goto_50
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    .line 54
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 147
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->actionElem(I)V

    .line 148
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 18
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 66
    move-object v6, p1

    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 68
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3dae147b  # 0.085f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 69
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 70
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientVertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 72
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v7, 0x3f800000  # 1.0f

    const v1, 0x3ccccccd  # 0.025f

    invoke-direct {v0, v7, v7, v7, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 73
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_3c
    const/16 v9, 0x1f4

    if-ge v8, v9, :cond_5e

    .line 74
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Vertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeW:I

    mul-int v2, v8, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 76
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeW:I

    mul-int v0, v0, v8

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    if-le v0, v1, :cond_5b

    .line 77
    goto :goto_5e

    .line 73
    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 81
    .end local v8  # "i":I
    :cond_5e
    :goto_5e
    const/4 v0, 0x0

    move v8, v0

    .restart local v8  # "i":I
    :goto_60
    if-ge v8, v9, :cond_80

    .line 82
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    const/4 v2, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeH:I

    mul-int v3, v8, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 84
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeH:I

    mul-int v0, v0, v8

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    if-le v0, v1, :cond_7d

    .line 85
    goto :goto_80

    .line 81
    :cond_7d
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 90
    .end local v8  # "i":I
    :cond_80
    :goto_80
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3e000000  # 0.125f

    invoke-direct {v0, v7, v7, v7, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 91
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 92
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 96
    .local v7, "now":J
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->lastMoveTime:J

    sub-long v0, v7, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->moveDelay:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_ce

    .line 97
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->update()V

    .line 98
    sput-wide v7, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->lastMoveTime:J

    .line 101
    :cond_ce
    const/4 v0, 0x0

    .line 102
    .local v0, "tID":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v0

    .end local v0  # "tID":I
    .local v10, "tID":I
    :goto_d8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_113

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/awt/Point;

    .line 103
    .local v11, "p":Ljava/awt/Point;
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->flags:Ljava/util/List;

    add-int/lit8 v12, v10, 0x1

    .end local v10  # "tID":I
    .local v12, "tID":I
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget v1, v11, Ljava/awt/Point;->x:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeW:I

    mul-int v2, v2, v1

    iget v1, v11, Ljava/awt/Point;->y:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeH:I

    mul-int v3, v1, v5

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeW:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 109
    .end local v11  # "p":Ljava/awt/Point;
    move v10, v12

    goto :goto_d8

    .line 111
    .end local v12  # "tID":I
    .restart local v10  # "tID":I
    :cond_113
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bFarm:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->food:Ljava/awt/Point;

    iget v1, v1, Ljava/awt/Point;->x:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeW:I

    mul-int v2, v2, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->food:Ljava/awt/Point;

    iget v1, v1, Ljava/awt/Point;->y:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeH:I

    mul-int v3, v1, v5

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeW:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 118
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->gameOver:Z

    const-string v9, "Flag Snake, Score: "

    if-eqz v0, :cond_17d

    .line 119
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v3, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v4, v0, 0x2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "Game Over"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 120
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->flags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v3, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v0, v0, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v4, v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1a6

    .line 123
    :cond_17d
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->flags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v3, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v4, v0, 0x2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 126
    :goto_1a6
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sub-int v4, v0, v2

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v11, 0x3e800000  # 0.25f

    invoke-direct {v5, v0, v2, v9, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const-string v2, "Age of History 2: Definitive Edition"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 127
    return-void
.end method

.method public drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 131
    if-eqz p4, :cond_5

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 134
    :cond_5
    return-void
.end method

.method public endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 140
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 141
    return-void
.end method

.method public final onBackPressed()V
    .registers 3

    .line 152
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->goBack:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuIDWithoutAnim(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 153
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    .line 154
    return-void
.end method
