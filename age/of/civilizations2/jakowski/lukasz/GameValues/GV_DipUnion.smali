.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipUnion;
.super Ljava/lang/Object;
.source "GV_DipUnion.java"


# instance fields
.field public COST_OFFER_FORM_UNION_DIPLOMACY_POINTS:I

.field public UNION_REQUESTS_RESPONSE:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x16

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipUnion;->COST_OFFER_FORM_UNION_DIPLOMACY_POINTS:I

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipUnion;->UNION_REQUESTS_RESPONSE:Z

    return-void
.end method
