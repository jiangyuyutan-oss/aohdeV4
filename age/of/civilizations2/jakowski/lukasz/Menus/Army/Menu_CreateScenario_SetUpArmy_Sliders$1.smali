.class Lage/of/civilizations2/jakowski/lukasz/Menus/Army/Menu_CreateScenario_SetUpArmy_Sliders$1;
.super Lage/of/civilizations2/jakowski/lukasz/Sliders/LR/Slider_LR_Flag;
.source "Menu_CreateScenario_SetUpArmy_Sliders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Army/Menu_CreateScenario_SetUpArmy_Sliders;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Army/Menu_CreateScenario_SetUpArmy_Sliders;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Army/Menu_CreateScenario_SetUpArmy_Sliders;IIIIIIII)V
    .registers 21
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Army/Menu_CreateScenario_SetUpArmy_Sliders;
    .param p2, "nCivID"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "iMin"  # I
    .param p8, "iMax"  # I
    .param p9, "iCurrent"  # I

    .line 59
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Army/Menu_CreateScenario_SetUpArmy_Sliders$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Army/Menu_CreateScenario_SetUpArmy_Sliders;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Sliders/LR/Slider_LR_Flag;-><init>(IIIIIIII)V

    return-void
.end method


# virtual methods
.method public getDrawText()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Army/Menu_CreateScenario_SetUpArmy_Sliders$1;->getCurr()I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
