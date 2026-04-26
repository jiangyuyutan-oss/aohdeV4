.class Lcom/jcraft/jorbis/Residue2;
.super Lcom/jcraft/jorbis/Residue0;
.source "Residue2.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jorbis/Residue0;-><init>()V

    return-void
.end method


# virtual methods
.method inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[F[II)I
    .registers 8
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p2, "vl"  # Ljava/lang/Object;
    .param p3, "in"  # [[F
    .param p4, "nonzero"  # [I
    .param p5, "ch"  # I

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p5, :cond_c

    .line 34
    aget v1, p4, v0

    if-eqz v1, :cond_9

    .line 35
    goto :goto_c

    .line 33
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 36
    :cond_c
    :goto_c
    if-ne v0, p5, :cond_10

    .line 37
    const/4 v1, 0x0

    return v1

    .line 39
    :cond_10
    invoke-static {p1, p2, p3, p5}, Lcom/jcraft/jorbis/Residue2;->_2inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[FI)I

    move-result v1

    return v1
.end method
