.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_InGame_Outliner.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x87

.field public static hideAnimation:Z

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->lTime:J

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->hideAnimation:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 30

    .line 72
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 75
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    const/4 v1, 0x1

    .line 77
    .local v1, "tempMaxTextW":I
    :try_start_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v3, "+100% "

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 78
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_1f} :catch_22

    float-to-int v1, v0

    .line 81
    move v0, v1

    goto :goto_24

    .line 79
    :catch_22
    move-exception v0

    move v0, v1

    .line 83
    .end local v1  # "tempMaxTextW":I
    .local v0, "tempMaxTextW":I
    :goto_24
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diploWar:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v11, v1, v2

    .line 84
    .local v11, "tMenuWidth":I
    const/4 v8, 0x0

    .line 86
    .local v8, "tPosY":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    .line 88
    .local v12, "tempWars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v9

    .line 91
    .local v9, "playerCivID":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_52
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_91

    .line 92
    if-eq v1, v9, :cond_8e

    .line 93
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 94
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWarID(II)I

    move-result v2

    .line 96
    .local v2, "tWarID":I
    if-ltz v2, :cond_8e

    .line 97
    const/4 v3, 0x0

    .line 99
    .local v3, "added":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6e
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_85

    .line 100
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_82

    .line 101
    const/4 v3, 0x1

    .line 102
    goto :goto_85

    .line 99
    :cond_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 106
    .end local v4  # "j":I
    :cond_85
    :goto_85
    if-nez v3, :cond_8e

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v2  # "tWarID":I
    .end local v3  # "added":Z
    :cond_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 115
    .end local v1  # "i":I
    :cond_91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    .line 117
    .local v15, "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_97
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10a

    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, "tBest":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_9f
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_fd

    .line 121
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getCasualties_Aggressors()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getCasualties_Defenders()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getCasualties_Aggressors()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getCasualties_Defenders()I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_fa

    .line 122
    move v1, v2

    .line 120
    :cond_fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    .line 126
    .end local v2  # "i":I
    :cond_fd
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v12, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 128
    .end local v1  # "tBest":I
    goto :goto_97

    .line 130
    :cond_10a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_STATS:Z

    const-string v14, ""

    if-eqz v1, :cond_158

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v1

    if-nez v1, :cond_11e

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_STATS_MOBILE:Z

    if-eqz v1, :cond_158

    .line 131
    :cond_11e
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Stats"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    add-int/lit8 v7, v11, -0x2

    move-object v1, v13

    move-object/from16 v2, p0

    move v3, v9

    move v6, v8

    invoke-direct/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;ILjava/lang/String;III)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int/2addr v8, v1

    .line 145
    :cond_158
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->gameWillBeSavedInNextTurn()Z

    move-result v1

    if-eqz v1, :cond_17f

    .line 146
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$2;

    const/4 v5, 0x2

    add-int/lit8 v7, v11, -0x2

    move-object v2, v1

    move-object/from16 v3, p0

    move v4, v9

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;IIII)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int/2addr v8, v1

    .line 153
    :cond_17f
    const/16 v20, 0x1

    .line 155
    .local v20, "research":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_182
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->getMessagesSize()I

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    if-ge v1, v2, :cond_1f7

    .line 156
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->getMessage(I)Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->TECHNOLOGY_RESEARCHED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v2, v4, :cond_1f2

    .line 157
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 158
    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    add-int/lit8 v19, v11, -0x2

    move-object v13, v2

    move-object v4, v14

    move-object/from16 v14, p0

    move-object v7, v15

    .end local v15  # "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v15, v9

    move/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;ILjava/lang/String;III)V

    .line 157
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    add-int/2addr v8, v2

    .line 162
    goto :goto_1f9

    .line 155
    .end local v7  # "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15  # "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1f2
    move-object v4, v14

    move-object v7, v15

    .end local v15  # "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7  # "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_182

    .end local v7  # "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15  # "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1f7
    move-object v4, v14

    move-object v7, v15

    .line 166
    .end local v1  # "i":I
    .end local v15  # "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7  # "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1f9
    const-string v1, "%"

    const/4 v2, 0x4

    if-eqz v20, :cond_249

    .line 167
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$4;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 168
    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getResearchProgressT()F

    move-result v13

    float-to-int v13, v13

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/TechManager;->getResearchNextLevel(I)I

    move-result v14

    invoke-static {v13, v14, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPercentage_Max100(III)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    add-int/lit8 v19, v11, -0x2

    move-object v13, v5

    move-object/from16 v14, p0

    move v15, v9

    move/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;ILjava/lang/String;III)V

    .line 167
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v5

    add-int/2addr v8, v5

    .line 174
    :cond_249
    sget-boolean v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ENABLE_NUKES:Z

    if-eqz v5, :cond_2da

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAtomic:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->SHOW_NUKES_OUTLINER_DESPITE_YEAR_REQUIREMENTS:Z

    if-nez v5, :cond_25f

    sget-boolean v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUKES_MIN_YEAR_ENABLED:Z

    if-eqz v5, :cond_25f

    sget v5, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->currYear:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAtomic:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->ATOMIC_BOMB_MIN_YEAR:I

    if-lt v5, v6, :cond_2da

    .line 175
    :cond_25f
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$5;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 176
    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNukes:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->nukesConstruction:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2b0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    iget-object v14, v14, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v14, v14, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->nukesConstruction:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_2b1

    :cond_2b0
    move-object v14, v4

    :goto_2b1
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    add-int/lit8 v19, v11, -0x2

    move-object v13, v5

    move-object/from16 v14, p0

    move v15, v9

    move/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;ILjava/lang/String;III)V

    .line 175
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v5

    add-int/2addr v8, v5

    .line 185
    :cond_2da
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_POPULATION:Z

    if-eqz v5, :cond_32e

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v5

    if-nez v5, :cond_2ec

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_POPULATION_MOBILE:Z

    if-eqz v5, :cond_32e

    .line 186
    :cond_2ec
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$6;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 187
    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPop()J

    move-result-wide v13

    invoke-static {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumber_SHORT(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    add-int/lit8 v19, v11, -0x2

    move-object v13, v5

    move-object/from16 v14, p0

    move v15, v9

    move/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;ILjava/lang/String;III)V

    .line 186
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v5

    add-int/2addr v8, v5

    .line 192
    :cond_32e
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_ECONOMY:Z

    if-eqz v5, :cond_382

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v5

    if-nez v5, :cond_340

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_ECONOMY_MOBILE:Z

    if-eqz v5, :cond_382

    .line 193
    :cond_340
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$7;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 194
    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countEco()J

    move-result-wide v13

    invoke-static {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumber_SHORT(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    add-int/lit8 v19, v11, -0x2

    move-object v13, v5

    move-object/from16 v14, p0

    move v15, v9

    move/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;ILjava/lang/String;III)V

    .line 193
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v5

    add-int/2addr v8, v5

    .line 199
    :cond_382
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_STABILITY:Z

    if-eqz v5, :cond_3d9

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v5

    if-nez v5, :cond_394

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_STABILITY_MOBILE:Z

    if-eqz v5, :cond_3d9

    .line 200
    :cond_394
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$8;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 201
    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getStabilityCiv()F

    move-result v13

    mul-float v13, v13, v3

    float-to-int v13, v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    add-int/lit8 v19, v11, -0x2

    move-object v13, v5

    move-object/from16 v14, p0

    move v15, v9

    move/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;ILjava/lang/String;III)V

    .line 200
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v5

    add-int/2addr v8, v5

    .line 207
    :cond_3d9
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_HAPPINESS:Z

    if-eqz v5, :cond_42d

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v5

    if-nez v5, :cond_3eb

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_HAPPINESS_MOBILE:Z

    if-eqz v5, :cond_42d

    .line 208
    :cond_3eb
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$9;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 209
    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHappiness()I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    add-int/lit8 v19, v11, -0x2

    move-object v13, v5

    move-object/from16 v14, p0

    move v15, v9

    move/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;ILjava/lang/String;III)V

    .line 208
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v5

    add-int/2addr v8, v5

    .line 215
    :cond_42d
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_WAR_WEARINESS:Z

    if-eqz v5, :cond_47d

    .line 216
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$10;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 217
    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarWeariness()F

    move-result v13

    const v14, 0x461c4000  # 10000.0f

    mul-float v13, v13, v14

    float-to-int v13, v13

    int-to-float v13, v13

    div-float/2addr v13, v3

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    add-int/lit8 v19, v11, -0x2

    move-object v13, v5

    move-object/from16 v14, p0

    move v15, v9

    move/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;ILjava/lang/String;III)V

    .line 216
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int/2addr v8, v1

    .line 222
    :cond_47d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_ARMY:Z

    if-eqz v1, :cond_4c5

    .line 223
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$11;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 224
    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumber_SHORT(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    add-int/lit8 v19, v11, -0x2

    move-object v13, v1

    move-object/from16 v14, p0

    move v15, v9

    move/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;ILjava/lang/String;III)V

    .line 223
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int/2addr v8, v1

    .line 229
    :cond_4c5
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvOutliner:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_BATTLE_REPORTS:Z

    if-eqz v1, :cond_507

    .line 230
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$12;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameAction;->battleReports:Ljava/util/List;

    .line 231
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    add-int/lit8 v19, v11, -0x2

    move-object v13, v1

    move-object/from16 v14, p0

    move v15, v9

    move/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;ILjava/lang/String;III)V

    .line 230
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    add-int/2addr v8, v1

    .line 236
    :cond_507
    const/4 v1, 0x0

    if-nez v20, :cond_572

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_572

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_572

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPartOfHolyRomanEmpire()Z

    move-result v3

    if-eqz v3, :cond_52f

    goto :goto_572

    .line 260
    :cond_52f
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$16;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v24, v4, 0x2

    const/16 v25, 0x2

    add-int/lit8 v27, v11, -0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int v28, v4, v5

    const-string v23, "NoWars"

    move-object/from16 v21, v3

    move-object/from16 v22, p0

    move/from16 v26, v8

    invoke-direct/range {v21 .. v28}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v3

    add-int/2addr v8, v3

    .line 264
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setVisibleE(Z)V

    move v13, v8

    goto/16 :goto_641

    .line 237
    :cond_572
    :goto_572
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_573
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5a8

    .line 238
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$13;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x2

    add-int/lit8 v18, v11, -0x2

    move-object v13, v4

    move-object/from16 v14, p0

    move/from16 v17, v8

    invoke-direct/range {v13 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;IIII)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int/2addr v8, v4

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_573

    .line 245
    .end local v3  # "i":I
    :cond_5a8
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_5a9
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPrepsSize:I

    if-ge v3, v4, :cond_606

    .line 246
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$14;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v15, v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->onCivID:I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 247
    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->iNumOfTurnsLeft:I

    const/16 v17, 0x2

    add-int/lit8 v19, v11, -0x2

    move-object v13, v4

    move-object/from16 v14, p0

    move/from16 v16, v5

    move/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;IIIII)V

    .line 246
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int/2addr v8, v4

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a9

    .line 253
    .end local v3  # "i":I
    :cond_606
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPartOfHolyRomanEmpire()Z

    move-result v3

    if-eqz v3, :cond_640

    .line 254
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$15;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->hreMgr:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->getHRE()Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getEmperor()I

    move-result v15

    const/16 v16, 0x2

    add-int/lit8 v18, v11, -0x2

    move-object v13, v3

    move-object/from16 v14, p0

    move/from16 v17, v8

    invoke-direct/range {v13 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;IIII)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v3

    add-int/2addr v8, v3

    move v13, v8

    goto :goto_641

    .line 253
    :cond_640
    move v13, v8

    .line 269
    .end local v8  # "tPosY":I
    .local v13, "tPosY":I
    :goto_641
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_Menu_InGame_Outliner()Z

    move-result v3

    if-eqz v3, :cond_65e

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_Outliner()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_Outliner()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v4

    goto :goto_66c

    :cond_65e
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->topBar:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    :goto_66c
    add-int/2addr v3, v4

    move v14, v3

    .line 271
    .local v14, "menuPosY":I
    const/4 v3, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sub-int/2addr v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    sub-int/2addr v5, v14

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    mul-int/lit8 v6, v6, 0x4

    sub-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v6, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v15, v15, 0x4

    add-int/2addr v8, v15

    .line 275
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x32

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6c2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v6

    add-int/2addr v1, v6

    :cond_6c2
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    const/4 v8, 0x0

    const/4 v15, 0x0

    .line 271
    move-object/from16 v1, p0

    move-object v2, v3

    move v3, v4

    move v4, v14

    move v5, v11

    move-object/from16 v16, v7

    .end local v7  # "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "tempSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v7, v10

    move/from16 v17, v9

    .end local v9  # "playerCivID":I
    .local v17, "playerCivID":I
    move v9, v15

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 284
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_6de
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->getMenuElemsSize()I

    move-result v2

    if-ge v1, v2, :cond_6f2

    .line 285
    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    rem-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_6de

    :cond_6f2
    move-object/from16 v2, p0

    .line 288
    .end local v1  # "i":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->updateLang()V

    .line 289
    return-void
.end method

.method public constructor <init>(I)V
    .registers 15
    .param p1, "init"  # I

    .line 50
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v10, v1, 0x2

    .line 54
    .local v10, "tempWidth":I
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    .line 56
    .local v1, "tY":I
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag_JustFrame;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag_JustFrame;-><init>(IIZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    add-int v11, v1, v2

    .line 60
    .end local v1  # "tY":I
    .local v11, "tY":I
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->topBar:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int v12, v1, v2

    .line 62
    .local v12, "tempMenuPosY":I
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Wars"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-direct {v2, v1, v3, v4, v4}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;-><init>(Ljava/lang/String;IZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v3, v10, 0x2

    sub-int v3, v1, v3

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v5

    add-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v5

    add-int/2addr v1, v12

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-le v1, v5, :cond_9d

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    sub-int/2addr v1, v12

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_bf

    :cond_9d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v4

    :goto_bf
    move v6, v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 62
    move-object v1, p0

    move v4, v12

    move v5, v10

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 69
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->updateLang()V

    .line 70
    return-void
.end method


# virtual methods
.method public actionEL(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 335
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->actionElem(I)V

    .line 336
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 300
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->lTime:J

    const-wide/16 v2, 0x87

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_42

    .line 301
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->hideAnimation:Z

    const/high16 v1, 0x43070000  # 135.0f

    if-eqz v0, :cond_26

    .line 302
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->getWidthM()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/2addr p2, v0

    goto :goto_3d

    .line 305
    :cond_26
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->getWidthM()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    sub-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 308
    :goto_3d
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    goto :goto_4b

    .line 309
    :cond_42
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->hideAnimation:Z

    if-eqz v0, :cond_4b

    .line 310
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    .line 311
    return-void

    .line 314
    :cond_4b
    :goto_4b
    add-int/lit8 v0, p3, 0x1

    invoke-super {p0, p1, p2, v0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 316
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 317
    return-void
.end method

.method public drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 11
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 328
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->getCloseButtonImage(Z)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->getWidthM()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->btnClose:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->getTitleM()Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->getHeightT()I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->btnClose:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btnClose:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v4, v1, 0x5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btnClose:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v5, v1, 0x5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 329
    return-void
.end method

.method public drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 321
    if-eqz p4, :cond_8

    .line 322
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, p2

    invoke-super {p0, p1, v0, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 324
    :cond_8
    return-void
.end method

.method public final setHideAnimation(Z)V
    .registers 10
    .param p1, "hideAnimation"  # Z

    .line 350
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->hideAnimation:Z

    if-eq p1, v0, :cond_2b

    .line 351
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x87

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_21

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->lTime:J

    sub-long/2addr v2, v6

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->lTime:J

    goto :goto_27

    .line 355
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->lTime:J

    .line 358
    :goto_27
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 362
    :cond_2b
    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->hideAnimation:Z

    .line 363
    return-void
.end method

.method public setVisibleM(Z)V
    .registers 3
    .param p1, "visible"  # Z

    .line 340
    if-eqz p1, :cond_a

    .line 341
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->setHideAnimation(Z)V

    goto :goto_e

    .line 345
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;->setHideAnimation(Z)V

    .line 347
    :goto_e
    return-void
.end method

.method public updateLang()V
    .registers 1

    .line 294
    return-void
.end method
