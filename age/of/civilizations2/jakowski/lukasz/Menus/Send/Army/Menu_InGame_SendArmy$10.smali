.class Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;
.source "Menu_InGame_SendArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;Ljava/lang/String;IIIIZ)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "isClickable"  # Z

    .line 234
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 247
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;->sendArmy()V

    .line 249
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;->setVisibleM(Z)V

    .line 250
    return-void
.end method

.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 253
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmySend:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getPosXE()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getTextWidthU()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmySend:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmySend:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 255
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->fontID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getTextE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getTextPosElem()I

    move-result v1

    if-gez v1, :cond_7d

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getWidthE()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getTextWidthU()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmySend:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmySend:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    goto :goto_81

    :cond_7d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getTextPosElem()I

    move-result v1

    :goto_81
    add-int/2addr v0, v1

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getHeightE()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getTextHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 256
    return-void
.end method

.method public getIsClickable()Z
    .registers 2

    .line 260
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;->toProvinceID:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getPosXE()I
    .registers 3

    .line 237
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;->getElementW()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidthE()I
    .registers 3

    .line 242
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;->getElementW()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
