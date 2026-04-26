.class Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$1;
.super Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.source "Game_Scenarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->buildProvincePopulationAndEconomy(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;
    .param p2, "taskKey"  # Ljava/lang/String;

    .line 1444
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 1447
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MapA/CitiesManager;->updateCitiesAll()V

    .line 1448
    return-void
.end method
