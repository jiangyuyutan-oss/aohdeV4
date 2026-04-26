.class public Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_JustDraw;
.super Ljava/lang/Object;
.source "MoveUnits_JustDraw.java"


# instance fields
.field public iCivID:I

.field public moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;


# direct methods
.method public constructor <init>(ILage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;)V
    .registers 4
    .param p1, "iCivID"  # I
    .param p2, "moveUnits"  # Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_JustDraw;->iCivID:I

    .line 13
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_JustDraw;->iCivID:I

    .line 14
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    .line 15
    return-void
.end method
