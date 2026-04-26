.class public Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;
.super Ljava/lang/Object;
.source "Scenario_GameData_Diplomacy_AlliancesData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private lCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field private sName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .registers 4
    .param p1, "sName"  # Ljava/lang/String;
    .param p2, "oColor"  # Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->setName(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->lCivs:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public final addCiv(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 54
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->lCivs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public final getCivs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->lCivs:Ljava/util/List;

    return-object v0
.end method

.method public final getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
    .registers 2

    .line 42
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public final setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .registers 2
    .param p1, "oColor"  # Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 46
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 47
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sName"  # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->sName:Ljava/lang/String;

    .line 39
    return-void
.end method
