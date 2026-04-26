.class public Lcom/badlogic/gdx/utils/DataInput;
.super Ljava/io/DataInputStream;
.source "DataInput.java"


# instance fields
.field private chars:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"  # Ljava/io/InputStream;

    .line 29
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    .line 30
    return-void
.end method

.method private readUtf8_slow(III)V
    .registers 7
    .param p1, "charCount"  # I
    .param p2, "charIndex"  # I
    .param p3, "b"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    .line 84
    .local v0, "chars":[C
    :goto_2
    shr-int/lit8 v1, p3, 0x4

    packed-switch v1, :pswitch_data_40

    :pswitch_7  #0x8, 0x9, 0xa, 0xb
    goto :goto_33

    .line 100
    :pswitch_8  #0xe
    and-int/lit8 v1, p3, 0xf

    shl-int/lit8 v1, v1, 0xc

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v2

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v0, p2

    goto :goto_33

    .line 97
    :pswitch_20  #0xc, 0xd
    and-int/lit8 v1, p3, 0x1f

    shl-int/lit8 v1, v1, 0x6

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v0, p2

    .line 98
    goto :goto_33

    .line 93
    :pswitch_2f  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    int-to-char v1, p3

    aput-char v1, v0, p2

    .line 94
    nop

    .line 103
    :goto_33
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p1, :cond_38

    .line 106
    return-void

    .line 104
    :cond_38
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v1

    and-int/lit16 p3, v1, 0xff

    goto :goto_2

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2f  #00000000
        :pswitch_2f  #00000001
        :pswitch_2f  #00000002
        :pswitch_2f  #00000003
        :pswitch_2f  #00000004
        :pswitch_2f  #00000005
        :pswitch_2f  #00000006
        :pswitch_2f  #00000007
        :pswitch_7  #00000008
        :pswitch_7  #00000009
        :pswitch_7  #0000000a
        :pswitch_7  #0000000b
        :pswitch_20  #0000000c
        :pswitch_20  #0000000d
        :pswitch_8  #0000000e
    .end packed-switch
.end method


# virtual methods
.method public readInt(Z)I
    .registers 6
    .param p1, "optimizePositive"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v0

    .line 35
    .local v0, "b":I
    and-int/lit8 v1, v0, 0x7f

    .line 36
    .local v1, "result":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_3a

    .line 37
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v0

    .line 38
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    .line 39
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_3a

    .line 40
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v0

    .line 41
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v1, v2

    .line 42
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_3a

    .line 43
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v0

    .line 44
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v1, v2

    .line 45
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_3a

    .line 46
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v0

    .line 47
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v1, v2

    .line 52
    :cond_3a
    if-eqz p1, :cond_3e

    move v2, v1

    goto :goto_44

    :cond_3e
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    xor-int/2addr v2, v3

    :goto_44
    return v2
.end method

.method public readString()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataInput;->readInt(Z)I

    move-result v0

    .line 59
    .local v0, "charCount":I
    packed-switch v0, :pswitch_data_3c

    .line 65
    add-int/lit8 v0, v0, -0x1

    .line 66
    iget-object v1, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    array-length v1, v1

    if-ge v1, v0, :cond_19

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    goto :goto_19

    .line 63
    :pswitch_14  #0x1
    const-string v1, ""

    return-object v1

    .line 61
    :pswitch_17  #0x0
    const/4 v1, 0x0

    return-object v1

    .line 67
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    .line 69
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 70
    .local v2, "charIndex":I
    const/4 v3, 0x0

    .line 71
    .local v3, "b":I
    :goto_1d
    if-ge v2, v0, :cond_2f

    .line 72
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v3

    .line 73
    const/16 v4, 0x7f

    if-le v3, v4, :cond_28

    goto :goto_2f

    .line 74
    :cond_28
    add-int/lit8 v4, v2, 0x1

    .end local v2  # "charIndex":I
    .local v4, "charIndex":I
    int-to-char v5, v3

    aput-char v5, v1, v2

    move v2, v4

    goto :goto_1d

    .line 77
    .end local v4  # "charIndex":I
    .restart local v2  # "charIndex":I
    :cond_2f
    :goto_2f
    if-ge v2, v0, :cond_34

    invoke-direct {p0, v0, v2, v3}, Lcom/badlogic/gdx/utils/DataInput;->readUtf8_slow(III)V

    .line 78
    :cond_34
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_17  #00000000
        :pswitch_14  #00000001
    .end packed-switch
.end method
