.class public Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;
.super Ljava/lang/Object;
.source "Civilization_ServiceRibbon_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private lColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Color_GameData;",
            ">;"
        }
    .end annotation
.end field

.field private sSRTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->lColors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getColor(I)Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
    .registers 3
    .param p1, "i"  # I

    .line 39
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->lColors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-object v0
.end method

.method public final getColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Color_GameData;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->lColors:Ljava/util/List;

    return-object v0
.end method

.method public final getSRTAG()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->sSRTAG:Ljava/lang/String;

    return-object v0
.end method

.method public final setSRTAG(Ljava/lang/String;)V
    .registers 2
    .param p1, "sSRTAG"  # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->sSRTAG:Ljava/lang/String;

    .line 32
    return-void
.end method
