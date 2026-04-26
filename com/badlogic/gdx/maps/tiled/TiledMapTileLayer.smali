.class public Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
.super Lcom/badlogic/gdx/maps/MapLayer;
.source "TiledMapTileLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    }
.end annotation


# instance fields
.field private cells:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

.field private height:I

.field private tileHeight:I

.field private tileWidth:I

.field private width:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 7
    .param p1, "width"  # I
    .param p2, "height"  # I
    .param p3, "tileWidth"  # I
    .param p4, "tileHeight"  # I

    .line 59
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    .line 60
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->width:I

    .line 61
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->height:I

    .line 62
    iput p3, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->tileWidth:I

    .line 63
    iput p4, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->tileHeight:I

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    const-class v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->cells:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    .line 65
    return-void
.end method


# virtual methods
.method public getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .registers 5
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 71
    const/4 v0, 0x0

    if-ltz p1, :cond_17

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->width:I

    if-lt p1, v1, :cond_8

    goto :goto_17

    .line 72
    :cond_8
    if-ltz p2, :cond_16

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->height:I

    if-lt p2, v1, :cond_f

    goto :goto_16

    .line 73
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->cells:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0

    .line 72
    :cond_16
    :goto_16
    return-object v0

    .line 71
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->height:I

    return v0
.end method

.method public getTileHeight()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->tileHeight:I

    return v0
.end method

.method public getTileWidth()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->tileWidth:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->width:I

    return v0
.end method

.method public setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V
    .registers 5
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "cell"  # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    .line 82
    if-ltz p1, :cond_16

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->width:I

    if-lt p1, v0, :cond_7

    goto :goto_16

    .line 83
    :cond_7
    if-ltz p2, :cond_15

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->height:I

    if-lt p2, v0, :cond_e

    goto :goto_15

    .line 84
    :cond_e
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->cells:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    aget-object v0, v0, p1

    aput-object p3, v0, p2

    .line 85
    return-void

    .line 83
    :cond_15
    :goto_15
    return-void

    .line 82
    :cond_16
    :goto_16
    return-void
.end method
