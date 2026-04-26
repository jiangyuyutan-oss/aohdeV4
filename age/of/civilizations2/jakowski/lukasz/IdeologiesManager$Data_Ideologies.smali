.class public Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
.super Ljava/lang/Object;
.source "IdeologiesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data_Ideologies"
.end annotation


# instance fields
.field public ACCEPTABLE_TAXATION:F

.field public ADMINISTRATION_COST:F

.field public ADMINISTRATION_COST_CAPITAL:F

.field public ADMINISTRATION_COST_DISTANCE:F

.field public AI_TYPE:Ljava/lang/String;

.field public AVAILABLE_SINCE_AGE_ID:I

.field public B:I

.field public CAN_BECOME_CIVILIZED:I

.field public CIVILIZE_TECH_LEVEL:F

.field public COST_OF_DISBAND:I

.field public COST_OF_MOVE:I

.field public COST_OF_MOVE_OWN_PROV:I

.field public COST_OF_MOVE_TO_THE_SAME_PROV:I

.field public COST_OF_PLUNDER:I

.field public COST_OF_RECRUIT:I

.field public DEFENSE_BONUS:I

.field public DESC:Ljava/lang/String;

.field public Extra_Tag:Ljava/lang/String;

.field public G:I

.field public GOV_GROUP_ID:I

.field public INCOME_PRODUCTION:F

.field public INCOME_TAXATION:F

.field public MILITARY_UPKEEP:F

.field public MIN_GOODS:F

.field public MIN_INVESTMENTS:F

.field public Name:Ljava/lang/String;

.field public R:I

.field public RESEARCH_COST:F

.field public REVOLUTIONARY:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->DESC:Ljava/lang/String;

    return-void
.end method
