.class Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_SetUp$4;
.super Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Clear/Slider_InGame_Clear_Flag;
.source "Menu_CreateScenario_Cores_SetUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_SetUp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_SetUp;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_SetUp;ILjava/lang/String;IIIIIII)V
    .registers 23
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_SetUp;
    .param p2, "iCivID"  # I
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "iMin"  # I
    .param p9, "iMax"  # I
    .param p10, "iCurrent"  # I

    .line 130
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_SetUp$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_SetUp;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Clear/Slider_InGame_Clear_Flag;-><init>(ILjava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public getDrawText()Ljava/lang/String;
    .registers 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Core/Menu_CreateScenario_Cores_SetUp$4;->getCurr()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
