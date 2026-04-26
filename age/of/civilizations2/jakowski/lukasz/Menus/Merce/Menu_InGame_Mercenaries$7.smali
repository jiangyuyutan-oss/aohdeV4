.class Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries$7;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;
.source "Menu_InGame_Mercenaries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries;Ljava/lang/String;IIIIZ)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "isClickable"  # Z

    .line 217
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 225
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries;->setVisibleM(Z)V

    .line 226
    return-void
.end method

.method public getWidthE()I
    .registers 3

    .line 220
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Merce/Menu_InGame_Mercenaries;->getElementW()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
