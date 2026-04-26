.class public Lcom/badlogic/gdx/utils/Align;
.super Ljava/lang/Object;
.source "Align.java"


# static fields
.field public static final bottom:I = 0x4

.field public static final bottomLeft:I = 0xc

.field public static final bottomRight:I = 0x14

.field public static final center:I = 0x1

.field public static final left:I = 0x8

.field public static final right:I = 0x10

.field public static final top:I = 0x2

.field public static final topLeft:I = 0xa

.field public static final topRight:I = 0x12


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isBottom(I)Z
    .registers 2
    .param p0, "align"  # I

    .line 46
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static final isCenterHorizontal(I)Z
    .registers 2
    .param p0, "align"  # I

    .line 54
    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_a

    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static final isCenterVertical(I)Z
    .registers 2
    .param p0, "align"  # I

    .line 50
    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_a

    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static final isLeft(I)Z
    .registers 2
    .param p0, "align"  # I

    .line 34
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static final isRight(I)Z
    .registers 2
    .param p0, "align"  # I

    .line 38
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static final isTop(I)Z
    .registers 2
    .param p0, "align"  # I

    .line 42
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "align"  # I

    .line 58
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 59
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_11

    .line 60
    const-string v1, "top,"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_20

    .line 61
    :cond_11
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1b

    .line 62
    const-string v1, "bottom,"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_20

    .line 64
    :cond_1b
    const-string v1, "center,"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 65
    :goto_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2a

    .line 66
    const-string v1, "left"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_39

    .line 67
    :cond_2a
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_34

    .line 68
    const-string v1, "right"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_39

    .line 70
    :cond_34
    const-string v1, "center"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 71
    :goto_39
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
