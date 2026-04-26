.class public Lage/of/civilizations2/jakowski/lukasz/Province_Population;
.super Ljava/lang/Object;
.source "Province_Population.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iNationalitiesSize:I

.field private iPopulation:I

.field private lNationalities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    .line 22
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    return-void
.end method


# virtual methods
.method public final clearData()V
    .registers 3

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    .line 87
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 88
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    .line 89
    return-void
.end method

.method public final getCivID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 102
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getCivID()I

    move-result v0

    return v0
.end method

.method public final getNatsSize()I
    .registers 2

    .line 98
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    return v0
.end method

.method public final getPops()I
    .registers 2

    .line 94
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    return v0
.end method

.method public final getPopulationID(I)I
    .registers 3
    .param p1, "nID"  # I

    .line 35
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v0

    return v0
.end method

.method public final getPopulationOfCivID(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    if-ge v0, v1, :cond_23

    .line 40
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_20

    .line 41
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v1

    return v1

    .line 39
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    .end local v0  # "i":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public final setPopulationOfCivID(II)Z
    .registers 7
    .param p1, "nCivID"  # I
    .param p2, "nPopulation"  # I

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_71

    .line 51
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_6e

    .line 52
    if-gtz p2, :cond_4e

    .line 53
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3e

    .line 54
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    .line 55
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    .line 58
    return v3

    .line 61
    :cond_3e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->setPopulaton(I)V

    .line 62
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    goto :goto_6d

    .line 66
    :cond_4e
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    .line 67
    add-int/2addr v1, p2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    .line 69
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->setPopulaton(I)V

    .line 71
    :goto_6d
    return v2

    .line 50
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    .end local v0  # "i":I
    :cond_71
    if-lez p2, :cond_8a

    .line 76
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-direct {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    add-int/2addr v0, p2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    .line 79
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    .line 82
    :cond_8a
    return v2
.end method

.method public final updatePopulationOfProvince()V
    .registers 4

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    if-ge v0, v1, :cond_19

    .line 28
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    .end local v0  # "i":I
    :cond_19
    return-void
.end method
