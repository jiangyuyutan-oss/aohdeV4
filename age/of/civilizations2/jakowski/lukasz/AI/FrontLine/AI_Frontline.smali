.class public Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;
.super Ljava/lang/Object;
.source "AI_Frontline.java"


# instance fields
.field public bordersWithEnemy:Z

.field public iRegionID:I

.field public iWithCivID:I

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
.method public constructor <init>(IIIZ)V
    .registers 7
    .param p1, "nProvinceID"  # I
    .param p2, "iRegionID"  # I
    .param p3, "iWithCivID"  # I
    .param p4, "bordersWithEnemy"  # Z

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    .line 18
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->iRegionID:I

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->iWithCivID:I

    .line 22
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->bordersWithEnemy:Z

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->iRegionID:I

    .line 27
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->iWithCivID:I

    .line 28
    iput-boolean p4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->bordersWithEnemy:Z

    .line 29
    return-void
.end method


# virtual methods
.method public containsProvince(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 35
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 36
    const/4 v1, 0x1

    return v1

    .line 34
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public getFrontLineArmy(I)I
    .registers 6
    .param p1, "nCivID"  # I

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "out":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_25

    .line 47
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 46
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 50
    .end local v1  # "i":I
    :cond_25
    return v0
.end method
