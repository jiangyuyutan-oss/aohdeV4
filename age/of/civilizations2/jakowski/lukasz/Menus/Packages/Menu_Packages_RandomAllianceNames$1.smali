.class Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_ReflectedBG;
.source "Menu_Packages_RandomAllianceNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;Ljava/lang/String;IIIIIZ)V
    .registers 19
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "isClickable"  # Z

    .line 63
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_ReflectedBG;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public final getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 7
    .param p1, "isActive"  # Z

    .line 65
    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_e

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f70e560  # 0.941f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_48

    .line 66
    :cond_e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames$1;->getIsClickable()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames$1;->getCheckboxSt()Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ecac083  # 0.396f

    const v3, 0x3f1374bc  # 0.576f

    const v4, 0x3c449ba6  # 0.012f

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_48

    :cond_29
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f249ba6  # 0.643f

    const v3, 0x3de76c8b  # 0.113f

    const v4, 0x3c03126f  # 0.008f

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_48

    :cond_38
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f2c8b44  # 0.674f

    const v2, 0x3db851ec  # 0.09f

    const v3, 0x3d872b02  # 0.066f

    const/high16 v4, 0x3f000000  # 0.5f

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 65
    :goto_48
    return-object v1
.end method
