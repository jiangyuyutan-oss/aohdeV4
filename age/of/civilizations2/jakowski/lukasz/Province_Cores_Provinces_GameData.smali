.class public Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;
.super Ljava/lang/Object;
.source "Province_Cores_Provinces_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iProvinceID:I

.field public lCores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I
    .param p3, "nPerc"  # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    .line 23
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    .line 24
    invoke-virtual {p0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->addCore(II)V

    .line 25
    return-void
.end method


# virtual methods
.method public final addCore(II)V
    .registers 6
    .param p1, "nCivID"  # I
    .param p2, "nPerc"  # I

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 31
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    if-ne v1, p1, :cond_16

    .line 32
    return-void

    .line 30
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    .end local v0  # "i":I
    :cond_19
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->updateCorePercOfPopulation(II)V

    .line 39
    return-void
.end method

.method public final getPercOfPop(I)F
    .registers 4
    .param p1, "nCivID"  # I

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 115
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    if-ne v1, p1, :cond_20

    .line 116
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->fPercPop:F

    return v1

    .line 114
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    .end local v0  # "i":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public final removeCore(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 106
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    if-ne v1, p1, :cond_1b

    .line 107
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    return-void

    .line 105
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    .end local v0  # "i":I
    :cond_1e
    return-void
.end method

.method public final updateAfterRemove(I)V
    .registers 5
    .param p1, "nRemovedCivID"  # I

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 125
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    if-le v1, p1, :cond_2c

    .line 126
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    goto :goto_40

    .line 128
    :cond_2c
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    if-ne v1, p1, :cond_40

    .line 129
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    .line 124
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .end local v0  # "i":I
    :cond_43
    return-void
.end method

.method public final updateCorePercOfPopulation(II)V
    .registers 13
    .param p1, "nCivID"  # I
    .param p2, "nPerc"  # I

    .line 42
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    const/high16 v2, 0x42c80000  # 100.0f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x1

    if-le v0, v4, :cond_10f

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_35

    .line 44
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    if-ne v5, p1, :cond_32

    .line 45
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    int-to-float v6, p2

    div-float/2addr v6, v2

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->setPerc(F)V

    .line 46
    goto :goto_35

    .line 43
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 50
    .end local v0  # "i":I
    :cond_35
    :goto_35
    const/4 v0, 0x0

    .line 52
    .local v0, "tempPercAll":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_37
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4d

    .line 53
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->fPercPop:F

    add-float/2addr v0, v6

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 56
    .end local v5  # "i":I
    :cond_4d
    cmpl-float v5, v0, v3

    if-lez v5, :cond_10e

    .line 57
    const/4 v5, 0x0

    .line 58
    .local v5, "tempTotal":F
    const/4 v6, 0x0

    .line 60
    .local v6, "tempCivTotal":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_54
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9a

    .line 61
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    if-eq v8, p1, :cond_74

    .line 62
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->fPercPop:F

    add-float/2addr v5, v8

    goto :goto_97

    .line 65
    :cond_74
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    rsub-int/lit8 v9, v9, 0x64

    invoke-static {p2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v2

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->setPerc(F)V

    .line 66
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v6, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->fPercPop:F

    .line 60
    :goto_97
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 70
    .end local v7  # "i":I
    :cond_9a
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v1, v3, v1

    .line 72
    .local v1, "tDiff":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a1
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_d0

    .line 73
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    if-eq v7, p1, :cond_cd

    .line 74
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->fPercPop:F

    mul-float v8, v8, v1

    div-float/2addr v8, v5

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->setPerc(F)V

    .line 72
    :cond_cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    .line 78
    .end local v2  # "i":I
    :cond_d0
    const/4 v2, 0x0

    .line 80
    .end local v5  # "tempTotal":F
    .local v2, "tempTotal":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d2
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_e8

    .line 81
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->fPercPop:F

    add-float/2addr v2, v7

    .line 80
    add-int/lit8 v5, v5, 0x1

    goto :goto_d2

    .line 84
    .end local v5  # "i":I
    :cond_e8
    sub-float/2addr v3, v2

    .line 86
    .end local v2  # "tempTotal":F
    .local v3, "tempTotal":F
    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-lez v2, :cond_10e

    .line 87
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->fPercPop:F

    add-float/2addr v4, v3

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->setPerc(F)V

    .line 90
    .end local v0  # "tempPercAll":F
    .end local v1  # "tDiff":F
    .end local v3  # "tempTotal":F
    .end local v6  # "tempCivTotal":F
    :cond_10e
    goto :goto_144

    .line 91
    :cond_10f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_144

    .line 92
    const/4 v0, 0x0

    if-le p2, v1, :cond_126

    .line 93
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->setPerc(F)V

    goto :goto_144

    .line 95
    :cond_126
    if-ge p2, v4, :cond_137

    .line 96
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    const v1, 0x3c23d70a  # 0.01f

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->setPerc(F)V

    goto :goto_144

    .line 99
    :cond_137
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    int-to-float v1, p2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->setPerc(F)V

    .line 102
    :cond_144
    :goto_144
    return-void
.end method
