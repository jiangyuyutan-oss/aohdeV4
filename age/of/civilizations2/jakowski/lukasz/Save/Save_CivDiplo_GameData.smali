.class public Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;
.super Ljava/lang/Object;
.source "Save_CivDiplo_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public lDefensivePact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public lGuarantee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public lMilitaryAccess:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public lNonAggressionPacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public lTruce:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 8
    .param p1, "nCivID"  # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;->lNonAggressionPacts:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;->lTruce:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;->lDefensivePact:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;->lGuarantee:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;->lMilitaryAccess:Ljava/util/List;

    .line 28
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;->lNonAggressionPacts:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    goto :goto_36

    .line 32
    :cond_5d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .restart local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;->lTruce:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    goto :goto_6d

    .line 36
    :cond_94
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 37
    .restart local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;->lDefensivePact:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    goto :goto_a4

    .line 40
    :cond_cb
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_db
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_102

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    .restart local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;->lGuarantee:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    goto :goto_db

    .line 44
    :cond_102
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_112
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_139

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    .restart local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiplo_GameData;->lMilitaryAccess:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Save/Save_CivDiploInfo_GameData;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    goto :goto_112

    .line 47
    :cond_139
    return-void
.end method
