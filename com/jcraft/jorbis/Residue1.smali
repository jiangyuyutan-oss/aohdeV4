.class Lcom/jcraft/jorbis/Residue1;
.super Lcom/jcraft/jorbis/Residue0;
.source "Residue1.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jorbis/Residue0;-><init>()V

    return-void
.end method


# virtual methods
.method inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[F[II)I
    .registers 10
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p2, "vl"  # Ljava/lang/Object;
    .param p3, "in"  # [[F
    .param p4, "nonzero"  # [I
    .param p5, "ch"  # I

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "used":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p5, :cond_12

    .line 34
    aget v2, p4, v1

    if-eqz v2, :cond_f

    .line 35
    add-int/lit8 v2, v0, 0x1

    .end local v0  # "used":I
    .local v2, "used":I
    aget-object v3, p3, v1

    aput-object v3, p3, v0

    move v0, v2

    .line 33
    .end local v2  # "used":I
    .restart local v0  # "used":I
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 38
    .end local v1  # "i":I
    :cond_12
    if-eqz v0, :cond_1a

    .line 39
    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/jcraft/jorbis/Residue1;->_01inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[FII)I

    move-result v1

    return v1

    .line 42
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method
