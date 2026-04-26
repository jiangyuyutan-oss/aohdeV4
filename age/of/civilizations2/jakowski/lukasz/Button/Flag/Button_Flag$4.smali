.class Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$4;
.super Ljava/lang/Object;
.source "Button_Flag.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$DrawButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;-><init>(IIIIILage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$ButtonFlagType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;

    .line 85
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 88
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getPosXE()I

    move-result v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, p3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getHeightE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 89
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getPosXE()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 90
    return-void
.end method
