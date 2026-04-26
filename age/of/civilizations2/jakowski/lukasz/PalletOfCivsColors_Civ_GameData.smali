.class public Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
.super Ljava/lang/Object;
.source "PalletOfCivsColors_Civ_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .registers 2
    .param p1, "oColor"  # Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
    .registers 2

    .line 26
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-object v0
.end method

.method public final setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .registers 2
    .param p1, "oColor"  # Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 30
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 31
    return-void
.end method
