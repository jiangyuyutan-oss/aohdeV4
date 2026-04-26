.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;
.super Ljava/lang/Object;
.source "AI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/AI/AI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NeutralProvinces"
.end annotation


# instance fields
.field public iProvinceID:I

.field public iScore:F

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/AI/AI;


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/AI/AI;II)V
    .registers 4
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/AI/AI;
    .param p2, "nProvinceID"  # I
    .param p3, "nCivID"  # I

    .line 2019
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->this$0:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2020
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    .line 2021
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->buildScore(I)V

    .line 2022
    return-void
.end method


# virtual methods
.method public final buildScore(I)V
    .registers 10
    .param p1, "nCivID"  # I

    .line 2025
    const/4 v0, 0x0

    .line 2026
    .local v0, "neighboring_NeutralProvinces":I
    const/4 v1, 0x0

    .line 2027
    .local v1, "neighboring_CivProvinces":I
    const/4 v2, 0x0

    .line 2029
    .local v2, "neighboring_OtherCivProvinces":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_b3

    .line 2030
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v4

    if-gez v4, :cond_af

    .line 2031
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    if-ne v4, p1, :cond_78

    .line 2032
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v5

    if-ne v4, v5, :cond_68

    .line 2033
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_CAPITAL:F

    add-float/2addr v4, v5

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    goto :goto_75

    .line 2036
    :cond_68
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_OWN_PROVINCE:F

    add-float/2addr v4, v5

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    .line 2039
    :goto_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_af

    .line 2042
    :cond_78
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    if-nez v4, :cond_a0

    .line 2043
    add-int/lit8 v0, v0, 0x1

    .line 2045
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_MORE_NEUTRAL:F

    add-float/2addr v4, v5

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    goto :goto_af

    .line 2048
    :cond_a0
    add-int/lit8 v2, v2, 0x1

    .line 2050
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_OTHER_CIV:F

    add-float/2addr v4, v5

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    .line 2029
    :cond_af
    :goto_af
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 2055
    .end local v3  # "i":I
    :cond_b3
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_GROWTH_RATE:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    .line 2059
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v3

    if-lez v3, :cond_101

    .line 2060
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_SEA_ACCESS:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_SEA_ACCESS_EXTRA:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    .line 2063
    :cond_101
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES:F

    add-int v5, v1, v0

    add-int/2addr v5, v2

    int-to-float v5, v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    .line 2065
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES_POTENTIAL:F

    add-int v5, v0, v1

    int-to-float v5, v5

    mul-float v4, v4, v5

    add-int v5, v1, v0

    add-int/2addr v5, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    .line 2068
    if-nez v0, :cond_149

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v3

    if-lez v3, :cond_149

    .line 2069
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_LAST_PROVINCE:F

    add-float/2addr v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    goto :goto_155

    .line 2071
    :cond_149
    const/4 v3, 0x1

    if-gt v1, v3, :cond_155

    .line 2072
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    const v4, 0x3f39999a  # 0.725f

    mul-float v3, v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI$NeutralProvinces;->iScore:F

    .line 2074
    :cond_155
    :goto_155
    return-void
.end method
