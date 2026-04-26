.class public Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_FlagEditor.java"


# direct methods
.method public constructor <init>()V
    .registers 21

    .line 28
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Sliders/Slider;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    div-int/lit8 v14, v2, 0x3

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const-string v11, ""

    const/16 v16, 0x0

    const/16 v17, 0xff

    const/16 v18, 0x80

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Sliders/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Sliders/Slider;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    add-int v4, v2, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    div-int/lit8 v6, v2, 0x3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const-string v3, ""

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/16 v10, 0x80

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Sliders/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Sliders/Slider;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int v13, v2, v3

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    div-int/lit8 v15, v2, 0x3

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const-string v12, ""

    const/16 v17, 0x0

    const/16 v18, 0xff

    const/16 v19, 0x80

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Sliders/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v10, 0x42480000  # 50.0f

    mul-float v2, v2, v10

    float-to-int v4, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int v6, v2, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v2, v2, v10

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v3, v3, 0x2

    add-int v15, v2, v3

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const-string v12, "Tool: Pencil"

    const/4 v14, 0x0

    const/16 v18, 0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const-string v3, "Flag Editor"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v4}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;-><init>(Ljava/lang/String;IZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x6

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v1, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x6

    sub-int/2addr v3, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v3, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v3, v3, v6

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v6, v1, v3

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->updateLang()V

    .line 42
    return-void
.end method

.method private final randomFlag()V
    .registers 3

    .line 109
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 111
    .local v0, "oR":Ljava/util/Random;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 114
    .local v1, "res":I
    packed-switch v1, :pswitch_data_1c

    goto :goto_1a

    .line 124
    :pswitch_e  #0x2
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->randomFlag2()V

    goto :goto_1a

    .line 120
    :pswitch_12  #0x1
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->randomFlag1()V

    .line 121
    goto :goto_1a

    .line 116
    :pswitch_16  #0x0
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->randomFlag0()V

    .line 117
    nop

    .line 128
    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_12  #00000001
        :pswitch_e  #00000002
    .end packed-switch
.end method

.method private final randomFlag0()V
    .registers 11

    .line 133
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 135
    .local v0, "oR":Ljava/util/Random;
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 136
    .local v2, "tempR":I
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 137
    .local v3, "tempG":I
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 139
    .local v4, "tempB":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v6, v6, v7

    div-int/lit8 v6, v6, 0x2

    const/high16 v7, 0x42c80000  # 100.0f

    const v8, 0x40233333  # 2.55f

    if-ge v5, v6, :cond_3e

    .line 140
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v9, v2

    div-float/2addr v9, v8

    div-float/2addr v9, v7

    invoke-virtual {v6, v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setR(IF)V

    .line 141
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v9, v3

    div-float/2addr v9, v8

    div-float/2addr v9, v7

    invoke-virtual {v6, v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setG(IF)V

    .line 142
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v9, v4

    div-float/2addr v9, v8

    div-float/2addr v9, v7

    invoke-virtual {v6, v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setB(IF)V

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 145
    .end local v5  # "i":I
    :cond_3e
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 149
    .end local v4  # "tempB":I
    .local v1, "tempB":I
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v4, v4, v5

    div-int/lit8 v4, v4, 0x2

    .local v4, "i":I
    :goto_52
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v5, v5, v6

    if-ge v4, v5, :cond_75

    .line 150
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v6, v2

    div-float/2addr v6, v8

    div-float/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setR(IF)V

    .line 151
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v6, v3

    div-float/2addr v6, v8

    div-float/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setG(IF)V

    .line 152
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v6, v1

    div-float/2addr v6, v8

    div-float/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setB(IF)V

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 154
    .end local v4  # "i":I
    :cond_75
    return-void
.end method

.method private final randomFlag1()V
    .registers 12

    .line 157
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 159
    .local v0, "oR":Ljava/util/Random;
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 160
    .local v2, "tempR":I
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 161
    .local v3, "tempG":I
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 163
    .local v4, "tempB":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v6, v6, v7

    const/high16 v7, 0x42c80000  # 100.0f

    const v8, 0x40233333  # 2.55f

    const/4 v9, 0x3

    if-ge v5, v6, :cond_50

    .line 164
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v10, v2

    div-float/2addr v10, v8

    div-float/2addr v10, v7

    invoke-virtual {v6, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setR(IF)V

    .line 165
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v10, v3

    div-float/2addr v10, v8

    div-float/2addr v10, v7

    invoke-virtual {v6, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setG(IF)V

    .line 166
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v10, v4

    div-float/2addr v10, v8

    div-float/2addr v10, v7

    invoke-virtual {v6, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setB(IF)V

    .line 168
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v6, v9

    rem-int v6, v5, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v7, v9

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4d

    .line 169
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v7, v9

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 163
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 173
    .end local v5  # "i":I
    :cond_50
    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x5

    if-eq v5, v9, :cond_66

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 179
    :cond_66
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v5, v9

    mul-int/lit8 v5, v5, 0x2

    .restart local v5  # "i":I
    :goto_6b
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v6, v6, v10

    if-ge v5, v6, :cond_9f

    .line 180
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v10, v2

    div-float/2addr v10, v8

    div-float/2addr v10, v7

    invoke-virtual {v6, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setR(IF)V

    .line 181
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v10, v3

    div-float/2addr v10, v8

    div-float/2addr v10, v7

    invoke-virtual {v6, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setG(IF)V

    .line 182
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v10, v4

    div-float/2addr v10, v8

    div-float/2addr v10, v7

    invoke-virtual {v6, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setB(IF)V

    .line 184
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    rem-int v6, v5, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    add-int/lit8 v10, v10, -0x1

    if-ne v6, v10, :cond_9c

    .line 185
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v10, v9

    sub-int/2addr v6, v10

    add-int/2addr v5, v6

    .line 179
    :cond_9c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    .line 189
    .end local v5  # "i":I
    :cond_9f
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 190
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 191
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 193
    .end local v4  # "tempB":I
    .local v1, "tempB":I
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v4, v9

    .local v4, "i":I
    :goto_ae
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v5, v5, v6

    if-ge v4, v5, :cond_e5

    .line 194
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v6, v2

    div-float/2addr v6, v8

    div-float/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setR(IF)V

    .line 195
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v6, v3

    div-float/2addr v6, v8

    div-float/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setG(IF)V

    .line 196
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v6, v1

    div-float/2addr v6, v8

    div-float/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setB(IF)V

    .line 198
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    rem-int v5, v4, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_e2

    .line 199
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v6, v9

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 193
    :cond_e2
    add-int/lit8 v4, v4, 0x1

    goto :goto_ae

    .line 202
    .end local v4  # "i":I
    :cond_e5
    return-void
.end method

.method private final randomFlag2()V
    .registers 10

    .line 205
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 207
    .local v0, "oR":Ljava/util/Random;
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 208
    .local v2, "tempR":I
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 209
    .local v3, "tempG":I
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 211
    .local v1, "tempB":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v5, v5, v6

    if-ge v4, v5, :cond_56

    .line 212
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v6, v2

    const v7, 0x40233333  # 2.55f

    div-float/2addr v6, v7

    const/high16 v8, 0x42c80000  # 100.0f

    div-float/2addr v6, v8

    invoke-virtual {v5, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setR(IF)V

    .line 213
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v6, v3

    div-float/2addr v6, v7

    div-float/2addr v6, v8

    invoke-virtual {v5, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setG(IF)V

    .line 214
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    int-to-float v6, v1

    div-float/2addr v6, v7

    div-float/2addr v6, v8

    invoke-virtual {v5, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->setB(IF)V

    .line 216
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    rem-int v5, v4, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x2

    if-ne v5, v6, :cond_53

    .line 217
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 211
    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 220
    .end local v4  # "i":I
    :cond_56
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 6
    .param p1, "iID"  # I

    .line 76
    packed-switch p1, :pswitch_data_62

    goto :goto_60

    .line 93
    :pswitch_4  #0x5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagEditorMode:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    if-ne v0, v1, :cond_d

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PAINT_BUCKET:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    goto :goto_f

    :cond_d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    :goto_f
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagEditorMode:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    .line 95
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagEditorMode:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    if-ne v2, v3, :cond_29

    const-string v2, "Pencil"

    goto :goto_2b

    :cond_29
    const-string v2, "Paint bucket"

    :goto_2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    goto :goto_60

    .line 90
    :pswitch_37  #0x4
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->randomFlag()V

    .line 91
    goto :goto_60

    .line 87
    :pswitch_3b  #0x3
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagB:I

    .line 88
    goto :goto_60

    .line 84
    :pswitch_46  #0x2
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagG:I

    .line 85
    goto :goto_60

    .line 81
    :pswitch_51  #0x1
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagR:I

    .line 82
    goto :goto_60

    .line 78
    :pswitch_5c  #0x0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->onBackPressed()V

    .line 79
    nop

    .line 98
    :goto_60
    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_5c  #00000000
        :pswitch_51  #00000001
        :pswitch_46  #00000002
        :pswitch_3b  #00000003
        :pswitch_37  #00000004
        :pswitch_4  #00000005
    .end packed-switch
.end method

.method public final drawIconFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "x":I
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_3
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v3, v3, v4

    if-ge v0, v3, :cond_4a

    .line 61
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->getR(I)F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->getG(I)F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->getB(I)F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagPixel_Color;->getA(I)F

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 62
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    add-int v4, p3, p2

    add-int/lit8 v5, v1, 0x1

    .end local v1  # "x":I
    .local v5, "x":I
    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v4, v1

    mul-int/lit8 v1, v2, 0x1

    add-int/2addr v1, p4

    invoke-virtual {v3, p1, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 63
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 65
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    if-lt v5, v1, :cond_46

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    const/4 v1, 0x0

    .end local v5  # "x":I
    .restart local v1  # "x":I
    goto :goto_47

    .line 65
    .end local v1  # "x":I
    .restart local v5  # "x":I
    :cond_46
    move v1, v5

    .line 60
    .end local v5  # "x":I
    .restart local v1  # "x":I
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 70
    .end local v0  # "i":I
    .end local v1  # "x":I
    .end local v2  # "y":I
    :cond_4a
    return-void
.end method

.method public final drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZI)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z
    .param p5, "nPosY"  # I

    .line 54
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->getTitleM()Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->getHeightT()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-super/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZI)V

    .line 56
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->getTitleM()Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->getTextWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->getTitleM()Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->getHeightT()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->drawIconFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 57
    return-void
.end method

.method public final onBackPressed()V
    .registers 3

    .line 102
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuIDWithoutAnim(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 103
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    .line 104
    return-void
.end method

.method public updateLang()V
    .registers 4

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_FlagEditor;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "RandomFlag"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 48
    return-void
.end method
