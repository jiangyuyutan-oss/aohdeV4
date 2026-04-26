.class public Lage/of/civilizations2/jakowski/lukasz/MapOv;
.super Ljava/lang/Object;
.source "MapOv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/MapOv$Config;,
        Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;
    }
.end annotation


# instance fields
.field public iOSi:I

.field public lOv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;",
            ">;"
        }
    .end annotation
.end field

.field public oM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field public oT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->iOSi:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oT:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oM:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dMO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 20
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "fAlpha"  # F

    move-object v1, p0

    move-object/from16 v8, p1

    .line 127
    :try_start_3
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 128
    return-void

    .line 131
    :cond_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->DRAW_OV_STOP_SCALE:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1f

    .line 132
    return-void

    .line 135
    :cond_1f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->iOSi:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_1e1

    const v9, 0x84c0

    const-string v10, "u_extraColor"

    const-string v11, "u_maskScaleY"

    const-string v12, "u_maskScale"

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000  # 1.0f

    if-ge v0, v2, :cond_fd

    .line 138
    :try_start_35
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->Alpha:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    cmpg-float v4, v4, v14

    if-gez v4, :cond_66

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->AlphaScaleZoomOut:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v5

    mul-float v4, v4, v5

    goto :goto_70

    :cond_66
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->AlphaScaleZoomOut:F

    :goto_70
    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->AlphaScale:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, p4

    invoke-direct {v2, v14, v14, v14, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 140
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->u_maskScale:F

    invoke-virtual {v2, v12, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 141
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->u_maskScaleY:F

    invoke-virtual {v2, v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 142
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->ExtraColor:F

    invoke-virtual {v2, v10, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 144
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oM:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 145
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 147
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oT:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 150
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v6

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v7

    .line 147
    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_25

    .line 155
    .end local v0  # "i":I
    :cond_fd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getSecondSideOfMap()Z

    move-result v0

    if-eqz v0, :cond_1e0

    .line 156
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_10a
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->iOSi:I

    if-ge v0, v2, :cond_1e0

    .line 157
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->Alpha:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    cmpg-float v4, v4, v14

    if-gez v4, :cond_13f

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->AlphaScaleZoomOut:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v5

    mul-float v4, v4, v5

    goto :goto_149

    :cond_13f
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->AlphaScaleZoomOut:F

    :goto_149
    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->AlphaScale:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, p4

    invoke-direct {v2, v14, v14, v14, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 159
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->u_maskScale:F

    invoke-virtual {v2, v12, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 160
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->u_maskScaleY:F

    invoke-virtual {v2, v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 161
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->ExtraColor:F

    invoke-virtual {v2, v10, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 163
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oM:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 164
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 166
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oT:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 167
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v3

    add-int v4, p2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 169
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getWidthM()I

    move-result v6

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getHeightM()I

    move-result v7

    .line 166
    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_1dc} :catch_1e1

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10a

    .line 176
    .end local v0  # "i":I
    :cond_1e0
    goto :goto_1e2

    .line 174
    :catch_1e1
    move-exception v0

    .line 178
    :goto_1e2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 179
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 180
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 186
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 187
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oT:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V

    .line 186
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 190
    .end local v0  # "i":I
    :cond_18
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 193
    goto :goto_22

    .line 191
    :catch_1e
    move-exception v0

    .line 192
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 196
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_22
    :try_start_22
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_2a
    if-ltz v0, :cond_3a

    .line 197
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oM:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V

    .line 196
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 200
    .end local v0  # "i":I
    :cond_3a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3f} :catch_40

    .line 203
    goto :goto_44

    .line 201
    :catch_40
    move-exception v0

    .line 202
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 204
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method public final lO(Ljava/lang/String;)V
    .registers 10
    .param p1, "sFile"  # Ljava/lang/String;

    .line 56
    const-string v0, "overlays/"

    const-string v1, "map/"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 57
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MapOv$Config;

    invoke-direct {v3}, Lage/of/civilizations2/jakowski/lukasz/MapOv$Config;-><init>()V

    .line 58
    .local v3, "data":Lage/of/civilizations2/jakowski/lukasz/MapOv$Config;
    new-instance v4, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 59
    .local v4, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v5, Lage/of/civilizations2/jakowski/lukasz/MapOv$Config;

    const-string v6, "Overlay"

    const-class v7, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 61
    const-class v5, Lage/of/civilizations2/jakowski/lukasz/MapOv$Config;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MapOv$Config;

    .line 63
    .end local v3  # "data":Lage/of/civilizations2/jakowski/lukasz/MapOv$Config;
    .local v0, "data":Lage/of/civilizations2/jakowski/lukasz/MapOv$Config;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    .line 65
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/MapOv$Config;->Overlay:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 66
    .local v3, "obj":Ljava/lang/Object;
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    move-object v6, v3

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    nop

    .end local v3  # "obj":Ljava/lang/Object;
    goto :goto_7f

    .line 69
    :cond_93
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->iOSi:I

    .line 70
    .end local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/MapOv$Config;
    .end local v4  # "json":Lcom/badlogic/gdx/utils/Json;
    goto :goto_a8

    .line 72
    :cond_9c
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->iOSi:I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a3} :catch_a9

    .line 76
    :try_start_a3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapOv;->dispose()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_a7

    .line 79
    goto :goto_a8

    .line 77
    :catch_a7
    move-exception v0

    .line 90
    :goto_a8
    goto :goto_b6

    .line 81
    :catch_a9
    move-exception v0

    .line 82
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 83
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->iOSi:I

    .line 86
    :try_start_b1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MapOv;->dispose()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_b5

    .line 89
    goto :goto_b6

    .line 87
    :catch_b5
    move-exception v1

    .line 91
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_b6
    return-void
.end method

.method public final lOI()Z
    .registers 7

    .line 97
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadMap;->loadMapBG_FileID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadMap;->loadMapBG_FileID:I

    .local v0, "i":I
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->iOSi:I

    if-ge v0, v1, :cond_4b

    .line 98
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oT:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "overlays/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->Tile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const/4 v1, 0x1

    return v1

    .line 104
    .end local v0  # "i":I
    :cond_4b
    const/4 v0, 0x0

    return v0
.end method

.method public final lOI2()Z
    .registers 7

    .line 109
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadMap;->loadMapBG_FileID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadMap;->loadMapBG_FileID:I

    .local v0, "i":I
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->iOSi:I

    if-ge v0, v1, :cond_bc

    .line 110
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oM:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "overlays/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLoadHighTextureMapOverlay()Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "high/"

    goto :goto_34

    :cond_32
    const-string v4, "low/"

    :goto_34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->Mask:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oM:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oT:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->Scale:F

    mul-float v3, v3, v4

    div-float/2addr v2, v3

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->u_maskScale:F

    .line 114
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oM:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->oT:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapOv;->lOv:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->Scale:F

    mul-float v3, v3, v4

    div-float/2addr v2, v3

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/MapOv$Overlay;->u_maskScaleY:F

    .line 116
    const/4 v1, 0x1

    return v1

    .line 119
    .end local v0  # "i":I
    :cond_bc
    const/4 v0, 0x0

    return v0
.end method
