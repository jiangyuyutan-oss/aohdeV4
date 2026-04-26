.class Lage/of/civilizations2/jakowski/lukasz/Menus/RandomGame/Menu_RandomGame_Settings$1;
.super Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Clear/Slider_InGame_Clear;
.source "Menu_RandomGame_Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/RandomGame/Menu_RandomGame_Settings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/RandomGame/Menu_RandomGame_Settings;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/RandomGame/Menu_RandomGame_Settings;Ljava/lang/String;IIIIIII)V
    .registers 21
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/RandomGame/Menu_RandomGame_Settings;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "iMin"  # I
    .param p8, "iMax"  # I
    .param p9, "iCurrent"  # I

    .line 46
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/RandomGame/Menu_RandomGame_Settings$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/RandomGame/Menu_RandomGame_Settings;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Clear/Slider_InGame_Clear;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public getPosXE()I
    .registers 3

    .line 54
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidthE()I
    .registers 3

    .line 49
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/RandomGame/Menu_RandomGame_Settings$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/RandomGame/Menu_RandomGame_Settings;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/RandomGame/Menu_RandomGame_Settings;->getW()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/RandomGame/Menu_RandomGame_Settings$1;->getPosXE()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
