.class public Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;
.super Ljava/lang/Object;
.source "PreDefined_Borders_Data_GameData.java"

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


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->lProvinces:Ljava/util/List;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->iCapitalProvinceID:I

    .line 27
    return-void
.end method


# virtual methods
.method public final addProvinceID(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 61
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 62
    return-void

    .line 60
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public final getCapitalProvinceID()I
    .registers 2

    .line 36
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->iCapitalProvinceID:I

    return v0
.end method

.method public final getProvinceID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 46
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getProvincesSize()I
    .registers 2

    .line 42
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final hasProvinceID(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 51
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 52
    const/4 v1, 0x1

    return v1

    .line 50
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final removeProvinceID(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 71
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1d

    .line 72
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 73
    return-void

    .line 70
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    .end local v0  # "i":I
    :cond_20
    return-void
.end method

.method public final setCapitalProvinceID(I)V
    .registers 2
    .param p1, "nProvinceID"  # I

    .line 32
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/PreDefined_Borders_Data_GameData;->iCapitalProvinceID:I

    .line 33
    return-void
.end method
