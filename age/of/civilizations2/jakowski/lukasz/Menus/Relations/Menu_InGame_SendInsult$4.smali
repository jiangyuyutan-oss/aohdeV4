.class Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Menu_InGame_SendInsult$4;
.super Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Slider_InGame_Date;
.source "Menu_InGame_SendInsult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Menu_InGame_SendInsult;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Menu_InGame_SendInsult;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Menu_InGame_SendInsult;Ljava/lang/String;IIIIIIIF)V
    .registers 23
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Menu_InGame_SendInsult;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "iMin"  # I
    .param p8, "iMax"  # I
    .param p9, "iCurrent"  # I
    .param p10, "FONT_SCALE"  # F

    .line 110
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Menu_InGame_SendInsult$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Menu_InGame_SendInsult;

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

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Slider_InGame_Date;-><init>(Ljava/lang/String;IIIIIIIF)V

    return-void
.end method


# virtual methods
.method public getSliderHeight()I
    .registers 2

    .line 118
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getWidthE()I
    .registers 3

    .line 113
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Menu_InGame_SendInsult$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Menu_InGame_SendInsult;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Menu_InGame_SendInsult;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    return v0
.end method
