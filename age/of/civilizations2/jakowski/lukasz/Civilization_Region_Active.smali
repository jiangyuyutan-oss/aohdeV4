.class public Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;
.super Ljava/lang/Object;
.source "Civilization_Region_Active.java"


# instance fields
.field private iCivID:I

.field private lActiveRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lRegionStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .registers 6
    .param p1, "iCivID"  # I
    .param p2, "iRegionID"  # I
    .param p3, "iRegionStyle"  # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->iCivID:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lActiveRegions:Ljava/util/List;

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lRegionStyle:Ljava/util/List;

    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method


# virtual methods
.method public final addRegion(II)V
    .registers 5
    .param p1, "nCivRegionID"  # I
    .param p2, "nRegionStyle"  # I

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lActiveRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 50
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lActiveRegions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 51
    return-void

    .line 49
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lActiveRegions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lRegionStyle:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public final getActiveRegionsSize()I
    .registers 2

    .line 70
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lActiveRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getCivID()I
    .registers 2

    .line 33
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->iCivID:I

    return v0
.end method

.method public final getRegionStyleID(I)I
    .registers 4
    .param p1, "nCivRegionID"  # I

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lActiveRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 77
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lActiveRegions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_24

    .line 78
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lRegionStyle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 76
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    .end local v0  # "i":I
    :cond_27
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lRegionStyle:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final isActive_RegionID(I)Z
    .registers 4
    .param p1, "nCivRegionID"  # I

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lActiveRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 40
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lActiveRegions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 41
    const/4 v1, 0x1

    return v1

    .line 39
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final removeRegion(I)V
    .registers 4
    .param p1, "nCivRegionID"  # I

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lActiveRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 61
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lActiveRegions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_22

    .line 62
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lActiveRegions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Active;->lRegionStyle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    return-void

    .line 60
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    .end local v0  # "i":I
    :cond_25
    return-void
.end method
