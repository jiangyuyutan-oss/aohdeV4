.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoadCivilizationData;
.super Ljava/lang/Object;
.source "LoadCivilizationData.java"


# instance fields
.field public GroupID:I

.field public Name:Ljava/lang/String;

.field public ReligionID:I

.field public Tag:Ljava/lang/String;

.field public Wiki:Ljava/lang/String;

.field public iB:I

.field public iG:I

.field public iR:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoadCivilizationData;->Name:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoadCivilizationData;->GroupID:I

    return-void
.end method
