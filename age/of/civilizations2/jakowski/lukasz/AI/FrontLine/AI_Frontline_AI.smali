.class public Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;
.super Ljava/lang/Object;
.source "AI_Frontline_AI.java"


# instance fields
.field private iFrontLinesSize:I

.field private iWithCivID:I

.field private lFrontLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;",
            ">;"
        }
    .end annotation
.end field

.field private lFrontLines_OwnFront:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;Z)V
    .registers 6
    .param p1, "iWithCivID"  # I
    .param p2, "nFront"  # Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;
    .param p3, "ownFront"  # Z

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->lFrontLines:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->lFrontLines_OwnFront:Ljava/util/List;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->iFrontLinesSize:I

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->iWithCivID:I

    .line 20
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->iWithCivID:I

    .line 22
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->lFrontLines:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->lFrontLines_OwnFront:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->lFrontLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->iFrontLinesSize:I

    .line 25
    return-void
.end method


# virtual methods
.method public final addFrontLine(Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;Z)V
    .registers 5
    .param p1, "nFront"  # Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;
    .param p2, "ownFront"  # Z

    .line 30
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->lFrontLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->lFrontLines_OwnFront:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->lFrontLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->iFrontLinesSize:I

    .line 33
    return-void
.end method

.method public final getFrontLine(I)Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;
    .registers 3
    .param p1, "id"  # I

    .line 36
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->lFrontLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    return-object v0
.end method

.method public final getFrontLinesSize()I
    .registers 2

    .line 40
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->iFrontLinesSize:I

    return v0
.end method

.method public final getWithCivID()I
    .registers 2

    .line 44
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->iWithCivID:I

    return v0
.end method

.method public ownFront(I)Z
    .registers 3
    .param p1, "i"  # I

    .line 48
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline_AI;->lFrontLines_OwnFront:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
