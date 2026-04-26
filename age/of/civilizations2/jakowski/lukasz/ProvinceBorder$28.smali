.class Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$28;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder_MoveUnits_Percentage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    .line 576
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$28;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 22
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"  # I

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$28;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v1

    const v2, 0x3ecccccd  # 0.4f

    const v3, 0x3f19999a  # 0.6f

    const/4 v4, 0x4

    const/16 v5, 0x5b

    const/16 v6, 0xea

    const/16 v7, 0xce

    const/16 v8, 0xfa

    const/16 v9, 0xe0

    const/high16 v10, 0x437f0000  # 255.0f

    const/high16 v11, 0x42c80000  # 100.0f

    const/16 v12, 0x3c

    if-eqz v1, :cond_88

    .line 580
    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$28;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    div-float v15, v1, v11

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 581
    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v14

    invoke-static {v9, v8, v14, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 582
    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v9

    invoke-static {v7, v6, v9, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 583
    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v7

    invoke-static {v5, v4, v7, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 584
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getBorderAlpha()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    mul-float v5, v5, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getBorderAlpha()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    mul-float v3, v3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    mul-float v3, v3, v2

    div-float/2addr v3, v11

    add-float/2addr v5, v3

    invoke-direct {v1, v8, v6, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    .line 580
    move-object/from16 v14, p1

    move/from16 v16, p2

    move-object/from16 v17, v1

    invoke-virtual/range {v13 .. v18}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercentageWidth_Full_Straight(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_ee

    .line 588
    :cond_88
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$28;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    div-float/2addr v13, v11

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 589
    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v15

    invoke-static {v9, v8, v15, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 590
    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v9

    invoke-static {v7, v6, v9, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 591
    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v7

    invoke-static {v5, v4, v7, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 592
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getBorderAlpha()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    mul-float v5, v5, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getBorderAlpha()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    mul-float v3, v3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    mul-float v3, v3, v2

    div-float/2addr v3, v11

    add-float/2addr v5, v3

    invoke-direct {v14, v8, v6, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    .line 588
    move-object v2, v1

    move-object/from16 v3, p1

    move v4, v13

    move/from16 v5, p2

    move-object v6, v14

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder_PercentageWidth_Full_Dashed(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 595
    :goto_ee
    return-void
.end method
