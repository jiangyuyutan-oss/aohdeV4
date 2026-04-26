.class Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation$11;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Button_RelocatePop;
.source "Menu_InGame_RelocatePopulation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation;IIIIII)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation;
    .param p2, "i"  # I
    .param p3, "iCivA"  # I
    .param p4, "iPopulation"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I

    .line 270
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation$11;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_RelocatePop;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 6
    .param p1, "iID"  # I

    .line 279
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation;->relocate:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation$11;->id:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation;->relocate:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation$11;->id:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation;->fromProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Build_RelocatePopulation(I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 283
    goto :goto_2a

    .line 281
    :catch_26
    move-exception v0

    .line 282
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 284
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method public getCheckboxSt()Z
    .registers 3

    .line 289
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation;->relocate:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation$11;->id:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 290
    :catch_f
    move-exception v0

    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public getWidthE()I
    .registers 2

    .line 273
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation$11;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Province/Menu_InGame_RelocatePopulation;->getElementW2()I

    move-result v0

    return v0
.end method
