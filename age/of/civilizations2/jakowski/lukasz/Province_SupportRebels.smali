.class public Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;
.super Ljava/lang/Object;
.source "Province_SupportRebels.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iByCivID:I

.field public iRebelsCivID:I

.field public iTurnsLeft:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "iByCivID"  # I
    .param p2, "iRebelsCivID"  # I
    .param p3, "iTurnsLeft"  # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iByCivID:I

    .line 22
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    .line 23
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    .line 24
    return-void
.end method
