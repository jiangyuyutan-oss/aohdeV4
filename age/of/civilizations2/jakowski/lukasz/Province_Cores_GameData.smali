.class public Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;
.super Ljava/lang/Object;
.source "Province_Cores_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addCore(II)V
    .registers 4
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I

    .line 26
    const/16 v0, 0x64

    invoke-virtual {p0, p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->addCore(III)V

    .line 27
    return-void
.end method

.method public final addCore(III)V
    .registers 7
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I
    .param p3, "nPerc"  # I

    .line 30
    if-nez p2, :cond_3

    .line 31
    return-void

    .line 34
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_a
    if-ge v0, v1, :cond_27

    .line 35
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    if-ne v2, p1, :cond_24

    .line 36
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    invoke-virtual {v2, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->addCore(II)V

    .line 37
    return-void

    .line 34
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 41
    .end local v0  # "i":I
    .end local v1  # "iSize":I
    :cond_27
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    const/16 v2, 0x64

    invoke-direct {v1, p1, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public final clearCoresData(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 97
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    if-ne v1, p1, :cond_1b

    .line 98
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    return-void

    .line 96
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v0  # "i":I
    :cond_1e
    return-void
.end method

.method public final clearUselessData()V
    .registers 4

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 106
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_22

    .line 107
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    .line 105
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0  # "i":I
    :cond_25
    return-void
.end method

.method public final getPercOfPop(II)F
    .registers 6
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_7
    if-ge v0, v1, :cond_25

    .line 87
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    if-ne v2, p1, :cond_22

    .line 88
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->getPercOfPop(I)F

    move-result v2

    return v2

    .line 86
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 92
    .end local v0  # "i":I
    .end local v1  # "iSize":I
    :cond_25
    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public final getProvincesSize()I
    .registers 2

    .line 22
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final removeCore(II)V
    .registers 6
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_7
    if-ge v0, v1, :cond_24

    .line 46
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    if-ne v2, p1, :cond_21

    .line 47
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->removeCore(I)V

    .line 48
    return-void

    .line 45
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 51
    .end local v0  # "i":I
    .end local v1  # "iSize":I
    :cond_24
    return-void
.end method

.method public final updateAfterRemove(I)V
    .registers 6
    .param p1, "nRemovedCivID"  # I

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 72
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_29

    .line 73
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    .end local v0  # "i":I
    .local v3, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v3

    goto :goto_4c

    .line 76
    .end local v3  # "i":I
    .restart local v0  # "i":I
    :cond_29
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->updateAfterRemove(I)V

    .line 78
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_4c

    .line 79
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    .end local v0  # "i":I
    .restart local v3  # "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v3

    .line 71
    .end local v3  # "i":I
    .restart local v0  # "i":I
    :cond_4c
    :goto_4c
    add-int/2addr v0, v2

    goto :goto_1

    .line 83
    .end local v0  # "i":I
    :cond_4e
    return-void
.end method

.method public final updatePercOfPopulation(III)V
    .registers 6
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I
    .param p3, "nPerc"  # I

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 55
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    if-ne v1, p1, :cond_21

    .line 56
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    invoke-virtual {v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->updateCorePercOfPopulation(II)V

    .line 57
    return-void

    .line 54
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    .end local v0  # "i":I
    :cond_24
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->addCore(III)V

    .line 62
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_28
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 63
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    if-ne v1, p1, :cond_48

    .line 64
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    invoke-virtual {v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->updateCorePercOfPopulation(II)V

    .line 65
    return-void

    .line 62
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 68
    .end local v0  # "i":I
    :cond_4b
    return-void
.end method
