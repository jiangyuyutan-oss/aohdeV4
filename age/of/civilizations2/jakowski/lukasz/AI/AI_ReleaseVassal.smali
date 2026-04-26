.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_ReleaseVassal;
.super Ljava/lang/Object;
.source "AI_ReleaseVassal.java"


# instance fields
.field public iCivID:I

.field public lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "iCivID"  # I
    .param p2, "nProvinceID"  # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ReleaseVassal;->lProvinces:Ljava/util/List;

    .line 16
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ReleaseVassal;->iCivID:I

    .line 17
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ReleaseVassal;->addProvince(I)V

    .line 18
    return-void
.end method


# virtual methods
.method public final addProvince(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 21
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ReleaseVassal;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public final haveProvince(I)Z
    .registers 5
    .param p1, "nProvinceID"  # I

    .line 25
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ReleaseVassal;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 26
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ReleaseVassal;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 27
    return v1

    .line 25
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 31
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final removeProvinceID(I)Z
    .registers 5
    .param p1, "nProvinceID"  # I

    .line 35
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ReleaseVassal;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_21

    .line 36
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ReleaseVassal;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1e

    .line 37
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ReleaseVassal;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38
    return v1

    .line 35
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 42
    .end local v0  # "i":I
    :cond_21
    const/4 v0, 0x0

    return v0
.end method
