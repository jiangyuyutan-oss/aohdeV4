.class public Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapInformations"
.end annotation


# instance fields
.field private Author:Ljava/lang/String;

.field private BackgroundName:Ljava/lang/String;

.field private ContinentsPackage:Ljava/lang/String;

.field private MapName:Ljava/lang/String;

.field private MapScale:I

.field private MapScaleExtra:F

.field private NumberOfProvinces:I

.field private ProvinceBorderNew:Z

.field private ProvinceNames:Z

.field private RegionsPackage:Ljava/lang/String;

.field private Scenario:Ljava/lang/String;

.field private Wiki:Ljava/lang/String;

.field private WorldMap:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->MapScaleExtra:F

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->ProvinceBorderNew:Z

    .line 98
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->ProvinceNames:Z

    return-void
.end method

.method static synthetic access$1000(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->WorldMap:Z

    return v0
.end method

.method static synthetic access$1100(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->Scenario:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->Wiki:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->ProvinceBorderNew:Z

    return v0
.end method

.method static synthetic access$1400(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->ProvinceNames:Z

    return v0
.end method

.method static synthetic access$200(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->MapName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->Author:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->BackgroundName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->ContinentsPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->RegionsPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->NumberOfProvinces:I

    return v0
.end method

.method static synthetic access$800(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)F
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->MapScaleExtra:F

    return v0
.end method

.method static synthetic access$900(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    .line 88
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->MapScale:I

    return v0
.end method
