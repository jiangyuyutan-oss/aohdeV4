.class public Lcom/badlogic/gdx/scenes/scene2d/Group;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Group.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;


# static fields
.field private static final tmp:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field final children:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field private final computedTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private cullingArea:Lcom/badlogic/gdx/math/Rectangle;

.field private final oldTransform:Lcom/badlogic/gdx/math/Matrix4;

.field transform:Z

.field private final worldTransform:Lcom/badlogic/gdx/math/Affine2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->tmp:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 39
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x4

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Affine2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Affine2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Affine2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->computedTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 43
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    return-void
.end method


# virtual methods
.method public act(F)V
    .registers 6
    .param p1, "delta"  # F

    .line 47
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 49
    .local v0, "actors":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v2, "n":I
    :goto_10
    if-ge v1, v2, :cond_1a

    .line 50
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 51
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_1a
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 52
    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 4
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 263
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_f

    .line 264
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p0, :cond_9

    return-void

    .line 265
    :cond_9
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 267
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 269
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 270
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 271
    return-void
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 6
    .param p1, "actorAfter"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 308
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_f

    .line 309
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p0, :cond_9

    return-void

    .line 310
    :cond_9
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 312
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 313
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-eq v0, v1, :cond_28

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    goto :goto_28

    .line 316
    :cond_20
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    goto :goto_2d

    .line 314
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 317
    :goto_2d
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 318
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 319
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 320
    return-void
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5
    .param p1, "index"  # I
    .param p2, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 277
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_f

    .line 278
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p0, :cond_9

    return-void

    .line 279
    :cond_9
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 281
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lt p1, v0, :cond_1b

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    goto :goto_20

    .line 284
    :cond_1b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    .line 285
    :goto_20
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 286
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 287
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 288
    return-void
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5
    .param p1, "actorBefore"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 293
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_f

    .line 294
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p0, :cond_9

    return-void

    .line 295
    :cond_9
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 297
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 298
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, v0, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    .line 299
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 300
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 301
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 302
    return-void
.end method

.method protected applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 5
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 205
    invoke-interface {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 206
    return-void
.end method

.method protected applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 5
    .param p1, "shapes"  # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;
    .param p2, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 219
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 220
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 221
    return-void
.end method

.method protected childrenChanged()V
    .registers 1

    .line 258
    return-void
.end method

.method public clear()V
    .registers 2

    .line 376
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clear()V

    .line 377
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren(Z)V

    .line 378
    return-void
.end method

.method public clear(Z)V
    .registers 2
    .param p1, "unfocus"  # Z

    .line 382
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clear()V

    .line 383
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren(Z)V

    .line 384
    return-void
.end method

.method public clearChildren()V
    .registers 2

    .line 354
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren(Z)V

    .line 355
    return-void
.end method

.method public clearChildren(Z)V
    .registers 7
    .param p1, "unfocus"  # Z

    .line 359
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 360
    .local v0, "actors":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v2, "n":I
    :goto_d
    if-ge v1, v2, :cond_26

    .line 361
    aget-object v3, v0, v1

    .line 362
    .local v3, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz p1, :cond_1c

    .line 363
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v4

    .line 364
    .local v4, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v4, :cond_1c

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 366
    .end local v4  # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_1c
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 367
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 360
    .end local v3  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 369
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_26
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 370
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->clear()V

    .line 371
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 372
    return-void
.end method

.method protected computeTransform()Lcom/badlogic/gdx/math/Matrix4;
    .registers 10

    .line 184
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Affine2;

    .line 185
    .local v6, "worldTransform":Lcom/badlogic/gdx/math/Affine2;
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    .local v7, "originX":F
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    .line 186
    .local v8, "originY":F
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    add-float v1, v0, v7

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    add-float v2, v0, v8

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->rotation:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/Affine2;->setToTrnRotScl(FFFFF)Lcom/badlogic/gdx/math/Affine2;

    .line 187
    const/4 v0, 0x0

    cmpl-float v1, v7, v0

    if-nez v1, :cond_21

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_26

    :cond_21
    neg-float v0, v7

    neg-float v1, v8

    invoke-virtual {v6, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->translate(FF)Lcom/badlogic/gdx/math/Affine2;

    .line 190
    :cond_26
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 191
    .local v0, "parentGroup":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :goto_28
    if-eqz v0, :cond_32

    .line 192
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v1, :cond_2f

    goto :goto_32

    .line 193
    :cond_2f
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_28

    .line 195
    :cond_32
    :goto_32
    if-eqz v0, :cond_39

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/math/Affine2;->preMul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    .line 197
    :cond_39
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->computedTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;

    .line 198
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->computedTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v1
.end method

.method public debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .registers 2

    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    .line 483
    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 4
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 57
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 58
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 59
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 60
    :cond_15
    return-void
.end method

.method protected drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 20
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 67
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v2, v2, p2

    .line 68
    .end local p2  # "parentAlpha":F
    .local v2, "parentAlpha":F
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 69
    .local v3, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 70
    .local v4, "actors":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    .line 71
    .local v5, "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    const/4 v6, 0x0

    if-eqz v5, :cond_b0

    .line 73
    iget v7, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 74
    .local v7, "cullLeft":F
    iget v8, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v8, v7

    .line 75
    .local v8, "cullRight":F
    iget v9, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 76
    .local v9, "cullBottom":F
    iget v10, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v10, v9

    .line 77
    .local v10, "cullTop":F
    iget-boolean v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v11, :cond_56

    .line 78
    const/4 v6, 0x0

    .local v6, "i":I
    iget v11, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v11, "n":I
    :goto_28
    if-ge v6, v11, :cond_53

    .line 79
    aget-object v12, v4, v6

    .line 80
    .local v12, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v13

    if-nez v13, :cond_33

    goto :goto_50

    .line 81
    :cond_33
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .local v13, "cx":F
    iget v14, v12, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 82
    .local v14, "cy":F
    cmpg-float v15, v13, v8

    if-gtz v15, :cond_50

    cmpg-float v15, v14, v10

    if-gtz v15, :cond_50

    iget v15, v12, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v15, v13

    cmpl-float v15, v15, v7

    if-ltz v15, :cond_50

    iget v15, v12, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v15, v14

    cmpl-float v15, v15, v9

    if-ltz v15, :cond_50

    .line 83
    invoke-virtual {v12, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 78
    .end local v12  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v13  # "cx":F
    .end local v14  # "cy":F
    :cond_50
    :goto_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_53
    move-object/from16 p2, v5

    .end local v6  # "i":I
    .end local v11  # "n":I
    goto :goto_af

    .line 87
    :cond_56
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .local v11, "offsetX":F
    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 88
    .local v12, "offsetY":F
    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 89
    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 90
    const/4 v6, 0x0

    .restart local v6  # "i":I
    iget v13, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v13, "n":I
    :goto_61
    if-ge v6, v13, :cond_a7

    .line 91
    aget-object v14, v4, v6

    .line 92
    .local v14, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v15

    if-nez v15, :cond_70

    move-object/from16 p2, v5

    move/from16 v16, v8

    goto :goto_a0

    .line 93
    :cond_70
    iget v15, v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    move-object/from16 p2, v5

    .end local v5  # "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    .local v15, "cx":F
    .local p2, "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    iget v5, v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 94
    .local v5, "cy":F
    cmpg-float v16, v15, v8

    if-gtz v16, :cond_9e

    cmpg-float v16, v5, v10

    if-gtz v16, :cond_9e

    move/from16 v16, v8

    .end local v8  # "cullRight":F
    .local v16, "cullRight":F
    iget v8, v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v8, v15

    cmpl-float v8, v8, v7

    if-ltz v8, :cond_a0

    iget v8, v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v8, v5

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_a0

    .line 95
    add-float v8, v15, v11

    iput v8, v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 96
    add-float v8, v5, v12

    iput v8, v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 97
    invoke-virtual {v14, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 98
    iput v15, v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 99
    iput v5, v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_a0

    .line 94
    .end local v16  # "cullRight":F
    .restart local v8  # "cullRight":F
    :cond_9e
    move/from16 v16, v8

    .line 90
    .end local v5  # "cy":F
    .end local v8  # "cullRight":F
    .end local v14  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v15  # "cx":F
    .restart local v16  # "cullRight":F
    :cond_a0
    :goto_a0
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, p2

    move/from16 v8, v16

    goto :goto_61

    .end local v16  # "cullRight":F
    .end local p2  # "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    .local v5, "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    .restart local v8  # "cullRight":F
    :cond_a7
    move-object/from16 p2, v5

    move/from16 v16, v8

    .line 102
    .end local v5  # "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    .end local v6  # "i":I
    .end local v8  # "cullRight":F
    .end local v13  # "n":I
    .restart local v16  # "cullRight":F
    .restart local p2  # "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    iput v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 103
    iput v12, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 105
    .end local v7  # "cullLeft":F
    .end local v9  # "cullBottom":F
    .end local v10  # "cullTop":F
    .end local v11  # "offsetX":F
    .end local v12  # "offsetY":F
    .end local v16  # "cullRight":F
    :goto_af
    goto :goto_fb

    .line 107
    .end local p2  # "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    .restart local v5  # "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    :cond_b0
    move-object/from16 p2, v5

    .end local v5  # "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    .restart local p2  # "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v5, :cond_cb

    .line 108
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v6, "n":I
    :goto_b9
    if-ge v5, v6, :cond_ca

    .line 109
    aget-object v7, v4, v5

    .line 110
    .local v7, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v8

    if-nez v8, :cond_c4

    goto :goto_c7

    .line 111
    :cond_c4
    invoke-virtual {v7, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 108
    .end local v7  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_c7
    add-int/lit8 v5, v5, 0x1

    goto :goto_b9

    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_ca
    goto :goto_fb

    .line 115
    :cond_cb
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .local v5, "offsetX":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 116
    .local v7, "offsetY":F
    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 117
    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 118
    const/4 v6, 0x0

    .local v6, "i":I
    iget v8, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v8, "n":I
    :goto_d6
    if-ge v6, v8, :cond_f7

    .line 119
    aget-object v9, v4, v6

    .line 120
    .local v9, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v10

    if-nez v10, :cond_e1

    goto :goto_f4

    .line 121
    :cond_e1
    iget v10, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .local v10, "cx":F
    iget v11, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 122
    .local v11, "cy":F
    add-float v12, v10, v5

    iput v12, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 123
    add-float v12, v11, v7

    iput v12, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 124
    invoke-virtual {v9, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 125
    iput v10, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 126
    iput v11, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 118
    .end local v9  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v10  # "cx":F
    .end local v11  # "cy":F
    :goto_f4
    add-int/lit8 v6, v6, 0x1

    goto :goto_d6

    .line 128
    .end local v6  # "i":I
    .end local v8  # "n":I
    :cond_f7
    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 129
    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 132
    .end local v5  # "offsetX":F
    .end local v7  # "offsetY":F
    :goto_fb
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 133
    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 3
    .param p1, "shapes"  # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 138
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 139
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 140
    :cond_e
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 141
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 142
    :cond_18
    return-void
.end method

.method protected drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 12
    .param p1, "shapes"  # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 150
    .local v0, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 152
    .local v1, "actors":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v2, :cond_2f

    .line 153
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v3, "n":I
    :goto_f
    if-ge v2, v3, :cond_2b

    .line 154
    aget-object v4, v1, v2

    .line 155
    .local v4, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_28

    .line 156
    :cond_1a
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getDebug()Z

    move-result v5

    if-nez v5, :cond_25

    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v5, :cond_25

    goto :goto_28

    .line 157
    :cond_25
    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 153
    .end local v4  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 159
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_2b
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    goto :goto_6b

    .line 162
    :cond_2f
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .local v2, "offsetX":F
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 163
    .local v3, "offsetY":F
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 164
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 165
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v5, "n":I
    :goto_3b
    if-ge v4, v5, :cond_67

    .line 166
    aget-object v6, v1, v4

    .line 167
    .local v6, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v7

    if-nez v7, :cond_46

    goto :goto_64

    .line 168
    :cond_46
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getDebug()Z

    move-result v7

    if-nez v7, :cond_51

    instance-of v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v7, :cond_51

    goto :goto_64

    .line 169
    :cond_51
    iget v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .local v7, "cx":F
    iget v8, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 170
    .local v8, "cy":F
    add-float v9, v7, v2

    iput v9, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 171
    add-float v9, v8, v3

    iput v9, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 172
    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 173
    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 174
    iput v8, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 165
    .end local v6  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v7  # "cx":F
    .end local v8  # "cy":F
    :goto_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 176
    .end local v4  # "i":I
    .end local v5  # "n":I
    :cond_67
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 177
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 179
    .end local v2  # "offsetX":F
    .end local v3  # "offsetY":F
    :goto_6b
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 180
    return-void
.end method

.method public findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 390
    .local v0, "children":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_21

    .line 391
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v3

    .line 390
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 392
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_21
    const/4 v1, 0x0

    .restart local v1  # "i":I
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v2  # "n":I
    :goto_24
    if-ge v1, v2, :cond_3d

    .line 393
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 394
    .local v3, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v4, :cond_3a

    .line 395
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v4

    .line 396
    .local v4, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v4, :cond_3a

    return-object v4

    .line 392
    .end local v3  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v4  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 399
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_3d
    const/4 v1, 0x0

    return-object v1
.end method

.method public getChild(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 3
    .param p1, "index"  # I

    .line 429
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getCullingArea()Lcom/badlogic/gdx/math/Rectangle;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public hasChildren()Z
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 10
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "touchable"  # Z

    .line 243
    const/4 v0, 0x0

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_c

    return-object v0

    .line 244
    :cond_c
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->isVisible()Z

    move-result v1

    if-nez v1, :cond_13

    return-object v0

    .line 245
    :cond_13
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->tmp:Lcom/badlogic/gdx/math/Vector2;

    .line 246
    .local v0, "point":Lcom/badlogic/gdx/math/Vector2;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 247
    .local v1, "childrenArray":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_21
    if-ltz v2, :cond_3a

    .line 248
    aget-object v3, v1, v2

    .line 249
    .local v3, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 250
    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v4

    .line 251
    .local v4, "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v4, :cond_37

    return-object v4

    .line 247
    .end local v3  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v4  # "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_37
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 253
    .end local v2  # "i":I
    :cond_3a
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    return-object v2
.end method

.method public isTransform()Z
    .registers 2

    .line 451
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    return v0
.end method

.method public localToDescendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 7
    .param p1, "descendant"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "localCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 457
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 458
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    if-eqz v0, :cond_d

    .line 460
    if-eq v0, p0, :cond_9

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->localToDescendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 462
    :cond_9
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 463
    return-object p2

    .line 458
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child is not a descendant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .registers 3
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result v0

    return v0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .registers 6
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "unfocus"  # Z

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 330
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    const/4 v1, 0x0

    return v1

    .line 331
    :cond_c
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 332
    return v1
.end method

.method public removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 5
    .param p1, "index"  # I
    .param p2, "unfocus"  # Z

    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 342
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz p2, :cond_13

    .line 343
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    .line 344
    .local v1, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v1, :cond_13

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 346
    .end local v1  # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 347
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 348
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 349
    return-object v0
.end method

.method protected resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .registers 3
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 212
    return-void
.end method

.method protected resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 3
    .param p1, "shapes"  # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 227
    return-void
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .registers 2
    .param p1, "cullingArea"  # Lcom/badlogic/gdx/math/Rectangle;

    .line 233
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    .line 234
    return-void
.end method

.method public setDebug(ZZ)V
    .registers 6
    .param p1, "enabled"  # Z
    .param p2, "recursively"  # Z

    .line 468
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(Z)V

    .line 469
    if-eqz p2, :cond_26

    .line 470
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 471
    .local v1, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_22

    .line 472
    move-object v2, v1

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    goto :goto_25

    .line 474
    :cond_22
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    .line 476
    .end local v1  # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_25
    goto :goto_b

    .line 478
    :cond_26
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .registers 6
    .param p1, "stage"  # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 403
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 404
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 405
    .local v0, "childrenArray":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v2, "n":I
    :goto_e
    if-ge v1, v2, :cond_18

    .line 406
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 407
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_18
    return-void
.end method

.method public setTransform(Z)V
    .registers 2
    .param p1, "transform"  # Z

    .line 447
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    .line 448
    return-void
.end method

.method public swapActor(II)Z
    .registers 5
    .param p1, "first"  # I
    .param p2, "second"  # I

    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .line 412
    .local v0, "maxIndex":I
    const/4 v1, 0x0

    if-ltz p1, :cond_17

    if-lt p1, v0, :cond_a

    goto :goto_17

    .line 413
    :cond_a
    if-ltz p2, :cond_16

    if-lt p2, v0, :cond_f

    goto :goto_16

    .line 414
    :cond_f
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->swap(II)V

    .line 415
    const/4 v1, 0x1

    return v1

    .line 413
    :cond_16
    :goto_16
    return v1

    .line 412
    :cond_17
    :goto_17
    return v1
.end method

.method public swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .registers 7
    .param p1, "first"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "second"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 420
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 421
    .local v0, "firstIndex":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v2, p2, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v2

    .line 422
    .local v2, "secondIndex":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_19

    if-ne v2, v3, :cond_13

    goto :goto_19

    .line 423
    :cond_13
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v3, v0, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->swap(II)V

    .line 424
    return v1

    .line 422
    :cond_19
    :goto_19
    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 489
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toString(Ljava/lang/StringBuilder;I)V

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method toString(Ljava/lang/StringBuilder;I)V
    .registers 10
    .param p1, "buffer"  # Ljava/lang/StringBuilder;
    .param p2, "indent"  # I

    .line 495
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 498
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 499
    .local v1, "actors":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v3, "n":I
    :goto_19
    if-ge v2, v3, :cond_3e

    .line 500
    const/4 v4, 0x0

    .local v4, "ii":I
    :goto_1c
    if-ge v4, p2, :cond_26

    .line 501
    const-string v5, "|  "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 502
    .end local v4  # "ii":I
    :cond_26
    aget-object v4, v1, v2

    .line 503
    .local v4, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v5, :cond_35

    .line 504
    move-object v5, v4

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toString(Ljava/lang/StringBuilder;I)V

    goto :goto_3b

    .line 506
    :cond_35
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 499
    .end local v4  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 510
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_3e
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 511
    return-void
.end method
