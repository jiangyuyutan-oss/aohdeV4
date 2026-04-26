.class public Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;
.super Ljava/lang/Object;
.source "Timelapse_Capitals.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public lCapitals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "iProvinceID"  # I
    .param p2, "iSinceTurnID"  # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->lCapitals:Ljava/util/List;

    .line 22
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;

    invoke-direct {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method


# virtual methods
.method public getCapitalID(I)I
    .registers 5
    .param p1, "iTurnID"  # I

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->lCapitals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_33

    .line 39
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->lCapitals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;->iSinceTurnID:I

    if-gt v1, p1, :cond_30

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->lCapitals:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;->iSinceTurnID:I

    if-le v1, p1, :cond_30

    .line 40
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->lCapitals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;->iProvinceID:I

    return v1

    .line 38
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    .end local v0  # "i":I
    :cond_33
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->lCapitals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;->iProvinceID:I

    return v0
.end method

.method public updateCapital(II)V
    .registers 6
    .param p1, "iProvinceID"  # I
    .param p2, "iSinceTurnID"  # I

    .line 29
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->lCapitals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;->iProvinceID:I

    if-eq v0, p1, :cond_1c

    .line 30
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->lCapitals:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;

    invoke-direct {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 34
    :cond_1c
    goto :goto_28

    .line 32
    :catch_1d
    move-exception v0

    .line 33
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capitals;->lCapitals:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;

    invoke-direct {v2, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Capital;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_28
    return-void
.end method
