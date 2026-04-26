.class Ljavazoom/jl/decoder/LayerIIIDecoder$Sftable;
.super Ljava/lang/Object;
.source "LayerIIIDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavazoom/jl/decoder/LayerIIIDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sftable"
.end annotation


# instance fields
.field public l:[I

.field public s:[I

.field final synthetic this$0:Ljavazoom/jl/decoder/LayerIIIDecoder;


# direct methods
.method public constructor <init>(Ljavazoom/jl/decoder/LayerIIIDecoder;)V
    .registers 2

    .line 1960
    iput-object p1, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$Sftable;->this$0:Ljavazoom/jl/decoder/LayerIIIDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1961
    const/4 p1, 0x5

    new-array p1, p1, [I

    iput-object p1, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$Sftable;->l:[I

    .line 1962
    const/4 p1, 0x3

    new-array p1, p1, [I

    iput-object p1, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$Sftable;->s:[I

    .line 1963
    return-void
.end method

.method public constructor <init>(Ljavazoom/jl/decoder/LayerIIIDecoder;[I[I)V
    .registers 4
    .param p2, "thel"  # [I
    .param p3, "thes"  # [I

    .line 1965
    iput-object p1, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$Sftable;->this$0:Ljavazoom/jl/decoder/LayerIIIDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1966
    iput-object p2, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$Sftable;->l:[I

    .line 1967
    iput-object p3, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$Sftable;->s:[I

    .line 1968
    return-void
.end method
