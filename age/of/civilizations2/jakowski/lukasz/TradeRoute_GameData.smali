.class public Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;
.super Ljava/lang/Object;
.source "TradeRoute_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iAgeFoundID:I

.field private sFromTagID:Ljava/lang/String;

.field private sToTagID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public final getAgeFoundID()I
    .registers 2

    .line 48
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;->iAgeFoundID:I

    return v0
.end method

.method public final getFromTagID()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;->sFromTagID:Ljava/lang/String;

    return-object v0
.end method

.method public final getToTagID()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;->sToTagID:Ljava/lang/String;

    return-object v0
.end method

.method public final setAgeFoundID(I)V
    .registers 2
    .param p1, "iAgeFoundID"  # I

    .line 52
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;->iAgeFoundID:I

    .line 53
    return-void
.end method

.method public final setFromTagID(Ljava/lang/String;)V
    .registers 2
    .param p1, "sFromTagID"  # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;->sFromTagID:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public final setToTagID(Ljava/lang/String;)V
    .registers 2
    .param p1, "sToTagID"  # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;->sToTagID:Ljava/lang/String;

    .line 45
    return-void
.end method
