.class public Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;
.super Ljava/lang/Object;
.source "FormableCivs_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iCapitalProvinceID:I

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sClaimants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sFormableCivTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->sFormableCivTag:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->sClaimants:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->lProvinces:Ljava/util/List;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->iCapitalProvinceID:I

    return-void
.end method


# virtual methods
.method public final addClaimant(Ljava/lang/String;)V
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->sFormableCivTag:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 30
    return-void

    .line 33
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->sClaimants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 34
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->sClaimants:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 35
    return-void

    .line 33
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 39
    .end local v0  # "i":I
    :cond_26
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->sClaimants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public final addProvince(I)V
    .registers 4
    .param p1, "nProvince"  # I

    .line 57
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public final clearProvinces()V
    .registers 2

    .line 69
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    return-void
.end method

.method public final getCapitalProvinceID()I
    .registers 2

    .line 77
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->iCapitalProvinceID:I

    return v0
.end method

.method public final getClaimant(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 47
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->sClaimants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getClaimantsSize()I
    .registers 2

    .line 51
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->sClaimants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFormableCivTag()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->sFormableCivTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvinceID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 61
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getProvincesSize()I
    .registers 2

    .line 65
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final removeClaimant(I)V
    .registers 3
    .param p1, "i"  # I

    .line 43
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->sClaimants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public final setCapitalProvinceID(I)V
    .registers 2
    .param p1, "iCapitalProvinceID"  # I

    .line 73
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->iCapitalProvinceID:I

    .line 74
    return-void
.end method

.method public final setFormableCivTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "sFormableCivTag"  # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->sFormableCivTag:Ljava/lang/String;

    .line 88
    return-void
.end method
