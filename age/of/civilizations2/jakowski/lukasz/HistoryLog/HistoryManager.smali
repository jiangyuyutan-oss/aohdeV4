.class public Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# static fields
.field public static HISTORY_LIMIT:I

.field public static lHistoryDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static lHistoryDatesWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->lHistoryDates:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->lHistoryDatesWidth:Ljava/util/List;

    .line 21
    const/16 v0, 0xc8

    sput v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->HISTORY_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    .line 25
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->addNewTurn()V

    .line 26
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diploWar:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diploWar:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->getImageScale(I)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->ICON_WIDTH:I

    .line 27
    sget v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->ICON_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diploWar:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->diploTruce:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->getImageScale(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    if-ge v0, v1, :cond_55

    .line 28
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diploWar:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diploTruce:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->getImageScale(I)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->ICON_WIDTH:I

    .line 31
    :cond_55
    sget v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->ICON_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diploWar:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->diploAlliance:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->getImageScale(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    if-ge v0, v1, :cond_83

    .line 32
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diploWar:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diploAlliance:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->getImageScale(I)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->ICON_WIDTH:I

    .line 35
    :cond_83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_84
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologiesSize()I

    move-result v1

    if-ge v0, v1, :cond_c1

    .line 36
    sget v1, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->ICON_WIDTH:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getiCrownVassalImage()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->getImageScale_CrownVassal(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    if-ge v1, v2, :cond_be

    .line 37
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getiCrownVassalImage()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->getImageScale_CrownVassal(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->ICON_WIDTH:I

    .line 35
    :cond_be
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 41
    .end local v0  # "i":I
    :cond_c1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->ICON_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->ICON_WIDTH:I

    .line 42
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v0

    if-eqz v0, :cond_d3

    const/16 v0, 0xc8

    goto :goto_d5

    :cond_d3
    const/16 v0, 0x32

    :goto_d5
    sput v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->HISTORY_LIMIT:I

    .line 43
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->clearHistory()V

    .line 44
    return-void
.end method

.method public static final buildHistoryDates()V
    .registers 6

    .line 56
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->clearHistoryDates()V

    .line 58
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_4
    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    if-ge v0, v1, :cond_14

    .line 59
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->lHistoryDates:Ljava/util/List;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 62
    .end local v0  # "i":I
    :cond_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->lHistoryDates:Ljava/util/List;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->getCurrDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const/4 v0, 0x0

    .line 65
    .restart local v0  # "i":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->lHistoryDates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_24
    if-ge v0, v1, :cond_65

    .line 66
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->lHistoryDates:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 67
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->lHistoryDatesWidth:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v4, 0x3f333333  # 0.7f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 70
    .end local v1  # "iSize":I
    :cond_65
    return-void
.end method

.method public static final clearHistoryDates()V
    .registers 1

    .line 73
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->lHistoryDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->lHistoryDatesWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    return-void
.end method


# virtual methods
.method public final addHistory(ILage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;)V
    .registers 4
    .param p1, "iTurnID"  # I
    .param p2, "nHistory"  # Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    .line 108
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public final addHistoryLog(Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;)V
    .registers 4
    .param p1, "tHL"  # Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    .line 98
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_History()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 100
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_History()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 103
    :cond_28
    goto :goto_2a

    .line 102
    :catch_29
    move-exception v0

    .line 105
    :goto_2a
    return-void
.end method

.method public final addNewTurn()V
    .registers 4

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "turnHistory":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;>;"
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->HISTORY_LIMIT:I

    if-le v1, v2, :cond_26

    .line 91
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 94
    :cond_26
    return-void
.end method

.method public final clearHistory()V
    .registers 2

    .line 116
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    return-void
.end method

.method public final getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;
    .registers 4
    .param p1, "iTurnID"  # I
    .param p2, "i"  # I

    .line 112
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    return-object v0
.end method

.method public final getHistorySize()I
    .registers 2

    .line 131
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getHistoryTurnSize(I)I
    .registers 3
    .param p1, "iTurnID"  # I

    .line 135
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final haveHistory()Z
    .registers 3

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 79
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 80
    const/4 v1, 0x1

    return v1

    .line 78
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    .end local v0  # "i":I
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public final updateLanguage()V
    .registers 4

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 48
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 49
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->timelapseStatsHistory:Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_History_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;->updateLanguage()V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 47
    .end local v1  # "j":I
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    .end local v0  # "i":I
    :cond_3b
    return-void
.end method
