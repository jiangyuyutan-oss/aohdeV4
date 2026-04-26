.class public Lage/of/civilizations2/jakowski/lukasz/Event_Decision;
.super Ljava/lang/Object;
.source "Event_Decision.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iAIChance:I

.field public lOutcomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;",
            ">;"
        }
    .end annotation
.end field

.field public sDesc:Ljava/lang/String;

.field public sTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->sTitle:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    .line 26
    const/16 v1, 0x64

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->iAIChance:I

    .line 38
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->sDesc:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final executeDecision()V
    .registers 3

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 31
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->outcomeAction()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_18

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    .end local v0  # "i":I
    :cond_17
    goto :goto_1c

    .line 33
    :catch_18
    move-exception v0

    .line 34
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 36
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method
