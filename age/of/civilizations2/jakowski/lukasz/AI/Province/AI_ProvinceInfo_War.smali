.class public Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;
.super Ljava/lang/Object;
.source "AI_ProvinceInfo_War.java"


# instance fields
.field public iProvinceID:I

.field public iValue:F

.field public lProvinces_Enemy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public ownFrontProvince:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 5
    .param p1, "iProvinceID"  # I
    .param p2, "iValue"  # I
    .param p3, "ownFrontProvince"  # Z

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->ownFrontProvince:Z

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->lProvinces_Enemy:Ljava/util/List;

    .line 21
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->iProvinceID:I

    .line 22
    int-to-float v0, p2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->iValue:F

    .line 23
    iput-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->ownFrontProvince:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final buildEnemyProvinces(I)V
    .registers 7
    .param p1, "nCivID"  # I

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 30
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 31
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->lProvinces_Enemy:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    .end local v0  # "i":I
    :cond_45
    return-void
.end method

.method public final enemyProvinceBordersWithOurTrueProvince(I)Z
    .registers 7
    .param p1, "nCivID"  # I

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->lProvinces_Enemy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 38
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_a
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->lProvinces_Enemy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 39
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->lProvinces_Enemy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    if-ne v2, p1, :cond_46

    .line 40
    const/4 v2, 0x1

    return v2

    .line 38
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 37
    .end local v1  # "j":I
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    .end local v0  # "i":I
    :cond_4c
    const/4 v0, 0x0

    return v0
.end method

.method public final getArmy(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 53
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->iProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v0

    return v0
.end method

.method public final getRecruitableArmy(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->iProvinceID:I

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->gMARY(II)I

    move-result v0

    return v0
.end method

.method public final isOccupied()Z
    .registers 3

    .line 49
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo_War;->iProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    return v0
.end method
