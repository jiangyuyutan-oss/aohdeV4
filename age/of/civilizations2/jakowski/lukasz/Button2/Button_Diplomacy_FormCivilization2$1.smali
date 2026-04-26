.class Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;
.super Ljava/lang/Object;
.source "Button_Diplomacy_FormCivilization2.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    .line 208
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

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

    .line 211
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getCheckboxSt()Z

    move-result v0

    const v1, 0x3e99999a  # 0.3f

    const v2, 0x3f4ccccd  # 0.8f

    const/4 v8, 0x0

    if-eqz v0, :cond_1b

    .line 212
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f0ccccd  # 0.55f

    invoke-direct {v0, v3, v2, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_26

    .line 214
    :cond_1b
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3e0c49ba  # 0.137f

    invoke-direct {v0, v2, v3, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 217
    :goto_26
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getPosXE()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getWidthE()I

    move-result v1

    div-int/lit8 v4, v1, 0x6

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getHeightE()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 219
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e4ccccd  # 0.2f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 220
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getPosXE()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getWidthE()I

    move-result v1

    div-int/lit8 v4, v1, 0xa

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getHeightE()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 222
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 223
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getWidthE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 224
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getHeightE()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v3, v1, v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Button_Diplomacy_FormCivilization2;->getWidthE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 226
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 227
    return-void
.end method
