.class Lage/of/civilizations2/jakowski/lukasz/Menus/Out/Menu_CreateScenario_Events_Out_MovementPoints$1;
.super Lage/of/civilizations2/jakowski/lukasz/Sliders/ZRest/Slider_BG;
.source "Menu_CreateScenario_Events_Out_MovementPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Out/Menu_CreateScenario_Events_Out_MovementPoints;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Out/Menu_CreateScenario_Events_Out_MovementPoints;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Out/Menu_CreateScenario_Events_Out_MovementPoints;IIIIIII)V
    .registers 19
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Out/Menu_CreateScenario_Events_Out_MovementPoints;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p6, "iMin"  # I
    .param p7, "iMax"  # I
    .param p8, "iCurrent"  # I

    .line 36
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Out/Menu_CreateScenario_Events_Out_MovementPoints$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Out/Menu_CreateScenario_Events_Out_MovementPoints;

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
    .registers 4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Out/Menu_CreateScenario_Events_Out_MovementPoints$1;->getTextE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Out/Menu_CreateScenario_Events_Out_MovementPoints$1;->getCurr()I

    move-result v1

    if-lez v1, :cond_16

    const-string v1, "+"

    goto :goto_18

    :cond_16
    const-string v1, ""

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Out/Menu_CreateScenario_Events_Out_MovementPoints$1;->getCurr()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
