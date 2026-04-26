.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_InGame_Outliner_CurrentWars_Info.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x87

.field public static hideAnimation:Z

.field public static lTime:J


# instance fields
.field public final FONT_SCALE:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->lTime:J

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->hideAnimation:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 22

    .line 72
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 40
    const v0, 0x3f333333  # 0.7f

    iput v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->FONT_SCALE:F

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 75
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    const/4 v1, 0x1

    .line 77
    .local v1, "tempMaxTextW":I
    :try_start_11
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
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_26} :catch_29

    float-to-int v1, v0

    .line 81
    move v0, v1

    goto :goto_2b

    .line 79
    :catch_29
    move-exception v0

    move v0, v1

    .line 83
    .end local v1  # "tempMaxTextW":I
    .local v0, "tempMaxTextW":I
    :goto_2b
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

    add-int v12, v1, v2

    .line 84
    .local v12, "tMenuWidth":I
    const/4 v1, 0x0

    .line 86
    .local v1, "tPosY":I
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistorySize()I

    move-result v2

    if-lez v2, :cond_704

    .line 87
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistorySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 89
    .local v2, "iSize":I
    move v3, v2

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "tTurn":I
    :goto_58
    add-int/lit8 v5, v2, -0x3

    if-le v3, v5, :cond_702

    if-ltz v3, :cond_702

    .line 90
    const/4 v5, 0x0

    .local v5, "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .local v6, "jSize":I
    :goto_65
    if-ge v5, v6, :cond_b8

    .line 91
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->UNION:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_b5

    .line 92
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_b5

    .line 93
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_Union;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v15, v8, v4

    const/16 v16, 0x2

    add-int/lit8 v18, v12, -0x2

    move-object v13, v7

    move/from16 v17, v1

    invoke-direct/range {v13 .. v18}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_Union;-><init>(IIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 90
    :cond_b5
    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    .line 100
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_b8
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_bf
    if-ge v5, v6, :cond_130

    .line 101
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->WAR_DECLARAION:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_12d

    .line 102
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-nez v7, :cond_f9

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_12d

    .line 103
    :cond_f9
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_War;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_War;-><init>(IIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 100
    :cond_12d
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 110
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_130
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_137
    if-ge v5, v6, :cond_1a8

    .line 111
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->TRUCE:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_1a5

    .line 112
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-nez v7, :cond_171

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_1a5

    .line 113
    :cond_171
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_Truce;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_Truce;-><init>(IIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 110
    :cond_1a5
    add-int/lit8 v5, v5, 0x1

    goto :goto_137

    .line 119
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_1a8
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_1af
    if-ge v5, v6, :cond_20a

    .line 120
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->NEW_COONY:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_207

    .line 121
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_207

    .line 122
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_NewColony;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_NewColony;-><init>(IIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 119
    :cond_207
    add-int/lit8 v5, v5, 0x1

    goto :goto_1af

    .line 129
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_20a
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_211
    if-ge v5, v6, :cond_282

    .line 130
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->ANNEXATION:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_27f

    .line 131
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-nez v7, :cond_24b

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_27f

    .line 132
    :cond_24b
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_Annexation;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_Annexation;-><init>(IIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 129
    :cond_27f
    add-int/lit8 v5, v5, 0x1

    goto :goto_211

    .line 138
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_282
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_289
    if-ge v5, v6, :cond_2ee

    .line 139
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->DISEASE:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_2eb

    .line 140
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_2eb

    .line 141
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_Disease;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->getName()Ljava/lang/String;

    move-result-object v16

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v17, v8, v4

    const/16 v18, 0x2

    add-int/lit8 v20, v12, -0x2

    move-object v13, v7

    move/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_Disease;-><init>(IILjava/lang/String;IIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 138
    :cond_2eb
    add-int/lit8 v5, v5, 0x1

    goto :goto_289

    .line 147
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_2ee
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_2f5
    if-ge v5, v6, :cond_350

    .line 148
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->JOINS_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_34d

    .line 149
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_34d

    .line 150
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_Alliance;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_Alliance;-><init>(IIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 147
    :cond_34d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f5

    .line 157
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_350
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_357
    if-ge v5, v6, :cond_3b4

    .line 158
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->LEAVES_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_3b1

    .line 159
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_3b1

    .line 160
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_AllianceLeaves;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->getName()Ljava/lang/String;

    move-result-object v15

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_AllianceLeaves;-><init>(ILjava/lang/String;IIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 157
    :cond_3b1
    add-int/lit8 v5, v5, 0x1

    goto :goto_357

    .line 167
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_3b4
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_3bb
    if-ge v5, v6, :cond_42c

    .line 168
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->IS_VASSAL:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_429

    .line 169
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-nez v7, :cond_3f5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_429

    .line 170
    :cond_3f5
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_IsVassal;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_IsVassal;-><init>(IIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 167
    :cond_429
    add-int/lit8 v5, v5, 0x1

    goto :goto_3bb

    .line 176
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_42c
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_433
    if-ge v5, v6, :cond_4a4

    .line 177
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->IS_NOT_VASSAL:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_4a1

    .line 178
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-nez v7, :cond_46d

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_4a1

    .line 179
    :cond_46d
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_IsNotVassal;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_IsNotVassal;-><init>(IIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 176
    :cond_4a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_433

    .line 185
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_4a4
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_4ab
    if-ge v5, v6, :cond_51c

    .line 186
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->FRIENDLY_CIVS:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_519

    .line 187
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-nez v7, :cond_4e5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_519

    .line 188
    :cond_4e5
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_FriendlyCivs;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_FriendlyCivs;-><init>(IIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 185
    :cond_519
    add-int/lit8 v5, v5, 0x1

    goto :goto_4ab

    .line 194
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_51c
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_523
    if-ge v5, v6, :cond_594

    .line 195
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->SIGNED_DEFENSIVE_PACT:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_591

    .line 196
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-nez v7, :cond_55d

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_591

    .line 197
    :cond_55d
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_SignedDefensivePact;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_SignedDefensivePact;-><init>(IIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 194
    :cond_591
    add-int/lit8 v5, v5, 0x1

    goto :goto_523

    .line 203
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_594
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_59b
    if-ge v5, v6, :cond_60c

    .line 204
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->SIGNED_NON_AGGRESSION_PACT:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_609

    .line 205
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-nez v7, :cond_5d5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_609

    .line 206
    :cond_5d5
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_SignedNonAggressionPact;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_SignedNonAggressionPact;-><init>(IIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 203
    :cond_609
    add-int/lit8 v5, v5, 0x1

    goto :goto_59b

    .line 212
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_60c
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_613
    if-ge v5, v6, :cond_684

    .line 213
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->GUARANTEE:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_681

    .line 214
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-nez v7, :cond_64d

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_681

    .line 215
    :cond_64d
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_Guarantee;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_Guarantee;-><init>(IIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 212
    :cond_681
    add-int/lit8 v5, v5, 0x1

    goto :goto_613

    .line 221
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_684
    const/4 v5, 0x0

    .restart local v5  # "j":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistoryTurnSize(I)I

    move-result v6

    .restart local v6  # "jSize":I
    :goto_68b
    if-ge v5, v6, :cond_6fc

    .line 222
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;->HAVE_MILITARY_ACCESS:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_Types;

    if-ne v7, v8, :cond_6f9

    .line 223
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-nez v7, :cond_6c5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCiv(I)Z

    move-result v7

    if-eqz v7, :cond_6f9

    .line 224
    :cond_6c5
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_HaveMilitaryAccess;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v14, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivA:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v8, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    move-result-object v8

    iget v15, v8, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->iCivB:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int v16, v8, v4

    const/16 v17, 0x2

    add-int/lit8 v19, v12, -0x2

    move-object v13, v7

    move/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_DiploInfo_HaveMilitaryAccess;-><init>(IIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v7

    add-int/2addr v1, v7

    .line 221
    :cond_6f9
    add-int/lit8 v5, v5, 0x1

    goto :goto_68b

    .line 89
    .end local v5  # "j":I
    .end local v6  # "jSize":I
    :cond_6fc
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_58

    .line 232
    .end local v2  # "iSize":I
    .end local v3  # "i":I
    .end local v4  # "tTurn":I
    :cond_702
    move v13, v1

    goto :goto_705

    .line 86
    :cond_704
    move v13, v1

    .line 232
    .end local v1  # "tPosY":I
    .local v13, "tPosY":I
    :goto_705
    const/4 v2, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sub-int v3, v1, v12

    .line 234
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_Menu_InGame_CurrentWars()Z

    move-result v1

    if-eqz v1, :cond_728

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    :goto_722
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getHeightM()I

    move-result v4

    :goto_726
    add-int/2addr v1, v4

    goto :goto_750

    :cond_728
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_Menu_InGame_Outliner()Z

    move-result v1

    if-eqz v1, :cond_741

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_Outliner()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_Outliner()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    goto :goto_722

    :cond_741
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->topBar:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    goto :goto_726

    :goto_750
    add-int/lit8 v4, v1, -0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x4

    .line 236
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_783

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_784

    :cond_783
    const/4 v5, 0x0

    :goto_784
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 232
    move-object/from16 v1, p0

    move v5, v12

    move-object v7, v11

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 241
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_794
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->getMenuElemsSize()I

    move-result v2

    if-ge v1, v2, :cond_7b1

    .line 242
    invoke-virtual {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElemsSize()I

    move-result v3

    add-int/2addr v3, v1

    rem-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_794

    .line 245
    .end local v1  # "i":I
    :cond_7b1
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->updateLang()V

    .line 246
    return-void
.end method

.method public constructor <init>(I)V
    .registers 15
    .param p1, "init"  # I

    .line 47
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 40
    const v0, 0x3f333333  # 0.7f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->FONT_SCALE:F

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v10, v1, 0x2

    .line 51
    .local v10, "tempWidth":I
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    .line 53
    .local v1, "tY":I
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag_JustFrame;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag_JustFrame;-><init>(IIZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    add-int v11, v1, v2

    .line 57
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

    .line 59
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

    .line 63
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

    if-le v1, v5, :cond_b5

    .line 65
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    sub-int/2addr v1, v12

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v5

    if-eqz v5, :cond_ac

    const/16 v5, 0xa

    goto :goto_ad

    :cond_ac
    const/4 v5, 0x6

    :goto_ad
    mul-int v4, v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v6, v1

    goto :goto_d8

    .line 66
    :cond_b5
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

    move v6, v1

    :goto_d8
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 59
    move-object v1, p0

    move v4, v12

    move v5, v10

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 69
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->updateLang()V

    .line 70
    return-void
.end method


# virtual methods
.method public actionEL(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 292
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->actionElem(I)V

    .line 293
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 257
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->lTime:J

    const-wide/16 v2, 0x87

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_42

    .line 258
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->hideAnimation:Z

    const/high16 v1, 0x43070000  # 135.0f

    if-eqz v0, :cond_26

    .line 259
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->getWidthM()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/2addr p2, v0

    goto :goto_3d

    .line 262
    :cond_26
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->getWidthM()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->getWidthM()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    sub-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 265
    :goto_3d
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    goto :goto_4b

    .line 266
    :cond_42
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->hideAnimation:Z

    if-eqz v0, :cond_4b

    .line 267
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    .line 268
    return-void

    .line 271
    :cond_4b
    :goto_4b
    add-int/lit8 v0, p3, 0x1

    invoke-super {p0, p1, p2, v0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 273
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 274
    return-void
.end method

.method public drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 11
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 285
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->getCloseButtonImage(Z)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->getWidthM()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->getTitleM()Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

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

    .line 286
    return-void
.end method

.method public drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 278
    if-eqz p4, :cond_8

    .line 279
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, p2

    invoke-super {p0, p1, v0, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 281
    :cond_8
    return-void
.end method

.method public final setHideAnimation(Z)V
    .registers 10
    .param p1, "hideAnimation"  # Z

    .line 307
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->hideAnimation:Z

    if-eq p1, v0, :cond_2b

    .line 308
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x87

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_21

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->lTime:J

    sub-long/2addr v2, v6

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->lTime:J

    goto :goto_27

    .line 312
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->lTime:J

    .line 315
    :goto_27
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 319
    :cond_2b
    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->hideAnimation:Z

    .line 320
    return-void
.end method

.method public setVisibleM(Z)V
    .registers 3
    .param p1, "visible"  # Z

    .line 297
    if-eqz p1, :cond_a

    .line 298
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->setHideAnimation(Z)V

    goto :goto_e

    .line 302
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner_CurrentWars_Info;->setHideAnimation(Z)V

    .line 304
    :goto_e
    return-void
.end method

.method public updateLang()V
    .registers 1

    .line 251
    return-void
.end method
