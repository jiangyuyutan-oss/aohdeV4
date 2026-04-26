.class Lage/of/civilizations2/jakowski/lukasz/MapBG$4;
.super Ljava/lang/Object;
.source "MapBG.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/MapBG;->updateWM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/MapBG;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/MapBG;

    .line 232
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dMP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 238
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSY:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iGMIS:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "currID":I
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$100(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v3

    sub-int/2addr v2, v3

    .local v2, "tempHeight":I
    :goto_19
    if-ltz v0, :cond_93

    .line 239
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$100(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewY(II)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 240
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    .line 242
    .local v3, "tempWidth":I
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSX:I

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_36
    if-ltz v4, :cond_83

    .line 243
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewX(II)Z

    move-result v5

    if-nez v5, :cond_58

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewX2(II)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 244
    :cond_58
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$000(Lage/of/civilizations2/jakowski/lukasz/MapBG;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Image;

    add-int v6, p2, v3

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int v7, p3, v2

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMapScaleBG:I

    int-to-float v8, v8

    invoke-virtual {v5, p1, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 247
    :cond_77
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v5

    sub-int/2addr v3, v5

    .line 248
    add-int/lit8 v1, v1, -0x1

    .line 242
    add-int/lit8 v4, v4, -0x1

    goto :goto_36

    .end local v4  # "i":I
    :cond_83
    goto :goto_89

    .line 252
    .end local v3  # "tempWidth":I
    :cond_84
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSX:I

    sub-int/2addr v1, v3

    .line 255
    :goto_89
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$100(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 238
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 258
    .end local v0  # "j":I
    .end local v1  # "currID":I
    .end local v2  # "tempHeight":I
    :cond_93
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpOv:Lage/of/civilizations2/jakowski/lukasz/MapOv;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, p1, p2, p3, v1}, Lage/of/civilizations2/jakowski/lukasz/MapOv;->dMO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_9c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9c} :catch_9d

    .line 261
    goto :goto_9e

    .line 259
    :catch_9d
    move-exception v0

    .line 262
    :goto_9e
    return-void
.end method

.method public dMPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 266
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v4, p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v5, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    neg-int v7, p2

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 267
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v0, p3, v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v2

    add-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v5, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    neg-int v7, p2

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    .line 269
    neg-int v0, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v1

    if-le v0, v1, :cond_107

    .line 270
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v3, p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v4, v0, 0x2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v0

    add-int v5, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    neg-int v7, p3

    const/4 v8, 0x0

    const/high16 v9, 0x43870000  # 270.0f

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    .line 271
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    add-int v3, p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v4, v0, 0x2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v0

    add-int v5, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    neg-int v7, p3

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    goto/16 :goto_18d

    .line 275
    :cond_107
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v3, p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v4, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    neg-int v7, p3

    const/4 v8, 0x0

    const/high16 v9, 0x43870000  # 270.0f

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    .line 276
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v0

    add-int v3, p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v4, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    neg-int v7, p3

    const/4 v11, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    .line 278
    :goto_18d
    return-void
.end method
