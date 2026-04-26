.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;
.super Ljava/lang/Object;
.source "DiplomaticSummit.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public civHostID:I

.field public endTurnID:I

.field public invitedCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->invitedCivs:Ljava/util/List;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->endTurnID:I

    return-void
.end method


# virtual methods
.method public isInvited(I)Z
    .registers 5
    .param p1, "nCivID"  # I

    .line 19
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->invitedCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 20
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->invitedCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 21
    return v1

    .line 19
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 25
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method
