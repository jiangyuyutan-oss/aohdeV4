.class public Lage/of/civilizations2/jakowski/lukasz/Map$Config;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private Age_of_Civilizations:Ljava/lang/String;

.field private Map:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Map$Config;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    .line 71
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;->Map:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public setMapData(Ljava/util/ArrayList;)V
    .registers 2
    .param p1, "nMap"  # Ljava/util/ArrayList;

    .line 76
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;->Map:Ljava/util/ArrayList;

    .line 77
    return-void
.end method
