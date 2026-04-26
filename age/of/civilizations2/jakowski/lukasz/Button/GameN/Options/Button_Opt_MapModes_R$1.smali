.class Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;
.super Ljava/lang/Object;
.source "Button_Opt_MapModes_R.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    .line 85
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCheckBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "scrollableY"  # Z

    .line 88
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getCheckboxSt()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 89
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_TRUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_13

    .line 91
    :cond_e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_FALSE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 94
    :goto_13
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getHeightE()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    add-int/2addr v0, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getWidthE()I

    move-result v5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getHeightE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v6, v0, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 95
    const/high16 v0, 0x3ec00000  # 0.375f

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 96
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/2addr v0, p3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getHeightE()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v2, v4

    add-int/2addr v0, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getHeightE()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getWidthE()I

    move-result v5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getHeightE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v2

    div-int/lit8 v6, v0, 0x5

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 98
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f266666  # 0.65f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 99
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getPosY()I

    move-result v0

    add-int/2addr v0, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getWidthE()I

    move-result v0

    div-int/lit8 v5, v0, 0x4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getHeightE()I

    move-result v6

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 100
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getPosXE()I

    move-result v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getPosY()I

    move-result v0

    add-int/2addr v0, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getWidthE()I

    move-result v0

    div-int/lit8 v5, v0, 0x4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModes_R;->getHeightE()I

    move-result v6

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 102
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 103
    return-void
.end method
