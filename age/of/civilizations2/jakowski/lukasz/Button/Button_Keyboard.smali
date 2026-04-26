.class public Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;
.super Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;
.source "Button_Keyboard.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V
    .registers 20
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p6, "typeOfButton"  # Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;
    .param p7, "isClickable"  # Z

    .line 16
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;-><init>()V

    .line 17
    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v11, p6

    invoke-super/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V

    .line 18
    return-void
.end method


# virtual methods
.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 24
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Button$ButtonM$TypeOfButton:[I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->typeOfButton:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_fa

    goto/16 :goto_f9

    .line 58
    :pswitch_f  #0x5
    if-eqz p4, :cond_28

    .line 59
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosXE()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getWidthE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getHeightE()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_f9

    .line 61
    :cond_28
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosXE()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getWidthE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getHeightE()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxEDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 63
    goto/16 :goto_f9

    .line 50
    :pswitch_3f  #0x4
    if-eqz p4, :cond_58

    .line 51
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosXE()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getWidthE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getHeightE()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_f9

    .line 53
    :cond_58
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosXE()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getWidthE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getHeightE()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxEDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 55
    goto/16 :goto_f9

    .line 42
    :pswitch_6f  #0x3
    if-eqz p4, :cond_87

    .line 43
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosXE()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getWidthE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getHeightE()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxEDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_f9

    .line 45
    :cond_87
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosXE()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getWidthE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getHeightE()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 47
    goto :goto_f9

    .line 34
    :pswitch_9d  #0x2
    if-eqz p4, :cond_b5

    .line 35
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosXE()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getWidthE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getHeightE()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_f9

    .line 37
    :cond_b5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosXE()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getWidthE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getHeightE()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxEDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 39
    goto :goto_f9

    .line 26
    :pswitch_cb  #0x1
    if-eqz p4, :cond_e3

    .line 27
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosXE()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getWidthE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getHeightE()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxEDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_f9

    .line 29
    :cond_e3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosXE()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getWidthE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getHeightE()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBoxDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 31
    nop

    .line 67
    :goto_f9
    return-void

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_cb  #00000001
        :pswitch_9d  #00000002
        :pswitch_6f  #00000003
        :pswitch_3f  #00000004
        :pswitch_f  #00000005
    .end packed-switch
.end method

.method public getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 7
    .param p1, "isActive"  # Z

    .line 71
    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_13

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ec6c6c7

    const v3, 0x3eb6b6b7

    const v4, 0x3ea4a4a5

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_32

    .line 72
    :cond_13
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;->getIsClickable()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f3ebebf

    const v3, 0x3f3bbbbc

    const v4, 0x3f37b7b8

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_32

    :cond_28
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f000000  # 0.5f

    const v2, 0x3efae148  # 0.49f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 71
    :goto_32
    return-object v1
.end method
