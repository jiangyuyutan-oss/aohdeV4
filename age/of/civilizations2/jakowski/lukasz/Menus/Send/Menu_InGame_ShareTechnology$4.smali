.class Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Menu_InGame_ShareTechnology$4;
.super Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Slider_InGame_Technology;
.source "Menu_InGame_ShareTechnology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Menu_InGame_ShareTechnology;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Menu_InGame_ShareTechnology;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Menu_InGame_ShareTechnology;Ljava/lang/String;IIIIIIIF)V
    .registers 23
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Menu_InGame_ShareTechnology;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "iMin"  # I
    .param p8, "iMax"  # I
    .param p9, "iCurrent"  # I
    .param p10, "FONT_SCALE"  # F

    .line 83
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Menu_InGame_ShareTechnology$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Menu_InGame_ShareTechnology;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Slider_InGame_Technology;-><init>(Ljava/lang/String;IIIIIIIF)V

    return-void
.end method


# virtual methods
.method public getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .registers 6

    .line 96
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f266666  # 0.65f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public getSliderHeight()I
    .registers 2

    .line 91
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getWidthE()I
    .registers 3

    .line 86
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Menu_InGame_ShareTechnology$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Menu_InGame_ShareTechnology;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Menu_InGame_ShareTechnology;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    return v0
.end method
