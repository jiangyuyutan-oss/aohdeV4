.class public Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
.super Ljava/lang/Object;
.source "PolygonRegion.java"


# instance fields
.field final region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field final textureCoords:[F

.field final triangles:[S

.field final vertices:[F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F[S)V
    .registers 16
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "vertices"  # [F
    .param p3, "triangles"  # [S

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 35
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 36
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 38
    array-length v0, p2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 39
    .local v0, "textureCoords":[F
    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .local v1, "u":F
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 40
    .local v2, "v":F
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    sub-float/2addr v3, v1

    .line 41
    .local v3, "uvWidth":F
    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    sub-float/2addr v4, v2

    .line 42
    .local v4, "uvHeight":F
    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 43
    .local v5, "width":I
    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 44
    .local v6, "height":I
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, p2

    .local v8, "n":I
    :goto_1e
    if-ge v7, v8, :cond_3a

    .line 45
    aget v9, p2, v7

    int-to-float v10, v5

    div-float/2addr v9, v10

    mul-float/2addr v9, v3

    add-float/2addr v9, v1

    aput v9, v0, v7

    .line 46
    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v10, v7, 0x1

    aget v10, p2, v10

    int-to-float v11, v6

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000  # 1.0f

    sub-float/2addr v11, v10

    mul-float/2addr v11, v4

    add-float/2addr v11, v2

    aput v11, v0, v9

    .line 44
    add-int/lit8 v7, v7, 0x2

    goto :goto_1e

    .line 48
    .end local v7  # "i":I
    .end local v8  # "n":I
    :cond_3a
    return-void
.end method


# virtual methods
.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getTextureCoords()[F
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    return-object v0
.end method

.method public getTriangles()[S
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    return-object v0
.end method

.method public getVertices()[F
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    return-object v0
.end method
