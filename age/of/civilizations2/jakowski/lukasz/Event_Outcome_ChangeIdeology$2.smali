.class Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_ChangeIdeology$2;
.super Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.source "Event_Outcome_ChangeIdeology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_ChangeIdeology;->outcomeAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_ChangeIdeology;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_ChangeIdeology;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_ChangeIdeology;
    .param p2, "taskKey"  # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_ChangeIdeology$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_ChangeIdeology;

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 4

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 87
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_ChangeIdeology$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_ChangeIdeology;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_ChangeIdeology;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_25

    .line 88
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->loadPlayersFlag()V

    .line 89
    goto :goto_28

    .line 86
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    .end local v0  # "i":I
    :cond_28
    :goto_28
    return-void
.end method
