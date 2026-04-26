.class Lage/of/civilizations2/jakowski/lukasz/MapBG$3;
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

    .line 168
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dMP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 174
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getSecondSideOfMap()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 175
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSY:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iGMIS:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "currID":I
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$100(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v3

    sub-int/2addr v2, v3

    .local v2, "tempHeight":I
    :goto_25
    if-ltz v0, :cond_a1

    .line 176
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$100(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewY(II)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 177
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 179
    .local v3, "tempWidth":I
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSX:I

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_44
    if-ltz v4, :cond_91

    .line 180
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewX(II)Z

    move-result v5

    if-nez v5, :cond_66

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewX2(II)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 181
    :cond_66
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$000(Lage/of/civilizations2/jakowski/lukasz/MapBG;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Image;

    add-int v6, p2, v3

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int v7, p3, v2

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMapScaleBG:I

    int-to-float v8, v8

    invoke-virtual {v5, p1, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 184
    :cond_85
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v5

    sub-int/2addr v3, v5

    .line 185
    add-int/lit8 v1, v1, -0x1

    .line 179
    add-int/lit8 v4, v4, -0x1

    goto :goto_44

    .end local v4  # "i":I
    :cond_91
    goto :goto_97

    .line 189
    .end local v3  # "tempWidth":I
    :cond_92
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSX:I

    sub-int/2addr v1, v3

    .line 192
    :goto_97
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$100(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 175
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 196
    .end local v0  # "j":I
    .end local v1  # "currID":I
    .end local v2  # "tempHeight":I
    :cond_a1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSY:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0  # "j":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iGMIS:I

    add-int/lit8 v1, v1, -0x1

    .restart local v1  # "currID":I
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$100(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v3

    sub-int/2addr v2, v3

    .restart local v2  # "tempHeight":I
    :goto_ba
    if-ltz v0, :cond_134

    .line 197
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$100(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewY(II)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 198
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    .line 200
    .restart local v3  # "tempWidth":I
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSX:I

    add-int/lit8 v4, v4, -0x1

    .restart local v4  # "i":I
    :goto_d7
    if-ltz v4, :cond_124

    .line 201
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewX(II)Z

    move-result v5

    if-nez v5, :cond_f9

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->inViewX2(II)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 202
    :cond_f9
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$000(Lage/of/civilizations2/jakowski/lukasz/MapBG;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Image;

    add-int v6, p2, v3

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int v7, p3, v2

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iMapScaleBG:I

    int-to-float v8, v8

    invoke-virtual {v5, p1, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 205
    :cond_118
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$200(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v5

    sub-int/2addr v3, v5

    .line 206
    add-int/lit8 v1, v1, -0x1

    .line 200
    add-int/lit8 v4, v4, -0x1

    goto :goto_d7

    .end local v4  # "i":I
    :cond_124
    goto :goto_12a

    .line 210
    .end local v3  # "tempWidth":I
    :cond_125
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapBG;->iBSX:I

    sub-int/2addr v1, v3

    .line 213
    :goto_12a
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$100(Lage/of/civilizations2/jakowski/lukasz/MapBG;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 196
    add-int/lit8 v0, v0, -0x1

    goto :goto_ba

    .line 216
    .end local v0  # "j":I
    .end local v1  # "currID":I
    .end local v2  # "tempHeight":I
    :cond_134
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpOv:Lage/of/civilizations2/jakowski/lukasz/MapOv;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, p1, p2, p3, v1}, Lage/of/civilizations2/jakowski/lukasz/MapOv;->dMO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13d} :catch_13e

    .line 219
    goto :goto_142

    .line 217
    :catch_13e
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 220
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_142
    return-void
.end method

.method public dMPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 226
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

    .line 227
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mapBorder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v0, p3, v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

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

    .line 228
    return-void
.end method
