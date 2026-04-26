.class Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;
.super Ljava/lang/Object;
.source "LayerIIIDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavazoom/jl/decoder/LayerIIIDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "temporaire2"
.end annotation


# instance fields
.field public l:[I

.field public s:[[I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1813
    const/16 v0, 0x17

    new-array v0, v0, [I

    iput-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    .line 1814
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0xd

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    .line 1815
    return-void
.end method
