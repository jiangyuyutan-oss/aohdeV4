.class public Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
.super Ljava/lang/Object;
.source "Leader_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private leaderOfCiv:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

.field public reignYearBegin:I

.field public reignYearEnd:I

.field private sCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->leaderOfCiv:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->sCivs:Ljava/util/List;

    .line 21
    const/16 v0, -0x270f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->reignYearBegin:I

    .line 22
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->reignYearEnd:I

    return-void
.end method


# virtual methods
.method public final addCiv(Ljava/lang/String;)V
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->sCivs:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28
    return-void

    .line 31
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->sCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 32
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->sCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 33
    return-void

    .line 31
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 37
    .end local v0  # "i":I
    :cond_26
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->sCivs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public final getCiv(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 45
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->sCivs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCivsSize()I
    .registers 2

    .line 49
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->sCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;
    .registers 2

    .line 55
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->leaderOfCiv:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    return-object v0
.end method

.method public final removeCiv(I)V
    .registers 3
    .param p1, "i"  # I

    .line 41
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->sCivs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public final setLeaderOfCiv(Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;)V
    .registers 2
    .param p1, "leaderOfCiv"  # Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    .line 59
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->leaderOfCiv:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    .line 60
    return-void
.end method
