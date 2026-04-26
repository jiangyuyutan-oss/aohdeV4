.class Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options$1;
.super Ljava/lang/Object;
.source "Button_CNG_Options.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;->buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;

    .line 75
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCheckBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "scrollableY"  # Z

    .line 78
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;->getCheckboxSt()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 79
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_TRUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_13

    .line 81
    :cond_e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_FALSE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 84
    :goto_13
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, p3

    add-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;->getWidthE()I

    move-result v5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/CNG/Button_CNG_Options;->getHeightE()I

    move-result v0

    add-int/lit8 v6, v0, -0x3

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 86
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 87
    return-void
.end method
