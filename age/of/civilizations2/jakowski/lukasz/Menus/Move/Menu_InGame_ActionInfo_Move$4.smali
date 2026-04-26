.class Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move$4;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo_Right_ArmyBonues;
.source "Menu_InGame_ActionInfo_Move.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isPositive:Z

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "sValue"  # Ljava/lang/String;
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I

    .line 102
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo_Right_ArmyBonues;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move$4;->isPositive:Z

    return-void
.end method


# virtual methods
.method public buildElemHover()V
    .registers 6

    .line 108
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenProvinceID:I

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getMoveArmyModifiers_Defenders_Hover(II)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 113
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move$4;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_20} :catch_21

    .line 116
    .end local v0  # "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    .end local v1  # "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    goto :goto_25

    .line 114
    :catch_21
    move-exception v0

    .line 115
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move$4;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 117
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_25
    return-void
.end method

.method public drawMEH2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 8
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 121
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move$4;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    if-eqz v0, :cond_11

    .line 122
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move$4;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move$4;->getPosY()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;->drawAlwaysOverM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 124
    :cond_11
    return-void
.end method

.method public getColorValue()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 128
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move$4;->isPositive:Z

    if-eqz v0, :cond_9

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo_Right_ArmyBonues;->getColorValue()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    goto :goto_b

    :cond_9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    :goto_b
    return-object v0
.end method

.method public setCurr(I)V
    .registers 3
    .param p1, "nCurrent"  # I

    .line 133
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_Move$4;->isPositive:Z

    .line 134
    return-void
.end method
