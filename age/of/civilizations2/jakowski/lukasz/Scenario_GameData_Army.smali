.class public Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;
.super Ljava/lang/Object;
.source "Scenario_GameData_Army.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iArmy:I

.field private iCivID:I

.field private iProvinceID:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "iProvinceID"  # I
    .param p2, "iCivID"  # I
    .param p3, "iArmy"  # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->iProvinceID:I

    .line 25
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->iCivID:I

    .line 26
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->iArmy:I

    .line 27
    return-void
.end method


# virtual methods
.method public final getArmy()I
    .registers 2

    .line 40
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->iArmy:I

    return v0
.end method

.method public final getCivID()I
    .registers 2

    .line 36
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->iCivID:I

    return v0
.end method

.method public final getProvinceID()I
    .registers 2

    .line 32
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->iProvinceID:I

    return v0
.end method
