.class public Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;
.super Ljava/lang/Object;
.source "Province_Animation_MoveUnits2.java"


# instance fields
.field private iLineOffset:I

.field public iLineOffsetInterval:I

.field private lTimeLine:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffset:I

    .line 17
    const/16 v0, 0x4b

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffsetInterval:I

    .line 29
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->resetData()V

    .line 30
    return-void
.end method


# virtual methods
.method public getLineOffset()I
    .registers 2

    .line 57
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffset:I

    return v0
.end method

.method public final resetData()V
    .registers 3

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->lTimeLine:J

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffset:I

    .line 24
    return-void
.end method

.method public setLineOffsetInterval(I)V
    .registers 2
    .param p1, "iLineOffsetInterval"  # I

    .line 62
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffsetInterval:I

    .line 63
    return-void
.end method

.method public final update()V
    .registers 7

    .line 35
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->lTimeLine:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffsetInterval:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1d

    .line 36
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffset:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffset:I

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->lTimeLine:J

    .line 39
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 41
    :cond_1d
    return-void
.end method

.method public updateColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"  # I

    .line 46
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v0

    const/high16 v1, 0x42c80000  # 100.0f

    const/high16 v2, 0x437f0000  # 255.0f

    const/16 v3, 0x1e

    const/16 v4, 0x37

    const/16 v5, 0xff

    if-eqz v0, :cond_66

    .line 47
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v6

    invoke-static {v5, v4, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v7

    invoke-static {v5, v4, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v8

    invoke-static {v5, v4, v8, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenProvinceID:I

    if-ne p2, v5, :cond_54

    const/high16 v5, 0x3fe00000  # 1.75f

    goto :goto_56

    :cond_54
    const/high16 v5, 0x40800000  # 4.0f

    :goto_56
    div-float/2addr v4, v5

    div-float/2addr v4, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    div-float/2addr v2, v1

    mul-float v4, v4, v2

    invoke-direct {v0, v6, v7, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_b5

    .line 49
    :cond_66
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v6

    invoke-static {v5, v4, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v7

    invoke-static {v5, v4, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v8

    invoke-static {v5, v4, v8, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenProvinceID:I

    if-ne p2, v5, :cond_a4

    const/high16 v5, 0x3f800000  # 1.0f

    goto :goto_a6

    :cond_a4
    const/high16 v5, 0x40000000  # 2.0f

    :goto_a6
    div-float/2addr v4, v5

    div-float/2addr v4, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    div-float/2addr v2, v1

    mul-float v4, v4, v2

    invoke-direct {v0, v6, v7, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 51
    :goto_b5
    return-void
.end method
