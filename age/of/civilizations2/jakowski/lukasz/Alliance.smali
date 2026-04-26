.class public Lage/of/civilizations2/jakowski/lukasz/Alliance;
.super Ljava/lang/Object;
.source "Alliance.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private allianceColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field private iCivilizationsSize:I

.field private iFormationTurnID:I

.field private lCivilizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sAllianceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "sAllianceName"  # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iFormationTurnID:I

    .line 30
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->sAllianceName:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    .line 35
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRandomColorGameData()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->allianceColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 36
    return-void
.end method


# virtual methods
.method public final addCivilization(I)V
    .registers 8
    .param p1, "nCivID"  # I

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    if-ge v0, v1, :cond_17

    .line 42
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 43
    return-void

    .line 41
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    .end local v0  # "i":I
    :cond_17
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    .line 50
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_29
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_82

    .line 51
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v3

    const/high16 v4, 0x42820000  # 65.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivRelationOfCivB(IIF)V

    .line 52
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, p1, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivRelationOfCivB(IIF)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 54
    .end local v0  # "i":I
    :cond_82
    return-void
.end method

.method public final countEconomy()J
    .registers 6

    .line 171
    const-wide/16 v0, 0x0

    .line 173
    .local v0, "out":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 174
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countEco()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 177
    .end local v2  # "i":I
    :cond_1b
    return-wide v0
.end method

.method public final countPopulation()J
    .registers 6

    .line 161
    const-wide/16 v0, 0x0

    .line 163
    .local v0, "out":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 164
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPop()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 167
    .end local v2  # "i":I
    :cond_1b
    return-wide v0
.end method

.method public final countProvinces()I
    .registers 5

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 154
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    add-int/2addr v0, v2

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 157
    .end local v1  # "i":I
    :cond_1a
    return v0
.end method

.method public final getAllianceName()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->sAllianceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCivilization(I)I
    .registers 4
    .param p1, "iID"  # I

    .line 124
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 125
    :catch_d
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public final getCivilizationsSize()I
    .registers 2

    .line 131
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    return v0
.end method

.method public final getColorOfAlliance()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
    .registers 2

    .line 135
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->allianceColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-object v0
.end method

.method public final getFormationTurnID()I
    .registers 2

    .line 143
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iFormationTurnID:I

    return v0
.end method

.method public final moveDown(I)V
    .registers 6
    .param p1, "iID"  # I

    .line 96
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    .local v0, "tempCivID":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public final moveUp(I)V
    .registers 6
    .param p1, "iID"  # I

    .line 85
    if-nez p1, :cond_3

    .line 86
    return-void

    .line 89
    :cond_3
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    .local v0, "tempCivID":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public final removeCivilization(I)V
    .registers 7
    .param p1, "nCivID"  # I

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    if-ge v0, v1, :cond_7b

    .line 58
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_78

    .line 59
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    .line 62
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_21
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    if-ge v1, v2, :cond_77

    .line 63
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_52

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_74

    .line 64
    :cond_52
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivRelationOfCivB(IIF)V

    .line 65
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, p1, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivRelationOfCivB(IIF)V

    .line 62
    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 68
    .end local v1  # "a":I
    :cond_77
    return-void

    .line 57
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .end local v0  # "i":I
    :cond_7b
    return-void
.end method

.method public final setAllianceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sAllianceName"  # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->sAllianceName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public final setColorOfAlliance(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .registers 2
    .param p1, "allianceColor"  # Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 139
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->allianceColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 140
    return-void
.end method

.method public final setFormationTurnID(I)V
    .registers 2
    .param p1, "iFormationTurnID"  # I

    .line 147
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iFormationTurnID:I

    .line 148
    return-void
.end method

.method public final updateCivilizationID(II)V
    .registers 5
    .param p1, "i"  # I
    .param p2, "nNewCivID"  # I

    .line 76
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 81
    goto :goto_12

    .line 77
    :catch_a
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v1, :cond_12

    .line 79
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 82
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_12
    :goto_12
    return-void
.end method

.method public final updateCivsIDs_AfterRemoveCiv(I)V
    .registers 5
    .param p1, "nRemovedCivID"  # I

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 106
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v1

    if-le v1, p1, :cond_22

    .line 107
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0  # "i":I
    :cond_25
    return-void
.end method
