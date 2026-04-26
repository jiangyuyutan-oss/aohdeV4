.class public final Lcom/badlogic/gdx/graphics/VertexAttribute;
.super Ljava/lang/Object;
.source "VertexAttribute.java"


# instance fields
.field public alias:Ljava/lang/String;

.field public final normalized:Z

.field public final numComponents:I

.field public offset:I

.field public final type:I

.field public unit:I

.field public final usage:I

.field private final usageIndex:I


# direct methods
.method public constructor <init>(IIIZLjava/lang/String;)V
    .registers 13
    .param p1, "usage"  # I
    .param p2, "numComponents"  # I
    .param p3, "type"  # I
    .param p4, "normalized"  # Z
    .param p5, "alias"  # Ljava/lang/String;

    .line 75
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(IIIZLjava/lang/String;I)V
    .registers 8
    .param p1, "usage"  # I
    .param p2, "numComponents"  # I
    .param p3, "type"  # I
    .param p4, "normalized"  # Z
    .param p5, "alias"  # Ljava/lang/String;
    .param p6, "unit"  # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    .line 90
    iput p2, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    .line 91
    iput p3, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    .line 92
    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    .line 93
    iput-object p5, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    .line 94
    iput p6, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usageIndex:I

    .line 96
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 5
    .param p1, "usage"  # I
    .param p2, "numComponents"  # I
    .param p3, "alias"  # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .registers 14
    .param p1, "usage"  # I
    .param p2, "numComponents"  # I
    .param p3, "alias"  # Ljava/lang/String;
    .param p4, "unit"  # I

    .line 61
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    const/16 v1, 0x1401

    goto :goto_8

    :cond_6
    const/16 v1, 0x1406

    :goto_8
    move v5, v1

    if-ne p1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move v6, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;I)V

    .line 63
    return-void
.end method

.method public static Binormal()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 4

    .line 129
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v1, 0x3

    const-string v2, "a_binormal"

    const/16 v3, 0x100

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static BoneWeight(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 5
    .param p0, "unit"  # I

    .line 133
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a_boneWeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;I)V

    return-object v0
.end method

.method public static ColorPacked()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 7

    .line 117
    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x1

    const-string v5, "a_color"

    const/4 v1, 0x4

    const/4 v2, 0x4

    const/16 v3, 0x1401

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;)V

    return-object v6
.end method

.method public static ColorUnpacked()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 7

    .line 121
    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x0

    const-string v5, "a_color"

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x1406

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;)V

    return-object v6
.end method

.method public static Normal()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 4

    .line 113
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v1, 0x3

    const-string v2, "a_normal"

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static Position()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 4

    .line 105
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v1, 0x3

    const-string v2, "a_position"

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static Tangent()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 4

    .line 125
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v1, 0x3

    const-string v2, "a_tangent"

    const/16 v3, 0x80

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static TexCoords(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 5
    .param p0, "unit"  # I

    .line 109
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a_texCoord"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 9

    .line 101
    new-instance v7, Lcom/badlogic/gdx/graphics/VertexAttribute;

    iget v1, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    iget v6, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;I)V

    return-object v7
.end method

.method public equals(Lcom/badlogic/gdx/graphics/VertexAttribute;)Z
    .registers 4
    .param p1, "other"  # Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 146
    if-eqz p1, :cond_2c

    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-ne v0, v1, :cond_2c

    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    if-ne v0, v1, :cond_2c

    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    if-ne v0, v1, :cond_2c

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-boolean v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    if-ne v0, v1, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 146
    :goto_2d
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"  # Ljava/lang/Object;

    .line 139
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    if-nez v0, :cond_6

    .line 140
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/VertexAttribute;->equals(Lcom/badlogic/gdx/graphics/VertexAttribute;)Z

    move-result v0

    return v0
.end method

.method public getKey()I
    .registers 3

    .line 153
    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usageIndex:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public getSizeInBytes()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    sparse-switch v0, :sswitch_data_14

    .line 169
    const/4 v0, 0x0

    return v0

    .line 161
    :sswitch_7
    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    mul-int/lit8 v0, v0, 0x4

    return v0

    .line 167
    :sswitch_c
    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 164
    :sswitch_11
    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    return v0

    :sswitch_data_14
    .sparse-switch
        0x1400 -> :sswitch_11
        0x1401 -> :sswitch_11
        0x1402 -> :sswitch_c
        0x1403 -> :sswitch_c
        0x1406 -> :sswitch_7
        0x140c -> :sswitch_7
    .end sparse-switch
.end method

.method public hashCode()I
    .registers 4

    .line 174
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttribute;->getKey()I

    move-result v0

    .line 175
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x21d

    iget v2, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    add-int/2addr v1, v2

    .line 176
    .end local v0  # "result":I
    .local v1, "result":I
    mul-int/lit16 v0, v1, 0x21d

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 177
    .end local v1  # "result":I
    .restart local v0  # "result":I
    return v0
.end method
