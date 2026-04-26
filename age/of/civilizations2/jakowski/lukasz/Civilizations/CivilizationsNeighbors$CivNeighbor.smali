.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;
.super Ljava/lang/Object;
.source "CivilizationsNeighbors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CivNeighbor"
.end annotation


# instance fields
.field public civID:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    .line 17
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->this$0:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;I)V
    .registers 3
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;
    .param p2, "civID"  # I

    .line 19
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->this$0:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    .line 21
    return-void
.end method
