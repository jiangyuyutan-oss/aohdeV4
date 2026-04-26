.class public Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;
.super Ljava/lang/Object;
.source "StatsCivGD.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iBiggestEconomy:I

.field private iBuiltArmories:I

.field private iBuiltFarms:I

.field private iBuiltForts:I

.field private iBuiltLibraries:I

.field private iBuiltPorts:I

.field private iBuiltSupplies:I

.field private iBuiltTowers:I

.field private iBuiltWorkshops:I

.field private iConqueredProvinces:I

.field private iGamesWon:I

.field private iLargestArmy:I

.field private iLargestPopulation:I

.field private iRecruitedArmy:I

.field private iTurns:I

.field public sTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iGamesWon:I

    .line 29
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iConqueredProvinces:I

    .line 30
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iTurns:I

    .line 32
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iRecruitedArmy:I

    .line 34
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iLargestArmy:I

    .line 35
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iLargestPopulation:I

    .line 36
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBiggestEconomy:I

    .line 38
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltForts:I

    .line 39
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltTowers:I

    .line 40
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltPorts:I

    .line 41
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltLibraries:I

    .line 42
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltSupplies:I

    .line 43
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltArmories:I

    .line 44
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltFarms:I

    .line 45
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltWorkshops:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "nTag"  # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iGamesWon:I

    .line 29
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iConqueredProvinces:I

    .line 30
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iTurns:I

    .line 32
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iRecruitedArmy:I

    .line 34
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iLargestArmy:I

    .line 35
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iLargestPopulation:I

    .line 36
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBiggestEconomy:I

    .line 38
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltForts:I

    .line 39
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltTowers:I

    .line 40
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltPorts:I

    .line 41
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltLibraries:I

    .line 42
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltSupplies:I

    .line 43
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltArmories:I

    .line 44
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltFarms:I

    .line 45
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltWorkshops:I

    .line 22
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->sTag:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final getBiggestEconomy()I
    .registers 2

    .line 82
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBiggestEconomy:I

    return v0
.end method

.method public final getConqueredProvs()I
    .registers 2

    .line 50
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iConqueredProvinces:I

    return v0
.end method

.method public final getGamesWon()I
    .registers 2

    .line 74
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iGamesWon:I

    return v0
.end method

.method public final getLargestArmy()I
    .registers 2

    .line 98
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iLargestArmy:I

    return v0
.end method

.method public final getLargestPopulation()I
    .registers 2

    .line 90
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iLargestPopulation:I

    return v0
.end method

.method public final getRecruitedArmy()I
    .registers 2

    .line 66
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iRecruitedArmy:I

    return v0
.end method

.method public final getTurns()I
    .registers 2

    .line 58
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iTurns:I

    return v0
.end method

.method public final getiBuiltArmories()I
    .registers 2

    .line 106
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltArmories:I

    return v0
.end method

.method public final getiBuiltFarms()I
    .registers 2

    .line 114
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltFarms:I

    return v0
.end method

.method public final getiBuiltForts()I
    .registers 2

    .line 154
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltForts:I

    return v0
.end method

.method public final getiBuiltLibraries()I
    .registers 2

    .line 162
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltLibraries:I

    return v0
.end method

.method public final getiBuiltPorts()I
    .registers 2

    .line 138
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltPorts:I

    return v0
.end method

.method public final getiBuiltSupplies()I
    .registers 2

    .line 130
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltSupplies:I

    return v0
.end method

.method public final getiBuiltTowers()I
    .registers 2

    .line 146
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltTowers:I

    return v0
.end method

.method public final getiBuiltWorkshops()I
    .registers 2

    .line 122
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltWorkshops:I

    return v0
.end method

.method public final setBiggestEconomy(I)V
    .registers 2
    .param p1, "iBiggestEconomy"  # I

    .line 86
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBiggestEconomy:I

    .line 87
    return-void
.end method

.method public final setConqueredProvinces(I)V
    .registers 2
    .param p1, "iConqueredProvinces"  # I

    .line 54
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iConqueredProvinces:I

    .line 55
    return-void
.end method

.method public final setGamesWon(I)V
    .registers 2
    .param p1, "iGamesWon"  # I

    .line 78
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iGamesWon:I

    .line 79
    return-void
.end method

.method public final setLargestArmy(I)V
    .registers 2
    .param p1, "iLargestArmy"  # I

    .line 102
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iLargestArmy:I

    .line 103
    return-void
.end method

.method public final setLargestPopulation(I)V
    .registers 2
    .param p1, "iLargestPopulation"  # I

    .line 94
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iLargestPopulation:I

    .line 95
    return-void
.end method

.method public final setRecruitedArmy(I)V
    .registers 2
    .param p1, "iRecruitedArmy"  # I

    .line 70
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iRecruitedArmy:I

    .line 71
    return-void
.end method

.method public final setTurns(I)V
    .registers 2
    .param p1, "iTurns"  # I

    .line 62
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iTurns:I

    .line 63
    return-void
.end method

.method public final setiBuiltArmories(I)V
    .registers 2
    .param p1, "iBuiltArmories"  # I

    .line 110
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltArmories:I

    .line 111
    return-void
.end method

.method public final setiBuiltFarms(I)V
    .registers 2
    .param p1, "iBuiltFarms"  # I

    .line 118
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltFarms:I

    .line 119
    return-void
.end method

.method public final setiBuiltForts(I)V
    .registers 2
    .param p1, "iBuiltForts"  # I

    .line 158
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltForts:I

    .line 159
    return-void
.end method

.method public final setiBuiltLibraries(I)V
    .registers 2
    .param p1, "iBuiltLibraries"  # I

    .line 166
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltLibraries:I

    .line 167
    return-void
.end method

.method public final setiBuiltPorts(I)V
    .registers 2
    .param p1, "iBuiltPorts"  # I

    .line 142
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltPorts:I

    .line 143
    return-void
.end method

.method public final setiBuiltSupplies(I)V
    .registers 2
    .param p1, "iBuiltSupplies"  # I

    .line 134
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltSupplies:I

    .line 135
    return-void
.end method

.method public final setiBuiltTowers(I)V
    .registers 2
    .param p1, "iBuiltTowers"  # I

    .line 150
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltTowers:I

    .line 151
    return-void
.end method

.method public final setiBuiltWorkshops(I)V
    .registers 2
    .param p1, "iBuiltWorkshops"  # I

    .line 126
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->iBuiltWorkshops:I

    .line 127
    return-void
.end method
