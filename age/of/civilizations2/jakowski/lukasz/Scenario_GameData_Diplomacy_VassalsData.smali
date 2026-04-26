.class public Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;
.super Ljava/lang/Object;
.source "Scenario_GameData_Diplomacy_VassalsData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iCivID:I

.field private iCivLordID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iCivID"  # I
    .param p2, "iCivLordID"  # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->setCivID(I)V

    .line 22
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->setCivLordID(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public final getCivID()I
    .registers 2

    .line 28
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->iCivID:I

    return v0
.end method

.method public final getCivLordID()I
    .registers 2

    .line 36
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->iCivLordID:I

    return v0
.end method

.method public final setCivID(I)V
    .registers 2
    .param p1, "iCivID"  # I

    .line 32
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->iCivID:I

    .line 33
    return-void
.end method

.method public final setCivLordID(I)V
    .registers 2
    .param p1, "iCivLordID"  # I

    .line 40
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->iCivLordID:I

    .line 41
    return-void
.end method
