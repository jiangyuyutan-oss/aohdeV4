.class public Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;
.super Ljava/lang/Object;
.source "ReligionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/ReligionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Religion"
.end annotation


# instance fields
.field public ACCEPTABLE_TAXATION:F

.field public Color:[F

.field public Icon:Ljava/lang/String;

.field public MILITARY_UPKEEP:F

.field public MIN_GOODS:F

.field public MIN_INVESTMENTS:F

.field public Name:Ljava/lang/String;

.field public RESEARCH_COST:F

.field public ReligionGroupID:I

.field public Tribal:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->Tribal:Z

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->ACCEPTABLE_TAXATION:F

    .line 44
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MIN_GOODS:F

    .line 45
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MIN_INVESTMENTS:F

    .line 46
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->RESEARCH_COST:F

    .line 47
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MILITARY_UPKEEP:F

    return-void
.end method


# virtual methods
.method public final getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 6

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->Color:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v1, v1, v4

    const v4, 0x3ed9999a  # 0.425f

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->Name:Ljava/lang/String;

    return-object v0
.end method
