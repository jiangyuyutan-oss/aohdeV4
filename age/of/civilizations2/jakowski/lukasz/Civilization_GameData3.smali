.class public Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
.super Ljava/lang/Object;
.source "Civilization_GameData3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iB:I

.field private iG:I

.field public iGroupID:I

.field private iR:I

.field public iReligionID:I

.field private sCivTag:Ljava/lang/String;

.field public sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iReligionID:I

    .line 73
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iGroupID:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sCivTag:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "sCivTag"  # Ljava/lang/String;
    .param p2, "iR"  # I
    .param p3, "iG"  # I
    .param p4, "iB"  # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iReligionID:I

    .line 73
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iGroupID:I

    .line 30
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sCivTag:Ljava/lang/String;

    .line 32
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iR:I

    .line 33
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iG:I

    .line 34
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iB:I

    .line 35
    return-void
.end method


# virtual methods
.method public final getB()I
    .registers 2

    .line 69
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iB:I

    return v0
.end method

.method public final getCivTag()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sCivTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getG()I
    .registers 2

    .line 61
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iG:I

    return v0
.end method

.method public final getR()I
    .registers 2

    .line 53
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iR:I

    return v0
.end method

.method public final setB(I)V
    .registers 2
    .param p1, "nB"  # I

    .line 65
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iB:I

    .line 66
    return-void
.end method

.method public final setCivTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "nCivTag"  # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sCivTag:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public final setG(I)V
    .registers 2
    .param p1, "nG"  # I

    .line 57
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iG:I

    .line 58
    return-void
.end method

.method public final setR(I)V
    .registers 2
    .param p1, "nR"  # I

    .line 49
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iR:I

    .line 50
    return-void
.end method
