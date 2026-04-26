.class public Lcom/badlogic/gdx/utils/StringBuilder;
.super Ljava/lang/Object;
.source "StringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field static final INITIAL_CAPACITY:I = 0x10

.field private static final digits:[C


# instance fields
.field public chars:[C

.field public length:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"  # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-ltz p1, :cond_a

    .line 74
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 75
    return-void

    .line 72
    :cond_a
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/StringBuilder;)V
    .registers 6
    .param p1, "builder"  # Lcom/badlogic/gdx/utils/StringBuilder;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iget v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 88
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 89
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "seq"  # Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "string"  # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 99
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 100
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 101
    return-void
.end method

.method private enlargeBuffer(I)V
    .registers 7
    .param p1, "min"  # I

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 105
    .local v0, "newSize":I
    if-le p1, v0, :cond_f

    move v1, p1

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    new-array v1, v1, [C

    .line 106
    .local v1, "newData":[C
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 108
    return-void
.end method

.method private move(II)V
    .registers 10
    .param p1, "size"  # I
    .param p2, "index"  # I

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_15

    .line 330
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v2, p2, p1

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v3, p2

    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    return-void

    .line 333
    :cond_15
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v0, p1

    .local v0, "a":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    .line 334
    .local v1, "b":I
    if-le v0, v1, :cond_23

    move v2, v0

    goto :goto_24

    :cond_23
    move v2, v1

    .line 335
    .local v2, "newSize":I
    :goto_24
    new-array v3, v2, [C

    .line 336
    .local v3, "newData":[C
    iget-object v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iget-object v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v5, p2, p1

    iget v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v6, p2

    invoke-static {v4, p2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iput-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 340
    return-void
.end method

.method public static numChars(II)I
    .registers 4
    .param p0, "value"  # I
    .param p1, "radix"  # I

    .line 37
    if-gez p0, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    .line 38
    .local v0, "result":I
    :goto_5
    div-int v1, p0, p1

    move p0, v1

    if-eqz v1, :cond_d

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 40
    :cond_d
    return v0
.end method

.method public static numChars(JI)I
    .registers 8
    .param p0, "value"  # J
    .param p2, "radix"  # I

    .line 45
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 v2, 0x2

    goto :goto_9

    :cond_8
    const/4 v2, 0x1

    .line 46
    .local v2, "result":I
    :goto_9
    int-to-long v3, p2

    div-long v3, p0, v3

    move-wide p0, v3

    cmp-long v3, v3, v0

    if-eqz v3, :cond_14

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 48
    :cond_14
    return v2
.end method


# virtual methods
.method public append(C)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2
    .param p1, "c"  # C

    .line 752
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 753
    return-object p0
.end method

.method public append(D)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "d"  # D

    .line 893
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 894
    return-object p0
.end method

.method public append(F)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3
    .param p1, "f"  # F

    .line 882
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 883
    return-object p0
.end method

.method public append(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3
    .param p1, "value"  # I

    .line 763
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(II)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "value"  # I
    .param p2, "minLength"  # I

    .line 774
    const/16 v0, 0x30

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(IIC)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(IIC)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 12
    .param p1, "value"  # I
    .param p2, "minLength"  # I
    .param p3, "prefix"  # C

    .line 786
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_a

    .line 787
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 788
    return-object p0

    .line 790
    :cond_a
    if-gez p1, :cond_12

    .line 791
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 792
    neg-int p1, p1

    .line 794
    :cond_12
    const/4 v0, 0x1

    const/16 v1, 0xa

    if-le p2, v0, :cond_25

    .line 795
    invoke-static {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->numChars(II)I

    move-result v0

    sub-int v0, p2, v0

    .local v0, "j":I
    :goto_1d
    if-lez v0, :cond_25

    .line 796
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 795
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 798
    .end local v0  # "j":I
    :cond_25
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_87

    .line 799
    const v2, 0x3b9aca00

    if-lt p1, v2, :cond_41

    sget-object v3, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    int-to-long v4, p1

    const-wide v6, 0x2540be400L

    rem-long/2addr v4, v6

    const-wide/32 v6, 0x3b9aca00

    div-long/2addr v4, v6

    long-to-int v4, v4

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 800
    :cond_41
    const v3, 0x5f5e100

    if-lt p1, v3, :cond_50

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v2, p1, v2

    div-int/2addr v2, v3

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 801
    :cond_50
    const v2, 0x989680

    if-lt p1, v2, :cond_5f

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v3, p1, v3

    div-int/2addr v3, v2

    aget-char v3, v4, v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 802
    :cond_5f
    const v3, 0xf4240

    if-lt p1, v3, :cond_6e

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v2, p1, v2

    div-int/2addr v2, v3

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 803
    :cond_6e
    const v2, 0x186a0

    if-lt p1, v2, :cond_7d

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v3, p1, v3

    div-int/2addr v3, v2

    aget-char v3, v4, v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 804
    :cond_7d
    sget-object v3, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v2, p1, v2

    div-int/2addr v2, v0

    aget-char v0, v3, v2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 806
    :cond_87
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_95

    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit16 v3, p1, 0x2710

    div-int/2addr v3, v0

    aget-char v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 807
    :cond_95
    const/16 v0, 0x64

    if-lt p1, v0, :cond_a3

    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit16 v3, p1, 0x3e8

    div-int/2addr v3, v0

    aget-char v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 808
    :cond_a3
    if-lt p1, v1, :cond_af

    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit8 v2, p1, 0x64

    div-int/2addr v2, v1

    aget-char v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 809
    :cond_af
    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit8 v1, p1, 0xa

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 810
    return-object p0
.end method

.method public append(J)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "value"  # J

    .line 819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(JI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(JI)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 5
    .param p1, "value"  # J
    .param p3, "minLength"  # I

    .line 829
    const/16 v0, 0x30

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(JIC)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(JIC)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 14
    .param p1, "value"  # J
    .param p3, "minLength"  # I
    .param p4, "prefix"  # C

    .line 840
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 841
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 842
    return-object p0

    .line 844
    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_18

    .line 845
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 846
    neg-long p1, p1

    .line 848
    :cond_18
    const/4 v0, 0x1

    if-le p3, v0, :cond_2b

    .line 849
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->numChars(JI)I

    move-result v0

    sub-int v0, p3, v0

    .local v0, "j":I
    :goto_23
    if-lez v0, :cond_2b

    .line 850
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 849
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 852
    .end local v0  # "j":I
    :cond_2b
    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-ltz v2, :cond_154

    .line 853
    const-wide v2, 0xde0b6b3a7640000L

    cmp-long v4, p1, v2

    if-ltz v4, :cond_4f

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    long-to-double v5, p1

    const-wide v7, 0x43e158e460913d00L  # 1.0E19

    rem-double/2addr v5, v7

    const-wide v7, 0x43abc16d674ec800L  # 1.0E18

    div-double/2addr v5, v7

    double-to-int v5, v5

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 854
    :cond_4f
    const-wide v4, 0x16345785d8a0000L

    cmp-long v6, p1, v4

    if-ltz v6, :cond_63

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 855
    :cond_63
    const-wide v2, 0x2386f26fc10000L

    cmp-long v6, p1, v2

    if-ltz v6, :cond_77

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v4, v4

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 856
    :cond_77
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v6, p1, v4

    if-ltz v6, :cond_8b

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 857
    :cond_8b
    const-wide v2, 0x5af3107a4000L

    cmp-long v6, p1, v2

    if-ltz v6, :cond_9f

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v4, v4

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 858
    :cond_9f
    const-wide v4, 0x9184e72a000L

    cmp-long v6, p1, v4

    if-ltz v6, :cond_b3

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 859
    :cond_b3
    const-wide v2, 0xe8d4a51000L

    cmp-long v6, p1, v2

    if-ltz v6, :cond_c7

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v4, v4

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 860
    :cond_c7
    const-wide v4, 0x174876e800L

    cmp-long v6, p1, v4

    if-ltz v6, :cond_db

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 861
    :cond_db
    const-wide v2, 0x2540be400L

    cmp-long v6, p1, v2

    if-ltz v6, :cond_ef

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v4, v4

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 862
    :cond_ef
    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, p1, v4

    if-ltz v6, :cond_101

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 863
    :cond_101
    const-wide/32 v2, 0x5f5e100

    cmp-long v6, p1, v2

    if-ltz v6, :cond_113

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v4, v4

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 864
    :cond_113
    const-wide/32 v4, 0x989680

    cmp-long v6, p1, v4

    if-ltz v6, :cond_125

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 865
    :cond_125
    const-wide/32 v2, 0xf4240

    cmp-long v6, p1, v2

    if-ltz v6, :cond_137

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v4, v4

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 866
    :cond_137
    const-wide/32 v4, 0x186a0

    cmp-long v6, p1, v4

    if-ltz v6, :cond_149

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 867
    :cond_149
    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v3, p1, v4

    div-long/2addr v3, v0

    long-to-int v3, v3

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 869
    :cond_154
    const-wide/16 v2, 0x3e8

    cmp-long v4, p1, v2

    if-ltz v4, :cond_165

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v0, v0

    aget-char v0, v4, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 870
    :cond_165
    const-wide/16 v0, 0x64

    cmp-long v4, p1, v0

    if-ltz v4, :cond_176

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v2, v2

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 871
    :cond_176
    const-wide/16 v2, 0xa

    cmp-long v4, p1, v2

    if-ltz v4, :cond_187

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v0, v0

    aget-char v0, v4, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 872
    :cond_187
    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v1, p1, v2

    long-to-int v1, v1

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 873
    return-object p0
.end method

.method public append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 5
    .param p1, "builder"  # Lcom/badlogic/gdx/utils/StringBuilder;

    .line 975
    if-nez p1, :cond_6

    .line 976
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    goto :goto_e

    .line 978
    :cond_6
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    .line 979
    :goto_e
    return-object p0
.end method

.method public append(Lcom/badlogic/gdx/utils/StringBuilder;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 5
    .param p1, "builder"  # Lcom/badlogic/gdx/utils/StringBuilder;
    .param p2, "start"  # I
    .param p3, "end"  # I

    .line 997
    if-nez p1, :cond_6

    .line 998
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    goto :goto_b

    .line 1000
    :cond_6
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    .line 1001
    :goto_b
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 6
    .param p1, "csq"  # Ljava/lang/CharSequence;

    .line 963
    if-nez p1, :cond_6

    .line 964
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    goto :goto_1d

    .line 965
    :cond_6
    instance-of v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v0, :cond_16

    .line 966
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/StringBuilder;

    .line 967
    .local v0, "builder":Lcom/badlogic/gdx/utils/StringBuilder;
    iget-object v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v2, 0x0

    iget v3, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    .line 968
    .end local v0  # "builder":Lcom/badlogic/gdx/utils/StringBuilder;
    goto :goto_1d

    .line 969
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 971
    :goto_1d
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "csq"  # Ljava/lang/CharSequence;
    .param p2, "start"  # I
    .param p3, "end"  # I

    .line 992
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    .line 993
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3
    .param p1, "obj"  # Ljava/lang/Object;

    .line 904
    if-nez p1, :cond_6

    .line 905
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    goto :goto_d

    .line 907
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 909
    :goto_d
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2
    .param p1, "str"  # Ljava/lang/String;

    .line 917
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 918
    return-object p0
.end method

.method public append(Z)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3
    .param p1, "b"  # Z

    .line 741
    if-eqz p1, :cond_5

    const-string v0, "true"

    goto :goto_7

    :cond_5
    const-string v0, "false"

    :goto_7
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 742
    return-object p0
.end method

.method public append([C)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2
    .param p1, "ch"  # [C

    .line 939
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([C)V

    .line 940
    return-object p0
.end method

.method public append([CII)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "str"  # [C
    .param p2, "offset"  # I
    .param p3, "len"  # I

    .line 953
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    .line 954
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method final append0(C)V
    .registers 5
    .param p1, "ch"  # C

    .line 148
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_e

    .line 149
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 151
    :cond_e
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char p1, v0, v1

    .line 152
    return-void
.end method

.method final append0(Ljava/lang/CharSequence;II)V
    .registers 5
    .param p1, "s"  # Ljava/lang/CharSequence;
    .param p2, "start"  # I
    .param p3, "end"  # I

    .line 169
    if-nez p1, :cond_4

    .line 170
    const-string p1, "null"

    .line 172
    :cond_4
    if-ltz p2, :cond_1c

    if-ltz p3, :cond_1c

    if-gt p2, p3, :cond_1c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_1c

    .line 176
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 177
    return-void

    .line 173
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method final append0(Ljava/lang/String;)V
    .registers 7
    .param p1, "string"  # Ljava/lang/String;

    .line 155
    if-nez p1, :cond_6

    .line 156
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    .line 157
    return-void

    .line 159
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 160
    .local v0, "adding":I
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v1, v0

    .line 161
    .local v1, "newSize":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v2, v2

    if-le v1, v2, :cond_15

    .line 162
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 164
    :cond_15
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 165
    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 166
    return-void
.end method

.method final append0([C)V
    .registers 7
    .param p1, "value"  # [C

    .line 122
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 123
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 124
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 126
    :cond_c
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 128
    return-void
.end method

.method final append0([CII)V
    .registers 7
    .param p1, "value"  # [C
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 132
    array-length v0, p1

    if-gt p2, v0, :cond_39

    if-ltz p2, :cond_39

    .line 135
    if-ltz p3, :cond_20

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_20

    .line 139
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v0, p3

    .line 140
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_16

    .line 141
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 143
    :cond_16
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 145
    return-void

    .line 136
    .end local v0  # "newSize":I
    :cond_20
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_39
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendCodePoint(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3
    .param p1, "codePoint"  # I

    .line 1011
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([C)V

    .line 1012
    return-object p0
.end method

.method public appendLine(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3
    .param p1, "str"  # Ljava/lang/String;

    .line 927
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 928
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 929
    return-object p0
.end method

.method final appendNull()V
    .registers 6

    .line 111
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x4

    .line 112
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 113
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 115
    :cond_c
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    .line 116
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v3, 0x75

    aput-char v3, v1, v2

    .line 117
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v3, 0x6c

    aput-char v3, v1, v2

    .line 118
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char v3, v1, v2

    .line 119
    return-void
.end method

.method public capacity()I
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .registers 3
    .param p1, "index"  # I

    .line 194
    if-ltz p1, :cond_b

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_b

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v0, v0, p1

    return v0

    .line 195
    :cond_b
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public clear()V
    .registers 2

    .line 1040
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1041
    return-void
.end method

.method public codePointAt(I)I
    .registers 4
    .param p1, "index"  # I

    .line 682
    if-ltz p1, :cond_f

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_f

    .line 685
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0

    .line 683
    :cond_f
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public codePointBefore(I)I
    .registers 3
    .param p1, "index"  # I

    .line 697
    const/4 v0, 0x1

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_e

    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v0

    return v0

    .line 698
    :cond_e
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public codePointCount(II)I
    .registers 5
    .param p1, "beginIndex"  # I
    .param p2, "endIndex"  # I

    .line 714
    if-ltz p1, :cond_11

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_11

    if-gt p1, p2, :cond_11

    .line 717
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0

    .line 715
    :cond_11
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 5
    .param p1, "subString"  # Ljava/lang/String;

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public containsIgnoreCase(Ljava/lang/String;)Z
    .registers 5
    .param p1, "subString"  # Ljava/lang/String;

    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOfIgnoreCase(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public delete(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3
    .param p1, "start"  # I
    .param p2, "end"  # I

    .line 1023
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->delete0(II)V

    .line 1024
    return-object p0
.end method

.method final delete0(II)V
    .registers 6
    .param p1, "start"  # I
    .param p2, "end"  # I

    .line 201
    if-ltz p1, :cond_21

    .line 202
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p2, v0, :cond_8

    .line 203
    iget p2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 205
    :cond_8
    if-ne p2, p1, :cond_b

    .line 206
    return-void

    .line 208
    :cond_b
    if-le p2, p1, :cond_21

    .line 209
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v0, p2

    .line 210
    .local v0, "count":I
    if-ltz v0, :cond_19

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, p2, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    :cond_19
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int v2, p2, p1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 212
    return-void

    .line 215
    .end local v0  # "count":I
    :cond_21
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public deleteCharAt(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 2
    .param p1, "index"  # I

    .line 1034
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->deleteCharAt0(I)V

    .line 1035
    return-object p0
.end method

.method final deleteCharAt0(I)V
    .registers 6
    .param p1, "location"  # I

    .line 219
    if-ltz p1, :cond_1d

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_1d

    .line 222
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 223
    .local v0, "count":I
    if-lez v0, :cond_16

    .line 224
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    :cond_16
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 227
    return-void

    .line 220
    .end local v0  # "count":I
    :cond_1d
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public ensureCapacity(I)V
    .registers 4
    .param p1, "min"  # I

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    if-le p1, v0, :cond_14

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    .line 238
    .local v0, "twice":I
    if-le v0, p1, :cond_10

    move v1, v0

    goto :goto_11

    :cond_10
    move v1, p1

    :goto_11
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 240
    .end local v0  # "twice":I
    :cond_14
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "obj"  # Ljava/lang/Object;

    .line 1272
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1273
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1274
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 1275
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1276
    .local v2, "other":Lcom/badlogic/gdx/utils/StringBuilder;
    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1277
    .local v3, "length":I
    iget v4, v2, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eq v3, v4, :cond_1d

    return v1

    .line 1278
    :cond_1d
    iget-object v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .local v4, "chars":[C
    iget-object v5, v2, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 1279
    .local v5, "chars2":[C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_22
    if-ge v6, v3, :cond_2e

    .line 1280
    aget-char v7, v4, v6

    aget-char v8, v5, v6

    if-eq v7, v8, :cond_2b

    return v1

    .line 1279
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 1281
    .end local v6  # "i":I
    :cond_2e
    return v0
.end method

.method public equalsIgnoreCase(Lcom/badlogic/gdx/utils/StringBuilder;)Z
    .registers 11
    .param p1, "other"  # Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1285
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1286
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1287
    :cond_8
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1288
    .local v2, "length":I
    iget v3, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eq v2, v3, :cond_f

    return v1

    .line 1289
    :cond_f
    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .local v3, "chars":[C
    iget-object v4, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 1290
    .local v4, "chars2":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    if-ge v5, v2, :cond_2a

    .line 1291
    aget-char v6, v3, v5

    .line 1292
    .local v6, "c":C
    aget-char v7, v4, v5

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 1293
    .local v7, "upper":C
    if-eq v6, v7, :cond_27

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-eq v6, v8, :cond_27

    return v1

    .line 1290
    .end local v6  # "c":C
    .end local v7  # "upper":C
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 1295
    .end local v5  # "i":I
    :cond_2a
    return v0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .registers 9
    .param p1, "other"  # Ljava/lang/String;

    .line 1299
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1300
    :cond_4
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1301
    .local v1, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_d

    return v0

    .line 1302
    :cond_d
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 1303
    .local v2, "chars":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_28

    .line 1304
    aget-char v4, v2, v3

    .line 1305
    .local v4, "c":C
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 1306
    .local v5, "upper":C
    if-eq v4, v5, :cond_25

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-eq v4, v6, :cond_25

    return v0

    .line 1303
    .end local v4  # "c":C
    .end local v5  # "upper":C
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1308
    .end local v3  # "i":I
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method public getChars(II[CI)V
    .registers 7
    .param p1, "start"  # I
    .param p2, "end"  # I
    .param p3, "dest"  # [C
    .param p4, "destStart"  # I

    .line 252
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_12

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_12

    if-gt p1, p2, :cond_12

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    return-void

    .line 253
    :cond_12
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method final getValue()[C
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1265
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x1f

    .line 1266
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge v1, v2, :cond_14

    .line 1267
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v3, v3, v1

    add-int v0, v2, v3

    .line 1266
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1268
    .end local v1  # "index":I
    :cond_14
    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "string"  # Ljava/lang/String;

    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .registers 13
    .param p1, "subString"  # Ljava/lang/String;
    .param p2, "start"  # I

    .line 537
    if-gez p2, :cond_3

    .line 538
    const/4 p2, 0x0

    .line 540
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 541
    .local v0, "subCount":I
    if-nez v0, :cond_15

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p2, v1, :cond_13

    if-nez p2, :cond_10

    goto :goto_13

    :cond_10
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    goto :goto_14

    :cond_13
    :goto_13
    move v1, p2

    :goto_14
    return v1

    .line 542
    :cond_15
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v1, v0

    .line 543
    .local v1, "maxIndex":I
    const/4 v2, -0x1

    if-le p2, v1, :cond_1c

    return v2

    .line 544
    :cond_1c
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 546
    .local v3, "firstChar":C
    :goto_21
    move v4, p2

    .line 547
    .local v4, "i":I
    const/4 v5, 0x0

    .line 548
    .local v5, "found":Z
    :goto_23
    if-gt v4, v1, :cond_30

    .line 549
    iget-object v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v6, v6, v4

    if-ne v6, v3, :cond_2d

    .line 550
    const/4 v5, 0x1

    .line 551
    goto :goto_30

    .line 548
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 554
    :cond_30
    :goto_30
    if-nez v5, :cond_33

    return v2

    .line 555
    :cond_33
    move v6, v4

    .local v6, "o1":I
    const/4 v7, 0x0

    .line 556
    .local v7, "o2":I
    :goto_35
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v0, :cond_46

    iget-object v8, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v6, v6, 0x1

    aget-char v8, v8, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_46

    goto :goto_35

    .line 559
    :cond_46
    if-ne v7, v0, :cond_49

    return v4

    .line 560
    :cond_49
    add-int/lit8 p2, v4, 0x1

    .line 561
    .end local v4  # "i":I
    .end local v5  # "found":Z
    .end local v6  # "o1":I
    .end local v7  # "o2":I
    goto :goto_21
.end method

.method public indexOfIgnoreCase(Ljava/lang/String;I)I
    .registers 15
    .param p1, "subString"  # Ljava/lang/String;
    .param p2, "start"  # I

    .line 565
    if-gez p2, :cond_3

    .line 566
    const/4 p2, 0x0

    .line 568
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 569
    .local v0, "subCount":I
    if-nez v0, :cond_15

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p2, v1, :cond_13

    if-nez p2, :cond_10

    goto :goto_13

    :cond_10
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    goto :goto_14

    :cond_13
    :goto_13
    move v1, p2

    :goto_14
    return v1

    .line 570
    :cond_15
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v1, v0

    .line 571
    .local v1, "maxIndex":I
    const/4 v2, -0x1

    if-le p2, v1, :cond_1c

    return v2

    .line 572
    :cond_1c
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 573
    .local v3, "firstUpper":C
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 575
    .local v4, "firstLower":C
    :goto_29
    move v5, p2

    .line 576
    .local v5, "i":I
    const/4 v6, 0x0

    .line 577
    .local v6, "found":Z
    :goto_2b
    if-gt v5, v1, :cond_3b

    .line 578
    iget-object v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v7, v7, v5

    .line 579
    .local v7, "c":C
    if-eq v7, v3, :cond_39

    if-ne v7, v4, :cond_36

    goto :goto_39

    .line 577
    .end local v7  # "c":C
    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 580
    .restart local v7  # "c":C
    :cond_39
    :goto_39
    const/4 v6, 0x1

    .line 581
    nop

    .line 584
    .end local v7  # "c":C
    :cond_3b
    if-nez v6, :cond_3e

    return v2

    .line 585
    :cond_3e
    move v7, v5

    .local v7, "o1":I
    const/4 v8, 0x0

    .line 586
    .local v8, "o2":I
    :goto_40
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v0, :cond_5c

    .line 587
    iget-object v9, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v7, v7, 0x1

    aget-char v9, v9, v7

    .line 588
    .local v9, "c":C
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    .line 589
    .local v10, "upper":C
    if-eq v9, v10, :cond_5b

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    if-eq v9, v11, :cond_5b

    goto :goto_5c

    .line 590
    .end local v9  # "c":C
    .end local v10  # "upper":C
    :cond_5b
    goto :goto_40

    .line 591
    :cond_5c
    :goto_5c
    if-ne v8, v0, :cond_5f

    return v5

    .line 592
    :cond_5f
    add-int/lit8 p2, v5, 0x1

    .line 593
    .end local v5  # "i":I
    .end local v6  # "found":Z
    .end local v7  # "o1":I
    .end local v8  # "o2":I
    goto :goto_29
.end method

.method public insert(IC)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3
    .param p1, "offset"  # I
    .param p2, "c"  # C

    .line 1065
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(IC)V

    .line 1066
    return-object p0
.end method

.method public insert(ID)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 5
    .param p1, "offset"  # I
    .param p2, "d"  # D

    .line 1117
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1118
    return-object p0
.end method

.method public insert(IF)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "offset"  # I
    .param p2, "f"  # F

    .line 1104
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1105
    return-object p0
.end method

.method public insert(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "offset"  # I
    .param p2, "i"  # I

    .line 1078
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1079
    return-object p0
.end method

.method public insert(IJ)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 5
    .param p1, "offset"  # I
    .param p2, "l"  # J

    .line 1091
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1092
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "offset"  # I
    .param p2, "s"  # Ljava/lang/CharSequence;

    .line 1185
    if-nez p2, :cond_5

    const-string v0, "null"

    goto :goto_9

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1186
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 5
    .param p1, "offset"  # I
    .param p2, "s"  # Ljava/lang/CharSequence;
    .param p3, "start"  # I
    .param p4, "end"  # I

    .line 1202
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/CharSequence;II)V

    .line 1203
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "offset"  # I
    .param p2, "obj"  # Ljava/lang/Object;

    .line 1130
    if-nez p2, :cond_5

    const-string v0, "null"

    goto :goto_9

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1131
    return-object p0
.end method

.method public insert(ILjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3
    .param p1, "offset"  # I
    .param p2, "str"  # Ljava/lang/String;

    .line 1142
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1143
    return-object p0
.end method

.method public insert(IZ)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "offset"  # I
    .param p2, "b"  # Z

    .line 1052
    if-eqz p2, :cond_5

    const-string v0, "true"

    goto :goto_7

    :cond_5
    const-string v0, "false"

    :goto_7
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1053
    return-object p0
.end method

.method public insert(I[C)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 3
    .param p1, "offset"  # I
    .param p2, "ch"  # [C

    .line 1155
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(I[C)V

    .line 1156
    return-object p0
.end method

.method public insert(I[CII)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 5
    .param p1, "offset"  # I
    .param p2, "str"  # [C
    .param p3, "strOffset"  # I
    .param p4, "strLen"  # I

    .line 1171
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(I[CII)V

    .line 1172
    return-object p0
.end method

.method final insert0(IC)V
    .registers 5
    .param p1, "index"  # I
    .param p2, "ch"  # C

    .line 286
    if-ltz p1, :cond_14

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_14

    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 291
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char p2, v1, p1

    .line 292
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 293
    return-void

    .line 288
    :cond_14
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method final insert0(ILjava/lang/CharSequence;II)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "s"  # Ljava/lang/CharSequence;
    .param p3, "start"  # I
    .param p4, "end"  # I

    .line 312
    if-nez p2, :cond_4

    .line 313
    const-string p2, "null"

    .line 315
    :cond_4
    if-ltz p1, :cond_22

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_22

    if-ltz p3, :cond_22

    if-ltz p4, :cond_22

    if-gt p3, p4, :cond_22

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p4, v0, :cond_22

    .line 318
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 319
    return-void

    .line 316
    :cond_22
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method final insert0(ILjava/lang/String;)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "string"  # Ljava/lang/String;

    .line 296
    if-ltz p1, :cond_20

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_20

    .line 297
    if-nez p2, :cond_a

    .line 298
    const-string p2, "null"

    .line 300
    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 301
    .local v0, "min":I
    if-eqz v0, :cond_1e

    .line 302
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 303
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 304
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 306
    .end local v0  # "min":I
    :cond_1e
    nop

    .line 309
    return-void

    .line 307
    :cond_20
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method final insert0(I[C)V
    .registers 5
    .param p1, "index"  # I
    .param p2, "value"  # [C

    .line 259
    if-ltz p1, :cond_19

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_19

    .line 262
    array-length v0, p2

    if-eqz v0, :cond_18

    .line 263
    array-length v0, p2

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 264
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 267
    :cond_18
    return-void

    .line 260
    :cond_19
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method final insert0(I[CII)V
    .registers 8
    .param p1, "index"  # I
    .param p2, "value"  # [C
    .param p3, "start"  # I
    .param p4, "length"  # I

    .line 270
    if-ltz p1, :cond_4a

    if-gt p1, p4, :cond_4a

    .line 272
    if-ltz p3, :cond_1c

    if-ltz p4, :cond_1c

    array-length v0, p2

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1c

    .line 273
    if-eqz p4, :cond_1b

    .line 274
    invoke-direct {p0, p4, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 278
    :cond_1b
    return-void

    .line 280
    :cond_1c
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", char[].length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_4a
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1257
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "string"  # Ljava/lang/String;

    .line 613
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .registers 12
    .param p1, "subString"  # Ljava/lang/String;
    .param p2, "start"  # I

    .line 626
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 627
    .local v0, "subCount":I
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, -0x1

    if-gt v0, v1, :cond_4f

    if-ltz p2, :cond_4f

    .line 628
    if-lez v0, :cond_46

    .line 629
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v1, v0

    if-le p2, v1, :cond_16

    .line 630
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int p2, v1, v0

    .line 633
    :cond_16
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 635
    .local v1, "firstChar":C
    :goto_1b
    move v3, p2

    .line 636
    .local v3, "i":I
    const/4 v4, 0x0

    .line 637
    .local v4, "found":Z
    :goto_1d
    if-ltz v3, :cond_2a

    .line 638
    iget-object v5, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v5, v5, v3

    if-ne v5, v1, :cond_27

    .line 639
    const/4 v4, 0x1

    .line 640
    goto :goto_2a

    .line 637
    :cond_27
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 643
    :cond_2a
    :goto_2a
    if-nez v4, :cond_2d

    .line 644
    return v2

    .line 646
    :cond_2d
    move v5, v3

    .local v5, "o1":I
    const/4 v6, 0x0

    .line 647
    .local v6, "o2":I
    :goto_2f
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v0, :cond_40

    iget-object v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v5, v5, 0x1

    aget-char v7, v7, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_40

    goto :goto_2f

    .line 650
    :cond_40
    if-ne v6, v0, :cond_43

    .line 651
    return v3

    .line 653
    :cond_43
    add-int/lit8 p2, v3, -0x1

    .line 654
    .end local v3  # "i":I
    .end local v4  # "found":Z
    .end local v5  # "o1":I
    .end local v6  # "o2":I
    goto :goto_1b

    .line 656
    .end local v1  # "firstChar":C
    :cond_46
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p2, v1, :cond_4c

    move v1, p2

    goto :goto_4e

    :cond_4c
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    :goto_4e
    return v1

    .line 658
    :cond_4f
    return v2
.end method

.method public length()I
    .registers 2

    .line 325
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 1261
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public offsetByCodePoints(II)I
    .registers 6
    .param p1, "index"  # I
    .param p2, "codePointOffset"  # I

    .line 731
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    return v0
.end method

.method public replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 6
    .param p1, "find"  # C
    .param p2, "replace"  # Ljava/lang/String;

    .line 1235
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1236
    .local v0, "replaceLength":I
    const/4 v1, 0x0

    .line 1239
    .local v1, "index":I
    :goto_5
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ne v1, v2, :cond_a

    return-object p0

    .line 1240
    :cond_a
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_17

    .line 1243
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->replace0(IILjava/lang/String;)V

    .line 1244
    add-int/2addr v1, v0

    goto :goto_5

    .line 1241
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public replace(IILjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 4
    .param p1, "start"  # I
    .param p2, "end"  # I
    .param p3, "str"  # Ljava/lang/String;

    .line 1216
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->replace0(IILjava/lang/String;)V

    .line 1217
    return-object p0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 7
    .param p1, "find"  # Ljava/lang/String;
    .param p2, "replace"  # Ljava/lang/String;

    .line 1222
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "findLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1223
    .local v1, "replaceLength":I
    const/4 v2, 0x0

    .line 1225
    .local v2, "index":I
    :goto_9
    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1226
    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 1230
    return-object p0

    .line 1227
    :cond_11
    add-int v3, v2, v0

    invoke-virtual {p0, v2, v3, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->replace0(IILjava/lang/String;)V

    .line 1228
    add-int/2addr v2, v1

    goto :goto_9
.end method

.method final replace0(IILjava/lang/String;)V
    .registers 10
    .param p1, "start"  # I
    .param p2, "end"  # I
    .param p3, "string"  # Ljava/lang/String;

    .line 343
    if-ltz p1, :cond_40

    .line 344
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p2, v0, :cond_8

    .line 345
    iget p2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 347
    :cond_8
    if-le p2, p1, :cond_32

    .line 348
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 349
    .local v0, "stringLength":I
    sub-int v1, p2, p1

    sub-int/2addr v1, v0

    .line 350
    .local v1, "diff":I
    if-lez v1, :cond_20

    .line 352
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v4, p1, v0

    iget v5, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v5, p2

    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_26

    .line 353
    :cond_20
    if-gez v1, :cond_26

    .line 355
    neg-int v2, v1

    invoke-direct {p0, v2, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 357
    :cond_26
    :goto_26
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p3, v2, v0, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 358
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 359
    return-void

    .line 361
    .end local v0  # "stringLength":I
    .end local v1  # "diff":I
    :cond_32
    if-ne p1, p2, :cond_40

    .line 362
    if-eqz p3, :cond_3a

    .line 365
    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 366
    return-void

    .line 363
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 369
    :cond_40
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public reverse()Lcom/badlogic/gdx/utils/StringBuilder;
    .registers 1

    .line 1252
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->reverse0()V

    .line 1253
    return-object p0
.end method

.method final reverse0()V
    .registers 19

    .line 373
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    .line 374
    return-void

    .line 376
    :cond_8
    iget v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 377
    .local v1, "end":I
    iget-object v4, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v5, 0x0

    aget-char v4, v4, v5

    .line 378
    .local v4, "frontHigh":C
    iget-object v6, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v6, v6, v1

    .line 379
    .local v6, "endLow":C
    const/4 v7, 0x1

    .local v7, "allowFrontSur":Z
    const/4 v8, 0x1

    .line 380
    .local v8, "allowEndSur":Z
    const/4 v9, 0x0

    .local v9, "i":I
    iget v10, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    div-int/2addr v10, v2

    .local v10, "mid":I
    :goto_1b
    if-ge v9, v10, :cond_b6

    .line 381
    iget-object v2, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v11, v9, 0x1

    aget-char v2, v2, v11

    .line 382
    .local v2, "frontLow":C
    iget-object v11, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v12, v1, -0x1

    aget-char v11, v11, v12

    .line 383
    .local v11, "endHigh":C
    const v12, 0xdbff

    const v13, 0xd800

    const v14, 0xdfff

    const v15, 0xdc00

    if-eqz v7, :cond_42

    if-lt v2, v15, :cond_42

    if-gt v2, v14, :cond_42

    if-lt v4, v13, :cond_42

    if-gt v4, v12, :cond_42

    move/from16 v16, v3

    goto :goto_44

    :cond_42
    move/from16 v16, v5

    :goto_44
    move/from16 v17, v16

    .line 385
    .local v17, "surAtFront":Z
    move/from16 v5, v17

    .end local v17  # "surAtFront":Z
    .local v5, "surAtFront":Z
    if-eqz v5, :cond_50

    iget v3, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v14, 0x3

    if-ge v3, v14, :cond_50

    .line 386
    return-void

    .line 388
    :cond_50
    if-eqz v8, :cond_5f

    if-lt v11, v13, :cond_5f

    if-gt v11, v12, :cond_5f

    if-lt v6, v15, :cond_5f

    const v3, 0xdfff

    if-gt v6, v3, :cond_5f

    const/4 v3, 0x1

    goto :goto_60

    :cond_5f
    const/4 v3, 0x0

    .line 389
    .local v3, "surAtEnd":Z
    :goto_60
    const/4 v12, 0x1

    move v8, v12

    move v7, v12

    .line 390
    if-ne v5, v3, :cond_97

    .line 391
    if-eqz v5, :cond_8c

    .line 393
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v2, v12, v1

    .line 394
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v13, v1, -0x1

    aput-char v4, v12, v13

    .line 395
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v11, v12, v9

    .line 396
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v13, v9, 0x1

    aput-char v6, v12, v13

    .line 397
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v13, v9, 0x2

    aget-char v4, v12, v13

    .line 398
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v13, v1, -0x2

    aget-char v6, v12, v13

    .line 399
    add-int/lit8 v9, v9, 0x1

    .line 400
    add-int/lit8 v1, v1, -0x1

    goto :goto_ae

    .line 403
    :cond_8c
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v4, v12, v1

    .line 404
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v6, v12, v9

    .line 405
    move v4, v2

    .line 406
    move v6, v11

    goto :goto_ae

    .line 409
    :cond_97
    if-eqz v5, :cond_a4

    .line 411
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v2, v12, v1

    .line 412
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v6, v12, v9

    .line 413
    move v6, v11

    .line 414
    const/4 v7, 0x0

    goto :goto_ae

    .line 417
    :cond_a4
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v4, v12, v1

    .line 418
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v11, v12, v9

    .line 419
    move v4, v2

    .line 420
    const/4 v8, 0x0

    .line 380
    .end local v2  # "frontLow":C
    .end local v3  # "surAtEnd":Z
    .end local v5  # "surAtFront":Z
    .end local v11  # "endHigh":C
    :goto_ae
    const/4 v2, 0x1

    add-int/2addr v9, v2

    add-int/lit8 v1, v1, -0x1

    move v3, v2

    const/4 v5, 0x0

    goto/16 :goto_1b

    :cond_b6
    move v2, v3

    .line 424
    .end local v9  # "i":I
    .end local v10  # "mid":I
    iget v3, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_c9

    if-eqz v7, :cond_c0

    if-nez v8, :cond_c9

    .line 425
    :cond_c0
    iget-object v2, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    if-eqz v7, :cond_c6

    move v3, v6

    goto :goto_c7

    :cond_c6
    move v3, v4

    :goto_c7
    aput-char v3, v2, v1

    .line 427
    :cond_c9
    return-void
.end method

.method public setCharAt(IC)V
    .registers 4
    .param p1, "index"  # I
    .param p2, "ch"  # C

    .line 435
    if-ltz p1, :cond_b

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_b

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char p2, v0, p1

    .line 439
    return-void

    .line 436
    :cond_b
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setLength(I)V
    .registers 5
    .param p1, "newLength"  # I

    .line 448
    if-ltz p1, :cond_1a

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    if-le p1, v0, :cond_b

    .line 452
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    goto :goto_17

    .line 454
    :cond_b
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge v0, p1, :cond_17

    .line 455
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 458
    :cond_17
    :goto_17
    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 459
    return-void

    .line 449
    :cond_1a
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"  # I
    .param p2, "end"  # I

    .line 514
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .registers 5
    .param p1, "start"  # I

    .line 467
    if-ltz p1, :cond_18

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_18

    .line 468
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ne p1, v0, :cond_d

    .line 469
    const-string v0, ""

    return-object v0

    .line 473
    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 475
    :cond_18
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 6
    .param p1, "start"  # I
    .param p2, "end"  # I

    .line 486
    if-ltz p1, :cond_17

    if-gt p1, p2, :cond_17

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_17

    .line 487
    if-ne p1, p2, :cond_d

    .line 488
    const-string v0, ""

    return-object v0

    .line 492
    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 494
    :cond_17
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 501
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 502
    :cond_7
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public trimToSize()V
    .registers 5

    .line 666
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 667
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    new-array v0, v0, [C

    .line 668
    .local v0, "newValue":[C
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 671
    .end local v0  # "newValue":[C
    :cond_15
    return-void
.end method
