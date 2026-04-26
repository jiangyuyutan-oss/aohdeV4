.class Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;
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
.field id:I

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

    .line 110
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;-><init>(Ljava/lang/String;IIIIZ)V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->id:I

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 113
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    if-gez v0, :cond_14

    .line 114
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->id:I

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerClickTime:J

    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->isAnimating:Z

    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->textUpdated:Z

    .line 119
    :cond_14
    return-void
.end method

.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 17
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 131
    move-object v0, p0

    move-object v7, p1

    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;->drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 133
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    if-ltz v1, :cond_d7

    .line 134
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->isAnimating:Z

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_74

    .line 135
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->id:I

    if-ne v1, v3, :cond_d7

    .line 136
    const/high16 v1, 0x3f000000  # 0.5f

    .line 138
    .local v1, "alpha":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerClickTime:J

    sub-long v8, v3, v5

    .line 141
    .local v8, "time":J
    const v10, 0x3ba3d70a  # 0.005f

    .line 144
    .local v10, "speed":F
    const v3, 0x3ecccccd  # 0.4f

    const v4, 0x3e99999a  # 0.3f

    long-to-float v5, v8

    mul-float v5, v5, v10

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v4

    add-float/2addr v5, v3

    .line 147
    .end local v1  # "alpha":F
    .local v5, "alpha":F
    const-wide/16 v3, 0x5aa

    cmp-long v1, v8, v3

    if-lez v1, :cond_42

    .line 148
    const/4 v1, 0x0

    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->isAnimating:Z

    .line 149
    const v5, 0x3f333333  # 0.7f

    move v11, v5

    goto :goto_43

    .line 147
    :cond_42
    move v11, v5

    .line 153
    .end local v5  # "alpha":F
    .local v11, "alpha":F
    :goto_43
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f333333  # 0.7f

    const v4, 0x3dcccccd  # 0.1f

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 155
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    .line 157
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    .line 158
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    .line 159
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getWidthE()I

    move-result v5

    .line 160
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getHeightE()I

    move-result v2

    add-int/lit8 v6, v2, -0x2

    .line 155
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 161
    .end local v8  # "time":J
    .end local v10  # "speed":F
    .end local v11  # "alpha":F
    goto :goto_d7

    .line 164
    :cond_74
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->id:I

    if-eq v1, v3, :cond_8c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->id:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionCivID:I

    if-ne v1, v3, :cond_d7

    .line 165
    :cond_8c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->id:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionCivID:I

    const v4, 0x3eb33333  # 0.35f

    const v5, 0x3e4ccccd  # 0.2f

    if-ne v1, v3, :cond_ad

    .line 166
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v5, v2, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_b5

    .line 169
    :cond_ad
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 172
    :goto_b5
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getPosXE()I

    move-result v2

    add-int v3, v2, p2

    .line 175
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    .line 176
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getWidthE()I

    move-result v5

    .line 177
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getHeightE()I

    move-result v2

    add-int/lit8 v6, v2, -0x2

    .line 172
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 182
    :cond_d7
    :goto_d7
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 183
    return-void
.end method

.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 21
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 187
    move-object/from16 v0, p0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answerChosen:I

    if-ltz v1, :cond_fa

    .line 188
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->isAnimating:Z

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_56

    .line 189
    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->fontID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getPosXE()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextPosElem()I

    move-result v3

    if-gez v3, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getWidthE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextWidthU()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    goto :goto_2e

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextPosElem()I

    move-result v3

    :goto_2e
    add-int/2addr v1, v3

    add-int v6, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v7, v1, p3

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f733333  # 0.95f

    invoke-direct {v8, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    move/from16 v1, p4

    goto/16 :goto_13e

    .line 192
    :cond_56
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->answers:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->id:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionCivID:I

    if-ne v1, v3, :cond_b2

    .line 193
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->fontID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextE()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getPosXE()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextPosElem()I

    move-result v3

    if-gez v3, :cond_86

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getWidthE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextWidthU()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    goto :goto_8a

    :cond_86
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextPosElem()I

    move-result v3

    :goto_8a
    add-int/2addr v1, v3

    add-int v7, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v8, v1, p3

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f19999a  # 0.6f

    invoke-direct {v9, v1, v2, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    move/from16 v1, p4

    goto/16 :goto_13e

    .line 196
    :cond_b2
    iget v11, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->fontID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextE()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getPosXE()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextPosElem()I

    move-result v3

    if-gez v3, :cond_d0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getWidthE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextWidthU()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    goto :goto_d4

    :cond_d0
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextPosElem()I

    move-result v3

    :goto_d4
    add-int/2addr v1, v3

    add-int v13, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v14, v1, p3

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-direct {v15, v2, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    move/from16 v1, p4

    goto :goto_13e

    .line 202
    :cond_fa
    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->fontID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getPosXE()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextPosElem()I

    move-result v2

    if-gez v2, :cond_118

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextWidthU()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    goto :goto_11c

    :cond_118
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextPosElem()I

    move-result v2

    :goto_11c
    add-int/2addr v1, v2

    add-int v6, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getHeightE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getTextHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v7, v1, p3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 204
    :goto_13e
    return-void
.end method

.method public setCurr(I)V
    .registers 2
    .param p1, "nCurrent"  # I

    .line 125
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$7;->id:I

    .line 126
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;->setCurr(I)V

    .line 127
    return-void
.end method
