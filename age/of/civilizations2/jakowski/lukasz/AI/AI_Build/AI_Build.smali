.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build;
.super Ljava/lang/Object;
.source "AI_Build.java"


# instance fields
.field public iMaxDangerLevel:I

.field public iProvincesToBuild_NumOfElements:I

.field public lProvincesToBuild:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "nMoney"  # J

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build;->lProvincesToBuild:Ljava/util/List;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build;->iProvincesToBuild_NumOfElements:I

    .line 18
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build;->iMaxDangerLevel:I

    .line 22
    return-void
.end method


# virtual methods
.method public build(IIZ)Z
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "iteration"  # I
    .param p3, "out"  # Z

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getMoney(I)J
    .registers 7
    .param p1, "nCivID"  # I

    .line 35
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->getMoney_MinReserve(I)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_15

    .line 36
    const-wide/16 v0, 0x0

    return-wide v0

    .line 39
    :cond_15
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->getMoney_MinReserve(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNumOfAlreadyBuilt(I)I
    .registers 3
    .param p1, "nCivID"  # I

    .line 31
    const/4 v0, 0x0

    return v0
.end method
