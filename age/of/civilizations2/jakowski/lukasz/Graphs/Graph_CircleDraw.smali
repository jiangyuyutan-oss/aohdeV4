.class public Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;
.super Ljava/lang/Object;
.source "Graph_CircleDraw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;
    }
.end annotation


# instance fields
.field private center:Lcom/badlogic/gdx/math/Vector2;

.field private centerTop:Lcom/badlogic/gdx/math/Vector2;

.field private circleFrame:Lage/of/civilizations2/jakowski/lukasz/Image;

.field private fv:[F

.field private intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

.field private leftBottom:Lcom/badlogic/gdx/math/Vector2;

.field private leftTop:Lcom/badlogic/gdx/math/Vector2;

.field private oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

.field private rightBottom:Lcom/badlogic/gdx/math/Vector2;

.field private rightTop:Lcom/badlogic/gdx/math/Vector2;

.field private texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private textureOver:Lage/of/civilizations2/jakowski/lukasz/Image;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "nFileName"  # Ljava/lang/String;
    .param p2, "fileNameOver"  # Ljava/lang/String;
    .param p3, "nFlieNameFrame"  # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "graph/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v5, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v6, 0x1

    invoke-direct {v1, v2, v5, v6}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 59
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v5, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v5, v6}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->textureOver:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 60
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v3, v6}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->circleFrame:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    .line 66
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    .line 67
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    .line 68
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    .line 69
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    .line 71
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->setPercentage(F)V

    .line 72
    return-void
.end method

.method private final IntersectPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 7
    .param p1, "line"  # Lcom/badlogic/gdx/math/Vector2;

    .line 273
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 277
    .local v0, "v":Lcom/badlogic/gdx/math/Vector2;
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    .line 280
    .local v1, "isIntersect":Z
    if-eqz v1, :cond_16

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;->TOP:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    return-object v0

    .line 281
    :cond_16
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v2, v3, v4, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    .line 284
    if-eqz v1, :cond_27

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;->BOTTOM:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    return-object v0

    .line 285
    :cond_27
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v2, v3, v4, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    .line 288
    if-eqz v1, :cond_38

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;->LEFT:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    return-object v0

    .line 289
    :cond_38
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v2, v3, v4, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    .line 291
    if-eqz v1, :cond_49

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;->RIGHT:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    return-object v0

    .line 293
    :cond_49
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;->NONE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    .line 294
    const/4 v2, 0x0

    return-object v2
.end method

.method private final convertToRadians(F)F
    .registers 3
    .param p1, "angleInDegrees"  # F

    .line 301
    const v0, 0x3c8efa35

    mul-float v0, v0, p1

    .line 302
    .local v0, "angleInRadians":F
    return v0
.end method

.method private final drawCircle(IILcom/badlogic/gdx/graphics/Color;)V
    .registers 12
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .param p3, "nColor"  # Lcom/badlogic/gdx/graphics/Color;

    .line 148
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->fv:[F

    if-nez v0, :cond_5

    .line 149
    return-void

    .line 152
    :cond_5
    new-instance v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    .line 153
    .local v0, "e":Lcom/badlogic/gdx/math/EarClippingTriangulator;
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->fv:[F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v1

    .line 155
    .local v1, "sv":Lcom/badlogic/gdx/utils/ShortArray;
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->fv:[F

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->toArray()[S

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F[S)V

    .line 157
    .local v2, "polyReg":Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    .line 159
    .local v3, "poly":Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setOrigin(FF)V

    .line 160
    int-to-float v5, p1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, p2

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setPosition(FF)V

    .line 161
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRotation(F)V

    .line 162
    invoke-virtual {v3, p3}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 164
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V

    .line 178
    return-void
.end method

.method private final drawCircle100(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/badlogic/gdx/graphics/Color;)V
    .registers 23
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nColor"  # Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v1, p1

    .line 123
    move-object/from16 v12, p4

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 124
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    move/from16 v11, p2

    int-to-float v3, v11

    move/from16 v10, p3

    neg-int v4, v10

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 125
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 127
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v7, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    int-to-float v8, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 131
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v14

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v15

    .line 124
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    const/high16 v16, 0x3f800000  # 1.0f

    move/from16 v10, v16

    const/16 v16, 0x0

    move/from16 v11, v16

    const/16 v16, 0x0

    move/from16 v12, v16

    move/from16 v13, v16

    const/16 v17, 0x0

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 144
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 145
    return-void
.end method

.method private final drawGraph(IILjava/util/List;)V
    .registers 13
    .param p1, "nPosX"  # I
    .param p2, "nPosY"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p3, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;>;"
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->begin()V

    .line 103
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;->getPercentage()F

    move-result v0

    .line 105
    .local v0, "drawnPercentage":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_11
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_99

    .line 106
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->setPercentage(F)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_9f

    .line 108
    const/high16 v2, 0x3f800000  # 1.0f

    :try_start_1c
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;->getDataID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000  # 255.0f

    div-float/2addr v4, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;->getDataID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;->getDataID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-direct {v3, v4, v6, v7, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->drawCircle(IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_68
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_68} :catch_69
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_68} :catch_9f

    .line 111
    goto :goto_8a

    .line 109
    :catch_69
    move-exception v3

    .line 110
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_6a
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v7

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->drawCircle(IILcom/badlogic/gdx/graphics/Color;)V

    .line 113
    .end local v3  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_8a
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;->getPercentage()F

    move-result v2

    add-float/2addr v0, v2

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    .line 115
    .end local v1  # "i":I
    :cond_99
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->end()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_9e} :catch_9f

    .line 118
    .end local v0  # "drawnPercentage":F
    goto :goto_a3

    .line 116
    :catch_9f
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 119
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_a3
    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;Z)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p5, "isActive"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "II",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;",
            ">;Z)V"
        }
    .end annotation

    .line 79
    .local p4, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;>;"
    const/high16 v0, 0x3f800000  # 1.0f

    :try_start_2
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    const/4 v3, 0x0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;->getDataID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x437f0000  # 255.0f

    div-float/2addr v2, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;->getDataID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleData;->getDataID()I

    move-result v3

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, p3, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->drawCircle100(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_4f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_4f} :catch_52
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4f} :catch_50

    .line 82
    goto :goto_73

    .line 94
    :catch_50
    move-exception v0

    goto :goto_9e

    .line 80
    :catch_52
    move-exception v1

    .line 81
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_53
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, p3, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->drawCircle100(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/badlogic/gdx/graphics/Color;)V

    .line 83
    .end local v1  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_73
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 84
    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->drawGraph(IILjava/util/List;)V

    .line 85
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 87
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->textureOver:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 88
    if-eqz p5, :cond_98

    .line 89
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3eab851f  # 0.335f

    invoke-direct {v1, v0, v0, v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 90
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->textureOver:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 91
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 93
    :cond_98
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->circleFrame:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_9d} :catch_50

    .line 96
    goto :goto_a1

    .line 95
    .local v0, "ex":Ljava/lang/Exception;
    :goto_9e
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 97
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_a1
    return-void
.end method

.method public final getWidth()I
    .registers 2

    .line 306
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->circleFrame:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public final setPercentage(F)V
    .registers 24
    .param p1, "percent"  # F

    .line 184
    move-object/from16 v0, p0

    const/high16 v1, 0x42b40000  # 90.0f

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->convertToRadians(F)F

    move-result v1

    .line 185
    .local v1, "angle":F
    const/high16 v2, 0x43b40000  # 360.0f

    mul-float v2, v2, p1

    const/high16 v3, 0x42c80000  # 100.0f

    div-float/2addr v2, v3

    invoke-direct {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->convertToRadians(F)F

    move-result v2

    sub-float/2addr v1, v2

    .line 187
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    if-le v2, v3, :cond_29

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    goto :goto_2f

    :cond_29
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    :goto_2f
    int-to-float v2, v2

    .line 188
    .local v2, "len":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v3, v3

    .line 189
    .local v3, "dy":F
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v4, v4

    .line 190
    .local v4, "dx":F
    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v6, v4

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v7, v3

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 192
    .local v5, "line":Lcom/badlogic/gdx/math/Vector2;
    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->IntersectPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    .line 194
    .local v6, "v":Lcom/badlogic/gdx/math/Vector2;
    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;->TOP:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/16 v11, 0x9

    const/16 v12, 0xa

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v16, 0x5

    const/16 v17, 0x4

    const/16 v18, 0x3

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x2

    if-ne v7, v8, :cond_108

    .line 195
    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_e2

    .line 196
    const/16 v7, 0xe

    new-array v7, v7, [F

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v20

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v19

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v21

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v18

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v17

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v16

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v15

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v14

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v13

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v11

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v12

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v10

    iget v8, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v9

    const/16 v8, 0xd

    iget v9, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v9, v7, v8

    iput-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->fv:[F

    goto/16 :goto_1d5

    .line 214
    :cond_e2
    new-array v7, v15, [F

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v20

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v19

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v21

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v18

    iget v8, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v17

    iget v8, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v16

    iput-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->fv:[F

    goto/16 :goto_1d5

    .line 225
    :cond_108
    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;->BOTTOM:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    if-ne v7, v8, :cond_14c

    .line 226
    new-array v7, v12, [F

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v20

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v19

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v21

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v18

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v17

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v16

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v15

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v14

    iget v8, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v13

    iget v8, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v11

    iput-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->fv:[F

    goto/16 :goto_1d5

    .line 239
    :cond_14c
    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;->LEFT:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    if-ne v7, v8, :cond_183

    .line 240
    new-array v7, v13, [F

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v20

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v19

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v21

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v18

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v17

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v16

    iget v8, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v15

    iget v8, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v14

    iput-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->fv:[F

    goto :goto_1d5

    .line 251
    :cond_183
    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;->RIGHT:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw$IntersectAt;

    if-ne v7, v8, :cond_1d2

    .line 252
    new-array v7, v9, [F

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v20

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v19

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v21

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v18

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v17

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v16

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v15

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v14

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v13

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v11

    iget v8, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v12

    iget v8, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v7, v10

    iput-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->fv:[F

    goto :goto_1d5

    .line 268
    :cond_1d2
    const/4 v7, 0x0

    iput-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_CircleDraw;->fv:[F

    .line 270
    :goto_1d5
    return-void
.end method
