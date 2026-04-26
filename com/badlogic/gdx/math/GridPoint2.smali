.class public Lcom/badlogic/gdx/math/GridPoint2;
.super Ljava/lang/Object;
.source "GridPoint2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x37c9cd596ac15704L


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    .line 40
    iput p2, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/GridPoint2;)V
    .registers 3
    .param p1, "point"  # Lcom/badlogic/gdx/math/GridPoint2;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    .line 48
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    .line 49
    return-void
.end method


# virtual methods
.method public add(II)Lcom/badlogic/gdx/math/GridPoint2;
    .registers 4
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 140
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    .line 141
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    .line 142
    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/math/GridPoint2;)Lcom/badlogic/gdx/math/GridPoint2;
    .registers 4
    .param p1, "other"  # Lcom/badlogic/gdx/math/GridPoint2;

    .line 127
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    .line 128
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    .line 129
    return-object p0
.end method

.method public cpy()Lcom/badlogic/gdx/math/GridPoint2;
    .registers 2

    .line 174
    new-instance v0, Lcom/badlogic/gdx/math/GridPoint2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/GridPoint2;-><init>(Lcom/badlogic/gdx/math/GridPoint2;)V

    return-object v0
.end method

.method public dst(II)F
    .registers 7
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 114
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    sub-int v0, p1, v0

    .line 115
    .local v0, "xd":I
    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    sub-int v1, p2, v1

    .line 117
    .local v1, "yd":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public dst(Lcom/badlogic/gdx/math/GridPoint2;)F
    .registers 6
    .param p1, "other"  # Lcom/badlogic/gdx/math/GridPoint2;

    .line 102
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    sub-int/2addr v0, v1

    .line 103
    .local v0, "xd":I
    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iget v2, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    sub-int/2addr v1, v2

    .line 105
    .local v1, "yd":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public dst2(II)F
    .registers 7
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 91
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    sub-int v0, p1, v0

    .line 92
    .local v0, "xd":I
    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    sub-int v1, p2, v1

    .line 94
    .local v1, "yd":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    return v2
.end method

.method public dst2(Lcom/badlogic/gdx/math/GridPoint2;)F
    .registers 6
    .param p1, "other"  # Lcom/badlogic/gdx/math/GridPoint2;

    .line 79
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    sub-int/2addr v0, v1

    .line 80
    .local v0, "xd":I
    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iget v2, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    sub-int/2addr v1, v2

    .line 82
    .local v1, "yd":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"  # Ljava/lang/Object;

    .line 179
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 180
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_24

    .line 181
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/math/GridPoint2;

    .line 182
    .local v2, "g":Lcom/badlogic/gdx/math/GridPoint2;
    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v4, v2, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    if-ne v3, v4, :cond_22

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iget v4, v2, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    return v0

    .line 180
    .end local v2  # "g":Lcom/badlogic/gdx/math/GridPoint2;
    :cond_24
    :goto_24
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 187
    const/16 v0, 0x35

    .line 188
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 189
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    add-int/2addr v2, v3

    .line 190
    .end local v1  # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    add-int/2addr v1, v3

    .line 191
    .end local v2  # "result":I
    .restart local v1  # "result":I
    return v1
.end method

.method public set(II)Lcom/badlogic/gdx/math/GridPoint2;
    .registers 3
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 69
    iput p1, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    .line 70
    iput p2, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    .line 71
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/GridPoint2;)Lcom/badlogic/gdx/math/GridPoint2;
    .registers 3
    .param p1, "point"  # Lcom/badlogic/gdx/math/GridPoint2;

    .line 57
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    .line 58
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    .line 59
    return-object p0
.end method

.method public sub(II)Lcom/badlogic/gdx/math/GridPoint2;
    .registers 4
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 165
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    .line 166
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    .line 167
    return-object p0
.end method

.method public sub(Lcom/badlogic/gdx/math/GridPoint2;)Lcom/badlogic/gdx/math/GridPoint2;
    .registers 4
    .param p1, "other"  # Lcom/badlogic/gdx/math/GridPoint2;

    .line 152
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    .line 153
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    .line 154
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
