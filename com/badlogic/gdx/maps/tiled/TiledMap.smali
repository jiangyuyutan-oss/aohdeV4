.class public Lcom/badlogic/gdx/maps/tiled/TiledMap;
.super Lcom/badlogic/gdx/maps/Map;
.source "TiledMap.java"


# instance fields
.field private ownedResources:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field private tilesets:Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/Map;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->tilesets:Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->ownedResources:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_1a

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->ownedResources:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Disposable;

    .line 52
    .local v1, "resource":Lcom/badlogic/gdx/utils/Disposable;
    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    .line 53
    .end local v1  # "resource":Lcom/badlogic/gdx/utils/Disposable;
    goto :goto_a

    .line 55
    :cond_1a
    return-void
.end method

.method public getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->tilesets:Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    return-object v0
.end method

.method public setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "resources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+Lcom/badlogic/gdx/utils/Disposable;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->ownedResources:Lcom/badlogic/gdx/utils/Array;

    .line 46
    return-void
.end method
