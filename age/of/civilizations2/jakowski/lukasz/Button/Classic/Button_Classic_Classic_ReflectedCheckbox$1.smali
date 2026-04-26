.class Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$1;
.super Ljava/lang/Object;
.source "Button_Classic_Classic_ReflectedCheckbox.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;->buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;

    .line 30
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;

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

    .line 33
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;->getCheckboxSt()Z

    move-result v0

    const/high16 v1, 0x3e800000  # 0.25f

    const/4 v2, 0x0

    const v3, 0x3f4ccccd  # 0.8f

    if-eqz v0, :cond_1a

    .line 34
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3f0ccccd  # 0.55f

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_25

    .line 36
    :cond_1a
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3e0c49ba  # 0.137f

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 41
    :goto_25
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;->getPosXE()I

    move-result v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int v4, v0, p3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;->getWidthE()I

    move-result v0

    div-int/lit8 v5, v0, 0x4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;->getHeightE()I

    move-result v0

    add-int/lit8 v6, v0, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 47
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 48
    return-void
.end method
