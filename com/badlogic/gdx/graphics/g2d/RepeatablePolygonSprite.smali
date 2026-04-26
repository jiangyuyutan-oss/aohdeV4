.class public Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;
.super Ljava/lang/Object;
.source "RepeatablePolygonSprite.java"


# instance fields
.field private color:Lcom/badlogic/gdx/graphics/Color;

.field private cols:I

.field private density:F

.field private dirty:Z

.field private gridHeight:F

.field private gridWidth:F

.field private indices:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "[S>;"
        }
    .end annotation
.end field

.field private offset:Lcom/badlogic/gdx/math/Vector2;

.field private parts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "[F>;"
        }
    .end annotation
.end field

.field private region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private rows:I

.field private vertices:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "[F>;"
        }
    .end annotation
.end field

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->dirty:Z

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->parts:Lcom/badlogic/gdx/utils/Array;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->vertices:Lcom/badlogic/gdx/utils/Array;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->indices:Lcom/badlogic/gdx/utils/Array;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->x:F

    .line 46
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->y:F

    .line 47
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method private buildVertices()V
    .registers 13

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->vertices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_dc

    .line 172
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 173
    .local v1, "verts":[F
    if-nez v1, :cond_18

    goto/16 :goto_d8

    .line 175
    :cond_18
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    .line 176
    .local v2, "fullVerts":[F
    const/4 v3, 0x0

    .line 178
    .local v3, "idx":I
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->rows:I

    div-int v4, v0, v4

    .line 179
    .local v4, "col":I
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->rows:I

    rem-int v5, v0, v5

    .line 181
    .local v5, "row":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_29
    array-length v7, v1

    if-ge v6, v7, :cond_d3

    .line 182
    add-int/lit8 v7, v3, 0x1

    .end local v3  # "idx":I
    .local v7, "idx":I
    aget v8, v1, v6

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->x:F

    add-float/2addr v8, v9

    aput v8, v2, v3

    .line 183
    add-int/lit8 v3, v7, 0x1

    .end local v7  # "idx":I
    .restart local v3  # "idx":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v1, v8

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->y:F

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 185
    add-int/lit8 v7, v3, 0x1

    .end local v3  # "idx":I
    .restart local v7  # "idx":I
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    aput v8, v2, v3

    .line 187
    aget v3, v1, v6

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    rem-float/2addr v3, v8

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    div-float/2addr v3, v8

    .line 188
    .local v3, "u":F
    add-int/lit8 v8, v6, 0x1

    aget v8, v1, v8

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    rem-float/2addr v8, v9

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    div-float/2addr v8, v9

    .line 189
    .local v8, "v":F
    aget v9, v1, v6

    int-to-float v10, v4

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-nez v9, :cond_71

    const/4 v3, 0x0

    .line 190
    :cond_71
    aget v9, v1, v6

    add-int/lit8 v10, v4, 0x1

    int-to-float v10, v10

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-nez v9, :cond_7f

    const/high16 v3, 0x3f800000  # 1.0f

    .line 191
    :cond_7f
    add-int/lit8 v9, v6, 0x1

    aget v9, v1, v9

    int-to-float v10, v5

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-nez v9, :cond_8c

    const/4 v8, 0x0

    .line 192
    :cond_8c
    add-int/lit8 v9, v6, 0x1

    aget v9, v1, v9

    add-int/lit8 v10, v5, 0x1

    int-to-float v10, v10

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-nez v9, :cond_9c

    const/high16 v8, 0x3f800000  # 1.0f

    .line 193
    :cond_9c
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v9

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v10

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    .line 194
    .end local v3  # "u":F
    .local v9, "u":F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v10

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, v8

    add-float/2addr v3, v10

    .line 195
    .end local v8  # "v":F
    .local v3, "v":F
    add-int/lit8 v8, v7, 0x1

    .end local v7  # "idx":I
    .local v8, "idx":I
    aput v9, v2, v7

    .line 196
    add-int/lit8 v7, v8, 0x1

    .end local v8  # "idx":I
    .restart local v7  # "idx":I
    aput v3, v2, v8

    .line 181
    .end local v3  # "v":F
    .end local v9  # "u":F
    add-int/lit8 v6, v6, 0x2

    move v3, v7

    goto/16 :goto_29

    .line 198
    .end local v6  # "j":I
    .end local v7  # "idx":I
    .local v3, "idx":I
    :cond_d3
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->vertices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 171
    .end local v1  # "verts":[F
    .end local v2  # "fullVerts":[F
    .end local v3  # "idx":I
    .end local v4  # "col":I
    .end local v5  # "row":I
    :goto_d8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 200
    .end local v0  # "i":I
    :cond_dc
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->dirty:Z

    .line 201
    return-void
.end method

.method private offset([F)[F
    .registers 6
    .param p1, "vertices"  # [F

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_37

    .line 151
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget v3, p1, v0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_20

    .line 152
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    aget v3, p1, v0

    iput v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 154
    :cond_20
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_34

    .line 155
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    iput v3, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 150
    :cond_34
    add-int/lit8 v0, v0, 0x2

    goto :goto_c

    .line 158
    .end local v0  # "i":I
    :cond_37
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_38
    array-length v1, p1

    if-ge v0, v1, :cond_52

    .line 159
    aget v1, p1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 160
    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, p1, v1

    .line 158
    add-int/lit8 v0, v0, 0x2

    goto :goto_38

    .line 163
    .end local v0  # "i":I
    :cond_52
    return-object p1
.end method

.method private snapToGrid([F)[F
    .registers 10
    .param p1, "vertices"  # [F

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4f

    .line 129
    aget v1, p1, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    rem-float/2addr v1, v2

    .line 130
    .local v1, "numX":F
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    div-float/2addr v3, v4

    rem-float/2addr v3, v2

    .line 131
    .local v3, "numY":F
    const v2, 0x3f7d70a4  # 0.99f

    cmpl-float v4, v1, v2

    const v5, 0x3c23d70a  # 0.01f

    if-gtz v4, :cond_22

    cmpg-float v4, v1, v5

    if-gez v4, :cond_31

    .line 132
    :cond_22
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    aget v6, p1, v0

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    aput v4, p1, v0

    .line 134
    :cond_31
    cmpl-float v2, v3, v2

    if-gtz v2, :cond_39

    cmpg-float v2, v3, v5

    if-gez v2, :cond_4c

    .line 135
    :cond_39
    add-int/lit8 v2, v0, 0x1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    add-int/lit8 v5, v0, 0x1

    aget v5, p1, v5

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    aput v4, p1, v2

    .line 128
    .end local v1  # "numX":F
    .end local v3  # "numY":F
    :cond_4c
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 139
    .end local v0  # "i":I
    :cond_4f
    return-object p1
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V
    .registers 12
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    .line 204
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->dirty:Z

    if-eqz v0, :cond_7

    .line 205
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->buildVertices()V

    .line 207
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->vertices:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_41

    .line 208
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->vertices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->vertices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v6, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->indices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [S

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->indices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    array-length v9, v1

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 210
    .end local v0  # "i":I
    :cond_41
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3
    .param p1, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 216
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->dirty:Z

    .line 218
    return-void
.end method

.method public setPolygon(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F)V
    .registers 4
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "vertices"  # [F

    .line 57
    const/high16 v0, -0x40800000  # -1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->setPolygon(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[FF)V

    .line 58
    return-void
.end method

.method public setPolygon(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[FF)V
    .registers 20
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "vertices"  # [F
    .param p3, "density"  # F

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 70
    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->offset([F)[F

    move-result-object v2

    .line 72
    .end local p2  # "vertices":[F
    .local v2, "vertices":[F
    new-instance v3, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    .line 73
    .local v3, "polygon":Lcom/badlogic/gdx/math/Polygon;
    new-instance v4, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Polygon;-><init>()V

    .line 74
    .local v4, "tmpPoly":Lcom/badlogic/gdx/math/Polygon;
    new-instance v5, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Polygon;-><init>()V

    .line 75
    .local v5, "intersectionPoly":Lcom/badlogic/gdx/math/Polygon;
    new-instance v6, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    .line 79
    .local v6, "triangulator":Lcom/badlogic/gdx/math/EarClippingTriangulator;
    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Polygon;->getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v7

    .line 81
    .local v7, "boundRect":Lcom/badlogic/gdx/math/Rectangle;
    const/high16 v8, -0x40800000  # -1.0f

    cmpl-float v8, p3, v8

    if-nez v8, :cond_35

    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .end local p3  # "density":F
    .local v8, "density":F
    goto :goto_37

    .end local v8  # "density":F
    .restart local p3  # "density":F
    :cond_35
    move/from16 v8, p3

    .line 83
    .end local p3  # "density":F
    .restart local v8  # "density":F
    :goto_37
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 84
    .local v9, "regionAspectRatio":F
    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->cols:I

    .line 85
    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v10

    div-float/2addr v10, v8

    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    .line 86
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    mul-float/2addr v10, v9

    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    .line 87
    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v10

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->rows:I

    .line 89
    const/4 v10, 0x0

    .local v10, "col":I
    :goto_66
    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->cols:I

    if-ge v10, v11, :cond_ef

    .line 90
    const/4 v11, 0x0

    .local v11, "row":I
    :goto_6b
    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->rows:I

    if-ge v11, v12, :cond_e9

    .line 91
    const/16 v12, 0x8

    new-array v12, v12, [F

    .line 92
    .local v12, "verts":[F
    const/4 v13, 0x0

    .line 93
    .local v13, "idx":I
    add-int/lit8 v14, v13, 0x1

    .end local v13  # "idx":I
    .local v14, "idx":I
    int-to-float v15, v10

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    mul-float/2addr v15, v1

    aput v15, v12, v13

    .line 94
    add-int/lit8 v1, v14, 0x1

    .end local v14  # "idx":I
    .local v1, "idx":I
    int-to-float v13, v11

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    mul-float/2addr v13, v15

    aput v13, v12, v14

    .line 95
    add-int/lit8 v13, v1, 0x1

    .end local v1  # "idx":I
    .restart local v13  # "idx":I
    int-to-float v14, v10

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    mul-float/2addr v14, v15

    aput v14, v12, v1

    .line 96
    add-int/lit8 v1, v13, 0x1

    .end local v13  # "idx":I
    .restart local v1  # "idx":I
    add-int/lit8 v14, v11, 0x1

    int-to-float v14, v14

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    mul-float/2addr v14, v15

    aput v14, v12, v13

    .line 97
    add-int/lit8 v13, v1, 0x1

    .end local v1  # "idx":I
    .restart local v13  # "idx":I
    add-int/lit8 v14, v10, 0x1

    int-to-float v14, v14

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    mul-float/2addr v14, v15

    aput v14, v12, v1

    .line 98
    add-int/lit8 v1, v13, 0x1

    .end local v13  # "idx":I
    .restart local v1  # "idx":I
    add-int/lit8 v14, v11, 0x1

    int-to-float v14, v14

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    mul-float/2addr v14, v15

    aput v14, v12, v13

    .line 99
    add-int/lit8 v13, v1, 0x1

    .end local v1  # "idx":I
    .restart local v13  # "idx":I
    add-int/lit8 v14, v10, 0x1

    int-to-float v14, v14

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridWidth:F

    mul-float/2addr v14, v15

    aput v14, v12, v1

    .line 100
    int-to-float v1, v11

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->gridHeight:F

    mul-float/2addr v1, v14

    aput v1, v12, v13

    .line 101
    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/math/Polygon;->setVertices([F)V

    .line 103
    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/math/Intersector;->intersectPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z

    .line 104
    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    .line 105
    .end local v12  # "verts":[F
    .local v1, "verts":[F
    array-length v12, v1

    if-lez v12, :cond_de

    .line 106
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->snapToGrid([F)[F

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v12

    .line 108
    .local v12, "arr":Lcom/badlogic/gdx/utils/ShortArray;
    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->indices:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/ShortArray;->toArray()[S

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 109
    .end local v12  # "arr":Lcom/badlogic/gdx/utils/ShortArray;
    goto :goto_e4

    .line 112
    :cond_de
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->parts:Lcom/badlogic/gdx/utils/Array;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 90
    .end local v1  # "verts":[F
    :goto_e4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto :goto_6b

    .line 89
    .end local v11  # "row":I
    .end local v13  # "idx":I
    :cond_e9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_66

    .line 117
    .end local v10  # "col":I
    :cond_ef
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->buildVertices()V

    .line 118
    return-void
.end method

.method public setPosition(FF)V
    .registers 4
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 221
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->x:F

    .line 222
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->y:F

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->dirty:Z

    .line 224
    return-void
.end method
