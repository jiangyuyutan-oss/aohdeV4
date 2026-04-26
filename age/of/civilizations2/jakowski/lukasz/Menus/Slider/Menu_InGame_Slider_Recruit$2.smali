.class Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Recruit$2;
.super Lage/of/civilizations2/jakowski/lukasz/Sliders/LR/Slider_LR_PercOver;
.source "Menu_InGame_Slider_Recruit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Recruit;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Recruit;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Recruit;IIIIIII)V
    .registers 19
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Recruit;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p6, "iMin"  # I
    .param p7, "iMax"  # I
    .param p8, "iCurrent"  # I

    .line 75
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Recruit$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Recruit;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Sliders/LR/Slider_LR_PercOver;-><init>(IIIIIII)V

    return-void
.end method


# virtual methods
.method public getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 78
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_SLIDER_LEFT_BG2:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
