.class public Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;
.super Ljava/lang/Object;
.source "Timelapse_Stats_Rank_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public lRank:Ljava/util/List;
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
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;->lRank:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addRank(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p1, "tData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;->lRank:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_LIMIT_RANK:I

    if-lez v0, :cond_1d

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;->lRank:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTimelapse:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Timelapse;->GRAPH_DATA_LIMIT_RANK:I

    if-le v0, v1, :cond_1d

    .line 23
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_Stats_Rank_GameData;->lRank:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 25
    :cond_1d
    return-void
.end method
