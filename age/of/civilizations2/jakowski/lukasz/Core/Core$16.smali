.class Lage/of/civilizations2/jakowski/lukasz/Core/Core$16;
.super Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildCivilizationsRegions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Core/Core;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Core/Core;
    .param p2, "taskKey"  # Ljava/lang/String;

    .line 3785
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$16;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 3788
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 3789
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->buildNeighbors(I)V

    .line 3788
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3791
    .end local v0  # "i":I
    :cond_17
    return-void
.end method
