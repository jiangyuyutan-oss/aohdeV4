.class Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit$6;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_Opinion_2;
.source "Menu_InGame_HostSummit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit;IIIIIIIILjava/lang/String;)V
    .registers 23
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit;
    .param p2, "iCivA"  # I
    .param p3, "iCivB"  # I
    .param p4, "nImageID"  # I
    .param p5, "nCost"  # I
    .param p6, "nDiploCost"  # I
    .param p7, "iPosX"  # I
    .param p8, "iPosY"  # I
    .param p9, "iWidth"  # I
    .param p10, "extraCostText"  # Ljava/lang/String;

    .line 194
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Opinion/ButtonN_Opinion_2;-><init>(IIIIIIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 202
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit;->invitedCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 203
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit;->invitedCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit$6;->getCurr()I

    move-result v2

    if-ne v1, v2, :cond_21

    .line 204
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit;->invitedCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 205
    goto :goto_24

    .line 202
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    .end local v0  # "i":I
    :cond_24
    :goto_24
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_HostSummit2()V

    .line 209
    return-void
.end method

.method public getWidthE()I
    .registers 2

    .line 197
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Relations/Actions/Menu_InGame_HostSummit;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
