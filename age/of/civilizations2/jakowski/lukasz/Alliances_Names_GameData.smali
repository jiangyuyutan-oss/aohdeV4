.class public Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;
.super Ljava/lang/Object;
.source "Alliances_Names_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private lBundles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private sPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->lBundles:Ljava/util/List;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->sPackageName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public final addBundle(Ljava/lang/String;)V
    .registers 4
    .param p1, "nWord"  # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->lBundles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public final getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;
    .registers 3
    .param p1, "i"  # I

    .line 33
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->lBundles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()I
    .registers 2

    .line 45
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->lBundles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final removeBundle(I)V
    .registers 3
    .param p1, "i"  # I

    .line 41
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->lBundles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sPackageName"  # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->sPackageName:Ljava/lang/String;

    .line 54
    return-void
.end method
