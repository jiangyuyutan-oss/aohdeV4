.class public Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;
.super Ljava/lang/Object;
.source "DiplomacyColors_GameData2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field public COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field public COLOR_DIPLOMACY_DEFENSIVE_PACT:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field public COLOR_DIPLOMACY_INDEPENDENCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field public COLOR_DIPLOMACY_MILITARY_ACCESS:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field public COLOR_DIPLOMACY_NEGATIVE:[Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field public COLOR_DIPLOMACY_NEUTRAL:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field public COLOR_DIPLOMACY_OWN_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field public COLOR_DIPLOMACY_PACT:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field public COLOR_DIPLOMACY_PACT_MAX:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field public COLOR_DIPLOMACY_POSITIVE:[Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field public COLOR_DIPLOMACY_VASSAL:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field private sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->sName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sName"  # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->sName:Ljava/lang/String;

    .line 46
    return-void
.end method
