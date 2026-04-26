.class public Lcom/badlogic/gdx/utils/DataOutput;
.super Ljava/io/DataOutputStream;
.source "DataOutput.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"  # Ljava/io/OutputStream;

    .line 27
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    return-void
.end method

.method private writeString_slow(Ljava/lang/String;II)V
    .registers 6
    .param p1, "value"  # Ljava/lang/String;
    .param p2, "charCount"  # I
    .param p3, "charIndex"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    nop

    :goto_1
    if-ge p3, p2, :cond_46

    .line 84
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 85
    .local v0, "c":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_10

    .line 86
    int-to-byte v1, v0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    goto :goto_43

    .line 87
    :cond_10
    const/16 v1, 0x7ff

    if-le v0, v1, :cond_31

    .line 88
    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0xf

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 89
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 90
    and-int/lit8 v1, v0, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    goto :goto_43

    .line 92
    :cond_31
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x1f

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 93
    and-int/lit8 v1, v0, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 83
    .end local v0  # "c":I
    :goto_43
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 96
    :cond_46
    return-void
.end method


# virtual methods
.method public writeInt(IZ)I
    .registers 5
    .param p1, "value"  # I
    .param p2, "optimizePositive"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    if-nez p2, :cond_8

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int p1, v0, v1

    .line 35
    :cond_8
    ushr-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_12

    .line 36
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 37
    const/4 v0, 0x1

    return v0

    .line 39
    :cond_12
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 40
    ushr-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_26

    .line 41
    ushr-int/lit8 v0, p1, 0x7

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 42
    const/4 v0, 0x2

    return v0

    .line 44
    :cond_26
    ushr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 45
    ushr-int/lit8 v0, p1, 0x15

    if-nez v0, :cond_3a

    .line 46
    ushr-int/lit8 v0, p1, 0xe

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 47
    const/4 v0, 0x3

    return v0

    .line 49
    :cond_3a
    ushr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 50
    ushr-int/lit8 v0, p1, 0x1c

    if-nez v0, :cond_4e

    .line 51
    ushr-int/lit8 v0, p1, 0x15

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 52
    const/4 v0, 0x4

    return v0

    .line 54
    :cond_4e
    ushr-int/lit8 v0, p1, 0x15

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 55
    ushr-int/lit8 v0, p1, 0x1c

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 56
    const/4 v0, 0x5

    return v0
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    if-nez p1, :cond_7

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 64
    return-void

    .line 66
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 67
    .local v0, "charCount":I
    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 68
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->writeByte(I)V

    .line 69
    return-void

    .line 71
    :cond_12
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/utils/DataOutput;->writeInt(IZ)I

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "charIndex":I
    :goto_18
    if-ge v1, v0, :cond_2a

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 76
    .local v2, "c":I
    const/16 v3, 0x7f

    if-le v2, v3, :cond_23

    goto :goto_2a

    .line 77
    :cond_23
    int-to-byte v3, v2

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 74
    .end local v2  # "c":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 79
    :cond_2a
    :goto_2a
    if-ge v1, v0, :cond_2f

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->writeString_slow(Ljava/lang/String;II)V

    .line 80
    :cond_2f
    return-void
.end method
