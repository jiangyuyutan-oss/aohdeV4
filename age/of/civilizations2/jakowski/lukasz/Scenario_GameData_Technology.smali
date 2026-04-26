.class public Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;
.super Ljava/lang/Object;
.source "Scenario_GameData_Technology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iContinentID:I

.field private iPercentage:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iContinentID"  # I
    .param p2, "iPercentage"  # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->iContinentID:I

    .line 22
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->iPercentage:I

    .line 23
    return-void
.end method


# virtual methods
.method public final getContinentID()I
    .registers 2

    .line 36
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->iContinentID:I

    return v0
.end method

.method public final getPercentage()I
    .registers 2

    .line 28
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->iPercentage:I

    return v0
.end method

.method public final setContinentID(I)V
    .registers 2
    .param p1, "iContinentID"  # I

    .line 40
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->iContinentID:I

    .line 41
    return-void
.end method

.method public final setPercentage(I)V
    .registers 2
    .param p1, "iPercentage"  # I

    .line 32
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->iPercentage:I

    .line 33
    return-void
.end method
