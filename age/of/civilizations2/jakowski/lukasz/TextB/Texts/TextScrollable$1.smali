.class Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;
.super Ljava/lang/Object;
.source "TextScrollable.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$DrawText;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    .line 80
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 11
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 83
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$000(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 84
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getTextE()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getPosXE()I

    move-result v2

    if-eqz p4, :cond_33

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$100(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)Z

    move-result v3

    if-nez v3, :cond_33

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$200(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)I

    move-result v3

    goto :goto_3b

    :cond_33
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    invoke-interface {v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;->getTextPosition()I

    move-result v3

    :goto_3b
    add-int/2addr v2, v3

    add-int/2addr v2, p2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getPosY()I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getHeightE()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->iTextHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-virtual {v4, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-static {p1, v0, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefaultWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 85
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 86
    return-void
.end method
