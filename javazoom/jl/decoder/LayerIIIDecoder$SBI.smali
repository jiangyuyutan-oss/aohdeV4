.class Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;
.super Ljava/lang/Object;
.source "LayerIIIDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavazoom/jl/decoder/LayerIIIDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SBI"
.end annotation


# instance fields
.field public l:[I

.field public s:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1739
    const/16 v0, 0x17

    new-array v0, v0, [I

    iput-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    .line 1740
    const/16 v0, 0xe

    new-array v0, v0, [I

    iput-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    .line 1741
    return-void
.end method

.method public constructor <init>([I[I)V
    .registers 3
    .param p1, "thel"  # [I
    .param p2, "thes"  # [I

    .line 1743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1744
    iput-object p1, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    .line 1745
    iput-object p2, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    .line 1746
    return-void
.end method
