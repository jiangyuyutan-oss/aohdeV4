.class Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy$3;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;
.source "Menu_InGame_AdministrationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;IIIIZ)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;
    .param p2, "nPolicyID"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "isClickable"  # Z

    .line 88
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_AdministrationPolicy;-><init>(IIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;->getMenuElemsSize()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 97
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCheckboxSt(Z)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    .end local v0  # "i":I
    :cond_16
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCheckboxSt()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCheckboxSt(Z)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "tMess":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "tColor":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy$3;->getTextE()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v2, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/util/List;Ljava/util/List;)V

    .line 108
    return-void
.end method

.method public getWidthE()I
    .registers 2

    .line 91
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/AdmPolicy/Menu_InGame_AdministrationPolicy;->getW()I

    move-result v0

    return v0
.end method
