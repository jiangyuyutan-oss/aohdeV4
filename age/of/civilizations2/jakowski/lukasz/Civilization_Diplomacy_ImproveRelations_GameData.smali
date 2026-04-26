.class public Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;
.super Ljava/lang/Object;
.source "Civilization_Diplomacy_ImproveRelations_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iNumOfTurns:I

.field public iWithCivID:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "iWithCivID"  # I
    .param p2, "iNumOfTurns"  # I
    .param p3, "byCivID"  # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    .line 18
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iNumOfTurns:I

    .line 21
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    .line 22
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iNumOfTurns:I

    .line 24
    invoke-static {p1, p3}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->improveRelationAddMessage(II)V

    .line 25
    return-void
.end method


# virtual methods
.method public final action(I)Z
    .registers 6
    .param p1, "iCivA"  # I

    .line 28
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->improveRelation(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iNumOfTurns:I

    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iNumOfTurns:I

    if-gtz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :cond_12
    :goto_12
    move v0, v1

    .line 30
    .local v0, "out":Z
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelationImprove:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->COST_OFFER_IMPROVE_RELATIONS_DIPLOMACY_POINTS:I

    if-lt v1, v2, :cond_3b

    .line 31
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

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiploPoints(I)V

    .line 34
    :cond_3b
    return v0
.end method
