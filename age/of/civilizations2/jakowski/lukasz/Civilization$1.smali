.class Lage/of/civilizations2/jakowski/lukasz/Civilization$1;
.super Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.source "Civilization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateCivilizationIdeology(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Civilization;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .param p2, "taskKey"  # Ljava/lang/String;
    .param p3, "id"  # I

    .line 725
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-direct {p0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 728
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization$1;->id:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->loadFlag()Z

    .line 729
    return-void
.end method
