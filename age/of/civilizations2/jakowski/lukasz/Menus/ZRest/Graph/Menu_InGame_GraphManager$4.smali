.class Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$4;
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

    .line 333
    .local p8, "nCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public loadData(I)V
    .registers 9
    .param p1, "i"  # I

    .line 337
    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager;->iActiveGraphID:I

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_10e

    .line 338
    const/4 v0, 0x1

    if-nez p1, :cond_78

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v1, "tempPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "jSize":I
    :goto_19
    if-ge v2, v3, :cond_54

    .line 342
    const/4 v4, 0x0

    .line 344
    .local v4, "tempTurnPop":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1d
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_49

    .line 345
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    .line 344
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 348
    .end local v5  # "k":I
    :cond_49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    nop

    .end local v4  # "tempTurnPop":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 351
    .end local v2  # "j":I
    .end local v3  # "jSize":I
    :cond_54
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_76

    .line 352
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->setDrawData(Z)V

    .line 355
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$4;->updateMoveable()V

    .line 356
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$4;->buildGraph()V

    .line 358
    .end local v1  # "tempPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_76
    goto/16 :goto_10e

    .line 360
    :cond_78
    const/4 v1, -0x1

    .line 362
    .local v1, "nStartTurnID":I
    const/4 v2, 0x0

    .restart local v2  # "j":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .restart local v3  # "jSize":I
    :goto_84
    if-ge v2, v3, :cond_a9

    .line 363
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v5

    if-le v4, v5, :cond_a6

    .line 364
    move v1, v2

    .line 365
    goto :goto_a9

    .line 362
    :cond_a6
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 369
    .end local v2  # "j":I
    .end local v3  # "jSize":I
    :cond_a9
    :goto_a9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v2, "tempPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-ltz v1, :cond_e1

    .line 372
    move v3, v1

    .local v3, "j":I
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "jSize":I
    :goto_bb
    if-ge v3, v4, :cond_e1

    .line 373
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsPopulation:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Population_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v3, v3, 0x1

    goto :goto_bb

    .line 377
    .end local v3  # "j":I
    .end local v4  # "jSize":I
    :cond_e1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10e

    .line 378
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->getCivID()I

    move-result v5

    invoke-direct {v4, v5, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v3, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/GraphData;->setDrawData(Z)V

    .line 381
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$4;->updateMoveable()V

    .line 382
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Graph/Menu_InGame_GraphManager$4;->buildGraph()V
    :try_end_10e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_10e} :catch_10f

    .line 388
    .end local v1  # "nStartTurnID":I
    .end local v2  # "tempPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_10e
    :goto_10e
    goto :goto_110

    .line 386
    :catch_10f
    move-exception v0

    .line 389
    :goto_110
    return-void
.end method
