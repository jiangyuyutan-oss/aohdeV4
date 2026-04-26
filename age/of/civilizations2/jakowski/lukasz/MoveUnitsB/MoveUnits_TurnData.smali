.class public Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;
.super Ljava/lang/Object;
.source "MoveUnits_TurnData.java"


# instance fields
.field private iMoveUnitsSize:I

.field private lCivID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lMoveUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "iCivID"  # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->lCivID:Ljava/util/List;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->iMoveUnitsSize:I

    .line 20
    return-void
.end method


# virtual methods
.method public final addMoveUnits(Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;I)V
    .registers 5
    .param p1, "nMoveUnits"  # Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;
    .param p2, "nCivID"  # I

    .line 29
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getMoveUnits_Line()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    move-result-object v0

    if-nez v0, :cond_9

    .line 30
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->buildMoveUnitsLine()V

    .line 33
    :cond_9
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->lCivID:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->iMoveUnitsSize:I

    .line 36
    return-void
.end method

.method public final getCivID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 53
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->lCivID:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;
    .registers 3
    .param p1, "i"  # I

    .line 39
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    return-object v0
.end method

.method public final getMoveUnitsSize()I
    .registers 2

    .line 25
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->iMoveUnitsSize:I

    return v0
.end method

.method public final getMoveUnits_TotalNumOfUnits()I
    .registers 4

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->iMoveUnitsSize:I

    if-ge v1, v2, :cond_16

    .line 46
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getNumberOfUnits()I

    move-result v2

    add-int/2addr v0, v2

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 49
    .end local v1  # "i":I
    :cond_16
    return v0
.end method

.method public final isPlayerMoving()Z
    .registers 4

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->iMoveUnitsSize:I

    if-ge v0, v1, :cond_22

    .line 58
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->lCivID:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 59
    const/4 v1, 0x1

    return v1

    .line 57
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    .end local v0  # "i":I
    :cond_22
    const/4 v0, 0x0

    return v0
.end method
