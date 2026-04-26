.class public Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;
.super Ljava/lang/Object;
.source "Challenge.java"


# instance fields
.field public ADD_CIV_PROVINCES:[I

.field public COMPLETED:Z

.field public DESC:Ljava/lang/String;

.field public FORM_TAG:Ljava/lang/String;

.field public ID:Ljava/lang/String;

.field public PLAY_AS:Ljava/lang/String;

.field public PROVINCES:I

.field public PROVINCES_FORM:I

.field public SCENARIO_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ID:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PLAY_AS:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->FORM_TAG:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->DESC:Ljava/lang/String;

    .line 16
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PROVINCES:I

    .line 19
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->PROVINCES_FORM:I

    .line 22
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->SCENARIO_TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->ADD_CIV_PROVINCES:[I

    .line 27
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Challenge/Challenge;->COMPLETED:Z

    return-void
.end method
