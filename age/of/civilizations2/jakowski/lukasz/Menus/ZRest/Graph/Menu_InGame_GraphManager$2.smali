.class Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$2;
.super Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;
.source "Menu_InGame_GraphManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager;->setActiveGraphID(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;I)V
    .registers 10
    .param p1, "sTextX"  # Ljava/lang/String;
    .param p2, "sTextY"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "visible"  # Z
    .param p9, "nLoadSize"  # I

    .line 162
    .local p8, "nCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public loadData(I)V
    .registers 8
    .param p1, "i"  # I

    .line 166
    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager;->iActiveGraphID:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_89

    .line 167
    const/4 v0, -0x1

    .line 169
    .local v0, "nStartTurnID":I
    const/4 v1, 0x0

    .local v1, "j":I
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "jSize":I
    :goto_12
    if-ge v1, v2, :cond_2d

    .line 170
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    if-le v3, v4, :cond_2a

    .line 171
    move v0, v1

    .line 172
    goto :goto_2d

    .line 169
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 176
    .end local v1  # "j":I
    .end local v2  # "jSize":I
    :cond_2d
    :goto_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v1, "tempPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-ltz v0, :cond_5b

    .line 179
    move v2, v0

    .local v2, "j":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "jSize":I
    :goto_3f
    if-ge v2, v3, :cond_5b

    .line 180
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 184
    .end local v2  # "j":I
    .end local v3  # "jSize":I
    :cond_5b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_89

    .line 185
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$2;->lData:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-direct {v3, v4, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$2;->lData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->setDrawData(Z)V

    .line 188
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$2;->updateMoveable()V

    .line 189
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$2;->buildGraph()V
    :try_end_89
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_89} :catch_8a

    .line 196
    .end local v0  # "nStartTurnID":I
    .end local v1  # "tempPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_89
    goto :goto_92

    .line 192
    :catch_8a
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v1, :cond_92

    .line 194
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 197
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_92
    :goto_92
    return-void
.end method
