.class Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;
.super Ljava/lang/Object;
.source "ButtonN_FlagIcon_3_TextRight.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    .line 75
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

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

    .line 78
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->getCheckboxSt()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 79
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e4ccccd  # 0.2f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 80
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patternSquareTiny:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->patternSquareTiny:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int v4, v0, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/ButtonDiplomacy;->iDiploWidth:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->getHeightE()I

    move-result v0

    add-int/lit8 v6, v0, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 83
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int v4, v0, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/ButtonDiplomacy;->iDiploWidth:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->getHeightE()I

    move-result v0

    div-int/lit8 v6, v0, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 84
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->getHeightE()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, p3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->getHeightE()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    sub-int v4, v0, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/ButtonDiplomacy;->iDiploWidth:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_FlagIcon_3_TextRight;->getHeightE()I

    move-result v0

    div-int/lit8 v6, v0, 0x4

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 87
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 89
    :cond_d7
    return-void
.end method
