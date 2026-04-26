.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_Skills/AI_Skills_Taxation;
.super Lage/of/civilizations2/jakowski/lukasz/AI/AI_Skills/AI_Skills;
.source "AI_Skills_Taxation.java"


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iPoints"  # I
    .param p2, "iPointsMax"  # I

    .line 13
    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Skills/AI_Skills;-><init>(II)V

    .line 14
    return-void
.end method


# virtual methods
.method public addPoint_CivID(I)V
    .registers 3
    .param p1, "nCivID"  # I

    .line 18
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/SkillsManager;->add_IncomeTaxation(I)V

    .line 20
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techPoints:Lage/of/civilizations2/jakowski/lukasz/TechPoints;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/TechPoints;->POINTS_INCOME_TAXATION:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Skills/AI_Skills_Taxation;->iPoints:I

    .line 21
    return-void
.end method

.method public getScore_Personality(I)F
    .registers 3
    .param p1, "nCivID"  # I

    .line 25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_TAXATION:F

    return v0
.end method
