.class Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;
.super Ljava/lang/Object;
.source "ButtonM.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    .line 124
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

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

    .line 127
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getCheckboxSt()Z

    move-result v0

    const/high16 v1, 0x3e800000  # 0.25f

    const v2, 0x3f4ccccd  # 0.8f

    const/4 v8, 0x0

    if-eqz v0, :cond_1a

    .line 128
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f0ccccd  # 0.55f

    invoke-direct {v0, v3, v2, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_25

    .line 130
    :cond_1a
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3e0c49ba  # 0.137f

    invoke-direct {v0, v2, v3, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 135
    :goto_25
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getWidthE()I

    move-result v1

    div-int/lit8 v4, v1, 0x4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getHeightE()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 137
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a  # 0.3f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 138
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getWidthE()I

    move-result v4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getHeightE()I

    move-result v1

    div-int/lit8 v5, v1, 0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 139
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getHeightE()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, p3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sub-int v3, v1, v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getWidthE()I

    move-result v4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getHeightE()I

    move-result v1

    div-int/lit8 v5, v1, 0x4

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 141
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 142
    return-void
.end method
