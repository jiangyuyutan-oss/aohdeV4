.class Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/compression/lzma/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiteralDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;
    }
.end annotation


# instance fields
.field m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

.field m_NumPosBits:I

.field m_NumPrevBits:I

.field m_PosMask:I

.field final synthetic this$0:Lcom/badlogic/gdx/utils/compression/lzma/Decoder;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/utils/compression/lzma/Decoder;

    .line 59
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->this$0:Lcom/badlogic/gdx/utils/compression/lzma/Decoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Create(II)V
    .registers 7
    .param p1, "numPosBits"  # I
    .param p2, "numPrevBits"  # I

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPrevBits:I

    if-ne v0, p2, :cond_d

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPosBits:I

    if-ne v0, p1, :cond_d

    return-void

    .line 100
    :cond_d
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPosBits:I

    .line 101
    const/4 v0, 0x1

    shl-int v1, v0, p1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_PosMask:I

    .line 102
    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPrevBits:I

    .line 103
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPrevBits:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPosBits:I

    add-int/2addr v1, v2

    shl-int/2addr v0, v1

    .line 104
    .local v0, "numStates":I
    new-array v1, v0, [Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    if-ge v1, v0, :cond_30

    .line 106
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    new-instance v3, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;)V

    aput-object v3, v2, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 107
    .end local v1  # "i":I
    :cond_30
    return-void
.end method

.method GetDecoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;
    .registers 7
    .param p1, "pos"  # I
    .param p2, "prevByte"  # B

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_PosMask:I

    and-int/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPrevBits:I

    shl-int/2addr v1, v2

    and-int/lit16 v2, p2, 0xff

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPrevBits:I

    rsub-int/lit8 v3, v3, 0x8

    ushr-int/2addr v2, v3

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public Init()V
    .registers 4

    .line 110
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPrevBits:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPosBits:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 111
    .local v0, "numStates":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_15

    .line 112
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->Init()V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 113
    .end local v1  # "i":I
    :cond_15
    return-void
.end method
