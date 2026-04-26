.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI;
.super Ljava/lang/Object;
.source "AI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/AI/AI$Expand;,
        Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;
    }
.end annotation


# static fields
.field public static REBUILD_PERSONALITYX:I


# instance fields
.field public MIN_NUM_OF_RIVALS:I

.field public NUM_OF_CIVS_IN_THE_GAME:I

.field public PLAYABLE_PROVINCES:I

.field public aiPlaystyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;",
            ">;"
        }
    .end annotation
.end field

.field public doneLoadingOrders:Z

.field public expandNeutral:Lage/of/civilizations2/jakowski/lukasz/AI/AI$Expand;

.field public iLoadingTurnActionsOfCivID:I

.field public iNeutralProvincesWithSeaAccessSize:I

.field public iNumOfColonizedProvcs:I

.field public lNeutralProvincesWithSeaAccess:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lWastelandProvincesWithSeaAccess:Ljava/util/List;
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

    .line 456
    const/16 v0, 0xe0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->REBUILD_PERSONALITYX:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->doneLoadingOrders:Z

    .line 49
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iLoadingTurnActionsOfCivID:I

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    .line 54
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    .line 55
    const/4 v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->PLAYABLE_PROVINCES:I

    .line 56
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->MIN_NUM_OF_RIVALS:I

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->lNeutralProvincesWithSeaAccess:Ljava/util/List;

    .line 436
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iNeutralProvincesWithSeaAccessSize:I

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->lWastelandProvincesWithSeaAccess:Ljava/util/List;

    .line 649
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iNumOfColonizedProvcs:I

    .line 59
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->updateExpand()V

    .line 61
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Communism;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Communism;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Fascism;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Fascism;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_CityState;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_CityState;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Tribal;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Tribal;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Rebels;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Rebels;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->rebuildPersonality()V

    .line 70
    return-void
.end method

.method public static final fFBRA(I)V
    .registers 5
    .param p0, "civID"  # I

    .line 1457
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 1460
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 1462
    .local v1, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2

    if-lez v2, :cond_47

    .line 1463
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPosition:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    .end local v1  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1467
    .end local v0  # "i":I
    :cond_4a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPositionSize:I

    .line 1469
    return-void
.end method


# virtual methods
.method public final addNeutralProvsWithSeaAccess(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 445
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->lNeutralProvincesWithSeaAccess:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method

.method public final addWastelandProvsWithSeaAccess(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 453
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->lWastelandProvincesWithSeaAccess:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    return-void
.end method

.method public aiBecomesAVassal()V
    .registers 8

    .line 2082
    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiVassals:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_MAX_TURN_ID:I

    if-ge v0, v1, :cond_2c2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiVassals:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_MODULO_TURN:I

    rem-int/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiVassals:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_TURN_CHECK_IF:I

    if-ne v0, v1, :cond_2c2

    .line 2083
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_2c2

    .line 2084
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-lez v1, :cond_2be

    .line 2086
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iVassalsSize:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiVassals:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_VASSALS_LIMIT:I

    if-lt v1, v2, :cond_50

    .line 2087
    goto/16 :goto_2be

    .line 2090
    :cond_50
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    if-eq v1, v2, :cond_7c

    .line 2091
    goto/16 :goto_2be

    .line 2094
    :cond_7c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiVassals:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_CHANCE_1000:I

    if-le v1, v2, :cond_8c

    .line 2095
    goto/16 :goto_2be

    .line 2098
    :cond_8c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2100
    .local v1, "possibleCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_92
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civsSize:I

    if-ge v2, v3, :cond_27c

    .line 2101
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d6} :catch_2c3

    if-eqz v3, :cond_da

    .line 2102
    goto/16 :goto_278

    .line 2106
    :cond_da
    :try_start_da
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_100} :catch_105

    if-gtz v3, :cond_104

    .line 2107
    goto/16 :goto_278

    .line 2111
    :cond_104
    goto :goto_106

    .line 2109
    :catch_105
    move-exception v3

    .line 2114
    :goto_106
    :try_start_106
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v3

    if-nez v3, :cond_278

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 2115
    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    if-ne v3, v4, :cond_278

    .line 2118
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiVassals:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_MAX_PROVINCES:I

    if-ge v3, v4, :cond_278

    .line 2121
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiVassals:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_LORD_PROVINCES_MODIFIER:F

    mul-float v4, v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_278

    .line 2123
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v4

    if-ge v3, v4, :cond_278

    .line 2125
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiVassals:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->BECOME_VASSAL_MIN_RELATION:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_278

    .line 2127
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2100
    :cond_278
    :goto_278
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_92

    .line 2135
    .end local v2  # "a":I
    :cond_27c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2be

    .line 2136
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 2137
    .local v2, "randID":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Messages/Alliance/Become/Message_BecomeVassal;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/Alliance/Become/Message_BecomeVassal;-><init>(II)V

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V
    :try_end_2be
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_2be} :catch_2c3

    .line 2083
    .end local v1  # "possibleCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2  # "randID":I
    :cond_2be
    :goto_2be
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    .line 2147
    .end local v0  # "i":I
    :cond_2c2
    goto :goto_2c4

    .line 2145
    :catch_2c3
    move-exception v0

    .line 2148
    :goto_2c4
    return-void
.end method

.method public final buildAI_Data()V
    .registers 22

    .line 656
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 659
    .local v2, "nTime":J
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->resetNeutralProvsWithSeaAccess()V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->resetWastelandProvsWithSeaAccess()V

    .line 662
    const/4 v4, 0x0

    iput v4, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iNumOfColonizedProvcs:I

    .line 664
    iput v4, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    .line 666
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_12
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v5

    const-wide/16 v6, 0x1

    if-ge v0, v5, :cond_7e

    .line 667
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    .line 669
    .local v5, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSeaAccess(I)V

    .line 670
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->clearSeaAccess_Provinces()V

    .line 671
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->clearSeaAccess_PortProvinces()V

    .line 672
    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setBordersWithEnemy(I)V

    .line 674
    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNumOfNeighboringNeutralProvinces(I)V

    .line 675
    iget-object v8, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPosition:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 676
    iput v4, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPositionSize:I

    .line 677
    iput-wide v6, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:J

    .line 678
    iget-object v6, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithNeutralProvcsID:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 679
    iget-object v6, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithWastelandProvsID:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 681
    iget-object v6, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->updateObsolateMissions()V

    .line 683
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->countAverageDevelopmentLevel_Float(I)F

    .line 684
    iget-object v6, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithHighRevRisk:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 685
    iget-object v6, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 687
    iput v4, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Forts:I

    .line 688
    iput v4, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Towers:I

    .line 689
    iput v4, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Ports:I

    .line 690
    iput v4, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Farms:I

    .line 691
    iput v4, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Farms_ProvincesPossibleToBuild:I

    .line 692
    iput v4, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Workshops:I

    .line 693
    iput v4, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Libraries:I

    .line 694
    iput v4, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Armories:I

    .line 695
    iput v4, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_SuppliesCamp:I

    .line 696
    iput v4, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Markets:I

    .line 698
    iget v6, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iNumOfColonizedProvcs:I

    iget-object v7, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->coloniesFounded:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iNumOfColonizedProvcs:I

    .line 666
    .end local v5  # "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 701
    .end local v0  # "i":I
    :cond_7e
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    const/4 v5, 0x1

    if-le v0, v5, :cond_a6

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SAVED_GAME_LOADED:Z

    if-eqz v0, :cond_88

    goto :goto_a6

    .line 706
    :cond_88
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_MAX_POPULATION_X_TURNS:I

    rem-int/2addr v0, v8

    if-nez v0, :cond_97

    .line 707
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->updateMaxPopulation()V

    goto :goto_b2

    .line 709
    :cond_97
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_MAX_ECONOMY_X_TURNS:I

    rem-int/2addr v0, v8

    if-nez v0, :cond_b2

    .line 710
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->updateMaxEconomy()V

    goto :goto_b2

    .line 702
    :cond_a6
    :goto_a6
    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SAVED_GAME_LOADED:Z

    .line 703
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->updateMaxPopulation()V

    .line 704
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->updateMaxEconomy()V

    .line 715
    :cond_b2
    :goto_b2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 735
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_b7
    :try_start_b7
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWarsSize()I

    move-result v8

    if-ge v0, v8, :cond_11a

    .line 736
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v8

    .line 738
    .local v8, "warID":Lage/of/civilizations2/jakowski/lukasz/War_GameData;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_c6
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v10

    if-ge v9, v10, :cond_117

    .line 739
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_cd
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v11

    if-ge v10, v11, :cond_114

    .line 740
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_111} :catch_11b

    .line 739
    add-int/lit8 v10, v10, 0x1

    goto :goto_cd

    .line 738
    .end local v10  # "k":I
    :cond_114
    add-int/lit8 v9, v9, 0x1

    goto :goto_c6

    .line 735
    .end local v8  # "warID":Lage/of/civilizations2/jakowski/lukasz/War_GameData;
    .end local v9  # "j":I
    :cond_117
    add-int/lit8 v0, v0, 0x1

    goto :goto_b7

    .line 747
    .end local v0  # "i":I
    :cond_11a
    goto :goto_11f

    .line 745
    :catch_11b
    move-exception v0

    .line 746
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 751
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_11f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 753
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_124
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v8

    if-ge v0, v8, :cond_170

    .line 754
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    .line 756
    .local v8, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v9

    if-lez v9, :cond_15d

    .line 757
    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    add-int/2addr v9, v5

    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    .line 759
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarC()Z

    move-result v9

    if-eqz v9, :cond_14b

    .line 760
    iget-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v10, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    add-int/2addr v10, v5

    iput v10, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    goto :goto_15d

    .line 764
    :cond_14b
    iget-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v10, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    add-int/lit8 v10, v10, -0x2

    iput v10, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    .line 766
    iget-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    if-gez v9, :cond_15d

    .line 767
    iget-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v4, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    .line 772
    :cond_15d
    :goto_15d
    const/4 v9, 0x0

    .restart local v9  # "j":I
    :goto_15e
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v10

    if-ge v9, v10, :cond_16d

    .line 773
    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v10

    iput v4, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I

    .line 772
    add-int/lit8 v9, v9, 0x1

    goto :goto_15e

    .line 753
    .end local v8  # "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .end local v9  # "j":I
    :cond_16d
    add-int/lit8 v0, v0, 0x1

    goto :goto_124

    .line 777
    .end local v0  # "i":I
    :cond_170
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->updateMinRivals()V

    .line 778
    iput v4, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->PLAYABLE_PROVINCES:I

    .line 782
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 783
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_17a
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v8

    if-ge v0, v8, :cond_1d8

    .line 785
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v8

    if-eqz v8, :cond_18f

    goto :goto_1d5

    .line 790
    :cond_18f
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v8

    if-ltz v8, :cond_1cd

    .line 792
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->getColonizationOfWastelandIsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1d5

    .line 793
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1a2
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v9

    if-ge v8, v9, :cond_1cc

    .line 794
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_1c9

    .line 795
    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->addWastelandProvsWithSeaAccess(I)V

    .line 796
    goto :goto_1cc

    .line 793
    :cond_1c9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a2

    .end local v8  # "j":I
    :cond_1cc
    :goto_1cc
    goto :goto_1d5

    .line 803
    :cond_1cd
    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->buildProvinceData(I)V

    .line 805
    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->PLAYABLE_PROVINCES:I

    add-int/2addr v8, v5

    iput v8, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->PLAYABLE_PROVINCES:I

    .line 783
    :cond_1d5
    :goto_1d5
    add-int/lit8 v0, v0, 0x1

    goto :goto_17a

    .line 810
    .end local v0  # "i":I
    :cond_1d8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 812
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_1dd
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v8

    if-ge v0, v8, :cond_2be

    .line 813
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    .line 815
    .local v8, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    const/4 v9, 0x0

    .restart local v9  # "j":I
    :goto_1ec
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v10

    if-ge v9, v10, :cond_214

    .line 816
    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v10

    if-lez v10, :cond_211

    .line 817
    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v10

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v12

    div-int/2addr v11, v12

    iput v11, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I

    .line 815
    :cond_211
    add-int/lit8 v9, v9, 0x1

    goto :goto_1ec

    .line 821
    .end local v9  # "j":I
    :cond_214
    iget-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPosition:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iput v9, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPositionSize:I

    .line 822
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v9

    if-lez v9, :cond_22d

    .line 823
    iget-wide v9, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:J

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v11

    int-to-long v11, v11

    div-long/2addr v9, v11

    iput-wide v9, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:J

    goto :goto_22f

    .line 825
    :cond_22d
    iput-wide v6, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:J

    .line 828
    :goto_22f
    const/4 v9, 0x0

    .restart local v9  # "j":I
    :goto_230
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstructionsSize()I

    move-result v10

    if-ge v9, v10, :cond_2ba

    .line 829
    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;->FARM:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    if-ne v10, v11, :cond_247

    .line 830
    iget v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Farms:I

    add-int/2addr v10, v5

    iput v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Farms:I

    goto/16 :goto_2b6

    .line 832
    :cond_247
    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;->ARMOURY:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    if-ne v10, v11, :cond_257

    .line 833
    iget v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Armories:I

    add-int/2addr v10, v5

    iput v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Armories:I

    goto :goto_2b6

    .line 835
    :cond_257
    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;->MARKET:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    if-ne v10, v11, :cond_267

    .line 836
    iget v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Markets:I

    add-int/2addr v10, v5

    iput v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Markets:I

    goto :goto_2b6

    .line 838
    :cond_267
    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;->TOWER:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    if-ne v10, v11, :cond_277

    .line 839
    iget v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Towers:I

    add-int/2addr v10, v5

    iput v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Towers:I

    goto :goto_2b6

    .line 841
    :cond_277
    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;->LIBRARY:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    if-ne v10, v11, :cond_287

    .line 842
    iget v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Libraries:I

    add-int/2addr v10, v5

    iput v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Libraries:I

    goto :goto_2b6

    .line 844
    :cond_287
    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;->PORT:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    if-ne v10, v11, :cond_297

    .line 845
    iget v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Ports:I

    add-int/2addr v10, v5

    iput v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Ports:I

    goto :goto_2b6

    .line 847
    :cond_297
    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;->FORT:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    if-ne v10, v11, :cond_2a7

    .line 848
    iget v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Forts:I

    add-int/2addr v10, v5

    iput v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Forts:I

    goto :goto_2b6

    .line 850
    :cond_2a7
    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;->SUPPLY:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    if-ne v10, v11, :cond_2b6

    .line 851
    iget v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_SuppliesCamp:I

    add-int/2addr v10, v5

    iput v10, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_SuppliesCamp:I

    .line 828
    :cond_2b6
    :goto_2b6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_230

    .line 812
    .end local v8  # "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .end local v9  # "j":I
    :cond_2ba
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1dd

    .line 860
    .end local v0  # "i":I
    :cond_2be
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 861
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_2c3
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v6

    if-ge v0, v6, :cond_3dc

    .line 862
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    .line 864
    .local v6, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    iget-boolean v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    if-eqz v7, :cond_3d2

    .line 865
    iget-object v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 866
    iput-boolean v4, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 868
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v7

    if-lez v7, :cond_3cf

    .line 869
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v7

    .line 871
    .local v7, "puppetOf":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2e7
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v9

    if-ge v8, v9, :cond_3cc

    .line 872
    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v9

    .line 874
    .local v9, "region":Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;
    const/4 v10, 0x0

    .restart local v10  # "k":I
    :goto_2f2
    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_3c4

    .line 875
    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v11

    .line 876
    .local v11, "provinceId":I
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    .line 878
    .local v12, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLvl()I

    move-result v13

    if-gtz v13, :cond_30c

    move-wide/from16 v16, v2

    goto/16 :goto_3bc

    .line 880
    :cond_30c
    const/4 v13, 0x0

    .local v13, "u":I
    :goto_30d
    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v14

    if-ge v13, v14, :cond_3ba

    .line 881
    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    .line 882
    .local v14, "neighborId":I
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v15, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    .line 883
    .local v15, "neighbor":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    .line 885
    .local v4, "neighborCivId":I
    if-lez v4, :cond_3b0

    if-ne v4, v0, :cond_329

    move-wide/from16 v16, v2

    goto/16 :goto_3b2

    .line 887
    :cond_329
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    .line 889
    .local v5, "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    move-wide/from16 v16, v2

    .end local v2  # "nTime":J
    .local v16, "nTime":J
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAreAllied(II)Z

    move-result v2

    if-eqz v2, :cond_33b

    goto/16 :goto_3b2

    .line 890
    :cond_33b
    if-eq v7, v4, :cond_3ad

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v2

    if-eq v2, v0, :cond_3ad

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v2

    if-ne v2, v7, :cond_34b

    goto/16 :goto_3b2

    .line 892
    :cond_34b
    const/4 v2, 0x1

    .line 894
    .local v2, "addNew":Z
    iget-object v3, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_352
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_392

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v2

    .end local v2  # "addNew":Z
    .local v19, "addNew":Z
    move-object/from16 v2, v18

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    .line 895
    .local v2, "frontline":Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;
    move-object/from16 v18, v3

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->iRegionID:I

    if-ne v3, v8, :cond_388

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->iWithCivID:I

    if-ne v3, v4, :cond_388

    .line 896
    const/4 v3, 0x0

    .line 897
    .end local v19  # "addNew":Z
    .local v3, "addNew":Z
    move/from16 v18, v3

    .end local v3  # "addNew":Z
    .local v18, "addNew":Z
    iget-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    move-object/from16 v20, v5

    .end local v5  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .local v20, "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v3

    if-eqz v3, :cond_384

    .line 900
    const/4 v3, 0x1

    iput-boolean v3, v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->bordersWithEnemy:Z

    goto :goto_385

    .line 899
    :cond_384
    const/4 v3, 0x1

    .line 906
    .end local v2  # "frontline":Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;
    :goto_385
    move/from16 v2, v18

    goto :goto_397

    .line 895
    .end local v18  # "addNew":Z
    .end local v20  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .restart local v2  # "frontline":Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;
    .restart local v5  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .restart local v19  # "addNew":Z
    :cond_388
    move-object/from16 v20, v5

    const/4 v3, 0x1

    .line 904
    .end local v2  # "frontline":Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;
    .end local v5  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .restart local v20  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    move-object/from16 v3, v18

    move/from16 v2, v19

    move-object/from16 v5, v20

    goto :goto_352

    .line 894
    .end local v19  # "addNew":Z
    .end local v20  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .local v2, "addNew":Z
    .restart local v5  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    :cond_392
    move/from16 v19, v2

    move-object/from16 v20, v5

    const/4 v3, 0x1

    .line 906
    .end local v5  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .restart local v20  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    :goto_397
    if-eqz v2, :cond_3aa

    .line 907
    iget-object v5, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    .line 911
    move/from16 v18, v2

    .end local v2  # "addNew":Z
    .restart local v18  # "addNew":Z
    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v2

    invoke-direct {v3, v11, v8, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;-><init>(IIIZ)V

    .line 907
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b2

    .line 906
    .end local v18  # "addNew":Z
    .restart local v2  # "addNew":Z
    :cond_3aa
    move/from16 v18, v2

    .end local v2  # "addNew":Z
    .restart local v18  # "addNew":Z
    goto :goto_3b2

    .line 890
    .end local v18  # "addNew":Z
    .end local v20  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .restart local v5  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    :cond_3ad
    move-object/from16 v20, v5

    .end local v5  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .restart local v20  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    goto :goto_3b2

    .line 885
    .end local v16  # "nTime":J
    .end local v20  # "neighborCiv":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .local v2, "nTime":J
    :cond_3b0
    move-wide/from16 v16, v2

    .line 880
    .end local v2  # "nTime":J
    .end local v4  # "neighborCivId":I
    .end local v14  # "neighborId":I
    .end local v15  # "neighbor":Lage/of/civilizations2/jakowski/lukasz/Province;
    .restart local v16  # "nTime":J
    :goto_3b2
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v2, v16

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_30d

    .end local v16  # "nTime":J
    .restart local v2  # "nTime":J
    :cond_3ba
    move-wide/from16 v16, v2

    .line 874
    .end local v2  # "nTime":J
    .end local v11  # "provinceId":I
    .end local v12  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    .end local v13  # "u":I
    .restart local v16  # "nTime":J
    :goto_3bc
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v2, v16

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2f2

    .end local v16  # "nTime":J
    .restart local v2  # "nTime":J
    :cond_3c4
    move-wide/from16 v16, v2

    .line 871
    .end local v2  # "nTime":J
    .end local v9  # "region":Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;
    .end local v10  # "k":I
    .restart local v16  # "nTime":J
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2e7

    .end local v16  # "nTime":J
    .restart local v2  # "nTime":J
    :cond_3cc
    move-wide/from16 v16, v2

    .end local v2  # "nTime":J
    .restart local v16  # "nTime":J
    goto :goto_3d4

    .line 868
    .end local v7  # "puppetOf":I
    .end local v8  # "j":I
    .end local v16  # "nTime":J
    .restart local v2  # "nTime":J
    :cond_3cf
    move-wide/from16 v16, v2

    .end local v2  # "nTime":J
    .restart local v16  # "nTime":J
    goto :goto_3d4

    .line 864
    .end local v16  # "nTime":J
    .restart local v2  # "nTime":J
    :cond_3d2
    move-wide/from16 v16, v2

    .line 861
    .end local v2  # "nTime":J
    .end local v6  # "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .restart local v16  # "nTime":J
    :goto_3d4
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v2, v16

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2c3

    .end local v16  # "nTime":J
    .restart local v2  # "nTime":J
    :cond_3dc
    move-wide/from16 v16, v2

    .line 921
    .end local v0  # "i":I
    .end local v2  # "nTime":J
    .restart local v16  # "nTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 924
    .end local v16  # "nTime":J
    .restart local v2  # "nTime":J
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_3e3
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v4

    if-ge v0, v4, :cond_4ab

    .line 925
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v4

    if-lez v4, :cond_4a7

    .line 926
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3f8
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPrepsSize:I

    if-ge v4, v5, :cond_4a7

    .line 927
    const/4 v5, 0x0

    .local v5, "f":I
    :goto_407
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4a3

    .line 928
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->iWithCivID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->onCivID:I

    if-ne v6, v7, :cond_49f

    .line 929
    const/4 v6, 0x0

    .local v6, "e":I
    :goto_43c
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_49f

    .line 930
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_EXTRA_AT_WAR:I

    int-to-float v8, v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PREPARE_FOR_WAR_BASE:F

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PREPARE_FOR_WAR_TURNS_LEFT:F

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->iNumOfTurnsLeft:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLvl(I)V

    .line 929
    add-int/lit8 v6, v6, 0x1

    goto :goto_43c

    .line 927
    .end local v6  # "e":I
    :cond_49f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_407

    .line 926
    .end local v5  # "f":I
    :cond_4a3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3f8

    .line 924
    .end local v4  # "j":I
    :cond_4a7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3e3

    .line 938
    .end local v0  # "i":I
    :cond_4ab
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->lNeutralProvincesWithSeaAccess:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iNeutralProvincesWithSeaAccessSize:I

    .line 953
    return-void
.end method

.method public buildNukes()V
    .registers 4

    .line 2259
    :try_start_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ENABLE_NUKES:Z

    if-nez v0, :cond_5

    .line 2260
    return-void

    .line 2263
    :cond_5
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUKES_MIN_YEAR_ENABLED:Z

    if-eqz v0, :cond_12

    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->currYear:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAtomic:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->ATOMIC_BOMB_MIN_YEAR:I

    if-ge v0, v1, :cond_12

    .line 2264
    return-void

    .line 2267
    :cond_12
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiNuke:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;->BUILD_NUKE_GAME_UPDATE_TURNS:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_1b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 2268
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-nez v1, :cond_56

    .line 2269
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUKES_REQUIRED_TECH_LVL:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_56

    .line 2270
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/NukeManager;->canBuildMore(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 2271
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_46
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiNuke:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;->BUILD_NUKE_LIMIT_PER_TURN:I

    if-ge v1, v2, :cond_56

    .line 2272
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/Nuke/NukeManager;->buildNuke(I)Z

    move-result v2

    if-nez v2, :cond_53

    .line 2273
    goto :goto_56

    .line 2271
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 2267
    .end local v1  # "a":I
    :cond_56
    :goto_56
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiNuke:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;->BUILD_NUKE_GAME_UPDATE_TURNS:I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5d

    add-int/2addr v0, v1

    goto :goto_1b

    .line 2282
    .end local v0  # "i":I
    :cond_5c
    goto :goto_61

    .line 2280
    :catch_5d
    move-exception v0

    .line 2281
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2283
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_61
    return-void
.end method

.method public final buildProvinceData(I)V
    .registers 18
    .param p1, "i"  # I

    .line 957
    move/from16 v1, p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    .line 958
    .local v2, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    .line 961
    .local v3, "civProvince":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setBordersWithEnemy(Z)V

    .line 962
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_LEVEL_BASE:I

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDangerLvl(I)V

    .line 963
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_BASE:I

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setPotential(I)V

    .line 964
    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setNumOfNeighboringNeutralProvinces(I)V

    .line 966
    iput-boolean v0, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 968
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebels:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->START_UPRAISE_IGNITE_REV_RISK_VALUE:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebels:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->START_UPRAISE_IGNITE_REV_RISK_NOTIFY_CIV_BEFORE_IGNITE_MODIFIER:F

    mul-float v5, v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_44

    .line 969
    iget-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithHighRevRisk:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    :cond_44
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_12b

    .line 973
    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Forts:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Forts:I

    .line 974
    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Towers:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Towers:I

    .line 976
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_7a

    .line 977
    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Farms:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFarm()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Farms:I

    .line 978
    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Farms_ProvincesPossibleToBuild:I

    add-int/2addr v4, v5

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Farms_ProvincesPossibleToBuild:I

    .line 980
    :cond_7a
    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Workshops:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWorkshop()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Workshops:I

    .line 981
    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Libraries:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfLibrary()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Libraries:I

    .line 982
    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Armories:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Armories:I

    .line 983
    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Markets:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfMarket()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Markets:I

    .line 984
    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_SuppliesCamp:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfSupply()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_SuppliesCamp:I

    .line 986
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v4

    if-lez v4, :cond_b9

    .line 987
    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Ports:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Ports:I

    .line 988
    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addSeaAccess_PortProvinces(I)V

    .line 990
    :cond_b9
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v4

    if-lez v4, :cond_c2

    .line 991
    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addSeaAccess_Provinces(I)V

    .line 995
    :cond_c2
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_c3
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v6

    if-ge v4, v6, :cond_e5

    .line 996
    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v6

    if-lez v6, :cond_e2

    .line 997
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPosition:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    :cond_e2
    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    .line 1001
    .end local v4  # "k":I
    :cond_e5
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_e6
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v6

    if-ge v4, v6, :cond_12a

    .line 1002
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v6

    if-ltz v6, :cond_10a

    .line 1003
    iget-object v6, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithWastelandProvsID:Ljava/util/List;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_127

    .line 1005
    :cond_10a
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    if-nez v6, :cond_127

    .line 1006
    iget-object v6, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithNeutralProvcsID:Ljava/util/List;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_127
    :goto_127
    add-int/lit8 v4, v4, 0x1

    goto :goto_e6

    .end local v4  # "j":I
    :cond_12a
    goto :goto_154

    .line 1010
    :cond_12b
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v4

    if-eqz v4, :cond_154

    .line 1011
    const/4 v4, 0x1

    .local v4, "k":I
    :goto_132
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v6

    if-ge v4, v6, :cond_154

    .line 1012
    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v6

    if-lez v6, :cond_151

    .line 1013
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPosition:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    :cond_151
    add-int/lit8 v4, v4, 0x1

    goto :goto_132

    .line 1019
    .end local v4  # "k":I
    :cond_154
    :goto_154
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasAttacked()I

    move-result v4

    const/high16 v6, 0x42c80000  # 100.0f

    if-lez v4, :cond_192

    .line 1020
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v4

    if-eqz v4, :cond_168

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PROVINCE_WAS_ATTACKED_CAPITAL:I

    int-to-float v4, v4

    goto :goto_183

    :cond_168
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PROVINCE_WAS_ATTACKED:I

    int-to-float v4, v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PROVINCE_WAS_ATTACKED_ARMY_IN_PROVINCE_MODIFIER_100:I

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v8

    mul-int v7, v7, v8

    int-to-float v7, v7

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float v7, v6, v7

    div-float/2addr v7, v6

    mul-float v4, v4, v7

    :goto_183
    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLvl(I)V

    .line 1021
    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setArmyWasRecruited(I)V

    .line 1022
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasAttacked()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWasAttacked(I)V

    .line 1025
    :cond_192
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1026
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1028
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_POPULATION:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v7

    mul-int v4, v4, v7

    int-to-float v4, v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1031
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_GROWTH_RATE:I

    int-to-float v4, v4

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm()F

    move-result v7

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1034
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_ECONOMY:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v7

    mul-int v4, v4, v7

    int-to-float v4, v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1037
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_DEVELOPMENT:I

    int-to-float v4, v4

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1039
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_REV_RISK_MODIFIER:F

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLvl(I)V

    .line 1043
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    const/high16 v7, 0x3f800000  # 1.0f

    if-nez v4, :cond_24f

    .line 1044
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_BASE:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_GROWTH_RATE_BASE:I

    int-to-float v8, v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_GROWTH_RATE_NEIGH_PROVINCES_BASE:I

    int-to-float v9, v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_GROWTH_RATE_NEIGH_PROVINCES_BASE_MODIFIER:F

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_GROWTH_RATE_NEIGH_PROVINCES_BASE_PER_PROVINCE:F

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v12

    int-to-float v12, v12

    mul-float v11, v11, v12

    add-float/2addr v10, v11

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm()F

    move-result v9

    mul-float v8, v8, v9

    float-to-int v8, v8

    add-int/2addr v4, v8

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1047
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_22f
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v8

    if-ge v4, v8, :cond_24d

    .line 1048
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v8

    const/4 v9, -0x2

    if-ne v8, v9, :cond_24a

    .line 1049
    invoke-virtual/range {p0 .. p1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->addNeutralProvsWithSeaAccess(I)V

    .line 1050
    goto :goto_24d

    .line 1047
    :cond_24a
    add-int/lit8 v4, v4, 0x1

    goto :goto_22f

    .end local v4  # "j":I
    :cond_24d
    :goto_24d
    goto/16 :goto_517

    .line 1055
    :cond_24f
    iget-wide v8, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:J

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    iput-wide v8, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:J

    .line 1058
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v4

    if-lez v4, :cond_276

    .line 1059
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_LVL_WATCH_TOWER:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWatchTower()I

    move-result v8

    mul-int v4, v4, v8

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v8

    mul-int v4, v4, v8

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1062
    :cond_276
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_LVL_PORT:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v8

    mul-int v4, v4, v8

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v8

    mul-int v4, v4, v8

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1063
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_LVL_FORT:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v8

    mul-int v4, v4, v8

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1064
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_LVL_FARM:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFarm()I

    move-result v8

    mul-int v4, v4, v8

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1065
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_LVL_WORKSHOP:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWorkshop()I

    move-result v8

    mul-int v4, v4, v8

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1068
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v4

    if-lez v4, :cond_2be

    .line 1069
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSeaAccess()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSeaAccess(I)V

    .line 1072
    :cond_2be
    const/4 v4, 0x0

    .line 1075
    .local v4, "nNeighbooringOwnProvinces":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2c0
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v9

    if-ge v8, v9, :cond_4c9

    .line 1076
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    .line 1079
    .local v9, "neighProvince":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    if-lez v10, :cond_478

    .line 1081
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    if-eq v10, v11, :cond_46e

    .line 1082
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v11

    if-eq v10, v11, :cond_46e

    .line 1085
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v10

    if-eqz v10, :cond_332

    .line 1086
    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setBordersWithEnemy(Z)V

    .line 1089
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v10

    if-eqz v10, :cond_312

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_NEIGH_PROVINCE_AT_WAR_CAPITAL:I

    goto :goto_316

    :cond_312
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_NEIGH_PROVINCE_AT_WAR:I

    :goto_316
    int-to-float v10, v10

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasAttacked()I

    move-result v11

    if-lez v11, :cond_322

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_NEIGH_PROVINCE_AT_WAR_WAS_ATTACKED_MODIFIER:F

    goto :goto_324

    :cond_322
    const/high16 v11, 0x3f800000  # 1.0f

    :goto_324
    mul-float v10, v10, v11

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasConquered()I

    move-result v11

    add-int/2addr v11, v5

    int-to-float v11, v11

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLvl(I)V

    .line 1092
    :cond_332
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAreAllied(II)Z

    move-result v10

    if-nez v10, :cond_426

    .line 1093
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v11

    if-eq v10, v11, :cond_426

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1094
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getDefensivePact(II)I

    move-result v10

    if-nez v10, :cond_426

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1095
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGuarantee(II)I

    move-result v10

    if-nez v10, :cond_426

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1096
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivNonAggressionPact(II)I

    move-result v10

    if-nez v10, :cond_426

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1098
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivTruce(II)I

    move-result v10

    const/4 v11, 0x4

    if-ge v10, v11, :cond_426

    .line 1105
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v10

    if-eqz v10, :cond_3a2

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_NEIGH_PROVINCE_DIFFERENT_CIV_CAPITAL:I

    goto :goto_3a6

    :cond_3a2
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_NEIGH_PROVINCE_DIFFERENT_CIV:I

    :goto_3a6
    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLvl(I)V

    .line 1108
    nop

    .line 1109
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v10

    if-eqz v10, :cond_3b5

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_DIFFERENT_CIV_BASE_CAPITAL:F

    goto :goto_3b9

    :cond_3b5
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_DIFFERENT_CIV_BASE:F

    .line 1110
    :goto_3b9
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v11

    if-eqz v11, :cond_3d6

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_AT_WAR_RELATION_MULTIPLIER:F

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasConquered()I

    move-result v12

    add-int/2addr v12, v5

    int-to-float v12, v12

    mul-float v11, v11, v12

    goto :goto_3f6

    :cond_3d6
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_RELATION_MIN:F

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_RELATION_BASE:F

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v14

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v14, v14, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_RELATION_DIVISOR:F

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    :goto_3f6
    mul-float v10, v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PROVINCE_COUNT_BASE:F

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PROVINCE_COUNT_MAX:F

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1111
    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    add-float/2addr v11, v12

    mul-float v10, v10, v11

    float-to-int v10, v10

    .line 1108
    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLvl(I)V

    .line 1115
    :cond_426
    iget-object v10, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_POPULATION:F

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEIGHBOR_DIFFERENT_OWNER_MODIFIER:F

    mul-float v10, v10, v11

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v11

    int-to-float v11, v11

    mul-float v10, v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-int v10, v10

    neg-int v10, v10

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1116
    iget-object v10, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_ECONOMY:F

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEIGHBOR_DIFFERENT_OWNER_MODIFIER:F

    mul-float v10, v10, v11

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v11

    int-to-float v11, v11

    mul-float v10, v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-int v10, v10

    neg-int v10, v10

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1117
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEIGHBOR_DIFFERENT_OWNER_FLAT_PENALTY:I

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    goto :goto_493

    .line 1121
    :cond_46e
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEIGHBOR_SAME_OWNER_BONUS:I

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1123
    add-int/lit8 v4, v4, 0x1

    goto :goto_493

    .line 1128
    :cond_478
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNumOfNeighboringNeutralProvinces()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->setNumOfNeighboringNeutralProvinces(I)V

    .line 1131
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_NEIGH_BASE:I

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_NEIGH_GROWTH_MULTIPLIER:F

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v12

    mul-float v11, v11, v12

    float-to-int v11, v11

    add-int/2addr v10, v11

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1135
    :goto_493
    iget-object v10, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_POPULATION:F

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v11

    int-to-float v11, v11

    mul-float v10, v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->POPULATION_MAX:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1136
    iget-object v10, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_ECONOMY:F

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v11

    int-to-float v11, v11

    mul-float v10, v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->ECONOMY_MAX:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1075
    .end local v9  # "neighProvince":Lage/of/civilizations2/jakowski/lukasz/Province;
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2c0

    .line 1139
    .end local v8  # "j":I
    :cond_4c9
    if-lez v4, :cond_4e5

    .line 1140
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLvl()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_EXTRA_PER_OWN_PROVINCE:F

    int-to-float v10, v4

    mul-float v9, v9, v10

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLvl()I

    move-result v10

    int-to-float v10, v10

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDangerLvl(I)V

    .line 1143
    :cond_4e5
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v8

    if-eqz v8, :cond_4f2

    .line 1144
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_EXTRA_AT_WAR:I

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLvl(I)V

    .line 1149
    :cond_4f2
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v8

    if-eqz v8, :cond_517

    .line 1150
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_CAPITAL:I

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotentialP(I)V

    .line 1152
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v8

    if-lez v8, :cond_517

    .line 1153
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_CAPITAL_SEA_BASE:I

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_CAPITAL_SEA_PER_NEIGHBOR:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v10

    mul-int v9, v9, v10

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLvl(I)V

    .line 1162
    .end local v4  # "nNeighbooringOwnProvinces":I
    :cond_517
    :goto_517
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_518
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v8

    if-ge v4, v8, :cond_5f9

    .line 1163
    const/4 v8, 0x1

    .local v8, "k":I
    :goto_51f
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v9

    if-ge v8, v9, :cond_5f5

    .line 1165
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v9

    const/high16 v10, 0x40000000  # 2.0f

    if-eqz v9, :cond_580

    .line 1166
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v9

    if-eqz v9, :cond_556

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_SEA_AT_WAR_CAPITAL:F

    goto :goto_55a

    :cond_556
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_SEA_AT_WAR:F

    :goto_55a
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v7

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v12, v7}, Ljava/lang/Math;->max(FF)F

    move-result v12

    div-float/2addr v11, v12

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float v9, v9, v10

    float-to-int v9, v9

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLvl(I)V

    goto :goto_5f1

    .line 1169
    :cond_580
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_SEA_BAD_RELATIONS_VALUE:I

    int-to-float v11, v11

    cmpg-float v9, v9, v11

    if-gez v9, :cond_5f1

    .line 1170
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v9

    if-eqz v9, :cond_5ac

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_SEA_BAD_RELATIONS_CAPITAL:F

    goto :goto_5b0

    :cond_5ac
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_SEA_BAD_RELATIONS:F

    :goto_5b0
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v7

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v12, v7}, Ljava/lang/Math;->max(FF)F

    move-result v12

    div-float/2addr v11, v12

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float v9, v9, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v10

    neg-float v10, v10

    div-float/2addr v10, v6

    mul-float v9, v9, v10

    float-to-int v9, v9

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLvl(I)V

    .line 1163
    :cond_5f1
    :goto_5f1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_51f

    .line 1162
    .end local v8  # "k":I
    :cond_5f5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_518

    .line 1177
    .end local v4  # "j":I
    :cond_5f9
    :try_start_5f9
    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v4

    if-lez v4, :cond_624

    .line 1178
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLvl()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_PERC_OF_UNITS:F

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v6, v6, v0

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v6, v0

    sub-float/2addr v7, v6

    mul-float v4, v4, v7

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDangerLevel_WithArmy(I)V

    goto :goto_62b

    .line 1181
    :cond_624
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLvl()I

    move-result v0

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDangerLevel_WithArmy(I)V
    :try_end_62b
    .catch Ljava/lang/Exception; {:try_start_5f9 .. :try_end_62b} :catch_62c

    .line 1187
    :goto_62b
    goto :goto_637

    .line 1183
    :catch_62c
    move-exception v0

    .line 1184
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLvl()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDangerLevel_WithArmy(I)V

    .line 1186
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1190
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_637
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfFort()I

    move-result v0

    if-lez v0, :cond_651

    .line 1191
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v0

    int-to-float v0, v0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_FORT_REDUCTION_MULTIPLIER:F

    mul-float v0, v0, v4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setPotential(I)V

    .line 1194
    :cond_651
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-lez v0, :cond_66d

    .line 1196
    :try_start_657
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v0

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v0

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I
    :try_end_668
    .catch Ljava/lang/Exception; {:try_start_657 .. :try_end_668} :catch_669

    .line 1199
    goto :goto_66d

    .line 1197
    :catch_669
    move-exception v0

    .line 1198
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1203
    .end local v0  # "ex":Ljava/lang/Exception;
    :cond_66d
    :goto_66d
    :try_start_66d
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-lez v0, :cond_690

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v0

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v0

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isKeyRegion:Z

    if-eqz v0, :cond_690

    .line 1204
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLvl()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_EXTRA_KEY_REGION:F

    mul-float v0, v0, v4

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDangerLvl(I)V
    :try_end_690
    .catch Ljava/lang/Exception; {:try_start_66d .. :try_end_690} :catch_691

    .line 1208
    :cond_690
    goto :goto_695

    .line 1206
    :catch_691
    move-exception v0

    .line 1207
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1210
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_695
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinceOfCivWasLost()I

    move-result v0

    if-lez v0, :cond_6b1

    .line 1211
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLvl()I

    move-result v0

    int-to-float v0, v0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_NEIGHBOR_PROVINCE_LOST_MULTIPLIER:F

    mul-float v0, v0, v4

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinceOfCivWasLost()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v0, v4

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLvl(I)V

    .line 1218
    :cond_6b1
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyWasRecruited()I

    move-result v0

    if-lez v0, :cond_6bf

    .line 1219
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyWasRecruited()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setArmyWasRecruited(I)V

    .line 1223
    :cond_6bf
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v0

    if-eqz v0, :cond_6cd

    .line 1224
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getBordersWithEnemy()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setBordersWithEnemy(I)V

    .line 1228
    :cond_6cd
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNumOfNeighboringNeutralProvinces()I

    move-result v0

    if-lez v0, :cond_6df

    .line 1229
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfNeighboringNeutralProvinces()I

    move-result v0

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNumOfNeighboringNeutralProvinces()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNumOfNeighboringNeutralProvinces(I)V

    .line 1232
    :cond_6df
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasConquered()I

    move-result v0

    sub-int/2addr v0, v5

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWasConquered(B)V

    .line 1233
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinceOfCivWasLost()I

    move-result v0

    sub-int/2addr v0, v5

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setNeighProvinceOfCivWasLost(B)V

    .line 1234
    return-void
.end method

.method public buildWonders()V
    .registers 7

    .line 2287
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->wondersMgr:Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;->wondersProvinceIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d0

    .line 2288
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->wondersMgr:Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;->wondersProvinceIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_19
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->wondersMgr:Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;->wondersProvinceIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d0

    .line 2289
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->wondersMgr:Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;->wondersProvinceIDs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wonderBuilt:Z

    if-nez v1, :cond_c3

    .line 2290
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->wondersMgr:Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;->wondersProvinceIDs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-nez v1, :cond_c3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->wondersMgr:Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;->wondersProvinceIDs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarC()Z

    move-result v1

    if-nez v1, :cond_c3

    .line 2291
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->wondersMgr:Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;->wondersProvinceIDs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;->getWonderCost(I)I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_c3

    .line 2292
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->wondersMgr:Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;->wondersProvinceIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;->buildWonder(I)Z

    .line 2288
    :cond_c3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->wondersMgr:Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/MapA/Wonders/Wonders_Manager;->wondersProvinceIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_cd} :catch_d1

    add-int/2addr v0, v1

    goto/16 :goto_19

    .line 2300
    .end local v0  # "i":I
    :cond_d0
    goto :goto_d5

    .line 2298
    :catch_d1
    move-exception v0

    .line 2299
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2301
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_d5
    return-void
.end method

.method public final checkWarsLookingForPeace()V
    .registers 12

    .line 464
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWarsSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_35d

    .line 465
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    .line 467
    .local v2, "warData":Lage/of/civilizations2/jakowski/lukasz/War_GameData;
    const/4 v3, 0x0

    .line 469
    .local v3, "next":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_12
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v5

    if-ge v4, v5, :cond_2c

    .line 470
    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    if-gez v5, :cond_29

    .line 471
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->removeWarData(I)V

    .line 472
    const/4 v3, 0x1

    .line 473
    goto :goto_2c

    .line 469
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 477
    .end local v4  # "j":I
    :cond_2c
    :goto_2c
    if-nez v3, :cond_49

    .line 478
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_2f
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v5

    if-ge v4, v5, :cond_49

    .line 479
    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    if-gez v5, :cond_46

    .line 480
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->removeWarData(I)V

    .line 481
    const/4 v3, 0x1

    .line 482
    goto :goto_49

    .line 478
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 487
    .end local v4  # "j":I
    :cond_49
    :goto_49
    if-eqz v3, :cond_4d

    .line 488
    goto/16 :goto_359

    .line 491
    :cond_4d
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_4e
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v5

    if-ge v4, v5, :cond_d2

    .line 492
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-nez v5, :cond_ce

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v5, :cond_ce

    .line 493
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_85
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v6

    if-ge v5, v6, :cond_ce

    .line 494
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v6, :cond_cb

    .line 495
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Messages/Truce/SignPeace/Message_WeCanSignPeace;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-direct {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Messages/Truce/SignPeace/Message_WeCanSignPeace;-><init>(I)V

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 493
    :cond_cb
    add-int/lit8 v5, v5, 0x1

    goto :goto_85

    .line 491
    .end local v5  # "k":I
    :cond_ce
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4e

    .line 501
    .end local v4  # "j":I
    :cond_d2
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_d3
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v5

    if-ge v4, v5, :cond_157

    .line 502
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-nez v5, :cond_153

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v5, :cond_153

    .line 503
    const/4 v5, 0x0

    .restart local v5  # "k":I
    :goto_10a
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v6

    if-ge v5, v6, :cond_153

    .line 504
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v6, :cond_150

    .line 505
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Messages/Truce/SignPeace/Message_WeCanSignPeace;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-direct {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Messages/Truce/SignPeace/Message_WeCanSignPeace;-><init>(I)V

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_150} :catch_35e

    .line 503
    :cond_150
    add-int/lit8 v5, v5, 0x1

    goto :goto_10a

    .line 501
    .end local v5  # "k":I
    :cond_153
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d3

    .line 512
    .end local v4  # "j":I
    :cond_157
    const/4 v4, 0x0

    :try_start_158
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v5

    if-lez v5, :cond_200

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v5, :cond_200

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_18c} :catch_201

    if-nez v5, :cond_200

    .line 516
    :try_start_18e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v5, "lDefenders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v6, "lAggressors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v7

    sub-int/2addr v7, v1

    .local v7, "a":I
    :goto_19d
    if-ltz v7, :cond_1a9

    .line 520
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    add-int/lit8 v7, v7, -0x1

    goto :goto_19d

    .line 523
    .end local v7  # "a":I
    :cond_1a9
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v7

    sub-int/2addr v7, v1

    .restart local v7  # "a":I
    :goto_1ae
    if-ltz v7, :cond_1ba

    .line 524
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    add-int/lit8 v7, v7, -0x1

    goto :goto_1ae

    .line 527
    .end local v7  # "a":I
    :cond_1ba
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Menu_PeaceTreaty;->WAR_ID:I

    .line 528
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Menu_PeaceTreaty;->WAR_ID:I

    invoke-direct {v7, v8, v5, v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;-><init>(ILjava/util/List;Ljava/util/List;Z)V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    .line 530
    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    .line 531
    .local v7, "toCivID":I
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->preparePeaceTreatyToSend(I)V

    .line 533
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->lPeaceTreaties:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData_MessageData;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    invoke-direct {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData_MessageData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->lPeaceTreaties:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->lPeaceTreaties:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData_MessageData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData_MessageData;->PEACE_TREATY_TAG:Ljava/lang/String;

    .line 536
    .local v8, "peaceTreatyTag":Ljava/lang/String;
    invoke-static {v7, v8, v1}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->acceptPeaceTreaty(ILjava/lang/String;Z)V
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1fa} :catch_1fc

    .line 539
    goto/16 :goto_359

    .line 540
    .end local v5  # "lDefenders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v6  # "lAggressors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v7  # "toCivID":I
    .end local v8  # "peaceTreatyTag":Ljava/lang/String;
    :catch_1fc
    move-exception v5

    .line 541
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_1fd
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_200} :catch_201

    .line 546
    .end local v5  # "ex":Ljava/lang/Exception;
    :cond_200
    goto :goto_205

    .line 544
    :catch_201
    move-exception v5

    .line 545
    .local v5, "exr":Ljava/lang/Exception;
    :try_start_202
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 548
    .end local v5  # "exr":Ljava/lang/Exception;
    :goto_205
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getWarTurnID()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->STATUS_QUO_WAR_IS_TOO_LONG:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_2cd

    .line 549
    const/4 v5, 0x0

    .line 551
    .local v5, "playerInWar":Z
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "a":I
    :goto_218
    if-ltz v6, :cond_233

    .line 552
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v7

    if-eqz v7, :cond_230

    .line 553
    const/4 v5, 0x1

    .line 554
    goto :goto_233

    .line 551
    :cond_230
    add-int/lit8 v6, v6, -0x1

    goto :goto_218

    .line 558
    .end local v6  # "a":I
    :cond_233
    :goto_233
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v6

    sub-int/2addr v6, v1

    .restart local v6  # "a":I
    :goto_238
    if-ltz v6, :cond_253

    .line 559
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v7

    if-eqz v7, :cond_250

    .line 560
    const/4 v5, 0x1

    .line 561
    goto :goto_253

    .line 558
    :cond_250
    add-int/lit8 v6, v6, -0x1

    goto :goto_238

    .line 565
    .end local v6  # "a":I
    :cond_253
    :goto_253
    if-eqz v5, :cond_259

    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_257} :catch_35e

    if-eqz v6, :cond_2cd

    .line 569
    :cond_259
    :try_start_259
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v6, "lDefenders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v7, "lAggressors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v8

    sub-int/2addr v8, v1

    .local v8, "a":I
    :goto_268
    if-ltz v8, :cond_274

    .line 573
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    add-int/lit8 v8, v8, -0x1

    goto :goto_268

    .line 576
    .end local v8  # "a":I
    :cond_274
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v8

    sub-int/2addr v8, v1

    .restart local v8  # "a":I
    :goto_279
    if-ltz v8, :cond_285

    .line 577
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    add-int/lit8 v8, v8, -0x1

    goto :goto_279

    .line 580
    .end local v8  # "a":I
    :cond_285
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Menu_PeaceTreaty;->WAR_ID:I

    .line 581
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Menu_PeaceTreaty;->WAR_ID:I

    invoke-direct {v8, v9, v6, v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;-><init>(ILjava/util/List;Ljava/util/List;Z)V

    sput-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    .line 583
    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    .line 584
    .local v4, "toCivID":I
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->preparePeaceTreatyToSend(I)V

    .line 586
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->lPeaceTreaties:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData_MessageData;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    invoke-direct {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData_MessageData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->lPeaceTreaties:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->lPeaceTreaties:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData_MessageData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData_MessageData;->PEACE_TREATY_TAG:Ljava/lang/String;

    .line 589
    .local v8, "peaceTreatyTag":Ljava/lang/String;
    invoke-static {v4, v8, v1}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->acceptPeaceTreaty(ILjava/lang/String;Z)V
    :try_end_2c5
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_2c5} :catch_2c7

    .line 593
    .end local v4  # "toCivID":I
    .end local v6  # "lDefenders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v7  # "lAggressors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v8  # "peaceTreatyTag":Ljava/lang/String;
    goto/16 :goto_359

    .line 591
    :catch_2c7
    move-exception v4

    .line 592
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2c8
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 595
    .end local v4  # "ex":Ljava/lang/Exception;
    goto/16 :goto_359

    .line 600
    .end local v5  # "playerInWar":Z
    :cond_2cd
    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTurns:I

    iget-boolean v5, v2, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->wasAnyAttack:Z

    if-eqz v5, :cond_2d8

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->STATUS_QUO_SINCE_LAST_ATTACK_TURNS:I

    goto :goto_2dc

    :cond_2d8
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->STATUS_QUO_TURNS_NO_ONE_ATTACKED:I

    :goto_2dc
    if-gt v4, v5, :cond_2e9

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastTurn_ConqueredProvince:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_War;->STATUS_QUO_NO_PROGRESS:I

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_359

    .line 603
    :cond_2e9
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2ea
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v5

    if-ge v4, v5, :cond_359

    .line 604
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v5, :cond_356

    .line 605
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_30d
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v6

    if-ge v5, v6, :cond_356

    .line 606
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v6, :cond_353

    .line 607
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Messages/Truce/SignPeace/Message_WeCanSignPeace;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-direct {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Messages/Truce/SignPeace/Message_WeCanSignPeace;-><init>(I)V

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V
    :try_end_353
    .catch Ljava/lang/Exception; {:try_start_2c8 .. :try_end_353} :catch_35e

    .line 605
    :cond_353
    add-int/lit8 v5, v5, 0x1

    goto :goto_30d

    .line 603
    .end local v5  # "k":I
    :cond_356
    add-int/lit8 v4, v4, 0x1

    goto :goto_2ea

    .line 464
    .end local v2  # "warData":Lage/of/civilizations2/jakowski/lukasz/War_GameData;
    .end local v3  # "next":Z
    .end local v4  # "j":I
    :cond_359
    :goto_359
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 616
    .end local v0  # "i":I
    :cond_35d
    goto :goto_362

    .line 614
    :catch_35e
    move-exception v0

    .line 615
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 617
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_362
    return-void
.end method

.method public final expandToNeutralProvinces_Out(IZ)Z
    .registers 25
    .param p1, "nCivID"  # I
    .param p2, "maybeGoToTheSea"  # Z

    move-object/from16 v1, p0

    move/from16 v9, p1

    .line 1650
    const/4 v10, 0x0

    :try_start_5
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getBordersWithEnemy()I

    move-result v2

    if-nez v2, :cond_cf3

    .line 1654
    invoke-virtual/range {p0 .. p1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->expandToNeutralProvinces_Run(I)V

    .line 1658
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    if-ge v2, v3, :cond_33

    .line 1659
    return v10

    .line 1662
    :cond_33
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithNeutralProvcsID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v11, 0x1

    if-nez v2, :cond_3df

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iNeutralProvincesWithSeaAccessSize:I

    const/4 v12, 0x5

    if-lez v2, :cond_70

    if-eqz p2, :cond_70

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x64

    .line 1663
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-ge v2, v12, :cond_70

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-static {v11, v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getPort_BuildCost(II)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3df

    .line 1666
    :cond_70
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvArmyRecruit:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->COST_OF_RECRUIT_ARMY_GOLD_PER_UNIT:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v13, v2

    .line 1668
    .local v13, "recruitableArmyMax":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    .line 1669
    .local v14, "possibleProvinces":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;>;"
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithNeutralProvcsID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v11

    .local v2, "i":I
    :goto_94
    if-ltz v2, :cond_de

    .line 1670
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithNeutralProvcsID:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v4

    add-int/2addr v4, v13

    if-ge v3, v4, :cond_db

    .line 1671
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithNeutralProvcsID:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v1, v4, v9}, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI/AI;II)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1669
    :cond_db
    add-int/lit8 v2, v2, -0x1

    goto :goto_94

    .line 1677
    .end local v2  # "i":I
    :cond_de
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36d

    .line 1678
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v2

    .line 1679
    .local v15, "sorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    .line 1681
    .local v8, "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .restart local v2  # "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "iSize":I
    :goto_f5
    if-ge v2, v3, :cond_101

    .line 1682
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1681
    add-int/lit8 v2, v2, 0x1

    goto :goto_f5

    .line 1685
    .end local v2  # "i":I
    .end local v3  # "iSize":I
    :cond_101
    :goto_101
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_149

    .line 1686
    const/4 v2, 0x0

    .line 1688
    .local v2, "tBest":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    .local v3, "i":I
    :goto_10d
    if-lez v3, :cond_13b

    .line 1689
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_138

    .line 1690
    move v2, v3

    .line 1688
    :cond_138
    add-int/lit8 v3, v3, -0x1

    goto :goto_10d

    .line 1694
    .end local v3  # "i":I
    :cond_13b
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1695
    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1696
    nop

    .end local v2  # "tBest":I
    goto :goto_101

    .line 1699
    :cond_149
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    move v7, v3

    move v6, v2

    .end local v2  # "i":I
    .local v6, "i":I
    .local v7, "iSize":I
    :goto_150
    if-ge v6, v7, :cond_367

    .line 1700
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    .line 1702
    .local v5, "possibleFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_159
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1c6

    .line 1703
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    if-ne v3, v9, :cond_1c2

    .line 1704
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1702
    :cond_1c2
    add-int/lit8 v2, v2, 0x1

    const/4 v12, 0x5

    goto :goto_159

    .line 1708
    .end local v2  # "k":I
    :cond_1c6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v2

    .line 1710
    .local v12, "canMoveImmediately":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v11

    .restart local v2  # "k":I
    :goto_1d1
    if-ltz v2, :cond_22b

    .line 1711
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4, v11}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v4, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v4

    if-le v3, v4, :cond_227

    .line 1712
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1710
    :cond_227
    add-int/lit8 v2, v2, -0x1

    const/4 v11, 0x1

    goto :goto_1d1

    .line 1718
    .end local v2  # "k":I
    :cond_22b
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31f

    .line 1719
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    move v11, v2

    .line 1721
    .local v11, "randID":I
    const/4 v2, 0x0

    .line 1723
    .local v2, "numOfNeutral":I
    const/4 v3, 0x0

    move v4, v2

    .end local v2  # "numOfNeutral":I
    .local v3, "k":I
    .local v4, "numOfNeutral":I
    :goto_23f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v2

    if-ge v3, v2, :cond_29f

    .line 1724
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v18, v5

    .end local v5  # "possibleFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v18, "possibleFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    if-nez v2, :cond_299

    .line 1725
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isMovingUnitsToProvID(I)Z

    move-result v2

    if-nez v2, :cond_299

    .line 1726
    add-int/lit8 v4, v4, 0x1

    .line 1723
    :cond_299
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v18

    const/4 v10, 0x0

    goto :goto_23f

    .end local v18  # "possibleFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5  # "possibleFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_29f
    move-object/from16 v18, v5

    .line 1731
    .end local v3  # "k":I
    .end local v5  # "possibleFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "possibleFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2

    .line 1733
    .local v2, "tArmyToMove":I
    const/4 v3, 0x1

    if-le v4, v3, :cond_2e2

    .line 1734
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v3

    const/4 v10, 0x5

    add-int/2addr v3, v10

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v5, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int v2, v3, v5

    move/from16 v16, v2

    goto :goto_2e5

    .line 1733
    :cond_2e2
    const/4 v10, 0x5

    move/from16 v16, v2

    .line 1739
    .end local v2  # "tArmyToMove":I
    .local v16, "tArmyToMove":I
    :goto_2e5
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    const/16 v17, 0x1

    const/16 v19, 0x0

    move/from16 v20, v4

    .end local v4  # "numOfNeutral":I
    .local v20, "numOfNeutral":I
    move v4, v5

    move/from16 v5, v16

    move v10, v6

    .end local v6  # "i":I
    .local v10, "i":I
    move/from16 v6, p1

    move/from16 v21, v7

    .end local v7  # "iSize":I
    .local v21, "iSize":I
    move/from16 v7, v17

    move-object/from16 v17, v8

    .end local v8  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v17, "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v8, v19

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->moveArmyAction(IIIIZZ)Z

    move-result v2

    if-nez v2, :cond_31e

    .line 1740
    goto :goto_36c

    .line 1742
    .end local v11  # "randID":I
    .end local v16  # "tArmyToMove":I
    .end local v20  # "numOfNeutral":I
    :cond_31e
    goto :goto_35c

    .line 1746
    .end local v10  # "i":I
    .end local v17  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "possibleFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21  # "iSize":I
    .restart local v5  # "possibleFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6  # "i":I
    .restart local v7  # "iSize":I
    .restart local v8  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_31f
    move-object/from16 v18, v5

    move v10, v6

    move/from16 v21, v7

    move-object/from16 v17, v8

    .end local v5  # "possibleFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6  # "i":I
    .end local v7  # "iSize":I
    .end local v8  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10  # "i":I
    .restart local v17  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "possibleFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21  # "iSize":I
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutralProvince;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v4, v9, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutralProvince;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->addNewArmyMission(ILage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;)Z

    .line 1699
    .end local v12  # "canMoveImmediately":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "possibleFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_35c
    add-int/lit8 v6, v10, 0x1

    move-object/from16 v8, v17

    move/from16 v7, v21

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x5

    .end local v10  # "i":I
    .restart local v6  # "i":I
    goto/16 :goto_150

    .end local v17  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21  # "iSize":I
    .restart local v7  # "iSize":I
    .restart local v8  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_367
    move v10, v6

    move/from16 v21, v7

    move-object/from16 v17, v8

    .line 1751
    .end local v6  # "i":I
    .end local v7  # "iSize":I
    .end local v8  # "tempIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15  # "sorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_36c
    goto :goto_3dd

    .line 1753
    :cond_36d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithNeutralProvcsID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_37b
    if-ltz v2, :cond_39a

    .line 1754
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithNeutralProvcsID:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v1, v4, v9}, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI/AI;II)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1753
    add-int/lit8 v2, v2, -0x1

    goto :goto_37b

    .line 1757
    .end local v2  # "i":I
    :cond_39a
    const/4 v2, 0x0

    .line 1759
    .local v2, "tBest":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_3a1
    if-lez v3, :cond_3bb

    .line 1760
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3b8

    .line 1761
    move v2, v3

    .line 1759
    :cond_3b8
    add-int/lit8 v3, v3, -0x1

    goto :goto_3a1

    .line 1765
    .end local v3  # "i":I
    :cond_3bb
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutralProvince;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v5, v9, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutralProvince;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->addNewArmyMission(ILage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;)Z
    :try_end_3dd
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3dd} :catch_cf6

    .line 1767
    .end local v2  # "tBest":I
    .end local v13  # "recruitableArmyMax":I
    .end local v14  # "possibleProvinces":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;>;"
    :goto_3dd
    goto/16 :goto_cf3

    .line 1768
    :cond_3df
    if-eqz p2, :cond_cf3

    .line 1771
    const/4 v10, 0x0

    .line 1773
    .end local p2  # "maybeGoToTheSea":Z
    .local v10, "maybeGoToTheSea":Z
    :try_start_3e2
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iNeutralProvincesWithSeaAccessSize:I

    if-lez v2, :cond_cf5

    .line 1774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 1775
    .local v11, "possibleTo":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v2

    .line 1779
    .local v12, "possibleTo_MoveFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3f3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v3

    if-ge v2, v3, :cond_553

    .line 1780
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getSeaAccess()Z

    move-result v3

    if-eqz v3, :cond_54f

    .line 1781
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_410
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_54f

    .line 1782
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v4

    if-lez v4, :cond_54b

    .line 1783
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_43b
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_54b

    .line 1784
    const/4 v5, 0x0

    .local v5, "o":I
    :goto_456
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v8

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_547

    .line 1785
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v6

    if-nez v6, :cond_543

    .line 1786
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v6

    if-gez v6, :cond_543

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    if-nez v6, :cond_543

    .line 1787
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-direct {v6, v1, v7, v9}, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI/AI;II)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1788
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1784
    :cond_543
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_456

    .line 1783
    .end local v5  # "o":I
    :cond_547
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_43b

    .line 1781
    .end local v4  # "k":I
    :cond_54b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_410

    .line 1779
    .end local v3  # "j":I
    :cond_54f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3f3

    .line 1798
    .end local v2  # "i":I
    :cond_553
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_554
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v3

    if-ge v2, v3, :cond_73d

    .line 1799
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getSeaAccess()Z

    move-result v3

    if-eqz v3, :cond_739

    .line 1800
    const/4 v3, 0x0

    .restart local v3  # "j":I
    :goto_571
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_739

    .line 1801
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v4

    if-lez v4, :cond_735

    .line 1802
    const/4 v4, 0x0

    .restart local v4  # "k":I
    :goto_59c
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_735

    .line 1803
    const/4 v5, 0x0

    .restart local v5  # "o":I
    :goto_5b7
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v8

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_731

    .line 1804
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v6

    if-eqz v6, :cond_72d

    .line 1805
    const/4 v6, 0x0

    .local v6, "z":I
    :goto_60a
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v14

    invoke-virtual {v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_72d

    .line 1806
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v7

    if-nez v7, :cond_729

    .line 1807
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v7

    if-gez v7, :cond_729

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    if-nez v7, :cond_729

    .line 1808
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-direct {v7, v1, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI/AI;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1809
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1805
    :cond_729
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_60a

    .line 1803
    .end local v6  # "z":I
    :cond_72d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5b7

    .line 1802
    .end local v5  # "o":I
    :cond_731
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_59c

    .line 1800
    .end local v4  # "k":I
    :cond_735
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_571

    .line 1798
    .end local v3  # "j":I
    :cond_739
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_554

    .line 1823
    .end local v2  # "i":I
    :cond_73d
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8a0

    .line 1824
    const/4 v2, 0x0

    .line 1826
    .local v2, "tBest":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v13, v2

    .end local v2  # "tBest":I
    .local v3, "i":I
    .local v13, "tBest":I
    :goto_74b
    if-lez v3, :cond_766

    .line 1827
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_763

    .line 1828
    move v2, v3

    move v13, v2

    .line 1826
    :cond_763
    add-int/lit8 v3, v3, -0x1

    goto :goto_74b

    .line 1832
    .end local v3  # "i":I
    :cond_766
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isMovingUnitsToProvID_Num(I)I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v3

    sub-int v14, v2, v3

    .line 1833
    .local v14, "neutralArmy":I
    if-ltz v14, :cond_89e

    .line 1834
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2

    if-le v2, v14, :cond_824

    .line 1835
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v2, v9, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;-><init>(III)V

    move-object v15, v2

    .line 1837
    .local v15, "tryRegroupArmy":Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;
    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRouteSize()I

    move-result v2

    if-lez v2, :cond_823

    .line 1838
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v4, v5

    move v5, v14

    move/from16 v6, p1

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->moveArmyAction(IIIIZZ)Z

    move-result v2

    if-eqz v2, :cond_823

    .line 1839
    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRouteSize()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_821

    .line 1840
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v5

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v3, v9, v5, v4, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1843
    :cond_821
    const/4 v2, 0x0

    return v2

    .line 1846
    .end local v15  # "tryRegroupArmy":Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;
    :cond_823
    goto :goto_89e

    .line 1848
    :cond_824
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2

    sub-int v2, v14, v2

    .line 1850
    .local v2, "tArmyToRecruit":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy_AI(II)Z

    .line 1852
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy_BasedOnProvinceID(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 1854
    .local v3, "tempArmy":I
    if-lez v3, :cond_89e

    .line 1855
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v5, v9, v6, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;-><init>(IIII)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1859
    .end local v2  # "tArmyToRecruit":I
    .end local v3  # "tempArmy":I
    .end local v13  # "tBest":I
    .end local v14  # "neutralArmy":I
    :cond_89e
    :goto_89e
    goto/16 :goto_cf5

    .line 1861
    :cond_8a0
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 1862
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 1864
    const/4 v2, 0x0

    .local v2, "z":I
    :goto_8a7
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v3

    if-ge v2, v3, :cond_b65

    .line 1865
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getSeaAccess()Z

    move-result v3

    if-eqz v3, :cond_b61

    .line 1866
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_8c4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_b61

    .line 1867
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v4

    if-ltz v4, :cond_b5d

    .line 1868
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    .local v4, "recentlyAdded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1871
    .local v5, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .end local v5  # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v6, "k":I
    :goto_8f9
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v8

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_975

    .line 1872
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v8

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1873
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v8

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1874
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    const/4 v8, 0x1

    iput-boolean v8, v7, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1871
    add-int/lit8 v6, v6, 0x1

    goto :goto_8f9

    .line 1877
    .end local v6  # "k":I
    :cond_975
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1879
    .local v6, "currProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1880
    .local v7, "nIteration_Distance":I
    const/4 v8, 0x0

    .line 1882
    .local v8, "foundProvince":Z
    :goto_97c
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->expandNeutralProvinces_RangeCheck:I

    if-ge v7, v13, :cond_b34

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b34

    .line 1883
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1884
    add-int/lit8 v7, v7, 0x1

    .line 1886
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .local v13, "a":I
    :goto_999
    if-ltz v13, :cond_9d4

    .line 1887
    const/4 v15, 0x1

    .line 1889
    .local v15, "wasntAdded":Z
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v14, v16

    .local v14, "p":I
    :goto_9a4
    if-ltz v14, :cond_9bd

    .line 1890
    move/from16 p2, v7

    .end local v7  # "nIteration_Distance":I
    .local p2, "nIteration_Distance":I
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move/from16 v16, v8

    .end local v8  # "foundProvince":Z
    .local v16, "foundProvince":Z
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_9b6

    .line 1891
    const/4 v15, 0x0

    .line 1892
    goto :goto_9c1

    .line 1889
    :cond_9b6
    add-int/lit8 v14, v14, -0x1

    move/from16 v7, p2

    move/from16 v8, v16

    goto :goto_9a4

    .end local v16  # "foundProvince":Z
    .end local p2  # "nIteration_Distance":I
    .restart local v7  # "nIteration_Distance":I
    .restart local v8  # "foundProvince":Z
    :cond_9bd
    move/from16 p2, v7

    move/from16 v16, v8

    .line 1896
    .end local v7  # "nIteration_Distance":I
    .end local v8  # "foundProvince":Z
    .end local v14  # "p":I
    .restart local v16  # "foundProvince":Z
    .restart local p2  # "nIteration_Distance":I
    :goto_9c1
    if-eqz v15, :cond_9cc

    .line 1897
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1886
    .end local v15  # "wasntAdded":Z
    :cond_9cc
    add-int/lit8 v13, v13, -0x1

    move/from16 v7, p2

    move/from16 v8, v16

    const/4 v14, 0x1

    goto :goto_999

    .end local v16  # "foundProvince":Z
    .end local p2  # "nIteration_Distance":I
    .restart local v7  # "nIteration_Distance":I
    .restart local v8  # "foundProvince":Z
    :cond_9d4
    move/from16 p2, v7

    move/from16 v16, v8

    .line 1900
    .end local v7  # "nIteration_Distance":I
    .end local v8  # "foundProvince":Z
    .end local v13  # "a":I
    .restart local v16  # "foundProvince":Z
    .restart local p2  # "nIteration_Distance":I
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1902
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move/from16 v8, v16

    .end local v16  # "foundProvince":Z
    .local v7, "a":I
    .restart local v8  # "foundProvince":Z
    :goto_9e3
    if-ltz v7, :cond_b2b

    .line 1903
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9e6
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v14

    if-ge v13, v14, :cond_b25

    .line 1904
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move/from16 v17, v8

    .end local v8  # "foundProvince":Z
    .local v17, "foundProvince":Z
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v15, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v14, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    iget-boolean v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    if-nez v8, :cond_b1f

    .line 1905
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v8, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1906
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-virtual {v8, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    const/4 v14, 0x1

    iput-boolean v14, v8, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1908
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-virtual {v8, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v8

    if-eqz v8, :cond_a91

    .line 1909
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v8, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b1f

    .line 1911
    :cond_a91
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-virtual {v8, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    if-nez v8, :cond_b1f

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-virtual {v8, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v8

    if-gez v8, :cond_b1f

    .line 1912
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-direct {v8, v1, v14, v9}, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI/AI;II)V

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1913
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v8

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1915
    const/4 v8, 0x1

    .line 1917
    .end local v17  # "foundProvince":Z
    .restart local v8  # "foundProvince":Z
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b21

    .line 1903
    .end local v8  # "foundProvince":Z
    .restart local v17  # "foundProvince":Z
    :cond_b1f
    :goto_b1f
    move/from16 v8, v17

    .end local v17  # "foundProvince":Z
    .restart local v8  # "foundProvince":Z
    :goto_b21
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_9e6

    :cond_b25
    move/from16 v17, v8

    .line 1902
    .end local v8  # "foundProvince":Z
    .end local v13  # "i":I
    .restart local v17  # "foundProvince":Z
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_9e3

    .line 1923
    .end local v7  # "a":I
    .end local v17  # "foundProvince":Z
    .restart local v8  # "foundProvince":Z
    :cond_b2b
    if-eqz v8, :cond_b30

    .line 1924
    move/from16 v7, p2

    goto :goto_b38

    .line 1923
    :cond_b30
    move/from16 v7, p2

    goto/16 :goto_97c

    .line 1882
    .end local p2  # "nIteration_Distance":I
    .local v7, "nIteration_Distance":I
    :cond_b34
    move/from16 v16, v8

    .line 1929
    .end local v8  # "foundProvince":Z
    .restart local v16  # "foundProvince":Z
    move/from16 v8, v16

    .end local v16  # "foundProvince":Z
    .restart local v8  # "foundProvince":Z
    :goto_b38
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .local v13, "p":I
    :goto_b3e
    if-ltz v13, :cond_b56

    .line 1930
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    const/4 v15, 0x0

    iput-boolean v15, v14, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1929
    add-int/lit8 v13, v13, -0x1

    goto :goto_b3e

    .line 1933
    .end local v13  # "p":I
    :cond_b56
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1934
    const/4 v4, 0x0

    .line 1936
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1866
    .end local v4  # "recentlyAdded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6  # "currProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7  # "nIteration_Distance":I
    .end local v8  # "foundProvince":Z
    :cond_b5d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8c4

    .line 1864
    .end local v3  # "j":I
    :cond_b61
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8a7

    .line 1945
    .end local v2  # "z":I
    :cond_b65
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b93

    .line 1946
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->expandNeutralProvinces_RangeCheck:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v4

    div-int/lit8 v4, v4, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->expandNeutralProvinces_RangeCheck:I

    .line 1948
    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->expandToNeutralProvinces_Out(IZ)Z

    goto/16 :goto_cf5

    .line 1951
    :cond_b93
    const/4 v2, 0x0

    .line 1953
    .local v2, "tBest":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v13, v2

    .end local v2  # "tBest":I
    .local v3, "i":I
    .local v13, "tBest":I
    :goto_b9b
    if-lez v3, :cond_bb6

    .line 1954
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_bb3

    .line 1955
    move v2, v3

    move v13, v2

    .line 1953
    :cond_bb3
    add-int/lit8 v3, v3, -0x1

    goto :goto_b9b

    .line 1963
    .end local v3  # "i":I
    :cond_bb6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isMovingUnitsToProvID_Num(I)I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v3

    sub-int v14, v2, v3

    .line 1964
    .local v14, "neutralArmy":I
    if-ltz v14, :cond_cf5

    .line 1967
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2

    if-le v2, v14, :cond_c75

    .line 1970
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_PortToBuild;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v2, v9, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_PortToBuild;-><init>(III)V

    move-object v15, v2

    .line 1972
    .local v15, "tryRegroupArmy":Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_PortToBuild;
    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_PortToBuild;->getRouteSize()I

    move-result v2

    if-lez v2, :cond_c73

    .line 1973
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_PortToBuild;->getRoute(I)I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v4, v5

    move v5, v14

    move/from16 v6, p1

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->moveArmyAction(IIIIZZ)Z

    move-result v2

    if-eqz v2, :cond_c73

    .line 1974
    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_PortToBuild;->getRouteSize()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_c71

    .line 1975
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_Expand_BuildPort;

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_PortToBuild;->getRoute(I)I

    move-result v5

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v3, v9, v5, v4, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_Expand_BuildPort;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1978
    :cond_c71
    const/4 v2, 0x0

    return v2

    .line 1981
    .end local v15  # "tryRegroupArmy":Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_PortToBuild;
    :cond_c73
    goto/16 :goto_cf5

    .line 1985
    :cond_c75
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2

    sub-int v2, v14, v2

    .line 1989
    .local v2, "tArmyToRecruit":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy_AI(II)Z

    .line 1991
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy_BasedOnProvinceID(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 1995
    .local v3, "tempArmy":I
    if-lez v3, :cond_cf5

    .line 1997
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_Expand_BuildPort;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v5, v9, v6, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_Expand_BuildPort;-><init>(IIII)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_cef
    .catch Ljava/lang/Exception; {:try_start_3e2 .. :try_end_cef} :catch_cf0

    goto :goto_cf5

    .line 2007
    .end local v2  # "tArmyToRecruit":I
    .end local v3  # "tempArmy":I
    .end local v11  # "possibleTo":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;>;"
    .end local v12  # "possibleTo_MoveFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13  # "tBest":I
    .end local v14  # "neutralArmy":I
    :catch_cf0
    move-exception v0

    move-object v2, v0

    goto :goto_cfa

    .line 2009
    .end local v10  # "maybeGoToTheSea":Z
    .local p2, "maybeGoToTheSea":Z
    :cond_cf3
    :goto_cf3
    move/from16 v10, p2

    .end local p2  # "maybeGoToTheSea":Z
    .restart local v10  # "maybeGoToTheSea":Z
    :cond_cf5
    :goto_cf5
    goto :goto_cfd

    .line 2007
    .end local v10  # "maybeGoToTheSea":Z
    .restart local p2  # "maybeGoToTheSea":Z
    :catch_cf6
    move-exception v0

    move/from16 v10, p2

    move-object v2, v0

    .line 2008
    .end local p2  # "maybeGoToTheSea":Z
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v10  # "maybeGoToTheSea":Z
    :goto_cfa
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2011
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_cfd
    const/4 v2, 0x0

    return v2
.end method

.method public final expandToNeutralProvinces_Run(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 1638
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "k":I
    :goto_12
    if-ltz v0, :cond_6b

    .line 1639
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->MISSION_TYPE:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_Type;->EXPAND_NETURAL_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_Type;

    if-ne v1, v2, :cond_68

    .line 1640
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->action(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1641
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->onRemove()V

    .line 1642
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1638
    :cond_68
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 1646
    .end local v0  # "k":I
    :cond_6b
    return-void
.end method

.method public final getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;
    .registers 5
    .param p1, "i"  # I

    .line 86
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 87
    :catch_9
    move-exception v0

    .line 88
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 90
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    return-object v1
.end method

.method public final getAIStyle_ByTag(Ljava/lang/String;)I
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 76
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 77
    return v0

    .line 75
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    .end local v0  # "i":I
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public final getAllNeighboringProvcsInRange_WithArmyToRegroup(IIIZZLjava/util/List;Ljava/util/List;I)Ljava/util/List;
    .registers 25
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I
    .param p3, "iRange"  # I
    .param p4, "onlyTrueOwner"  # Z
    .param p5, "dontBreakIfNotFoundRecentlyProvince"  # Z
    .param p8, "nRequiredArmy"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces_Army;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces_Army;",
            ">;"
        }
    .end annotation

    .line 1239
    .local p6, "out":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces_Army;>;"
    .local p7, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v3, "recentlyAdded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v6, 0x1

    iput-boolean v6, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1245
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    .local v4, "currProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1248
    .local v7, "nIteration_Distance":I
    const/4 v8, 0x0

    move v9, v8

    move v8, v7

    move/from16 v7, p3

    .line 1250
    .end local p3  # "iRange":I
    .local v7, "iRange":I
    .local v8, "nIteration_Distance":I
    .local v9, "nArmyCollected":I
    :goto_2f
    add-int/lit8 v10, v7, -0x1

    .end local v7  # "iRange":I
    .local v10, "iRange":I
    if-lez v7, :cond_213

    if-nez p5, :cond_40

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3c

    goto :goto_40

    :cond_3c
    move/from16 v7, p8

    goto/16 :goto_215

    .line 1251
    :cond_40
    :goto_40
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1252
    add-int/lit8 v8, v8, 0x1

    .line 1254
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .local v7, "a":I
    :goto_4a
    if-ltz v7, :cond_71

    .line 1255
    const/4 v11, 0x1

    .line 1257
    .local v11, "wasntAdded":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    .local v12, "j":I
    :goto_52
    if-ltz v12, :cond_63

    .line 1258
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-ne v13, v14, :cond_60

    .line 1259
    const/4 v11, 0x0

    .line 1260
    goto :goto_63

    .line 1257
    :cond_60
    add-int/lit8 v12, v12, -0x1

    goto :goto_52

    .line 1264
    .end local v12  # "j":I
    :cond_63
    :goto_63
    if-eqz v11, :cond_6e

    .line 1265
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1254
    .end local v11  # "wasntAdded":Z
    :cond_6e
    add-int/lit8 v7, v7, -0x1

    goto :goto_4a

    .line 1268
    .end local v7  # "a":I
    :cond_71
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1270
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .restart local v7  # "a":I
    :goto_79
    if-ltz v7, :cond_20b

    .line 1271
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7c
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v12

    if-ge v11, v12, :cond_207

    .line 1272
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iget-boolean v12, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    if-nez v12, :cond_203

    .line 1273
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iput-boolean v6, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1276
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    if-ne v12, v0, :cond_203

    if-eqz p4, :cond_147

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v13

    if-ne v12, v13, :cond_203

    .line 1277
    :cond_147
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v13

    sub-int/2addr v12, v13

    if-lez v12, :cond_1e8

    .line 1278
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v13

    sub-int/2addr v12, v13

    .line 1279
    .local v12, "tArmy":I
    add-int/2addr v9, v12

    .line 1281
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces_Army;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-direct {v13, v14, v8, v12}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces_Army;-><init>(III)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    .end local v12  # "tArmy":I
    :cond_1e8
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    :cond_203
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7c

    .line 1270
    .end local v11  # "i":I
    :cond_207
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_79

    .line 1290
    .end local v7  # "a":I
    :cond_20b
    move/from16 v7, p8

    if-lt v9, v7, :cond_210

    .line 1291
    goto :goto_215

    .line 1290
    :cond_210
    move v7, v10

    goto/16 :goto_2f

    .line 1250
    :cond_213
    move/from16 v7, p8

    .line 1296
    :goto_215
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v6

    .local v11, "j":I
    :goto_21a
    if-ltz v11, :cond_232

    .line 1297
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v12, 0x0

    iput-boolean v12, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1296
    add-int/lit8 v11, v11, -0x1

    goto :goto_21a

    .line 1300
    .end local v11  # "j":I
    :cond_232
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1301
    const/4 v3, 0x0

    .line 1303
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->clear()V

    .line 1304
    const/4 v2, 0x0

    .line 1306
    .end local p7  # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v2, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-object v1
.end method

.method public final getAllNeighboringProvincesInRange_Clear(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 23
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I
    .param p3, "iRange"  # I
    .param p4, "onlyTrueOwner"  # Z
    .param p5, "dontBreakIfNotFoundRecentlyProvince"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;",
            ">;"
        }
    .end annotation

    .line 1472
    .local p6, "out":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;>;"
    .local p7, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    .local v2, "recentlyAdded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    const/4 v5, 0x1

    iput-boolean v5, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1478
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    .local v3, "currProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    move v7, v6

    move/from16 v6, p3

    .line 1482
    .end local p3  # "iRange":I
    .local v6, "iRange":I
    .local v7, "nIteration_Distance":I
    :goto_2b
    add-int/lit8 v8, v6, -0x1

    .end local v6  # "iRange":I
    .local v8, "iRange":I
    if-lez v6, :cond_18e

    if-nez p5, :cond_3c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_38

    goto :goto_3c

    :cond_38
    move/from16 v11, p2

    goto/16 :goto_190

    .line 1483
    :cond_3c
    :goto_3c
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1484
    add-int/lit8 v7, v7, 0x1

    .line 1486
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .local v6, "a":I
    :goto_46
    if-ltz v6, :cond_6d

    .line 1487
    const/4 v9, 0x1

    .line 1489
    .local v9, "wasntAdded":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    .local v10, "j":I
    :goto_4e
    if-ltz v10, :cond_5f

    .line 1490
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v11, v12, :cond_5c

    .line 1491
    const/4 v9, 0x0

    .line 1492
    goto :goto_5f

    .line 1489
    :cond_5c
    add-int/lit8 v10, v10, -0x1

    goto :goto_4e

    .line 1496
    .end local v10  # "j":I
    :cond_5f
    :goto_5f
    if-eqz v9, :cond_6a

    .line 1497
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1486
    .end local v9  # "wasntAdded":Z
    :cond_6a
    add-int/lit8 v6, v6, -0x1

    goto :goto_46

    .line 1500
    .end local v6  # "a":I
    :cond_6d
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1502
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .restart local v6  # "a":I
    :goto_75
    if-ltz v6, :cond_189

    .line 1503
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_78
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v10

    if-ge v9, v10, :cond_183

    .line 1504
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    iget-boolean v10, v10, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    if-nez v10, :cond_17d

    .line 1505
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1506
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    iput-boolean v5, v10, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1508
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    move/from16 v11, p2

    if-ne v10, v11, :cond_17f

    if-eqz p4, :cond_145

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v12

    if-ne v10, v12, :cond_17f

    .line 1509
    :cond_145
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-direct {v10, v12, v7}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;-><init>(II)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1510
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17f

    .line 1504
    :cond_17d
    move/from16 v11, p2

    .line 1503
    :cond_17f
    :goto_17f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_78

    :cond_183
    move/from16 v11, p2

    .line 1502
    .end local v9  # "i":I
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_75

    :cond_189
    move/from16 v11, p2

    move v6, v8

    .end local v6  # "a":I
    goto/16 :goto_2b

    .line 1482
    :cond_18e
    move/from16 v11, p2

    .line 1518
    :goto_190
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .local v6, "j":I
    :goto_195
    if-ltz v6, :cond_1ad

    .line 1519
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    const/4 v9, 0x0

    iput-boolean v9, v5, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1518
    add-int/lit8 v6, v6, -0x1

    goto :goto_195

    .line 1522
    .end local v6  # "j":I
    :cond_1ad
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1523
    const/4 v2, 0x0

    .line 1525
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->clear()V

    .line 1526
    const/4 v1, 0x0

    .line 1528
    .end local p7  # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v1, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-object v0
.end method

.method public final getAllNeighboringProvincesInRange_OnlyOwn_Clear(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 23
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I
    .param p3, "iRange"  # I
    .param p4, "onlyTrueOwner"  # Z
    .param p5, "dontBreakIfNotFoundRecentlyProvince"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;",
            ">;"
        }
    .end annotation

    .line 1532
    .local p6, "out":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;>;"
    .local p7, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1533
    .local v2, "recentlyAdded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1535
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1536
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    const/4 v5, 0x1

    iput-boolean v5, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1538
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    .local v3, "currProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 1541
    .local v6, "nIteration_Distance":I
    const/4 v7, -0x1

    move v8, v7

    move v7, v6

    move/from16 v6, p3

    .line 1543
    .end local p3  # "iRange":I
    .local v6, "iRange":I
    .local v7, "nIteration_Distance":I
    .local v8, "iFirstFoundRange":I
    :goto_2d
    add-int/lit8 v9, v6, -0x1

    .end local v6  # "iRange":I
    .local v9, "iRange":I
    if-lez v6, :cond_14b

    .line 1544
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1545
    add-int/lit8 v7, v7, 0x1

    .line 1547
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .local v6, "a":I
    :goto_3b
    if-ltz v6, :cond_62

    .line 1548
    const/4 v10, 0x1

    .line 1550
    .local v10, "wasntAdded":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v5

    .local v11, "j":I
    :goto_43
    if-ltz v11, :cond_54

    .line 1551
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_51

    .line 1552
    const/4 v10, 0x0

    .line 1553
    goto :goto_54

    .line 1550
    :cond_51
    add-int/lit8 v11, v11, -0x1

    goto :goto_43

    .line 1557
    .end local v11  # "j":I
    :cond_54
    :goto_54
    if-eqz v10, :cond_5f

    .line 1558
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1547
    .end local v10  # "wasntAdded":Z
    :cond_5f
    add-int/lit8 v6, v6, -0x1

    goto :goto_3b

    .line 1561
    .end local v6  # "a":I
    :cond_62
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1563
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .restart local v6  # "a":I
    :goto_6a
    if-ltz v6, :cond_13f

    .line 1564
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6d
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_139

    .line 1565
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    iget-boolean v11, v11, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    if-nez v11, :cond_133

    .line 1566
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1567
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    iput-boolean v5, v11, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1569
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    move/from16 v12, p2

    if-ne v11, v12, :cond_117

    .line 1570
    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-direct {v11, v13, v7}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;-><init>(II)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1571
    move v8, v7

    .line 1574
    :cond_117
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_135

    .line 1565
    :cond_133
    move/from16 v12, p2

    .line 1564
    :goto_135
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6d

    :cond_139
    move/from16 v12, p2

    .line 1563
    .end local v10  # "i":I
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_6a

    :cond_13f
    move/from16 v12, p2

    .line 1579
    .end local v6  # "a":I
    if-lez v8, :cond_148

    .line 1580
    add-int/lit8 v6, v8, 0x4

    if-ge v6, v7, :cond_148

    .line 1581
    goto :goto_14d

    .line 1543
    :cond_148
    move v6, v9

    goto/16 :goto_2d

    :cond_14b
    move/from16 v12, p2

    .line 1587
    :goto_14d
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .local v6, "j":I
    :goto_152
    if-ltz v6, :cond_16a

    .line 1588
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    const/4 v10, 0x0

    iput-boolean v10, v5, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1587
    add-int/lit8 v6, v6, -0x1

    goto :goto_152

    .line 1591
    .end local v6  # "j":I
    :cond_16a
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1592
    const/4 v2, 0x0

    .line 1594
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->clear()V

    .line 1595
    const/4 v1, 0x0

    .line 1597
    .end local p7  # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v1, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-object v0
.end method

.method public final getAllNeighboringProvincesInRange_Recruit(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 22
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I
    .param p3, "iRange"  # I
    .param p4, "onlyTrueOwner"  # Z
    .param p5, "dontBreakIfNotFoundRecentlyProvince"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;",
            ">;"
        }
    .end annotation

    .line 1391
    .local p6, "out":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;>;"
    .local p7, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    .local v3, "recentlyAdded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1395
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move v5, p1

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v6, 0x1

    iput-boolean v6, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1397
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1399
    .local v4, "currProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    move v8, v7

    move/from16 v7, p3

    .line 1401
    .end local p3  # "iRange":I
    .local v7, "iRange":I
    .local v8, "nIteration_Distance":I
    :goto_2c
    add-int/lit8 v9, v7, -0x1

    .end local v7  # "iRange":I
    .local v9, "iRange":I
    if-lez v7, :cond_181

    if-nez p5, :cond_38

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_181

    .line 1402
    :cond_38
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1403
    add-int/lit8 v8, v8, 0x1

    .line 1405
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .local v7, "a":I
    :goto_42
    if-ltz v7, :cond_69

    .line 1406
    const/4 v10, 0x1

    .line 1408
    .local v10, "wasntAdded":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v6

    .local v11, "j":I
    :goto_4a
    if-ltz v11, :cond_5b

    .line 1409
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_58

    .line 1410
    const/4 v10, 0x0

    .line 1411
    goto :goto_5b

    .line 1408
    :cond_58
    add-int/lit8 v11, v11, -0x1

    goto :goto_4a

    .line 1415
    .end local v11  # "j":I
    :cond_5b
    :goto_5b
    if-eqz v10, :cond_66

    .line 1416
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1405
    .end local v10  # "wasntAdded":Z
    :cond_66
    add-int/lit8 v7, v7, -0x1

    goto :goto_42

    .line 1419
    .end local v7  # "a":I
    :cond_69
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1421
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .restart local v7  # "a":I
    :goto_71
    if-ltz v7, :cond_17e

    .line 1422
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_74
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_17a

    .line 1423
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    iget-boolean v11, v11, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    if-nez v11, :cond_176

    .line 1424
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1425
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    iput-boolean v6, v11, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1427
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    if-ne v11, v0, :cond_176

    .line 1428
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v11

    if-nez v11, :cond_15b

    .line 1429
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isRAIP(I)I

    move-result v11

    if-gez v11, :cond_15b

    .line 1430
    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-direct {v11, v12, v8}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;-><init>(II)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1434
    :cond_15b
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1422
    :cond_176
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_74

    .line 1421
    .end local v10  # "i":I
    :cond_17a
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_71

    :cond_17e
    move v7, v9

    .end local v7  # "a":I
    goto/16 :goto_2c

    .line 1442
    :cond_181
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .local v7, "j":I
    :goto_186
    if-ltz v7, :cond_19e

    .line 1443
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v10, 0x0

    iput-boolean v10, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1442
    add-int/lit8 v7, v7, -0x1

    goto :goto_186

    .line 1446
    .end local v7  # "j":I
    :cond_19e
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1447
    const/4 v3, 0x0

    .line 1449
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->clear()V

    .line 1450
    const/4 v2, 0x0

    .line 1452
    .end local p7  # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v2, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-object v1
.end method

.method public final getAllNeighboringProvincesInRange_RecruitAtWAr(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 24
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I
    .param p3, "iRange"  # I
    .param p4, "onlyTrueOwner"  # Z
    .param p5, "dontBreakIfNotFoundRecentlyProvince"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;",
            ">;"
        }
    .end annotation

    .line 1312
    .local p6, "out":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;>;"
    .local p7, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .local v3, "recentlyAdded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v6, 0x1

    iput-boolean v6, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    .local v4, "currProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1321
    .local v7, "nIteration_Distance":I
    const/4 v8, -0x1

    move v9, v8

    move v8, v7

    move/from16 v7, p3

    .line 1323
    .end local p3  # "iRange":I
    .local v7, "iRange":I
    .local v8, "nIteration_Distance":I
    .local v9, "iFirstFoundRange":I
    :cond_2f
    if-lt v8, v7, :cond_37

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1da

    :cond_37
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1da

    .line 1324
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1325
    add-int/lit8 v8, v8, 0x1

    .line 1327
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    .local v10, "a":I
    :goto_47
    if-ltz v10, :cond_6e

    .line 1328
    const/4 v11, 0x1

    .line 1330
    .local v11, "wasntAdded":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    .local v12, "j":I
    :goto_4f
    if-ltz v12, :cond_60

    .line 1331
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-ne v13, v14, :cond_5d

    .line 1332
    const/4 v11, 0x0

    .line 1333
    goto :goto_60

    .line 1330
    :cond_5d
    add-int/lit8 v12, v12, -0x1

    goto :goto_4f

    .line 1337
    .end local v12  # "j":I
    :cond_60
    :goto_60
    if-eqz v11, :cond_6b

    .line 1338
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1327
    .end local v11  # "wasntAdded":Z
    :cond_6b
    add-int/lit8 v10, v10, -0x1

    goto :goto_47

    .line 1341
    .end local v10  # "a":I
    :cond_6e
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1343
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    .restart local v10  # "a":I
    :goto_76
    if-ltz v10, :cond_1d4

    .line 1344
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_79
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v12

    if-ge v11, v12, :cond_1d0

    .line 1345
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iget-boolean v12, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    if-nez v12, :cond_1cc

    .line 1346
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iput-boolean v6, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1349
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    invoke-virtual {v12, v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->isAlly(II)Z

    move-result v12

    if-nez v12, :cond_130

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    invoke-virtual {v12, v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getMilitaryAccess(II)I

    move-result v12

    if-lez v12, :cond_1cc

    .line 1350
    :cond_130
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v12

    if-nez v12, :cond_1b1

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    if-ne v0, v12, :cond_1b1

    .line 1351
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isRAIP(I)I

    move-result v12

    if-gez v12, :cond_1b1

    .line 1352
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-direct {v12, v13, v8}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;-><init>(II)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    if-gez v9, :cond_1b1

    .line 1355
    move v9, v8

    .line 1356
    add-int/lit8 v7, v7, 0x4

    .line 1362
    :cond_1b1
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    :cond_1cc
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_79

    .line 1343
    .end local v11  # "i":I
    :cond_1d0
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_76

    .line 1368
    .end local v10  # "a":I
    :cond_1d4
    if-lez v9, :cond_2f

    .line 1369
    add-int/lit8 v10, v9, 0x8

    if-ge v10, v8, :cond_2f

    .line 1376
    :cond_1da
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    .local v10, "j":I
    :goto_1df
    if-ltz v10, :cond_1f7

    .line 1377
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v11, 0x0

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 1376
    add-int/lit8 v10, v10, -0x1

    goto :goto_1df

    .line 1380
    .end local v10  # "j":I
    :cond_1f7
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1381
    const/4 v3, 0x0

    .line 1383
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->clear()V

    .line 1384
    const/4 v2, 0x0

    .line 1386
    .end local p7  # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v2, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-object v1
.end method

.method public final getAllNeighboringProvincesInRange_Regroup_ForNavalInvasion(IIILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 22
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I
    .param p3, "iRange"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;",
            ">;"
        }
    .end annotation

    .line 2153
    .local p4, "out":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;>;"
    .local p5, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2154
    .local v3, "recentlyAdded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2156
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2157
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v6, 0x1

    iput-boolean v6, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 2159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2161
    .local v4, "currProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 2162
    .local v7, "nIteration_Distance":I
    const/4 v8, -0x1

    .line 2164
    .local v8, "iFirstFoundRange":I
    :cond_2b
    move/from16 v9, p3

    if-lt v7, v9, :cond_35

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_170

    :cond_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_170

    .line 2165
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2166
    add-int/lit8 v7, v7, 0x1

    .line 2168
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    .local v10, "a":I
    :goto_45
    if-ltz v10, :cond_6c

    .line 2169
    const/4 v11, 0x1

    .line 2171
    .local v11, "wasntAdded":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    .local v12, "j":I
    :goto_4d
    if-ltz v12, :cond_5e

    .line 2172
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-ne v13, v14, :cond_5b

    .line 2173
    const/4 v11, 0x0

    .line 2174
    goto :goto_5e

    .line 2171
    :cond_5b
    add-int/lit8 v12, v12, -0x1

    goto :goto_4d

    .line 2178
    .end local v12  # "j":I
    :cond_5e
    :goto_5e
    if-eqz v11, :cond_69

    .line 2179
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2168
    .end local v11  # "wasntAdded":Z
    :cond_69
    add-int/lit8 v10, v10, -0x1

    goto :goto_45

    .line 2182
    .end local v10  # "a":I
    :cond_6c
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2184
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    .restart local v10  # "a":I
    :goto_74
    if-ltz v10, :cond_16a

    .line 2185
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_77
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v12

    if-ge v11, v12, :cond_166

    .line 2186
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iget-boolean v12, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    if-nez v12, :cond_162

    .line 2187
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2188
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iput-boolean v6, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 2190
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    invoke-virtual {v12, v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->isAlly(II)Z

    move-result v12

    if-eqz v12, :cond_162

    .line 2192
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v12

    if-lez v12, :cond_147

    .line 2193
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v13

    invoke-direct {v12, v13, v7}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;-><init>(II)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2195
    if-gez v8, :cond_147

    .line 2196
    move v8, v7

    .line 2199
    :cond_147
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2185
    :cond_162
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_77

    .line 2184
    .end local v11  # "i":I
    :cond_166
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_74

    .line 2205
    .end local v10  # "a":I
    :cond_16a
    if-lez v8, :cond_2b

    .line 2206
    add-int/lit8 v10, v8, 0x2

    if-ge v10, v7, :cond_2b

    .line 2213
    :cond_170
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    .local v10, "j":I
    :goto_175
    if-ltz v10, :cond_18d

    .line 2214
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v11, 0x0

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 2213
    add-int/lit8 v10, v10, -0x1

    goto :goto_175

    .line 2217
    .end local v10  # "j":I
    :cond_18d
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2218
    const/4 v3, 0x0

    .line 2220
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->clear()V

    .line 2221
    const/4 v2, 0x0

    .line 2223
    .end local p5  # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v2, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-object v1
.end method

.method public final getLoadingTurnActionsOfCivID()I
    .registers 2

    .line 1603
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iLoadingTurnActionsOfCivID:I

    return v0
.end method

.method public final prepareForWar_BordersWithEnemy(II)Z
    .registers 8
    .param p1, "nCivID"  # I
    .param p2, "nProvinceID"  # I

    .line 2228
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    .line 2230
    .local v0, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2231
    const/4 v1, 0x0

    .local v1, "z":I
    :goto_d
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 2232
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2233
    const/4 v2, 0x1

    return v2

    .line 2231
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2238
    .end local v1  # "z":I
    :cond_2e
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->prepareForWar_BordersWithEnemy_Just(II)Z

    move-result v1

    return v1
.end method

.method public final prepareForWar_BordersWithEnemy_Just(II)Z
    .registers 8
    .param p1, "nCivID"  # I
    .param p2, "nProvinceID"  # I

    .line 2242
    const/4 v0, 0x0

    .local v0, "u":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPrepsSize:I

    if-ge v0, v1, :cond_48

    .line 2243
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 2245
    .local v1, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_16
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 2246
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->onCivID:I

    if-ne v3, v4, :cond_42

    .line 2247
    const/4 v3, 0x1

    return v3

    .line 2245
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2242
    .end local v1  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    .end local v2  # "k":I
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2252
    .end local v0  # "u":I
    :cond_48
    const/4 v0, 0x0

    return v0
.end method

.method public final rebuildPersonality()V
    .registers 4

    .line 459
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->UPDATE_REBUILD_PERSONALITY_BASE:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->UPDATE_REBUILD_PERSONALITY_RANDOM:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->REBUILD_PERSONALITYX:I

    .line 460
    return-void
.end method

.method public final resetNeutralProvsWithSeaAccess()V
    .registers 2

    .line 440
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->lNeutralProvincesWithSeaAccess:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iNeutralProvincesWithSeaAccessSize:I

    .line 442
    return-void
.end method

.method public final resetWastelandProvsWithSeaAccess()V
    .registers 2

    .line 449
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->lWastelandProvincesWithSeaAccess:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 450
    return-void
.end method

.method public final setLoadingTurnActionsOfCivID(I)V
    .registers 2
    .param p1, "iLoadingTurnActionsOfCivID"  # I

    .line 1607
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iLoadingTurnActionsOfCivID:I

    .line 1608
    return-void
.end method

.method public final turnOrders()V
    .registers 7

    .line 394
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 397
    .local v0, "time":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_5
    :try_start_5
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_a2

    if-ge v2, v3, :cond_44

    .line 399
    :try_start_d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 400
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-lez v3, :cond_3c

    .line 401
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iLoadingTurnActionsOfCivID:I

    .line 403
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->turnOrders(I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3c} :catch_3d

    .line 408
    :cond_3c
    goto :goto_41

    .line 406
    :catch_3d
    move-exception v3

    .line 407
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3e
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 397
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 411
    .end local v2  # "i":I
    :cond_44
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v2, :cond_a1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MOVE_AND_RECRUIT_ARMY_AT_WAR_BY_AI:Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_a2

    if-eqz v2, :cond_a1

    .line 413
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_4d
    :try_start_4d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v3
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_53} :catch_9d

    if-ge v2, v3, :cond_9c

    .line 415
    :try_start_55
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarC()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 416
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->moveAtWar(I)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_94} :catch_95

    .line 420
    :cond_94
    goto :goto_99

    .line 418
    :catch_95
    move-exception v3

    .line 419
    .local v3, "exr":Ljava/lang/Exception;
    :try_start_96
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9d

    .line 413
    .end local v3  # "exr":Ljava/lang/Exception;
    :goto_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 424
    .end local v2  # "i":I
    :cond_9c
    goto :goto_a1

    .line 422
    :catch_9d
    move-exception v2

    .line 423
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_9e
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_a2

    .line 430
    .end local v2  # "ex":Ljava/lang/Exception;
    :cond_a1
    :goto_a1
    goto :goto_a6

    .line 428
    :catch_a2
    move-exception v2

    .line 429
    .restart local v2  # "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 431
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_a6
    return-void
.end method

.method public final turnOrders_0()V
    .registers 4

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->doneLoadingOrders:Z

    .line 99
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->buildWonders()V

    .line 100
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->buildNukes()V

    .line 104
    :try_start_9
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->REBUILD_PERSONALITYX:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_10
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_6e

    .line 105
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 106
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->REBUILD_AI_PERSONALITY_CHANCE:I

    if-le v1, v2, :cond_6a

    .line 107
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality()V

    .line 109
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v2

    if-eq v1, v2, :cond_6a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 110
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Vassal/Menu_InGame_Tribute;->updateVassalsSpendings(I)V

    .line 104
    :cond_6a
    sget v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->REBUILD_PERSONALITYX:I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6c} :catch_6f

    add-int/2addr v0, v1

    goto :goto_10

    .line 117
    .end local v0  # "i":I
    :cond_6e
    goto :goto_73

    .line 115
    :catch_6f
    move-exception v0

    .line 116
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 120
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_73
    :try_start_73
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->checkWarsLookingForPeace()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77

    .line 123
    goto :goto_7b

    .line 121
    :catch_77
    move-exception v0

    .line 122
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 124
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_7b
    return-void
.end method

.method public final turnOrders_1()V
    .registers 9

    .line 127
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 130
    .local v0, "time":J
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SAVED_GAME_LOADED_2:Z

    if-eqz v2, :cond_21

    .line 131
    const/4 v2, 0x0

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SAVED_GAME_LOADED_2:Z

    .line 133
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 134
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v2, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->nextBuildCivsInRange_TurnID:I

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 138
    .end local v3  # "i":I
    :cond_21
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->diplomacyActions_RivalCiv_Update()V

    .line 141
    :try_start_24
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->sendUltimatumToPlayer()V

    .line 142
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiBecomesAVassal()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_2b

    .line 145
    goto :goto_2f

    .line 143
    :catch_2b
    move-exception v2

    .line 144
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 148
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_2f
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_30
    :try_start_30
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_36} :catch_86

    if-ge v2, v3, :cond_85

    .line 150
    :try_start_38
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v3

    if-nez v3, :cond_7d

    .line 151
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-lez v3, :cond_68

    .line 152
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iLoadingTurnActionsOfCivID:I

    .line 153
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->turnOrdersEssential(I)V

    goto :goto_7d

    .line 158
    :cond_68
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->respondToMessages(I)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_7d} :catch_7e

    .line 163
    :cond_7d
    :goto_7d
    goto :goto_82

    .line 161
    :catch_7e
    move-exception v3

    .line 162
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_7f
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_86

    .line 148
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 167
    .end local v2  # "i":I
    :cond_85
    goto :goto_8a

    .line 165
    :catch_86
    move-exception v2

    .line 166
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 171
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_8a
    :try_start_8a
    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiBudget:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;->EXTRA_RESEARCH_EVERY_X_TURN:I

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_93
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_112

    .line 172
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-lez v3, :cond_10c

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v3

    if-nez v3, :cond_10c

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarC()Z

    move-result v3

    if-nez v3, :cond_10c

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->isPreparingForTheWar()Z

    move-result v3

    if-nez v3, :cond_10c

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiBudget:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;->EXTRA_RESEARCH_MIN_GOLD:I

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_10c

    .line 173
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingResearchB()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiBudget:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;->EXTRA_RESEARCH_MIN:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiBudget:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;->EXTRA_RESEARCH_RAND_100:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000  # 100.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingResearchB(F)V

    .line 171
    :cond_10c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiBudget:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;->EXTRA_RESEARCH_EVERY_X_TURN:I
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_110} :catch_113

    add-int/2addr v2, v3

    goto :goto_93

    .line 178
    .end local v2  # "i":I
    :cond_112
    goto :goto_117

    .line 176
    :catch_113
    move-exception v2

    .line 177
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 366
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 367
    return-void
.end method

.method public final turnOrders_2()V
    .registers 6

    .line 370
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 373
    .local v0, "time":J
    :try_start_4
    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->AI_TURN_ESSENTIALS_2:I

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_50

    if-ge v2, v3, :cond_4f

    .line 375
    :try_start_15
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v3

    if-nez v3, :cond_44

    .line 376
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-lez v3, :cond_44

    .line 377
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->iLoadingTurnActionsOfCivID:I

    .line 378
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->turnOrdersEssential_2(I)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_44} :catch_45

    .line 383
    :cond_44
    goto :goto_49

    .line 381
    :catch_45
    move-exception v3

    .line 382
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_46
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 373
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_49
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->AI_TURN_ESSENTIALS_2:I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_50

    add-int/2addr v2, v3

    goto :goto_d

    .line 387
    .end local v2  # "i":I
    :cond_4f
    goto :goto_54

    .line 385
    :catch_50
    move-exception v2

    .line 386
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 390
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 391
    return-void
.end method

.method public final turnOrders_End()V
    .registers 5

    .line 634
    const/4 v0, 0x1

    :try_start_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiVassals:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->UPDATE_VASSALS_TRIBUTE:I

    rem-int/2addr v1, v2

    .local v1, "i":I
    :goto_8
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 635
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v2

    if-nez v2, :cond_31

    .line 636
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->manageVassalsTribute(I)V

    .line 634
    :cond_31
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiVassals:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Vassals;->UPDATE_VASSALS_TRIBUTE:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_3a
    .catchall {:try_start_1 .. :try_end_35} :catchall_38

    add-int/2addr v1, v2

    goto :goto_8

    .end local v1  # "i":I
    :cond_37
    goto :goto_3e

    .line 642
    :catchall_38
    move-exception v1

    goto :goto_42

    .line 639
    :catch_3a
    move-exception v1

    .line 640
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3b
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    .line 642
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_3e
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->doneLoadingOrders:Z

    .line 643
    nop

    .line 644
    return-void

    .line 642
    :goto_42
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->doneLoadingOrders:Z

    .line 643
    goto :goto_46

    :goto_45
    throw v1

    :goto_46
    goto :goto_45
.end method

.method public final turnOrders_InvestForeign()V
    .registers 4

    .line 621
    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiInvest:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->UPDATE_FOREIGN_INVEST:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 622
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-nez v1, :cond_30

    .line 623
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->aiPlaystyles:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->investForeign(I)V

    .line 621
    :cond_30
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiInvest:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->UPDATE_FOREIGN_INVEST:I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_37

    add-int/2addr v0, v1

    goto :goto_7

    .line 628
    .end local v0  # "i":I
    :cond_36
    goto :goto_3b

    .line 626
    :catch_37
    move-exception v0

    .line 627
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 629
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_3b
    return-void
.end method

.method public final updateExpand()V
    .registers 2

    .line 1615
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    if-nez v0, :cond_c

    .line 1616
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI/AI;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->expandNeutral:Lage/of/civilizations2/jakowski/lukasz/AI/AI$Expand;

    goto :goto_13

    .line 1624
    :cond_c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI/AI;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->expandNeutral:Lage/of/civilizations2/jakowski/lukasz/AI/AI$Expand;

    .line 1631
    :goto_13
    return-void
.end method

.method public final updateMinRivals()V
    .registers 5

    .line 652
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiRivals:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->RIVALS_LIMIT:I

    int-to-double v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->MIN_NUM_OF_RIVALS:I

    .line 653
    return-void
.end method
