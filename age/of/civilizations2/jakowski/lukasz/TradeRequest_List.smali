.class public Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;
.super Ljava/lang/Object;
.source "TradeRequest_List.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public defensivePact:Z

.field public iDeclareWarOnCivID:I

.field public iFormCoalitionAgainst:I

.field public iGold:I

.field public lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public militaryAccess:Z

.field public nonAggressionPact:Z

.field public proclaimIndependence:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iGold:I

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    .line 19
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iDeclareWarOnCivID:I

    .line 20
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iFormCoalitionAgainst:I

    .line 21
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->defensivePact:Z

    .line 22
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->nonAggressionPact:Z

    .line 23
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->proclaimIndependence:Z

    .line 24
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->militaryAccess:Z

    return-void
.end method
