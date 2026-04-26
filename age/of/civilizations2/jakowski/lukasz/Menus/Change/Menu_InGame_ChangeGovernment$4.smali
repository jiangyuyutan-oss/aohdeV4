.class Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment$4;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/ChangeGov/Button_Diplomacy_ChangeGovernment2;
.source "Menu_InGame_ChangeGovernment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;IIIIZI)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;
    .param p2, "nIdeologyID"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "isClickable"  # Z
    .param p7, "civA"  # I

    .line 230
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/ChangeGov/Button_Diplomacy_ChangeGovernment2;-><init>(IIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;->getMenuElemsSize()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 239
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCheckboxSt(Z)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    .end local v0  # "i":I
    :cond_16
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCheckboxSt()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCheckboxSt(Z)V

    .line 242
    return-void
.end method

.method public getWidthE()I
    .registers 2

    .line 233
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Change/Menu_InGame_ChangeGovernment;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
