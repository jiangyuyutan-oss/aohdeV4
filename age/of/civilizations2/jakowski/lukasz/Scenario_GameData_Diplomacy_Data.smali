.class public Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;
.super Ljava/lang/Object;
.source "Scenario_GameData_Diplomacy_Data.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iCivA:I

.field private iCivB:I

.field private iValue:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "iCivA"  # I
    .param p2, "iCivB"  # I
    .param p3, "iValue"  # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iCivA:I

    .line 24
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iCivB:I

    .line 25
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iValue:I

    .line 26
    return-void
.end method


# virtual methods
.method public final getCivA()I
    .registers 2

    .line 31
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iCivA:I

    return v0
.end method

.method public final getCivB()I
    .registers 2

    .line 39
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iCivB:I

    return v0
.end method

.method public final getValue()I
    .registers 2

    .line 47
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iValue:I

    return v0
.end method

.method public final setCivA(I)V
    .registers 2
    .param p1, "iCivA"  # I

    .line 35
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iCivA:I

    .line 36
    return-void
.end method

.method public final setCivB(I)V
    .registers 2
    .param p1, "iCivB"  # I

    .line 43
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iCivB:I

    .line 44
    return-void
.end method

.method public final setValue(I)V
    .registers 2
    .param p1, "iValue"  # I

    .line 51
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iValue:I

    .line 52
    return-void
.end method
