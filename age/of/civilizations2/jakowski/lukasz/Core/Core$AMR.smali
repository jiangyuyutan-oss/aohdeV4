.class public Lage/of/civilizations2/jakowski/lukasz/Core/Core$AMR;
.super Ljava/lang/Object;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Core/Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AMR"
.end annotation


# instance fields
.field public ILM:I

.field public OBC:I

.field public SPR:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "OBC"  # I
    .param p2, "SPR"  # I
    .param p3, "ILM"  # I

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$AMR;->OBC:I

    .line 781
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$AMR;->SPR:I

    .line 782
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$AMR;->ILM:I

    .line 783
    return-void
.end method
