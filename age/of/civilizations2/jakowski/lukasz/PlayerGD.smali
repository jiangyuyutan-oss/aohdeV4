.class public Lage/of/civilizations2/jakowski/lukasz/PlayerGD;
.super Ljava/lang/Object;
.source "PlayerGD.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public AUTO_ASSIMILATE:Z

.field public A_D:Z

.field public A_E:Z

.field public INVITED_CIVS_HRE:I

.field public ULTIMATUMS_SENT:I

.field public VASSALS_CAN_DECLARE_WARS:Z

.field public VASSALS_MILITARY_SPENDINGS:F

.field public WARS_DECLARED_AS_VASSAL_AND_LORD_JOINED_WAR:I

.field public challengeID:I

.field public cts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/City;",
            ">;"
        }
    .end annotation
.end field

.field public iCivID:I

.field public lostNextTurn:Z

.field public metCiv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public metProvin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public migrationF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public orzC:I

.field public playerAIPeace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/PlayerAIPeace_GameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->iCivID:I

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->orzC:I

    .line 28
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->challengeID:I

    .line 30
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->lostNextTurn:Z

    .line 32
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->VASSALS_CAN_DECLARE_WARS:Z

    .line 33
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->VASSALS_MILITARY_SPENDINGS:F

    .line 35
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->ULTIMATUMS_SENT:I

    .line 36
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->WARS_DECLARED_AS_VASSAL_AND_LORD_JOINED_WAR:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->playerAIPeace:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->migrationF:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->cts:Ljava/util/List;

    .line 47
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->AUTO_ASSIMILATE:Z

    .line 49
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->A_E:Z

    .line 51
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->A_D:Z

    .line 53
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->INVITED_CIVS_HRE:I

    return-void
.end method
