.class public Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;
.super Ljava/lang/Object;
.source "LeaderOfCiv_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private Day:I

.field private Month:I

.field private Year:I

.field public fModifier_Administration:F

.field public fModifier_AttackBonus:F

.field public fModifier_DefenseBonus:F

.field public fModifier_EconomyGrowth:F

.field public fModifier_IncomeProduction:F

.field public fModifier_IncomeTaxation:F

.field public fModifier_MilitaryUpkeep:F

.field public fModifier_MovementPoints:F

.field public fModifier_PopGrowth:F

.field public fModifier_Research:F

.field private sImage:Ljava/lang/String;

.field private sName:Ljava/lang/String;

.field private sTag:Ljava/lang/String;

.field private sWiki:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sTag:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sImage:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sWiki:Ljava/lang/String;

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Year:I

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Month:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Day:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    .line 27
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    .line 28
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    .line 29
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    .line 30
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    .line 31
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    .line 32
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    .line 33
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    .line 34
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    .line 35
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    return-void
.end method


# virtual methods
.method public final getDay()I
    .registers 2

    .line 80
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Day:I

    return v0
.end method

.method public final getImage()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sImage:Ljava/lang/String;

    return-object v0
.end method

.method public final getMonth()I
    .registers 2

    .line 64
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Month:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getWiki()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sWiki:Ljava/lang/String;

    return-object v0
.end method

.method public final getYear()I
    .registers 2

    .line 72
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Year:I

    return v0
.end method

.method public final setDay(I)V
    .registers 2
    .param p1, "day"  # I

    .line 84
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Day:I

    .line 85
    return-void
.end method

.method public final setImage(Ljava/lang/String;)V
    .registers 2
    .param p1, "sImage"  # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sImage:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public final setMonth(I)V
    .registers 2
    .param p1, "month"  # I

    .line 68
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Month:I

    .line 69
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sName"  # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "sTag"  # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sTag:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public final setWiki(Ljava/lang/String;)V
    .registers 2
    .param p1, "sWiki"  # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sWiki:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public final setYear(I)V
    .registers 2
    .param p1, "year"  # I

    .line 76
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Year:I

    .line 77
    return-void
.end method
