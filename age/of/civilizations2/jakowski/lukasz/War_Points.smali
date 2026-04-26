.class public Lage/of/civilizations2/jakowski/lukasz/War_Points;
.super Ljava/lang/Object;
.source "War_Points.java"


# instance fields
.field public iCivID:I

.field public iMinScore:I

.field public iNumOfLostProvinces:I

.field public iPoints:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "iCivID"  # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I

    .line 11
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    .line 12
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iMinScore:I

    .line 15
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iCivID:I

    .line 16
    return-void
.end method


# virtual methods
.method public addPoints(I)V
    .registers 3
    .param p1, "nP"  # I

    .line 19
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I

    .line 20
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iMinScore:I

    if-le p1, v0, :cond_b

    .line 21
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iMinScore:I

    .line 23
    :cond_b
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    .line 24
    return-void
.end method

.method public final getNumOfProvincesTotal()I
    .registers 4

    .line 27
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
