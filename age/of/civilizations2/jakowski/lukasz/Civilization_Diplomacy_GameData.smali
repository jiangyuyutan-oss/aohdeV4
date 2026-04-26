.class public Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;
.super Ljava/lang/Object;
.source "Civilization_Diplomacy_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iEmbassyClosedSize:I

.field public lEmbassyClosed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;",
            ">;"
        }
    .end annotation
.end field

.field public lImproveRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    .line 30
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    return-void
.end method


# virtual methods
.method public final addEmbassyClosed(Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;)V
    .registers 6
    .param p1, "nData"  # Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    if-ge v0, v1, :cond_31

    .line 130
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iCivID:I

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iCivID:I

    if-ne v1, v2, :cond_2e

    .line 131
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    .line 132
    return-void

    .line 129
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    .end local v0  # "i":I
    :cond_31
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    .line 138
    return-void
.end method

.method public final addImproveRelations(III)V
    .registers 8
    .param p1, "iCivID"  # I
    .param p2, "iWithCivID"  # I
    .param p3, "iNumOfTurns"  # I

    .line 59
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->getIsEmbassyClosed(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 60
    return-void

    .line 63
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 64
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    if-ne v1, p2, :cond_31

    .line 65
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    iput p3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iNumOfTurns:I

    .line 66
    return-void

    .line 63
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 70
    .end local v0  # "i":I
    :cond_34
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelationImprove:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->COST_OFFER_IMPROVE_RELATIONS_DIPLOMACY_POINTS:I

    if-lt v0, v1, :cond_a5

    .line 71
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelationImprove:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->COST_OFFER_IMPROVE_RELATIONS_DIPLOMACY_POINTS:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiploPoints(I)V

    .line 72
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    invoke-direct {v1, p2, p3, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 75
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCapitalOrProvince(I)I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCapitalOrProvince(I)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addDiplomacyLines(IILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_a5

    .line 77
    :cond_86
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 78
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCapitalOrProvince(I)I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCapitalOrProvince(I)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addDiplomacyLines(IILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 81
    :cond_a5
    :goto_a5
    return-void
.end method

.method public final clearEmbassyClosed()V
    .registers 2

    .line 141
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    .line 143
    return-void
.end method

.method public final getEmbassyClosed(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;
    .registers 3
    .param p1, "i"  # I

    .line 189
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    return-object v0
.end method

.method public getEmbassyClosedSize()I
    .registers 2

    .line 185
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    return v0
.end method

.method public final getImproveRelation(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;
    .registers 3
    .param p1, "i"  # I

    .line 100
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    return-object v0
.end method

.method public final getImproveRelationsSize()I
    .registers 2

    .line 96
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getIsEmbassyClosed(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    if-ge v0, v1, :cond_16

    .line 166
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iCivID:I

    if-ne v1, p1, :cond_13

    .line 167
    const/4 v1, 0x1

    return v1

    .line 165
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    .end local v0  # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final getIsImprovingRelations(I)Z
    .registers 4
    .param p1, "iWithCivID"  # I

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 37
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    if-ne v1, p1, :cond_17

    .line 38
    const/4 v1, 0x1

    return v1

    .line 36
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    .end local v0  # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final getIsImprovingRelationsTurns(I)I
    .registers 4
    .param p1, "iWithCivID"  # I

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 48
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    if-ne v1, p1, :cond_20

    .line 49
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iNumOfTurns:I

    return v1

    .line 47
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    .end local v0  # "i":I
    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method public final isEmbassyClosed_Turns(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    if-ge v0, v1, :cond_1f

    .line 176
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iCivID:I

    if-ne v1, p1, :cond_1c

    .line 177
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    return v1

    .line 175
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    .end local v0  # "i":I
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public final removeEmbassyClosedWithCivID(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    if-ge v0, v1, :cond_22

    .line 156
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iCivID:I

    if-ne v1, p1, :cond_1f

    .line 157
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    .line 159
    return-void

    .line 155
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    .end local v0  # "i":I
    :cond_22
    return-void
.end method

.method public final removeImproveRelations(II)V
    .registers 6
    .param p1, "iCivID"  # I
    .param p2, "i"  # I

    .line 105
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelationImprove:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->COST_OFFER_IMPROVE_RELATIONS_DIPLOMACY_POINTS:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiploPoints(I)V

    .line 106
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 109
    goto :goto_1f

    .line 107
    :catch_1e
    move-exception v0

    .line 110
    :goto_1f
    return-void
.end method

.method public final removeImproveRelations_WithCivID(II)V
    .registers 7
    .param p1, "iCivID"  # I
    .param p2, "withCivID"  # I

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 115
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    if-ne v1, p2, :cond_33

    .line 116
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelationImprove:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->COST_OFFER_IMPROVE_RELATIONS_DIPLOMACY_POINTS:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiploPoints(I)V

    .line 117
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_37

    .line 118
    return-void

    .line 114
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    .end local v0  # "i":I
    :cond_36
    goto :goto_38

    .line 121
    :catch_37
    move-exception v0

    .line 124
    :goto_38
    return-void
.end method

.method public final runImproveRelations(I)V
    .registers 6
    .param p1, "iCivID"  # I

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 85
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->action(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 86
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 87
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Relations/Message_Relations_Increase_Ended;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Messages/Relations/Message_Relations_Increase_Ended;-><init>(I)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 90
    :cond_41
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    .line 84
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    .end local v0  # "i":I
    :cond_4c
    return-void
.end method

.method public final updateEmbassyClosed()V
    .registers 4

    .line 146
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_26

    .line 147
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    if-gtz v2, :cond_23

    .line 148
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmbassyClosed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    .line 146
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 152
    .end local v0  # "i":I
    :cond_26
    return-void
.end method
