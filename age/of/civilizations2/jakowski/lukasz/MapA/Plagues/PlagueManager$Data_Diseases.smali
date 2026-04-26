.class public Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;
.super Ljava/lang/Object;
.source "PlagueManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data_Diseases"
.end annotation


# instance fields
.field public B:I

.field public BeginningYear:I

.field public DEATH_RATE_EXTRA:F

.field public DEATH_RATE_MIN:F

.field public DURATION_TURNS_EXTRA:I

.field public DURATION_TURNS_MIN:I

.field public EXPANSION_MODIFIER:F

.field public EXPANSION_MODIFIER_EXTRA:F

.field public EndYear:I

.field public G:I

.field public Name:Ljava/lang/String;

.field public OUTBREAK_CHANCE:F

.field public OUTBREAK_PROVINCES:I

.field public OUTBREAK_PROVINCES_EXTRA:I

.field public OUTBREAK_SCORE_DEVELOPMENT:F

.field public OUTBREAK_SCORE_DEVELOPMENT_LOW:F

.field public OUTBREAK_SCORE_ECONOMY:F

.field public OUTBREAK_SCORE_HAPPINESS:F

.field public OUTBREAK_SCORE_HAPPINESS_LOW:F

.field public OUTBREAK_SCORE_POPULATION:F

.field public R:I

.field public Radiation:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager$Data_Diseases;->Radiation:Z

    return-void
.end method
