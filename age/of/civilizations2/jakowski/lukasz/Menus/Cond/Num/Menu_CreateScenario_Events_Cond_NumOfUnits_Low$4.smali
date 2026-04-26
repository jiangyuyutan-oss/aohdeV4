.class Lage/of/civilizations2/jakowski/lukasz/Menus/Cond/Num/Menu_CreateScenario_Events_Cond_NumOfUnits_Low$4;
.super Lage/of/civilizations2/jakowski/lukasz/Sliders/ZRest/Slider_BG;
.source "Menu_CreateScenario_Events_Cond_NumOfUnits_Low.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Cond/Num/Menu_CreateScenario_Events_Cond_NumOfUnits_Low;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Cond/Num/Menu_CreateScenario_Events_Cond_NumOfUnits_Low;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Cond/Num/Menu_CreateScenario_Events_Cond_NumOfUnits_Low;IIIIIII)V
    .registers 19
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Cond/Num/Menu_CreateScenario_Events_Cond_NumOfUnits_Low;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p6, "iMin"  # I
    .param p7, "iMax"  # I
    .param p8, "iCurrent"  # I

    .line 59
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Cond/Num/Menu_CreateScenario_Events_Cond_NumOfUnits_Low$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Cond/Num/Menu_CreateScenario_Events_Cond_NumOfUnits_Low;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Sliders/ZRest/Slider_BG;-><init>(IIIIIII)V

    return-void
.end method


# virtual methods
.method public getDrawText()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Cond/Num/Menu_CreateScenario_Events_Cond_NumOfUnits_Low$4;->getTextE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Cond/Num/Menu_CreateScenario_Events_Cond_NumOfUnits_Low$4;->getCurr()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
