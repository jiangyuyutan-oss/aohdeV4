.class public Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;
.super Ljava/lang/Object;
.source "Ultimatum_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public demandAnexation:Z

.field public demandChangeOfGovernment:Z

.field public demandLiberation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public demandMilitaryAccess:Z

.field public demandProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public demandVasalization:Z

.field public numOfUntis:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandAnexation:Z

    .line 18
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandVasalization:Z

    .line 20
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandMilitaryAccess:Z

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandLiberation:Ljava/util/List;

    .line 26
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandChangeOfGovernment:Z

    .line 28
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->numOfUntis:I

    return-void
.end method


# virtual methods
.method public final canBeSend()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandAnexation:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandVasalization:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandMilitaryAccess:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_23

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandLiberation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_23

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandChangeOfGovernment:Z

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method public isLiberationDemanded(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandLiberation:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 32
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandLiberation:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 33
    const/4 v1, 0x1

    return v1

    .line 31
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public updateLiberationDemand(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandLiberation:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 42
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandLiberation:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1d

    .line 43
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandLiberation:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 44
    return-void

    .line 41
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    .end local v0  # "i":I
    :cond_20
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandLiberation:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method
