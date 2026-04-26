.class public Lage/of/civilizations2/jakowski/lukasz/Scenario_WastelandProvinces_GameData;
.super Ljava/lang/Object;
.source "Scenario_WastelandProvinces_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private lWastelandProvincesIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p1, "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_WastelandProvinces_GameData;->lWastelandProvincesIDs:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public final getWastelandProvinceID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 31
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_WastelandProvinces_GameData;->lWastelandProvincesIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getWastelandProvincesSize()I
    .registers 2

    .line 27
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_WastelandProvinces_GameData;->lWastelandProvincesIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
