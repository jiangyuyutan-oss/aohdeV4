.class public Lage/of/civilizations2/jakowski/lukasz/Actions;
.super Ljava/lang/Thread;
.source "Actions.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static doActions()V
    .registers 9

    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 21
    .local v0, "time":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 24
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_a
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v6, "Next"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/StackOverflowError; {:try_start_a .. :try_end_1f} :catch_23e
    .catchall {:try_start_a .. :try_end_1f} :catchall_23c

    .line 27
    :try_start_1f
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameAction;->battleReports:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_27
    .catch Ljava/lang/StackOverflowError; {:try_start_1f .. :try_end_26} :catch_23e
    .catchall {:try_start_1f .. :try_end_26} :catchall_23c

    .line 30
    goto :goto_2b

    .line 28
    :catch_27
    move-exception v4

    .line 29
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_28
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 32
    .end local v4  # "ex":Ljava/lang/Exception;
    :goto_2b
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 33
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Actions;->runRevolts()V

    .line 37
    :cond_34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 46
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 51
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateBuildProvinceHoverInformation()V

    .line 52
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->resetCurrentMoveUnits()V

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 57
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_Messages(Z)V

    .line 60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 62
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_70

    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    if-eqz v4, :cond_96

    .line 63
    :cond_70
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->showNextPlayerTurnView()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 64
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->updateWorldMap_Shaders()V

    .line 65
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Render;->updateRenderer()V

    .line 67
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_91

    .line 68
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->enableDrawCivlizationsRegions_Player(I)V

    goto :goto_96

    .line 70
    :cond_91
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->enableDrawCivlizationsRegions_Players()V

    .line 76
    :cond_96
    :goto_96
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 78
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->clearMoveUnits_JustDraw_AnotherArmies()V

    .line 81
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 83
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->ueExA()V

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 88
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TechManager;->updateCivs_ResearchProgress()V

    .line 91
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 93
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->setLoadingTurnActionsOfCivID(I)V

    .line 96
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 98
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->buildAI_Data()V

    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4
    :try_end_ce
    .catch Ljava/lang/StackOverflowError; {:try_start_28 .. :try_end_ce} :catch_23e
    .catchall {:try_start_28 .. :try_end_ce} :catchall_23c

    move-wide v0, v4

    .line 104
    :try_start_cf
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->turnOrders_0()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d4} :catch_d5
    .catch Ljava/lang/StackOverflowError; {:try_start_cf .. :try_end_d4} :catch_23e
    .catchall {:try_start_cf .. :try_end_d4} :catchall_23c

    .line 107
    goto :goto_d9

    .line 105
    :catch_d5
    move-exception v4

    .line 106
    .restart local v4  # "ex":Ljava/lang/Exception;
    :try_start_d6
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_d9
    .catch Ljava/lang/StackOverflowError; {:try_start_d6 .. :try_end_d9} :catch_23e
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_23c

    .line 110
    .end local v4  # "ex":Ljava/lang/Exception;
    :goto_d9
    :try_start_d9
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->turnOrders_1()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_de} :catch_df
    .catch Ljava/lang/StackOverflowError; {:try_start_d9 .. :try_end_de} :catch_23e
    .catchall {:try_start_d9 .. :try_end_de} :catchall_23c

    .line 113
    goto :goto_e3

    .line 111
    :catch_df
    move-exception v4

    .line 112
    .restart local v4  # "ex":Ljava/lang/Exception;
    :try_start_e0
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_e3
    .catch Ljava/lang/StackOverflowError; {:try_start_e0 .. :try_end_e3} :catch_23e
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_23c

    .line 116
    .end local v4  # "ex":Ljava/lang/Exception;
    :goto_e3
    :try_start_e3
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->turnOrders_2()V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e8} :catch_e9
    .catch Ljava/lang/StackOverflowError; {:try_start_e3 .. :try_end_e8} :catch_23e
    .catchall {:try_start_e3 .. :try_end_e8} :catchall_23c

    .line 119
    goto :goto_ed

    .line 117
    :catch_e9
    move-exception v4

    .line 118
    .restart local v4  # "ex":Ljava/lang/Exception;
    :try_start_ea
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_ea .. :try_end_ed} :catch_23e
    .catchall {:try_start_ea .. :try_end_ed} :catchall_23c

    .line 122
    .end local v4  # "ex":Ljava/lang/Exception;
    :goto_ed
    :try_start_ed
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->turnOrders()V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f2} :catch_f3
    .catch Ljava/lang/StackOverflowError; {:try_start_ed .. :try_end_f2} :catch_23e
    .catchall {:try_start_ed .. :try_end_f2} :catchall_23c

    .line 125
    goto :goto_f7

    .line 123
    :catch_f3
    move-exception v4

    .line 124
    .restart local v4  # "ex":Ljava/lang/Exception;
    :try_start_f4
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_f7
    .catch Ljava/lang/StackOverflowError; {:try_start_f4 .. :try_end_f7} :catch_23e
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_23c

    .line 128
    .end local v4  # "ex":Ljava/lang/Exception;
    :goto_f7
    :try_start_f7
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->turnOrders_InvestForeign()V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fc} :catch_fd
    .catch Ljava/lang/StackOverflowError; {:try_start_f7 .. :try_end_fc} :catch_23e
    .catchall {:try_start_f7 .. :try_end_fc} :catchall_23c

    .line 131
    goto :goto_101

    .line 129
    :catch_fd
    move-exception v4

    .line 130
    .restart local v4  # "ex":Ljava/lang/Exception;
    :try_start_fe
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_101
    .catch Ljava/lang/StackOverflowError; {:try_start_fe .. :try_end_101} :catch_23e
    .catchall {:try_start_fe .. :try_end_101} :catchall_23c

    .line 134
    .end local v4  # "ex":Ljava/lang/Exception;
    :goto_101
    :try_start_101
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->turnOrders_End()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_106} :catch_107
    .catch Ljava/lang/StackOverflowError; {:try_start_101 .. :try_end_106} :catch_23e
    .catchall {:try_start_101 .. :try_end_106} :catchall_23c

    .line 137
    goto :goto_10b

    .line 135
    :catch_107
    move-exception v4

    .line 136
    .restart local v4  # "ex":Ljava/lang/Exception;
    :try_start_108
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 140
    .end local v4  # "ex":Ljava/lang/Exception;
    :goto_10b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 145
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_111
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v5
    :try_end_117
    .catch Ljava/lang/StackOverflowError; {:try_start_108 .. :try_end_117} :catch_23e
    .catchall {:try_start_108 .. :try_end_117} :catchall_23c

    if-ge v4, v5, :cond_1be

    .line 147
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_11a
    :try_start_11a
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize()I

    move-result v6

    if-ge v5, v6, :cond_167

    .line 148
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getNumberOfUnits()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto :goto_11a

    .line 151
    .end local v5  # "j":I
    :cond_167
    const/4 v5, 0x0

    .restart local v5  # "j":I
    :goto_168
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunderSize()I

    move-result v6

    if-ge v5, v6, :cond_1b5

    .line 152
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunder(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunder(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunder(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getNumOfUnits()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_1b2} :catch_1b6
    .catch Ljava/lang/StackOverflowError; {:try_start_11a .. :try_end_1b2} :catch_23e
    .catchall {:try_start_11a .. :try_end_1b2} :catchall_23c

    .line 151
    add-int/lit8 v5, v5, 0x1

    goto :goto_168

    .line 156
    .end local v5  # "j":I
    :cond_1b5
    goto :goto_1ba

    .line 154
    :catch_1b6
    move-exception v5

    .line 155
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_1b7
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 145
    .end local v5  # "ex":Ljava/lang/Exception;
    :goto_1ba
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_111

    .line 159
    .end local v4  # "i":I
    :cond_1be
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 162
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 165
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 167
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->TURN_ACTIONS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->setActiveTurnState(Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;)V

    .line 170
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 172
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->disableDrawCivlizationsRegions_Players()V

    .line 173
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->ueExA()V

    .line 176
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 178
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->updateWorldMap_Shaders()V

    .line 180
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Render;->updateRenderer()V

    .line 181
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Render;->updateDrawMoveUnits()V

    .line 182
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->updateDrawMoveUnitsArmy()V

    .line 185
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v4

    .line 187
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iput-boolean v2, v4, Lage/of/civilizations2/jakowski/lukasz/GameAction;->SHOW_REPORT:Z

    .line 190
    const/4 v4, 0x1

    .restart local v4  # "i":I
    :goto_20a
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v5

    if-ge v4, v5, :cond_21e

    .line 191
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->runRecruitArmyNT()V

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_20a

    .line 194
    .end local v4  # "i":I
    :cond_21e
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateBuildProvinceHoverInformation()V

    .line 197
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4
    :try_end_227
    .catch Ljava/lang/StackOverflowError; {:try_start_1b7 .. :try_end_227} :catch_23e
    .catchall {:try_start_1b7 .. :try_end_227} :catchall_23c

    move-wide v0, v4

    .line 208
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 211
    :try_start_22c
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_239} :catch_23a

    .line 214
    :goto_239
    goto :goto_263

    .line 212
    :catch_23a
    move-exception v2

    .line 215
    goto :goto_263

    .line 208
    :catchall_23c
    move-exception v4

    goto :goto_26d

    .line 198
    :catch_23e
    move-exception v4

    .line 199
    .local v4, "ex":Ljava/lang/StackOverflowError;
    :try_start_23f
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_242
    .catchall {:try_start_23f .. :try_end_242} :catchall_23c

    .line 202
    :try_start_242
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V
    :try_end_24f
    .catch Ljava/lang/Exception; {:try_start_242 .. :try_end_24f} :catch_250
    .catchall {:try_start_242 .. :try_end_24f} :catchall_23c

    .line 205
    goto :goto_251

    .line 203
    :catch_250
    move-exception v5

    .line 208
    .end local v4  # "ex":Ljava/lang/StackOverflowError;
    :goto_251
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 211
    :try_start_255
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V
    :try_end_262
    .catch Ljava/lang/Exception; {:try_start_255 .. :try_end_262} :catch_23a

    goto :goto_239

    .line 217
    :goto_263
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lage/of/civilizations2/jakowski/lukasz/Menus/RTO/Menu_InGame_RTO2;->TIME_CONTINUE:J

    .line 223
    return-void

    .line 208
    :goto_26d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 211
    :try_start_271
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V
    :try_end_27e
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_27e} :catch_27f

    .line 214
    goto :goto_280

    .line 212
    :catch_27f
    move-exception v2

    .line 215
    :goto_280
    goto :goto_282

    :goto_281
    throw v4

    :goto_282
    goto :goto_281
.end method

.method public static final runRevolts()V
    .registers 4

    .line 226
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 229
    .local v0, "time":J
    :try_start_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->revoltDeclareIndependence()V

    .line 231
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_14
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_d} :catch_f

    move-wide v0, v2

    .line 236
    :goto_e
    goto :goto_19

    .line 234
    :catch_f
    move-exception v2

    .line 235
    .local v2, "exr":Ljava/lang/StackOverflowError;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 232
    .end local v2  # "exr":Ljava/lang/StackOverflowError;
    :catch_14
    move-exception v2

    .line 233
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .end local v2  # "ex":Ljava/lang/Exception;
    goto :goto_e

    .line 239
    :goto_19
    :try_start_19
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->startUprising()V

    .line 241
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_29
    .catch Ljava/lang/StackOverflowError; {:try_start_19 .. :try_end_22} :catch_24

    move-wide v0, v2

    .line 246
    :goto_23
    goto :goto_2e

    .line 244
    :catch_24
    move-exception v2

    .line 245
    .local v2, "exr":Ljava/lang/StackOverflowError;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2e

    .line 242
    .end local v2  # "exr":Ljava/lang/StackOverflowError;
    :catch_29
    move-exception v2

    .line 243
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .end local v2  # "ex":Ljava/lang/Exception;
    goto :goto_23

    .line 247
    :goto_2e
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 15
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Actions;->doActions()V

    .line 16
    return-void
.end method
