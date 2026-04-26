.class Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;
.super Ljava/lang/Object;
.source "Button_PlayAsVassal.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    .line 41
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

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

    .line 44
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getCheckboxSt()Z

    move-result v0

    const v1, 0x3ecccccd  # 0.4f

    const v2, 0x3f4ccccd  # 0.8f

    const/4 v8, 0x0

    if-eqz v0, :cond_1b

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f0ccccd  # 0.55f

    invoke-direct {v0, v3, v2, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_26

    .line 47
    :cond_1b
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3e0c49ba  # 0.137f

    invoke-direct {v0, v2, v3, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 52
    :goto_26
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getPosXE()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getWidthE()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getHeightE()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a  # 0.3f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 55
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getWidthE()I

    move-result v4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getHeightE()I

    move-result v1

    div-int/lit8 v5, v1, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 56
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getHeightE()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, p3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sub-int v3, v1, v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getWidthE()I

    move-result v4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getHeightE()I

    move-result v1

    div-int/lit8 v5, v1, 0x4

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 58
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 60
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getPosXE()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getWidthE()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getHeightE()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_InfoBox_Left(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 62
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getCheckboxSt()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 63
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->iconTrue:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getPosXE()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->iconTrue:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getPosY()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->iconTrue:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_1a5

    .line 65
    :cond_163
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->iconFalse:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getPosXE()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->iconTrue:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getPosY()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_PlayAsVassal;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->iconFalse:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 67
    :goto_1a5
    return-void
.end method
