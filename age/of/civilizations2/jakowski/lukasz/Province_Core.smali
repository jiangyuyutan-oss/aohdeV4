.class public Lage/of/civilizations2/jakowski/lukasz/Province_Core;
.super Ljava/lang/Object;
.source "Province_Core.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iCivsSize:I

.field private iOwnership_CivsSize:I

.field private lCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lOwnership_Civs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lOwnership_NumberOfTurns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lSinceTurnID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    .line 31
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lSinceTurnID:Ljava/util/List;

    .line 38
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    .line 42
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    .line 43
    return-void
.end method

.method private final getIsLargestGroup(II)Z
    .registers 6
    .param p1, "nCivID"  # I
    .param p2, "nProvinceID"  # I

    .line 156
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v0

    .line 158
    .local v0, "tempPop":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNatsSize()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 159
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v2

    if-le v2, v0, :cond_31

    .line 160
    const/4 v2, 0x0

    return v2

    .line 158
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 164
    .end local v1  # "i":I
    :cond_34
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public final addNewCore(II)V
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "nTurnID"  # I

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    if-ge v0, v1, :cond_17

    .line 49
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 50
    return-void

    .line 48
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    .end local v0  # "i":I
    :cond_17
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lSinceTurnID:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    .line 57
    return-void
.end method

.method public final clearData()V
    .registers 3

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lSinceTurnID:Ljava/util/List;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    .line 104
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    .line 105
    return-void
.end method

.method public final getCivID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 170
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getCivsSize()I
    .registers 2

    .line 182
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    return v0
.end method

.method public final getHaveACore(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 109
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v1

    if-ne p1, v1, :cond_f

    .line 110
    const/4 v1, 0x1

    return v1

    .line 108
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    .end local v0  # "i":I
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final getHaveOwnership(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_CivsSize()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 128
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_CivID(I)I

    move-result v1

    if-ne p1, v1, :cond_f

    .line 129
    const/4 v1, 0x1

    return v1

    .line 127
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    .end local v0  # "i":I
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final getNumOfOwnership(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_CivsSize()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 147
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_CivID(I)I

    move-result v1

    if-ne p1, v1, :cond_12

    .line 148
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_NumOfTurns(I)I

    move-result v1

    return v1

    .line 146
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    .end local v0  # "i":I
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public final getNumOfTurnsOwnershipToGetACore()I
    .registers 4

    .line 119
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    if-nez v0, :cond_9

    .line 120
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCore:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Core;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Core;->NUMBER_OF_TURNS_REQUIRED_TO_GAIN_CORE_WITHOUT_ANY_CORE:I

    return v0

    .line 122
    :cond_9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCore:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Core;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Core;->NUMBER_OF_TURNS_REQUIRED_TO_GAIN_CORE:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCore:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Core;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Core;->NUMBER_OF_TURNS_REQUIRED_TO_GAIN_CORE_EXTRA_PER_CORE:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final getOwnership_CivID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 186
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getOwnership_CivsSize()I
    .registers 2

    .line 194
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    return v0
.end method

.method public final getOwnership_NumOfTurns(I)I
    .registers 3
    .param p1, "i"  # I

    .line 190
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSinceTurnID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 178
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lSinceTurnID:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final increaseOwnership(II)V
    .registers 7
    .param p1, "nCivID"  # I
    .param p2, "nProvinceID"  # I

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_43

    .line 81
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_40

    .line 82
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getNumOfTurnsOwnershipToGetACore()I

    move-result v2

    if-ne v1, v2, :cond_3f

    .line 85
    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    invoke-virtual {p0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V

    .line 88
    :cond_3f
    return-void

    .line 80
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    .end local v0  # "i":I
    :cond_43
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    .line 95
    return-void
.end method

.method public final removeCore(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    if-ge v0, v1, :cond_29

    .line 61
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_26

    .line 62
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lSinceTurnID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    .line 65
    goto :goto_29

    .line 60
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    .end local v0  # "i":I
    :cond_29
    :goto_29
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_2a
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    if-ge v0, v1, :cond_52

    .line 70
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_4f

    .line 71
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    .line 74
    goto :goto_52

    .line 69
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 77
    .end local v0  # "i":I
    :cond_52
    :goto_52
    return-void
.end method

.method public final resetOwnership(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_CivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 138
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_CivID(I)I

    move-result v1

    if-ne p1, v1, :cond_18

    .line 139
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void

    .line 137
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    .end local v0  # "i":I
    :cond_1b
    return-void
.end method

.method public final setCivID_Editor(II)V
    .registers 5
    .param p1, "i"  # I
    .param p2, "nCivID"  # I

    .line 174
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method
