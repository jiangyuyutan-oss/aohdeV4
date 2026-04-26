.class public Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;
.super Ljava/lang/Object;
.source "Province_SupportRebels_Help.java"


# instance fields
.field public iTurns:I

.field public max:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 3
    .param p1, "iTurns"  # I
    .param p2, "max"  # Z

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;->iTurns:I

    .line 14
    iput-boolean p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;->max:Z

    .line 15
    return-void
.end method
