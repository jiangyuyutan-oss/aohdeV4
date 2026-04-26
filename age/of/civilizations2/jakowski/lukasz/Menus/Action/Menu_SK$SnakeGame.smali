.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;
.super Ljava/lang/Object;
.source "Menu_SK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnakeGame"
.end annotation


# instance fields
.field cols:I

.field dirX:I

.field dirY:I

.field flags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field food:Ljava/awt/Point;

.field gameOver:Z

.field nextDirX:I

.field nextDirY:I

.field rows:I

.field snake:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/awt/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeW:I

    div-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->cols:I

    .line 164
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeH:I

    div-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->rows:I

    .line 166
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->snake:Ljava/util/LinkedList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->flags:Ljava/util/List;

    .line 170
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->dirX:I

    .line 171
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->dirY:I

    .line 173
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->nextDirX:I

    .line 174
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->nextDirY:I

    .line 176
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->gameOver:Z

    .line 179
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->init()V

    .line 180
    return-void
.end method

.method private spawnFood()V
    .registers 5

    .line 195
    new-instance v0, Ljava/awt/Point;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->cols:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->rows:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/awt/Point;-><init>(II)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->food:Ljava/awt/Point;

    .line 196
    return-void
.end method


# virtual methods
.method public init()V
    .registers 5

    .line 183
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 184
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->snake:Ljava/util/LinkedList;

    new-instance v1, Ljava/awt/Point;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->cols:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->rows:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/awt/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->flags:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->snake:Ljava/util/LinkedList;

    new-instance v1, Ljava/awt/Point;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->cols:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->rows:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/awt/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->flags:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->snake:Ljava/util/LinkedList;

    new-instance v1, Ljava/awt/Point;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->cols:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->rows:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/awt/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->flags:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->spawnFood()V

    .line 192
    return-void
.end method

.method public setDirection(II)V
    .registers 7
    .param p1, "dx"  # I
    .param p2, "dy"  # I

    .line 240
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->dirX:I

    if-ne p1, v0, :cond_13

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->dirY:I

    if-ne p2, v0, :cond_13

    .line 241
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->lastMoveTime:J

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->moveDelay:I

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->lastMoveTime:J

    .line 242
    return-void

    .line 246
    :cond_13
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->nextDirX:I

    .line 247
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->nextDirY:I

    .line 248
    return-void
.end method

.method public update()V
    .registers 10

    .line 199
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->gameOver:Z

    if-eqz v0, :cond_5

    return-void

    .line 201
    :cond_5
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->nextDirX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->dirX:I

    .line 202
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->nextDirY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->dirY:I

    .line 204
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Point;

    .line 205
    .local v0, "head":Ljava/awt/Point;
    iget v1, v0, Ljava/awt/Point;->x:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->dirX:I

    add-int/2addr v1, v2

    .line 206
    .local v1, "newX":I
    iget v2, v0, Ljava/awt/Point;->y:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->dirY:I

    add-int/2addr v2, v3

    .line 208
    .local v2, "newY":I
    new-instance v3, Ljava/awt/Point;

    invoke-direct {v3, v1, v2}, Ljava/awt/Point;-><init>(II)V

    .line 211
    .local v3, "newHead":Ljava/awt/Point;
    const-string v4, " - Game Over"

    const-string v5, "Defeat"

    const/4 v6, 0x1

    if-ltz v1, :cond_99

    if-ltz v2, :cond_99

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->cols:I

    if-ge v1, v7, :cond_99

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->rows:I

    if-lt v2, v7, :cond_36

    goto :goto_99

    .line 219
    :cond_36
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 220
    iput-boolean v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->gameOver:Z

    .line 221
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 222
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_NUKE:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 223
    return-void

    .line 226
    :cond_66
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 229
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->food:Ljava/awt/Point;

    invoke-virtual {v3, v4}, Ljava/awt/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 230
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->spawnFood()V

    .line 231
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->flags:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_GOLD:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    goto :goto_98

    .line 234
    :cond_93
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 236
    :goto_98
    return-void

    .line 212
    :cond_99
    :goto_99
    iput-boolean v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->gameOver:Z

    .line 213
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 214
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_NUKE:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 215
    return-void
.end method
