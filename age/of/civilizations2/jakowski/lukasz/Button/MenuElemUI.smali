.class public Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
.super Ljava/lang/Object;
.source "MenuElemUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;
    }
.end annotation


# instance fields
.field public fontID:I

.field private iHeight:I

.field private iPosX:I

.field private iPosY:I

.field private iWidth:I

.field private isClickable:Z

.field private isHovered:Z

.field private isInView:Z

.field private isVisible:Z

.field public menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

.field public typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->fontID:I

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->isClickable:Z

    .line 55
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->isVisible:Z

    .line 56
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->isInView:Z

    .line 58
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->isHovered:Z

    .line 90
    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 2
    .param p1, "iID"  # I

    .line 133
    return-void
.end method

.method public actionElemPPM()V
    .registers 1

    .line 134
    return-void
.end method

.method public addDataGraph(Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;)V
    .registers 2
    .param p1, "nData"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    .line 126
    return-void
.end method

.method public addDataGraph2(Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;)V
    .registers 2
    .param p1, "nData"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;

    .line 131
    return-void
.end method

.method public addText(Ljava/lang/String;I)V
    .registers 3
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "extraHeight"  # I

    .line 121
    return-void
.end method

.method public buildElemHover()V
    .registers 1

    .line 65
    return-void
.end method

.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I

    .line 92
    return-void
.end method

.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "flagPixelID"  # I

    .line 95
    return-void
.end method

.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 93
    return-void
.end method

.method public drawMEH2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 72
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    if-eqz v0, :cond_3a

    .line 73
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 74
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosY()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHover_ExtraPosY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;->drawAlwaysOverMobile(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_3a

    .line 77
    :cond_1f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHover_ExtraPosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosY()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHover_ExtraPosY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 80
    :cond_3a
    :goto_3a
    return-void
.end method

.method public getAnotherView()Z
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getCheckboxSt()Z
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getCurr()I
    .registers 2

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getHeightE()I
    .registers 2

    .line 188
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->iHeight:I

    return v0
.end method

.method public getIsClickable()Z
    .registers 2

    .line 147
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->isClickable:Z

    return v0
.end method

.method public final getIsHovered()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->isHovered:Z

    return v0
.end method

.method public final getIsInView()Z
    .registers 2

    .line 218
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->isInView:Z

    return v0
.end method

.method public getIsScrollable()Z
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuElemHover_IsNull()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getPosXE()I
    .registers 2

    .line 164
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->iPosX:I

    return v0
.end method

.method public getPosY()I
    .registers 2

    .line 172
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->iPosY:I

    return v0
.end method

.method public getSFXElem()I
    .registers 2

    .line 234
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CLICK:I

    return v0
.end method

.method public getTextE()Ljava/lang/String;
    .registers 2

    .line 201
    const-string v0, ""

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public getTextPosElem()I
    .registers 2

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getTextToDrawElem()Ljava/lang/String;
    .registers 2

    .line 197
    const-string v0, ""

    return-object v0
.end method

.method public getTextWidthU()I
    .registers 2

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public final getTypeOfElement()Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;
    .registers 2

    .line 140
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    return-object v0
.end method

.method public getVisibleE()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->isVisible:Z

    return v0
.end method

.method public getWidthE()I
    .registers 2

    .line 180
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->iWidth:I

    return v0
.end method

.method public isMoveable()Z
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public removeData(I)V
    .registers 2
    .param p1, "iCivID"  # I

    .line 127
    return-void
.end method

.method public resetElemHover()V
    .registers 2

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 68
    return-void
.end method

.method public scrollTheMenu()V
    .registers 1

    .line 118
    return-void
.end method

.method public setAnotherView(Z)V
    .registers 2
    .param p1, "inAnotherView"  # Z

    .line 116
    return-void
.end method

.method public setCheckboxSt(Z)V
    .registers 2
    .param p1, "checkboxState"  # Z

    .line 104
    return-void
.end method

.method public final setClickable(Z)V
    .registers 2
    .param p1, "isClickable"  # Z

    .line 151
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->isClickable:Z

    .line 152
    return-void
.end method

.method public setCurr(I)V
    .registers 2
    .param p1, "nCurrent"  # I

    .line 108
    return-void
.end method

.method public setData2(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/GraphData2;>;"
    return-void
.end method

.method public setDataGraph(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;>;"
    return-void
.end method

.method public final setHeightE(I)V
    .registers 2
    .param p1, "iHeight"  # I

    .line 192
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->iHeight:I

    .line 193
    return-void
.end method

.method public setIsHovered(Z)V
    .registers 2
    .param p1, "isHovered"  # Z

    .line 230
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->isHovered:Z

    .line 231
    return-void
.end method

.method public final setIsInView(Z)V
    .registers 2
    .param p1, "isInView"  # Z

    .line 222
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->isInView:Z

    .line 223
    return-void
.end method

.method public setMax(I)V
    .registers 2
    .param p1, "iMax"  # I

    .line 112
    return-void
.end method

.method public setMin(I)V
    .registers 2
    .param p1, "iMin"  # I

    .line 111
    return-void
.end method

.method public final setPosX(I)V
    .registers 2
    .param p1, "iPosX"  # I

    .line 168
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->iPosX:I

    .line 169
    return-void
.end method

.method public final setPosY(I)V
    .registers 2
    .param p1, "iPosY"  # I

    .line 176
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->iPosY:I

    .line 177
    return-void
.end method

.method public setScrollPosY(I)V
    .registers 2
    .param p1, "iScrollPosY"  # I

    .line 117
    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .registers 2
    .param p1, "sText"  # Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setTextE(Ljava/lang/String;)V
    .registers 2
    .param p1, "sText"  # Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V
    .registers 2
    .param p1, "typeOfButton"  # Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    .line 143
    return-void
.end method

.method public setVisibleE(Z)V
    .registers 2
    .param p1, "isVisible"  # Z

    .line 159
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->isVisible:Z

    .line 160
    return-void
.end method

.method public setWidthE(I)V
    .registers 2
    .param p1, "iWidth"  # I

    .line 184
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->iWidth:I

    .line 185
    return-void
.end method

.method public srollByWheel(I)V
    .registers 2
    .param p1, "nScoll"  # I

    .line 119
    return-void
.end method

.method public updateHover(IIII)V
    .registers 5
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "menuPosX"  # I
    .param p4, "menuPosY"  # I

    .line 86
    return-void
.end method

.method public updateSlider(I)V
    .registers 2
    .param p1, "nPosX"  # I

    .line 105
    return-void
.end method
